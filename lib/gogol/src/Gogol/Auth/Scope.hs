{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : Gogol.Auth.Scope
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Helpers for specifying and using type-level OAuth scopes.
module Gogol.Auth.Scope
  ( -- * Type-level scopes
    type HasScope,
    type AnyMember,
    type IsMember,

    -- ** Modifying lists of scopes
    allow,
    forbid,
    (!),

    -- * Scope values
    AllowScopes (..),
    concatScopes,
    queryEncodeScopes,
  )
where

import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BS8
import Data.Coerce (coerce)
import Data.Text (Text)
import qualified Data.Text as Text
import qualified Data.Text.Encoding as Text
import Data.Type.Bool (type (||))
import Data.Typeable (Proxy (..))
import GHC.Exts (Constraint)
import GHC.TypeLits (KnownSymbol, Symbol, symbolVal)
import Gogol.Internal.Auth (Credentials)
import Gogol.Prelude (GoogleRequest (..), OAuthScope (..))
import Network.HTTP.Types (urlEncode)

-- :l Gogol.Auth
-- :set -XDataKinds

-- :k! IsMember "foo" '["bar", "baz"]
-- :k! IsMember "foo" '["bar", "baz", "foo"]

-- :k! AnyMember '["baz", "bar"] '["foo", "qux"] ~ 'True
-- :k! AnyMember '["baz", "foo", "bar"] '["foo", "qux"] ~ 'True
-- :k! AnyMember '["baz", "foo", "bar"] '[] ~ 'True

-- | Annotate credentials with the specified scopes.
-- | Determine if _any_ of the scopes a request @a@ requires is listed in
-- the scopes the credentials contains, @have@.
--
-- For error message/presentation purposes, this wraps the result of
-- the 'AnyMembers' membership check to show both lists of scopes before
-- reduction.
type family HasScope (have :: [Symbol]) a :: Constraint where
  HasScope have a = AnyMember have (Scopes a) ~ 'True

-- This is all quadratic.

-- | Check if any one of supplied scopes @have@ are members of the required set,
-- @need@.
--
-- If the required set @need@ is empty, then succeed.
type family AnyMember (have :: [Symbol]) (need :: [Symbol]) where
  AnyMember have '[] = 'True -- Special case - no scopes are required.
  AnyMember '[] need = 'False
  AnyMember (x ': xs) need = IsMember x need || AnyMember xs need

-- | Test if @scope@ is a member of @need@.
type family IsMember (scope :: Symbol) (need :: [Symbol]) where
  IsMember x '[] = 'False
  IsMember x (x ': xs) = 'True
  IsMember x (y ': ys) = IsMember x ys

-- This exists to allow users to choose between using 'newEnv'
-- with a 'Proxy' constructed by '!', or explicitly
-- specifying scopes via a type annotation.
--
-- /See:/ '!', 'envScopes', and the scopes available for each service.
allow :: proxy s -> k s -> k s
allow _ = id

-- | Annotate credentials with no scope authorization.
forbid :: k '[] -> k '[]
forbid = id

-- | Append two sets of scopes.
--
-- /See:/ 'allow'.
(!) :: proxy xs -> proxy ys -> Proxy (Nub (xs ++ ys))
(!) _ _ = Proxy

-- | Append two lists.
type family (++) xs ys where
  (++) xs '[] = xs
  (++) '[] ys = ys
  (++) (x ': xs) ys = x ': (xs ++ ys)

-- | Remove duplicates from a list.
type family Nub xs where
  Nub '[] = '[]
  Nub (x ': xs) = x ': Nub (Delete x xs)

-- | Remove a specific element from a list.
type family Delete x xs where
  Delete x '[] = '[]
  Delete x (x ': ys) = Delete x ys
  Delete x (y ': ys) = y ': Delete x ys

class AllowScopes a where
  -- | Obtain a list of supported 'OAuthScope' values from a proxy.
  --
  -- This is used to pass scope _values_ to functions that require them,
  -- such as 'Gogol.Auth.ServiceAccount.serviceAccountToken'.
  allowScopes :: proxy a -> [OAuthScope]

instance AllowScopes '[] where
  allowScopes _ = []

instance (KnownSymbol x, AllowScopes xs) => AllowScopes (x ': xs) where
  allowScopes _ = scope (Proxy :: Proxy x) : allowScopes (Proxy :: Proxy xs)
    where
      scope = OAuthScope . Text.pack . symbolVal

instance AllowScopes s => AllowScopes (Credentials s) where
  allowScopes _ = allowScopes (Proxy :: Proxy s)

-- | Concatenate a list of scopes using spaces.
concatScopes :: [OAuthScope] -> Text
concatScopes = Text.intercalate " " . coerce

-- | Encode a list of scopes suitable for embedding in a query string.
queryEncodeScopes :: [OAuthScope] -> ByteString
queryEncodeScopes =
  BS8.intercalate "+"
    . map (urlEncode True . Text.encodeUtf8)
    . coerce

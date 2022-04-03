{-# LANGUAGE ConstraintKinds #-}
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
  ( -- * Scope constraints
    type AllowRequest,
    type AllowScope,
    type AllowScopes,
    type Intersect,
    type Elem,

    -- ** Modifying type-level lists of scopes
    allow,
    forbid,
    (!),

    -- * Manipulating scope values
    KnownScopes (..),
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
import Data.Type.Bool (type If, type (||))
import Data.Typeable (Proxy (..))
import GHC.Exts (Constraint)
import GHC.TypeLits
import Gogol.Internal.Auth (Credentials)
import Gogol.Types (GoogleRequest (..), OAuthScope (..))
import Network.HTTP.Types (urlEncode)

type AllowRequest a scopes = (GoogleRequest a, KnownScopes scopes, AllowScopes (Scopes a) scopes)

-- | 'Constraint' kind for proving @scopes@ contains the specified scope, @name@.
--
-- This is convenient when composing multiple @gogol@ requests and you wish to
-- explicitly annotate the most general satisfiable scope:
--
-- @
-- uploadAndDownloadFile
--   :: HasScope Devstorage'ReadWrite scopes
--   => Env scopes
--   -> Text
--   -> Object
--   -> MediaType
--   -> FilePath
--   -> FilePath
--   -> IO Object
-- uploadAndDownloadFile env bucket object media src dst = do
--   let put = newStorageObjectsInsert bucket (object { bucket = Just bucket })
--       get = newStorageObjectsGet bucket object
--
--   body <- GBody media <$> HTTP.streamFile src
--
--   runResourceT $ do
--     _object <- upload env meta body
--     stream <- download env meta
--
--     Conduit.connect stream (Conduit.Combinators.sinkFileCautious dst)
-- @
--
-- Alternatively, you could allow any satisfiable scope and leave it up to the
-- caller to choose:
--
-- @
-- uploadAndDownloadFile
--   :: ( AllowGoogleRequest StorageObjectsInsert scopes
--      , AllowGoogleRequest StorageObjectsGet scopes
--      )
--   => Env scopes
--   -> ...
-- @
--
-- /See:/ 'HasScopeFor'.
type AllowScope name scopes = (KnownScopes scopes, AllowScopes '[name] scopes)

-- | 'Constraint' proving at least _one_ scope from @required@ exists in @scopes@.
--
-- That is, the set of possible scopes a request requires are on the left, and
-- the set of scopes credentials or an environment contain are on the right.
type family AllowScopes (required :: [Symbol]) (scopes :: [Symbol]) :: Constraint where
  AllowScopes '[] _ = () -- Special case; no scopes are required.
  AllowScopes required scopes =
    If (Intersect scopes required) (() :: Constraint) (TypeError (MissingScopesError required scopes))

type MissingScopesError (required :: [k]) (scopes :: [k]) =
  'Text "One scope from the following list is required:"
    ':$$: 'Text "    " ':<>: 'ShowType required
    ':$$: 'Text "However, none of these scopes are present in the list of scopes you provided:"
    ':$$: 'Text "    " ':<>: 'ShowType scopes

-- Short-circuiting intersection - does at least one element exist in both lists?
type family Intersect (as :: [k]) (bs :: [k]) :: Bool where
  Intersect '[] _ = 'False
  Intersect _ '[] = 'False
  Intersect (a ': as) bs = Elem a bs || Intersect as bs

-- Type-level 'Data.List.elem'.
type family Elem (x :: k) (xs :: [k]) :: Bool where
  Elem _ '[] = 'False
  Elem x (x ': xs) = 'True
  Elem x (y ': xs) = Elem x xs

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

class KnownScopes a where
  -- | Obtain a list of supported 'OAuthScope' values from a proxy.
  --
  -- This is used to pass scope _values_ to functions that require them,
  -- such as 'Gogol.Auth.ServiceAccount.serviceAccountToken'.
  scopeVals :: proxy a -> [OAuthScope]

instance KnownScopes '[] where
  scopeVals _ = []

instance (KnownSymbol x, KnownScopes xs) => KnownScopes (x ': xs) where
  scopeVals _ = scope (Proxy :: Proxy x) : scopeVals (Proxy :: Proxy xs)
    where
      scope = OAuthScope . Text.pack . symbolVal

instance KnownScopes s => KnownScopes (Credentials s) where
  scopeVals _ = scopeVals (Proxy :: Proxy s)

-- | Concatenate a list of scopes using spaces.
concatScopes :: [OAuthScope] -> Text
concatScopes = Text.intercalate " " . coerce

-- | Encode a list of scopes suitable for embedding in a query string.
queryEncodeScopes :: [OAuthScope] -> ByteString
queryEncodeScopes =
  BS8.intercalate "+"
    . map (urlEncode True . Text.encodeUtf8)
    . coerce

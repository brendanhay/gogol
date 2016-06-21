{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE OverloadedStrings    #-}
{-# LANGUAGE PolyKinds            #-}
{-# LANGUAGE ScopedTypeVariables  #-}
{-# LANGUAGE TypeFamilies         #-}
{-# LANGUAGE TypeOperators        #-}
{-# LANGUAGE UndecidableInstances #-}

-- |
-- Module      : Network.Google.Auth.Scope
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
-- Helpers for specifying and using 'Scope's with "Network.Google".
module Network.Google.Auth.Scope where

import           Data.ByteString              (ByteString)
import qualified Data.ByteString.Char8        as BS8
import           Data.Coerce                  (coerce)
import           Data.Text                    (Text)
import qualified Data.Text                    as Text
import qualified Data.Text.Encoding           as Text
import           Data.Type.Bool               (type (||))
import           Data.Type.Equality           (type (==))
import           Data.Typeable                (Proxy (..))
import           GHC.Exts                     (Constraint)
import           GHC.TypeLits                 (KnownSymbol, Symbol, symbolVal)
import           Network.Google.Internal.Auth (Credentials)
import           Network.Google.Prelude       (GoogleRequest (..),
                                               OAuthScope (..))
import           Network.HTTP.Types           (urlEncode)

-- | Annotate credentials with the specified scopes.
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

-- | Determine if _any_ of the scopes a request requires is
-- listed in the scopes the credentials supports.
--
-- For error message/presentation purposes, this wraps the result of
-- the 'HasScope' membership check to show both lists of scopes before
-- reduction.
type family HasScope (s :: [Symbol]) a :: Constraint where
    HasScope s a = (s `HasScope'` Scopes a) ~ 'True

-- | Check if any of actual supplied scopes 's' exist in the required set 'a'.
-- If the required set 'a' is empty, then succeed.
type family HasScope' s a where
    HasScope' s         '[] = 'True -- No scopes are required.
    HasScope' (x ': xs) a   = x ∈ a || HasScope' xs a

-- | Membership predicate.
type family (∈) a b where
    (∈) x '[]       = 'False
    (∈) x (y ': xs) = x == y || x ∈ xs

-- | Append two lists.
type family (++) xs ys where
    (++) xs       '[]       = xs
    (++) '[]       ys        = ys
    (++) (x ': xs) ys = x ': (xs ++ ys)

-- | Remove duplicates from a list.
type family Nub xs where
    Nub '[] = '[]
    Nub (x ': xs) = x ': Nub (Delete x xs)

-- | Remove a specific element from a list.
type family Delete x xs where
    Delete x '[]       = '[]
    Delete x (x ': ys) = Delete x ys
    Delete x (y ': ys) = y ': Delete x ys

class AllowScopes a where
    -- | Obtain a list of supported 'OAuthScope' values from a proxy.
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

{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE ExplicitNamespaces   #-}
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
-- Explicitly specify your Google credentials, or retrieve them
-- from the underlying OS.
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
--
-- This exists to allow users to choose between using 'getCredentials'
-- with a 'Proxy' type constructed via use of '(!)', or explicitly
-- specifying the scopes in a type annotation.
--
-- /See:/ '!' and the related scopes available for each service.
allow :: proxy s -> k s -> k s
allow _ = id

-- | Annotate credentials with no scope authorization.
forbid :: k '[] -> k '[]
forbid = id

-- | Append two sets of scopes.
--
-- /See:/ 'allow'.
(!) :: proxy xs -> proxy ys -> Proxy (xs ++ ys)
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
type family HasScope' s a where
    HasScope' s         '[] = 'True -- No scopes are required.
    HasScope' (x ': xs) a   = x ∈ a || HasScope' xs a

-- | Membership.
type family (∈) a b where
    (∈) x '[]       = 'False
    (∈) x (y ': xs) = x == y || x ∈ xs

-- | Append.
type family (++) xs ys where
    (++) a  '[]       = a
    (++) '[] b        = b
    (++) (a ': as) bs = a ': (as ++ bs)

class Allow a where
    -- | Obtain a list of supported 'OAuthScope' values from a proxy.
    allowScopes :: proxy a -> [OAuthScope]

instance Allow '[] where
    allowScopes _ = []

instance (KnownSymbol x, Allow xs) => Allow (x ': xs) where
    allowScopes _ = scope (Proxy :: Proxy x) : allowScopes (Proxy :: Proxy xs)
      where
        scope = OAuthScope . Text.pack . symbolVal

instance Allow s => Allow (Credentials s) where
    allowScopes _ = allowScopes (Proxy :: Proxy s)

concatScopes :: [OAuthScope] -> Text
concatScopes = Text.intercalate " " . coerce

queryEncodeScopes :: [OAuthScope] -> ByteString
queryEncodeScopes =
      BS8.intercalate "+"
    . map (urlEncode True . Text.encodeUtf8)
    . coerce

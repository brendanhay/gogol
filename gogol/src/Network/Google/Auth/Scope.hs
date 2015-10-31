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
import           Data.Type.Bool               (type (||), type If)
import           Data.Type.Equality           (type (==))
import           Data.Typeable                (Proxy (..))
import           GHC.Exts                     (Constraint)
import           GHC.TypeLits                 (KnownSymbol, Symbol, symbolVal)
import           Network.Google.Internal.Auth (Credentials)
import           Network.Google.Prelude       (GoogleRequest (..),
                                               OAuthScope (..))
import           Network.HTTP.Types           (urlEncode)

-- | Type-restrict the supplied credentials/whatever to the specific scopes.
--
-- This simply exists to allow users to choose between 'getCredentials' and
-- 'getCredentialsP' styles, without having the two separate functions.
--
-- This seems sufficiently general, does it already exist?
--
-- /See:/ '(!)'.
allow :: proxy s -> k s -> k s
allow _ = id

forbid :: k '[] -> k '[]
forbid = id

-- | Append the type-level lists of two 'Proxy' values.
--
-- /See:/ 'allow'.
(!) :: proxy xs -> proxy ys -> Proxy (xs ++ ys)
(!) _ _ = Proxy

-- | Determine if _any_ of the scopes a request requires is
-- listed in the scopes the credentials supports.
--
-- For error message/presentation purposes, this wraps the result of
-- the membership checks below.
type family Authorize (s :: [Symbol]) a :: Constraint where
    Authorize s a = MatchAnyScope (Scopes a) s ~ 'True

type family MatchAnyScope a s where
    MatchAnyScope '[] s         = 'True
    MatchAnyScope a   (x ': xs) = x ∈ a || MatchAnyScope a xs

-- | Set membership.
type family (∈) a b where
    (∈) x '[]       = 'False
    (∈) x (y ': xs) = x == y || x ∈ xs

-- | Append.
type family (++) xs ys where
    (++) a  '[]       = a
    (++) '[] b        = b
    (++) (a ': as) bs = a ': (as ++ bs)

class Allow a where
    -- | Obtain a list of supported 'OAuthScope's from a proxy type.
    getScopes :: proxy a -> [OAuthScope]

instance Allow '[] where
    getScopes _ = []

instance (KnownSymbol x, Allow xs) => Allow (x ': xs) where
    getScopes _ = scope (Proxy :: Proxy x) : getScopes (Proxy :: Proxy xs)
      where
        scope = OAuthScope . Text.pack . symbolVal

instance Allow s => Allow (Credentials s) where
    getScopes _ = getScopes (Proxy :: Proxy s)

concatScopes :: [OAuthScope] -> Text
concatScopes = Text.intercalate " " . coerce

queryEncodeScopes :: [OAuthScope] -> ByteString
queryEncodeScopes =
      BS8.intercalate "+"
    . map (urlEncode True . Text.encodeUtf8)
    . coerce

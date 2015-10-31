{-# LANGUAGE DataKinds            #-}
{-# LANGUAGE ExplicitNamespaces   #-}
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

import qualified Data.Text                    as Text
import           Data.Type.Bool               (type (||))
import           Data.Type.Equality           (type (==))
import           Data.Typeable                (Proxy (..))
import           GHC.Exts                     (Constraint)
import           GHC.TypeLits                 (KnownSymbol, Symbol, symbolVal)
import           Network.Google.Internal.Auth (Credentials)
import           Network.Google.Prelude       (GoogleRequest (Ss),
                                               OAuthScope (..))

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

-- | Append the type-level lists of two 'Proxy' values.
--
-- /See:/ 'allow'.
(!) :: proxy xs -> proxy ys -> Proxy (xs ++ ys)
(!) _ _ = Proxy

-- | Determine if _any_ of the scopes a request requires is a subset
-- of the scopes the credentials supports.
type family Authorize (s :: [Symbol]) a :: Constraint where
    Authorize s a = HasScope (Ss a ⊆ s) s

-- | For error message/presentation purposes, this wraps the result of
-- the membership checks below. When 'False fails to match, it will show
-- the reduced error case for '⊆' compared against the full
-- set of scopes the credentials ('s') have.
type family HasScope p s :: Constraint where
    HasScope 'True s = ()

type family (⊆) a s where
    (⊆) a (x ': xs) = x ∈ a || a ⊆ xs

-- | Is 'a :: *' an element of 'b :: [*]'.
type family (∈) a b where
    (∈) x '[]       = 'False
    (∈) x (y ': xs) = x == y || x ∈ xs

-- | Type-level append.
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

{-# LANGUAGE ConstraintKinds            #-}
{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE FunctionalDependencies     #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE KindSignatures             #-}
{-# LANGUAGE LambdaCase                 #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE PolyKinds                  #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

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

import           Control.Applicative
import           Control.Concurrent
import           Control.Exception.Lens
import           Control.Lens                   hiding (coerce, (.=))
import           Control.Monad
import           Control.Monad.Catch
import           Control.Monad.IO.Class
import           Crypto.Hash.Algorithms         (SHA256 (..))
import           Crypto.PubKey.RSA.PKCS15       (signSafer)
import           Crypto.PubKey.RSA.Types        (PrivateKey)
import           Data.Aeson
import           Data.Aeson.Types
import           Data.ByteArray
import           Data.ByteArray.Encoding
import           Data.ByteString                (ByteString)
import           Data.ByteString.Builder        (Builder)
import qualified Data.ByteString.Builder        as Build
import qualified Data.ByteString.Char8          as BS8
import qualified Data.ByteString.Lazy           as LBS
import           Data.Coerce
import           Data.Default.Class             (def)
import           Data.List
import           Data.String
import qualified Data.Text                      as Text
import qualified Data.Text.Encoding             as Text
import           Data.Time
import           Data.Time.Clock.POSIX
import           Data.Type.Bool
import           Data.Type.Equality
import           Data.Typeable
import           Data.X509
import           Data.X509.Memory
import           GHC.Exts                       (Constraint)
import           GHC.TypeLits
import           Network.Google.Internal.Auth
import           Network.Google.Internal.Logger
import           Network.Google.Prelude
import           Network.HTTP.Conduit           hiding (Proxy)
import qualified Network.HTTP.Conduit           as Client
import           Network.HTTP.Types

-- | Type-restrict the supplied credentials/whatever to the specific scopes.
--
-- This simply exists to allow users to choose between 'getCredentials' and
-- 'getCredentialsP' styles, without having the two separate functions.
--
-- This seems sufficiently general, does it already exist?
--
-- /See:/ '(!)'.
authorize :: proxy s -> k s -> k s
authorize _ = id

-- | Determine if _any_ of the scopes a request requires is a subset
-- of the scopes the credentials supports.
type family Authorize (s :: [Symbol]) a :: Constraint where
    -- The use of 'HasScope' will show the reduced failing case,
    -- and the use of '∈' will give the error context.
    Authorize s a = HasScope (Ss a) s ∈ s

-- | For error message/presentation purposes, this wraps the result of
-- the existence checks below.
type family (∈) p s :: Constraint where
    (∈) 'True s = ()

type family HasScope a s where
    HasScope a (x ': xs) = Elem x a || HasScope a xs

-- | Does 'a :: *' exist in 'b :: [*]'.
type family Elem a b where
    Elem x '[]       = 'False
    Elem x (y ': xs) = x == y || Elem x xs

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

-- | Append the types of two 'Proxy' values.
(!) :: proxy xs -> proxy ys -> Proxy (xs ++ ys)
(!) _ _ = Proxy

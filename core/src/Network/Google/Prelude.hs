{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables        #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE UndecidableInstances       #-}

-- |
-- Module      : Network.Google.Prelude
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Prelude
    ( module Export
    , module Network.Google.Prelude

    -- * Types
    , mapping

    -- * Serialisation
    , parseJSONText
    , toJSONText

    -- * Isos
    , _Coerce
    , _Default
    ) where

import           Control.Lens                      as Export (Lens', lens,
                                                              mapping)
import           Control.Lens                      hiding (coerce)
import           Control.Monad
import           Control.Monad.Trans.Either        as Export (EitherT)
import           Data.Aeson                        as Export
import           Data.Aeson.Types
import           Data.Coerce
import           Data.Data                         as Export (Data, Typeable)
import           Data.Hashable                     as Export
import           Data.Int                          as Export (Int32, Int64)
import           Data.Maybe                        as Export
import           Data.Proxy                        as Export
import           Data.Scientific
import           Data.Text                         as Export (Text)
import qualified Data.Text                         as Text
import qualified Data.Text.Lazy                    as LText
import           Data.Text.Lazy.Builder            (Builder)
import qualified Data.Text.Lazy.Builder            as Build
import qualified Data.Text.Lazy.Builder.Int        as Build
import qualified Data.Text.Lazy.Builder.Scientific as Build
import qualified Data.Text.Read                    as Read
import           Data.Time                         as Export (UTCTime)
import           Data.Word                         as Export (Word32, Word64,
                                                              Word8)
import           GHC.Exts                          (Constraint)
import           GHC.Generics                      as Export (Generic)
import           Numeric.Natural                   as Export (Natural)
import           Servant.API                       as Export
import           Servant.API                       as Export
import           Servant.Client                    as Export
import           Servant.Common.Req                as Export (Req, defReq)
import           Servant.Utils.Links               as Export

newtype Nat = Nat { unNat :: Natural }
    deriving (Eq, Ord, Enum, Show, Read, Num, Real, Integral, Data, Typeable)

_Nat :: Iso' Nat Natural
_Nat = iso unNat Nat

instance FromJSON Nat where
    parseJSON = parseJSON >=> go
      where
        go n = case floatingOrInteger n of
            Left  (_ :: Double) -> fail (floatErr n)
            Right i
                | n < 0         -> fail (negateErr n)
                | otherwise     -> return . Nat $ fromInteger i

        floatErr  = mappend "Cannot convert float to Natural: " . show
        negateErr = mappend "Cannot convert negative number to Natural: " . show

instance ToJSON Nat where
    toJSON = Number . flip scientific 0 . toInteger . unNat

instance ToText Nat where
    toText = shortText . Build.decimal

instance FromText Nat where
    fromText t =
        case Read.decimal t of
            Right (x, r) | Text.null r
                -> Just x
            _   -> Nothing

shortText :: Builder -> Text
shortText = LText.toStrict . Build.toLazyTextWith 32

_Coerce :: (Coercible a b, Coercible b a) => Iso' a b
_Coerce = iso coerce coerce

-- | Invalid Iso, should be a Prism but exists for ease of composition
-- with the current 'Lens . Iso' chaining to hide internal types from the user.
_Default :: Monoid a => Iso' (Maybe a) a
_Default = iso f Just
  where
    f (Just x) = x
    f Nothing  = mempty

parseJSONText :: FromText a => String -> Value -> Parser a
parseJSONText n = withText n (maybe (fail n) pure . fromText)

toJSONText :: ToText a => a -> Value
toJSONText = String . toText

class GoogleRequest a where
     type Rs a :: *

     requestWithRoute :: Req -> BaseUrl -> a -> EitherT ServantError IO (Rs a)
     request          ::                   a -> EitherT ServantError IO (Rs a)

send :: GoogleRequest a => a -> EitherT ServantError IO (Rs a)
send = undefined

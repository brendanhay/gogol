{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE ScopedTypeVariables        #-}

-- |
-- Module      : Network.Google.Data.Numeric
-- Copyright   : (c) 2015-2016 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.Numeric
    ( Nat (..)
    ) where

import           Control.Monad
import           Data.Aeson
import           Data.Data
import           Data.Monoid                ((<>))
import           Data.Scientific
import           Data.Text                  (Text)
import qualified Data.Text                  as Text
import qualified Data.Text.Lazy             as LText
import           Data.Text.Lazy.Builder     (Builder)
import qualified Data.Text.Lazy.Builder     as Build
import qualified Data.Text.Lazy.Builder.Int as Build
import qualified Data.Text.Read             as Read
import           Numeric.Natural
import           Servant.API

newtype Nat = Nat { unNat :: Natural }
    deriving (Eq, Ord, Enum, Show, Read, Num, Real, Integral, Data, Typeable)

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

instance ToHttpApiData Nat where
    toQueryParam = shortText . Build.decimal

instance FromHttpApiData Nat where
    parseQueryParam t =
        case Read.decimal t of
            Right (x, r) | Text.null r
                -> Right x
            _   -> Left ("Unable to parse natural from: " <> t)

shortText :: Builder -> Text
shortText = LText.toStrict . Build.toLazyTextWith 32

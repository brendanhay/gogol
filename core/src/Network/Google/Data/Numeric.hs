{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables        #-}

-- |
-- Module      : Network.Google.Data.Numeric
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
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
import           Data.Scientific
import           Data.Text                  (Text)
import qualified Data.Text                  as Text
import qualified Data.Text.Lazy             as LText
import           Data.Text.Lazy.Builder     (Builder)
import qualified Data.Text.Lazy.Builder     as Build
import qualified Data.Text.Lazy.Builder.Int as Build
import qualified Data.Text.Read             as Read
import           Data.Monoid                (mappend)
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

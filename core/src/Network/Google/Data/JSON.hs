{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE ScopedTypeVariables        #-}

-- |
-- Module      : Network.Google.Data.JSON
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.JSON
    ( module Network.Google.Data.JSON

    , FromJSON (..)
    , ToJSON   (..)

    , withObject
    , emptyObject
    , object

    , (.=)
    , (.:)
    , (.:?)
    , (.!=)
    ) where

import           Control.Lens     hiding ((.=))
import           Data.Aeson
import           Data.Aeson.Types
import           Servant.API

type JSONValue = Value

emptyObject :: Value
emptyObject = Object mempty

parseJSONText :: FromText a => String -> Value -> Parser a
parseJSONText n = withText n (maybe (fail n) pure . fromText)

toJSONText :: ToText a => a -> Value
toJSONText = String . toText

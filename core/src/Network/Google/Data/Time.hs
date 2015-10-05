{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- |
-- Module      : Network.Google.Data.Time
-- Copyright   : (c) 2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Data.Time where

import           Data.Aeson
import           Data.Data    (Data, Typeable)
import           Data.Text    (Text)
import           Data.Time
import           GHC.Generics
import           Servant.API  (FromText, ToText)

_Time     = undefined
_Date     = undefined
_DateTime = undefined

newtype Time' = Time' Text -- TimeOfDay
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

newtype Date' = Date' Text -- LocalTime
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

newtype DateTime' = DateTime' Text -- UTCTime
    deriving (Eq, Ord, Show, Read, Generic, Data, Typeable, FromText, ToText, FromJSON, ToJSON)

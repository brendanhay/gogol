{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.BigQuery.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.BigQuery.Types.Sum where

import           Network.Google.Prelude

-- | Restrict information returned to a set of selected fields
data JobsList'Projection
    = Full
      -- ^ @full@
      -- Includes all job data
    | Minimal
      -- ^ @minimal@
      -- Does not include the job configuration
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsList'Projection

instance FromText JobsList'Projection where
    fromText = \case
        "full" -> Just Full
        "minimal" -> Just Minimal
        _ -> Nothing

instance ToText JobsList'Projection where
    toText = \case
        Full -> "full"
        Minimal -> "minimal"

instance FromJSON JobsList'Projection where
    parseJSON = parseJSONText "JobsList'Projection"

instance ToJSON JobsList'Projection where
    toJSON = toJSONText

-- | Data format for the response.
data Alt
    = CSV
      -- ^ @csv@
      -- Responses with Content-Type of text\/csv
    | JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "csv" -> Just CSV
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        CSV -> "csv"
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Filter for job state
data JobsList'StateFilter
    = Done
      -- ^ @done@
      -- Finished jobs
    | Pending
      -- ^ @pending@
      -- Pending jobs
    | Running
      -- ^ @running@
      -- Running jobs
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsList'StateFilter

instance FromText JobsList'StateFilter where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        "running" -> Just Running
        _ -> Nothing

instance ToText JobsList'StateFilter where
    toText = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON JobsList'StateFilter where
    parseJSON = parseJSONText "JobsList'StateFilter"

instance ToJSON JobsList'StateFilter where
    toJSON = toJSONText

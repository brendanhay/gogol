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

-- | Filter for job state
data BigqueryJobsListStateFilter
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

instance Hashable BigqueryJobsListStateFilter

instance FromText BigqueryJobsListStateFilter where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        "running" -> Just Running
        _ -> Nothing

instance ToText BigqueryJobsListStateFilter where
    toText = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON BigqueryJobsListStateFilter where
    parseJSON = parseJSONText "BigqueryJobsListStateFilter"

instance ToJSON BigqueryJobsListStateFilter where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields
data BigqueryJobsListProjection
    = Full
      -- ^ @full@
      -- Includes all job data
    | Minimal
      -- ^ @minimal@
      -- Does not include the job configuration
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable BigqueryJobsListProjection

instance FromText BigqueryJobsListProjection where
    fromText = \case
        "full" -> Just Full
        "minimal" -> Just Minimal
        _ -> Nothing

instance ToText BigqueryJobsListProjection where
    toText = \case
        Full -> "full"
        Minimal -> "minimal"

instance FromJSON BigqueryJobsListProjection where
    parseJSON = parseJSONText "BigqueryJobsListProjection"

instance ToJSON BigqueryJobsListProjection where
    toJSON = toJSONText

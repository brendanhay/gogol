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
data StateFilter
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

instance Hashable StateFilter

instance FromText StateFilter where
    fromText = \case
        "done" -> Just Done
        "pending" -> Just Pending
        "running" -> Just Running
        _ -> Nothing

instance ToText StateFilter where
    toText = \case
        Done -> "done"
        Pending -> "pending"
        Running -> "running"

instance FromJSON StateFilter where
    parseJSON = parseJSONText "StateFilter"

instance ToJSON StateFilter where
    toJSON = toJSONText

-- | Restrict information returned to a set of selected fields
data Projection
    = Full
      -- ^ @full@
      -- Includes all job data
    | Minimal
      -- ^ @minimal@
      -- Does not include the job configuration
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Projection

instance FromText Projection where
    fromText = \case
        "full" -> Just Full
        "minimal" -> Just Minimal
        _ -> Nothing

instance ToText Projection where
    toText = \case
        Full -> "full"
        Minimal -> "minimal"

instance FromJSON Projection where
    parseJSON = parseJSONText "Projection"

instance ToJSON Projection where
    toJSON = toJSONText

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Maps.Coordinate.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Maps.Coordinate.Types.Sum where

import           Network.Google.Prelude

-- | Data format for the response.
data Alt
    = JSON
      -- ^ @json@
      -- Responses with Content-Type of application\/json
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Alt

instance FromText Alt where
    fromText = \case
        "json" -> Just JSON
        _ -> Nothing

instance ToText Alt where
    toText = \case
        JSON -> "json"

instance FromJSON Alt where
    parseJSON = parseJSONText "Alt"

instance ToJSON Alt where
    toJSON = toJSONText

-- | Job progress
data JobsUpdate'Progress
    = Completed
      -- ^ @COMPLETED@
      -- Completed
    | InProgress
      -- ^ @IN_PROGRESS@
      -- In progress
    | NotAccepted
      -- ^ @NOT_ACCEPTED@
      -- Not accepted
    | NotStarted
      -- ^ @NOT_STARTED@
      -- Not started
    | Obsolete
      -- ^ @OBSOLETE@
      -- Obsolete
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsUpdate'Progress

instance FromText JobsUpdate'Progress where
    fromText = \case
        "COMPLETED" -> Just Completed
        "IN_PROGRESS" -> Just InProgress
        "NOT_ACCEPTED" -> Just NotAccepted
        "NOT_STARTED" -> Just NotStarted
        "OBSOLETE" -> Just Obsolete
        _ -> Nothing

instance ToText JobsUpdate'Progress where
    toText = \case
        Completed -> "COMPLETED"
        InProgress -> "IN_PROGRESS"
        NotAccepted -> "NOT_ACCEPTED"
        NotStarted -> "NOT_STARTED"
        Obsolete -> "OBSOLETE"

instance FromJSON JobsUpdate'Progress where
    parseJSON = parseJSONText "JobsUpdate'Progress"

instance ToJSON JobsUpdate'Progress where
    toJSON = toJSONText

-- | Job progress
data JobsPatch'Progress
    = JPPCompleted
      -- ^ @COMPLETED@
      -- Completed
    | JPPInProgress
      -- ^ @IN_PROGRESS@
      -- In progress
    | JPPNotAccepted
      -- ^ @NOT_ACCEPTED@
      -- Not accepted
    | JPPNotStarted
      -- ^ @NOT_STARTED@
      -- Not started
    | JPPObsolete
      -- ^ @OBSOLETE@
      -- Obsolete
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsPatch'Progress

instance FromText JobsPatch'Progress where
    fromText = \case
        "COMPLETED" -> Just JPPCompleted
        "IN_PROGRESS" -> Just JPPInProgress
        "NOT_ACCEPTED" -> Just JPPNotAccepted
        "NOT_STARTED" -> Just JPPNotStarted
        "OBSOLETE" -> Just JPPObsolete
        _ -> Nothing

instance ToText JobsPatch'Progress where
    toText = \case
        JPPCompleted -> "COMPLETED"
        JPPInProgress -> "IN_PROGRESS"
        JPPNotAccepted -> "NOT_ACCEPTED"
        JPPNotStarted -> "NOT_STARTED"
        JPPObsolete -> "OBSOLETE"

instance FromJSON JobsPatch'Progress where
    parseJSON = parseJSONText "JobsPatch'Progress"

instance ToJSON JobsPatch'Progress where
    toJSON = toJSONText

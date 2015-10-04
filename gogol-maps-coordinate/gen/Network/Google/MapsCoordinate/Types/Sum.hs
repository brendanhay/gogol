{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsCoordinate.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsCoordinate.Types.Sum where

import           Network.Google.Prelude

-- | Job progress
data Progress
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

instance Hashable Progress

instance FromText Progress where
    fromText = \case
        "COMPLETED" -> Just Completed
        "IN_PROGRESS" -> Just InProgress
        "NOT_ACCEPTED" -> Just NotAccepted
        "NOT_STARTED" -> Just NotStarted
        "OBSOLETE" -> Just Obsolete
        _ -> Nothing

instance ToText Progress where
    toText = \case
        Completed -> "COMPLETED"
        InProgress -> "IN_PROGRESS"
        NotAccepted -> "NOT_ACCEPTED"
        NotStarted -> "NOT_STARTED"
        Obsolete -> "OBSOLETE"

instance FromJSON Progress where
    parseJSON = parseJSONText "Progress"

instance ToJSON Progress where
    toJSON = toJSONText

-- | Job progress
data CoordinateJobsUpdateProgress
    = CJUPCompleted
      -- ^ @COMPLETED@
      -- Completed
    | CJUPInProgress
      -- ^ @IN_PROGRESS@
      -- In progress
    | CJUPNotAccepted
      -- ^ @NOT_ACCEPTED@
      -- Not accepted
    | CJUPNotStarted
      -- ^ @NOT_STARTED@
      -- Not started
    | CJUPObsolete
      -- ^ @OBSOLETE@
      -- Obsolete
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CoordinateJobsUpdateProgress

instance FromText CoordinateJobsUpdateProgress where
    fromText = \case
        "COMPLETED" -> Just CJUPCompleted
        "IN_PROGRESS" -> Just CJUPInProgress
        "NOT_ACCEPTED" -> Just CJUPNotAccepted
        "NOT_STARTED" -> Just CJUPNotStarted
        "OBSOLETE" -> Just CJUPObsolete
        _ -> Nothing

instance ToText CoordinateJobsUpdateProgress where
    toText = \case
        CJUPCompleted -> "COMPLETED"
        CJUPInProgress -> "IN_PROGRESS"
        CJUPNotAccepted -> "NOT_ACCEPTED"
        CJUPNotStarted -> "NOT_STARTED"
        CJUPObsolete -> "OBSOLETE"

instance FromJSON CoordinateJobsUpdateProgress where
    parseJSON = parseJSONText "CoordinateJobsUpdateProgress"

instance ToJSON CoordinateJobsUpdateProgress where
    toJSON = toJSONText

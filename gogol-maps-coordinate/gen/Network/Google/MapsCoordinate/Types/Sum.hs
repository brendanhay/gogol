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
data CoordinateJobsUpdateProgress
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

instance Hashable CoordinateJobsUpdateProgress

instance FromText CoordinateJobsUpdateProgress where
    fromText = \case
        "COMPLETED" -> Just Completed
        "IN_PROGRESS" -> Just InProgress
        "NOT_ACCEPTED" -> Just NotAccepted
        "NOT_STARTED" -> Just NotStarted
        "OBSOLETE" -> Just Obsolete
        _ -> Nothing

instance ToText CoordinateJobsUpdateProgress where
    toText = \case
        Completed -> "COMPLETED"
        InProgress -> "IN_PROGRESS"
        NotAccepted -> "NOT_ACCEPTED"
        NotStarted -> "NOT_STARTED"
        Obsolete -> "OBSOLETE"

instance FromJSON CoordinateJobsUpdateProgress where
    parseJSON = parseJSONText "CoordinateJobsUpdateProgress"

instance ToJSON CoordinateJobsUpdateProgress where
    toJSON = toJSONText

-- | Job progress
data CoordinateJobsPatchProgress
    = CJPPCompleted
      -- ^ @COMPLETED@
      -- Completed
    | CJPPInProgress
      -- ^ @IN_PROGRESS@
      -- In progress
    | CJPPNotAccepted
      -- ^ @NOT_ACCEPTED@
      -- Not accepted
    | CJPPNotStarted
      -- ^ @NOT_STARTED@
      -- Not started
    | CJPPObsolete
      -- ^ @OBSOLETE@
      -- Obsolete
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable CoordinateJobsPatchProgress

instance FromText CoordinateJobsPatchProgress where
    fromText = \case
        "COMPLETED" -> Just CJPPCompleted
        "IN_PROGRESS" -> Just CJPPInProgress
        "NOT_ACCEPTED" -> Just CJPPNotAccepted
        "NOT_STARTED" -> Just CJPPNotStarted
        "OBSOLETE" -> Just CJPPObsolete
        _ -> Nothing

instance ToText CoordinateJobsPatchProgress where
    toText = \case
        CJPPCompleted -> "COMPLETED"
        CJPPInProgress -> "IN_PROGRESS"
        CJPPNotAccepted -> "NOT_ACCEPTED"
        CJPPNotStarted -> "NOT_STARTED"
        CJPPObsolete -> "OBSOLETE"

instance FromJSON CoordinateJobsPatchProgress where
    parseJSON = parseJSONText "CoordinateJobsPatchProgress"

instance ToJSON CoordinateJobsPatchProgress where
    toJSON = toJSONText

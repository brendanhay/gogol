{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.MapsCoordinate.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.MapsCoordinate.Types.Sum where

import           Network.Google.Prelude

-- | Job progress
data JobsPatchProgress
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

instance Hashable JobsPatchProgress

instance FromHttpApiData JobsPatchProgress where
    parseQueryParam = \case
        "COMPLETED" -> Right Completed
        "IN_PROGRESS" -> Right InProgress
        "NOT_ACCEPTED" -> Right NotAccepted
        "NOT_STARTED" -> Right NotStarted
        "OBSOLETE" -> Right Obsolete
        x -> Left ("Unable to parse JobsPatchProgress from: " <> x)

instance ToHttpApiData JobsPatchProgress where
    toQueryParam = \case
        Completed -> "COMPLETED"
        InProgress -> "IN_PROGRESS"
        NotAccepted -> "NOT_ACCEPTED"
        NotStarted -> "NOT_STARTED"
        Obsolete -> "OBSOLETE"

instance FromJSON JobsPatchProgress where
    parseJSON = parseJSONText "JobsPatchProgress"

instance ToJSON JobsPatchProgress where
    toJSON = toJSONText

-- | Job progress
data JobsUpdateProgress
    = JUPCompleted
      -- ^ @COMPLETED@
      -- Completed
    | JUPInProgress
      -- ^ @IN_PROGRESS@
      -- In progress
    | JUPNotAccepted
      -- ^ @NOT_ACCEPTED@
      -- Not accepted
    | JUPNotStarted
      -- ^ @NOT_STARTED@
      -- Not started
    | JUPObsolete
      -- ^ @OBSOLETE@
      -- Obsolete
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable JobsUpdateProgress

instance FromHttpApiData JobsUpdateProgress where
    parseQueryParam = \case
        "COMPLETED" -> Right JUPCompleted
        "IN_PROGRESS" -> Right JUPInProgress
        "NOT_ACCEPTED" -> Right JUPNotAccepted
        "NOT_STARTED" -> Right JUPNotStarted
        "OBSOLETE" -> Right JUPObsolete
        x -> Left ("Unable to parse JobsUpdateProgress from: " <> x)

instance ToHttpApiData JobsUpdateProgress where
    toQueryParam = \case
        JUPCompleted -> "COMPLETED"
        JUPInProgress -> "IN_PROGRESS"
        JUPNotAccepted -> "NOT_ACCEPTED"
        JUPNotStarted -> "NOT_STARTED"
        JUPObsolete -> "OBSOLETE"

instance FromJSON JobsUpdateProgress where
    parseJSON = parseJSONText "JobsUpdateProgress"

instance ToJSON JobsUpdateProgress where
    toJSON = toJSONText

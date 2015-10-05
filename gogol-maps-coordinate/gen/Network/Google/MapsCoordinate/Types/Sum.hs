{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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

instance FromText JobsPatchProgress where
    fromText = \case
        "COMPLETED" -> Just Completed
        "IN_PROGRESS" -> Just InProgress
        "NOT_ACCEPTED" -> Just NotAccepted
        "NOT_STARTED" -> Just NotStarted
        "OBSOLETE" -> Just Obsolete
        _ -> Nothing

instance ToText JobsPatchProgress where
    toText = \case
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

instance FromText JobsUpdateProgress where
    fromText = \case
        "COMPLETED" -> Just JUPCompleted
        "IN_PROGRESS" -> Just JUPInProgress
        "NOT_ACCEPTED" -> Just JUPNotAccepted
        "NOT_STARTED" -> Just JUPNotStarted
        "OBSOLETE" -> Just JUPObsolete
        _ -> Nothing

instance ToText JobsUpdateProgress where
    toText = \case
        JUPCompleted -> "COMPLETED"
        JUPInProgress -> "IN_PROGRESS"
        JUPNotAccepted -> "NOT_ACCEPTED"
        JUPNotStarted -> "NOT_STARTED"
        JUPObsolete -> "OBSOLETE"

instance FromJSON JobsUpdateProgress where
    parseJSON = parseJSONText "JobsUpdateProgress"

instance ToJSON JobsUpdateProgress where
    toJSON = toJSONText

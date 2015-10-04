{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Mirror.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Mirror.Types.Sum where

import           Network.Google.Prelude

-- | Controls the order in which timeline items are returned.
data TimelineListOrderBy
    = DisplayTime
      -- ^ @displayTime@
      -- Results will be ordered by displayTime (default). This is the same
      -- ordering as is used in the timeline on the device.
    | WriteTime
      -- ^ @writeTime@
      -- Results will be ordered by the time at which they were last written to
      -- the data store.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable TimelineListOrderBy

instance FromText TimelineListOrderBy where
    fromText = \case
        "displayTime" -> Just DisplayTime
        "writeTime" -> Just WriteTime
        _ -> Nothing

instance ToText TimelineListOrderBy where
    toText = \case
        DisplayTime -> "displayTime"
        WriteTime -> "writeTime"

instance FromJSON TimelineListOrderBy where
    parseJSON = parseJSONText "TimelineListOrderBy"

instance ToJSON TimelineListOrderBy where
    toJSON = toJSONText

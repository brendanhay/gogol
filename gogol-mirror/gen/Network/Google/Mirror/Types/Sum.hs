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
data OrderBy
    = OBDisplayTime
      -- ^ @displayTime@
      -- Results will be ordered by displayTime (default). This is the same
      -- ordering as is used in the timeline on the device.
    | OBWriteTime
      -- ^ @writeTime@
      -- Results will be ordered by the time at which they were last written to
      -- the data store.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable OrderBy

instance FromText OrderBy where
    fromText = \case
        "displayTime" -> Just OBDisplayTime
        "writeTime" -> Just OBWriteTime
        _ -> Nothing

instance ToText OrderBy where
    toText = \case
        OBDisplayTime -> "displayTime"
        OBWriteTime -> "writeTime"

instance FromJSON OrderBy where
    parseJSON = parseJSONText "OrderBy"

instance ToJSON OrderBy where
    toJSON = toJSONText

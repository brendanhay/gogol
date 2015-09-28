{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.InstanceGroups.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.InstanceGroups.Types.Sum where

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

-- | The requested format of the return value. It can be URL or URL_PORT. A
-- JSON object will be included in the response based on the format. The
-- default format is NONE, which results in no JSON in the response.
data ZoneViewsListResources'Format
    = None
      -- ^ @NONE@
    | URL
      -- ^ @URL@
    | URLPort
      -- ^ @URL_PORT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneViewsListResources'Format

instance FromText ZoneViewsListResources'Format where
    fromText = \case
        "NONE" -> Just None
        "URL" -> Just URL
        "URL_PORT" -> Just URLPort
        _ -> Nothing

instance ToText ZoneViewsListResources'Format where
    toText = \case
        None -> "NONE"
        URL -> "URL"
        URLPort -> "URL_PORT"

instance FromJSON ZoneViewsListResources'Format where
    parseJSON = parseJSONText "ZoneViewsListResources'Format"

instance ToJSON ZoneViewsListResources'Format where
    toJSON = toJSONText

-- | The state of the instance to list. By default, it lists all instances.
data ZoneViewsListResources'ListState
    = All
      -- ^ @ALL@
    | Running
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneViewsListResources'ListState

instance FromText ZoneViewsListResources'ListState where
    fromText = \case
        "ALL" -> Just All
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText ZoneViewsListResources'ListState where
    toText = \case
        All -> "ALL"
        Running -> "RUNNING"

instance FromJSON ZoneViewsListResources'ListState where
    parseJSON = parseJSONText "ZoneViewsListResources'ListState"

instance ToJSON ZoneViewsListResources'ListState where
    toJSON = toJSONText

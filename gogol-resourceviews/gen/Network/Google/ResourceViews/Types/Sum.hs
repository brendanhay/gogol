{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceViews.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceViews.Types.Sum where

import           Network.Google.Prelude

-- | The requested format of the return value. It can be URL or URL_PORT. A
-- JSON object will be included in the response based on the format. The
-- default format is NONE, which results in no JSON in the response.
data ZoneViewsListResourcesFormat
    = None
      -- ^ @NONE@
    | URL
      -- ^ @URL@
    | URLPort
      -- ^ @URL_PORT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneViewsListResourcesFormat

instance FromText ZoneViewsListResourcesFormat where
    fromText = \case
        "NONE" -> Just None
        "URL" -> Just URL
        "URL_PORT" -> Just URLPort
        _ -> Nothing

instance ToText ZoneViewsListResourcesFormat where
    toText = \case
        None -> "NONE"
        URL -> "URL"
        URLPort -> "URL_PORT"

instance FromJSON ZoneViewsListResourcesFormat where
    parseJSON = parseJSONText "ZoneViewsListResourcesFormat"

instance ToJSON ZoneViewsListResourcesFormat where
    toJSON = toJSONText

-- | The state of the instance to list. By default, it lists all instances.
data ZoneViewsListResourcesListState
    = All
      -- ^ @ALL@
    | Running
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ZoneViewsListResourcesListState

instance FromText ZoneViewsListResourcesListState where
    fromText = \case
        "ALL" -> Just All
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText ZoneViewsListResourcesListState where
    toText = \case
        All -> "ALL"
        Running -> "RUNNING"

instance FromJSON ZoneViewsListResourcesListState where
    parseJSON = parseJSONText "ZoneViewsListResourcesListState"

instance ToJSON ZoneViewsListResourcesListState where
    toJSON = toJSONText

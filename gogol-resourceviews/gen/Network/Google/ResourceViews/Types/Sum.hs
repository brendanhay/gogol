{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ResourceViews.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ResourceViews.Types.Sum where

import           Network.Google.Prelude

-- | The state of the instance to list. By default, it lists all instances.
data ListState
    = All
      -- ^ @ALL@
    | Running
      -- ^ @RUNNING@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ListState

instance FromText ListState where
    fromText = \case
        "ALL" -> Just All
        "RUNNING" -> Just Running
        _ -> Nothing

instance ToText ListState where
    toText = \case
        All -> "ALL"
        Running -> "RUNNING"

instance FromJSON ListState where
    parseJSON = parseJSONText "ListState"

instance ToJSON ListState where
    toJSON = toJSONText

-- | The requested format of the return value. It can be URL or URL_PORT. A
-- JSON object will be included in the response based on the format. The
-- default format is NONE, which results in no JSON in the response.
data Format
    = None
      -- ^ @NONE@
    | URL
      -- ^ @URL@
    | URLPort
      -- ^ @URL_PORT@
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable Format

instance FromText Format where
    fromText = \case
        "NONE" -> Just None
        "URL" -> Just URL
        "URL_PORT" -> Just URLPort
        _ -> Nothing

instance ToText Format where
    toText = \case
        None -> "NONE"
        URL -> "URL"
        URLPort -> "URL_PORT"

instance FromJSON Format where
    parseJSON = parseJSONText "Format"

instance ToJSON Format where
    toJSON = toJSONText

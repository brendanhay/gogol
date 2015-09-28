{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.PageSpeed.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.PageSpeed.Types.Sum where

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

-- | The analysis strategy to use
data PagespeedapiRunpagespeed'Strategy
    = Desktop
      -- ^ @desktop@
      -- Fetch and analyze the URL for desktop browsers
    | Mobile
      -- ^ @mobile@
      -- Fetch and analyze the URL for mobile devices
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable PagespeedapiRunpagespeed'Strategy

instance FromText PagespeedapiRunpagespeed'Strategy where
    fromText = \case
        "desktop" -> Just Desktop
        "mobile" -> Just Mobile
        _ -> Nothing

instance ToText PagespeedapiRunpagespeed'Strategy where
    toText = \case
        Desktop -> "desktop"
        Mobile -> "mobile"

instance FromJSON PagespeedapiRunpagespeed'Strategy where
    parseJSON = parseJSONText "PagespeedapiRunpagespeed'Strategy"

instance ToJSON PagespeedapiRunpagespeed'Strategy where
    toJSON = toJSONText

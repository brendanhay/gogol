{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Games.Configuration.Types.Sum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Games.Configuration.Types.Sum where

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

-- | Selects which image in a resource for this method.
data ImageConfigurationsUpload'ImageType
    = AchievementIcon
      -- ^ @ACHIEVEMENT_ICON@
      -- The icon image for an achievement resource.
    | LeaderboardIcon
      -- ^ @LEADERBOARD_ICON@
      -- The icon image for a leaderboard resource.
      deriving (Eq,Ord,Enum,Read,Show,Data,Typeable,Generic)

instance Hashable ImageConfigurationsUpload'ImageType

instance FromText ImageConfigurationsUpload'ImageType where
    fromText = \case
        "ACHIEVEMENT_ICON" -> Just AchievementIcon
        "LEADERBOARD_ICON" -> Just LeaderboardIcon
        _ -> Nothing

instance ToText ImageConfigurationsUpload'ImageType where
    toText = \case
        AchievementIcon -> "ACHIEVEMENT_ICON"
        LeaderboardIcon -> "LEADERBOARD_ICON"

instance FromJSON ImageConfigurationsUpload'ImageType where
    parseJSON = parseJSONText "ImageConfigurationsUpload'ImageType"

instance ToJSON ImageConfigurationsUpload'ImageType where
    toJSON = toJSONText

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesConfiguration.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesConfiguration.Types.Sum where

import           Network.Google.Prelude

-- | Selects which image in a resource for this method.
data ImageConfigurationsUploadImageType
    = AchievementIcon
      -- ^ @ACHIEVEMENT_ICON@
      -- The icon image for an achievement resource.
    | LeaderboardIcon
      -- ^ @LEADERBOARD_ICON@
      -- The icon image for a leaderboard resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageConfigurationsUploadImageType

instance FromHttpApiData ImageConfigurationsUploadImageType where
    parseQueryParam = \case
        "ACHIEVEMENT_ICON" -> Right AchievementIcon
        "LEADERBOARD_ICON" -> Right LeaderboardIcon
        x -> Left ("Unable to parse ImageConfigurationsUploadImageType from: " <> x)

instance ToHttpApiData ImageConfigurationsUploadImageType where
    toQueryParam = \case
        AchievementIcon -> "ACHIEVEMENT_ICON"
        LeaderboardIcon -> "LEADERBOARD_ICON"

instance FromJSON ImageConfigurationsUploadImageType where
    parseJSON = parseJSONText "ImageConfigurationsUploadImageType"

instance ToJSON ImageConfigurationsUploadImageType where
    toJSON = toJSONText

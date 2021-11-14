{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.GamesConfiguration.Types.Sum
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.GamesConfiguration.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

data LeaderboardConfigurationScoreOrder
    = ScoreOrderUnspecified
      -- ^ @SCORE_ORDER_UNSPECIFIED@
      -- Default value. This value is unused.
    | LargerIsBetter
      -- ^ @LARGER_IS_BETTER@
      -- Larger scores posted are ranked higher.
    | SmallerIsBetter
      -- ^ @SMALLER_IS_BETTER@
      -- Smaller scores posted are ranked higher.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LeaderboardConfigurationScoreOrder

instance FromHttpApiData LeaderboardConfigurationScoreOrder where
    parseQueryParam = \case
        "SCORE_ORDER_UNSPECIFIED" -> Right ScoreOrderUnspecified
        "LARGER_IS_BETTER" -> Right LargerIsBetter
        "SMALLER_IS_BETTER" -> Right SmallerIsBetter
        x -> Left ("Unable to parse LeaderboardConfigurationScoreOrder from: " <> x)

instance ToHttpApiData LeaderboardConfigurationScoreOrder where
    toQueryParam = \case
        ScoreOrderUnspecified -> "SCORE_ORDER_UNSPECIFIED"
        LargerIsBetter -> "LARGER_IS_BETTER"
        SmallerIsBetter -> "SMALLER_IS_BETTER"

instance FromJSON LeaderboardConfigurationScoreOrder where
    parseJSON = parseJSONText "LeaderboardConfigurationScoreOrder"

instance ToJSON LeaderboardConfigurationScoreOrder where
    toJSON = toJSONText

-- | The type of the achievement.
data AchievementConfigurationAchievementType
    = AchievementTypeUnspecified
      -- ^ @ACHIEVEMENT_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | Standard
      -- ^ @STANDARD@
      -- Achievement is either locked or unlocked.
    | Incremental
      -- ^ @INCREMENTAL@
      -- Achievement is incremental.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementConfigurationAchievementType

instance FromHttpApiData AchievementConfigurationAchievementType where
    parseQueryParam = \case
        "ACHIEVEMENT_TYPE_UNSPECIFIED" -> Right AchievementTypeUnspecified
        "STANDARD" -> Right Standard
        "INCREMENTAL" -> Right Incremental
        x -> Left ("Unable to parse AchievementConfigurationAchievementType from: " <> x)

instance ToHttpApiData AchievementConfigurationAchievementType where
    toQueryParam = \case
        AchievementTypeUnspecified -> "ACHIEVEMENT_TYPE_UNSPECIFIED"
        Standard -> "STANDARD"
        Incremental -> "INCREMENTAL"

instance FromJSON AchievementConfigurationAchievementType where
    parseJSON = parseJSONText "AchievementConfigurationAchievementType"

instance ToJSON AchievementConfigurationAchievementType where
    toJSON = toJSONText

-- | The image type for the image.
data ImageConfigurationImageType
    = ImageTypeUnspecified
      -- ^ @IMAGE_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | AchievementIcon
      -- ^ @ACHIEVEMENT_ICON@
      -- The icon image for an achievement resource.
    | LeaderboardIcon
      -- ^ @LEADERBOARD_ICON@
      -- The icon image for a leaderboard resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageConfigurationImageType

instance FromHttpApiData ImageConfigurationImageType where
    parseQueryParam = \case
        "IMAGE_TYPE_UNSPECIFIED" -> Right ImageTypeUnspecified
        "ACHIEVEMENT_ICON" -> Right AchievementIcon
        "LEADERBOARD_ICON" -> Right LeaderboardIcon
        x -> Left ("Unable to parse ImageConfigurationImageType from: " <> x)

instance ToHttpApiData ImageConfigurationImageType where
    toQueryParam = \case
        ImageTypeUnspecified -> "IMAGE_TYPE_UNSPECIFIED"
        AchievementIcon -> "ACHIEVEMENT_ICON"
        LeaderboardIcon -> "LEADERBOARD_ICON"

instance FromJSON ImageConfigurationImageType where
    parseJSON = parseJSONText "ImageConfigurationImageType"

instance ToJSON ImageConfigurationImageType where
    toJSON = toJSONText

-- | The initial state of the achievement.
data AchievementConfigurationInitialState
    = InitialStateUnspecified
      -- ^ @INITIAL_STATE_UNSPECIFIED@
      -- Default value. This value is unused.
    | Hidden
      -- ^ @HIDDEN@
      -- Achievement is hidden.
    | Revealed
      -- ^ @REVEALED@
      -- Achievement is revealed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable AchievementConfigurationInitialState

instance FromHttpApiData AchievementConfigurationInitialState where
    parseQueryParam = \case
        "INITIAL_STATE_UNSPECIFIED" -> Right InitialStateUnspecified
        "HIDDEN" -> Right Hidden
        "REVEALED" -> Right Revealed
        x -> Left ("Unable to parse AchievementConfigurationInitialState from: " <> x)

instance ToHttpApiData AchievementConfigurationInitialState where
    toQueryParam = \case
        InitialStateUnspecified -> "INITIAL_STATE_UNSPECIFIED"
        Hidden -> "HIDDEN"
        Revealed -> "REVEALED"

instance FromJSON AchievementConfigurationInitialState where
    parseJSON = parseJSONText "AchievementConfigurationInitialState"

instance ToJSON AchievementConfigurationInitialState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | The formatting for the number.
data GamesNumberFormatConfigurationNumberFormatType
    = NumberFormatTypeUnspecified
      -- ^ @NUMBER_FORMAT_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | Numeric
      -- ^ @NUMERIC@
      -- Numbers are formatted to have no digits or fixed number of digits after
      -- the decimal point according to locale. An optional custom unit can be
      -- added.
    | TimeDuration
      -- ^ @TIME_DURATION@
      -- Numbers are formatted to hours, minutes and seconds.
    | Currency
      -- ^ @CURRENCY@
      -- Numbers are formatted to currency according to locale.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GamesNumberFormatConfigurationNumberFormatType

instance FromHttpApiData GamesNumberFormatConfigurationNumberFormatType where
    parseQueryParam = \case
        "NUMBER_FORMAT_TYPE_UNSPECIFIED" -> Right NumberFormatTypeUnspecified
        "NUMERIC" -> Right Numeric
        "TIME_DURATION" -> Right TimeDuration
        "CURRENCY" -> Right Currency
        x -> Left ("Unable to parse GamesNumberFormatConfigurationNumberFormatType from: " <> x)

instance ToHttpApiData GamesNumberFormatConfigurationNumberFormatType where
    toQueryParam = \case
        NumberFormatTypeUnspecified -> "NUMBER_FORMAT_TYPE_UNSPECIFIED"
        Numeric -> "NUMERIC"
        TimeDuration -> "TIME_DURATION"
        Currency -> "CURRENCY"

instance FromJSON GamesNumberFormatConfigurationNumberFormatType where
    parseJSON = parseJSONText "GamesNumberFormatConfigurationNumberFormatType"

instance ToJSON GamesNumberFormatConfigurationNumberFormatType where
    toJSON = toJSONText

-- | Selects which image in a resource for this method.
data ImageConfigurationsUploadImageType
    = ICUITImageTypeUnspecified
      -- ^ @IMAGE_TYPE_UNSPECIFIED@
      -- Default value. This value is unused.
    | ICUITAchievementIcon
      -- ^ @ACHIEVEMENT_ICON@
      -- The icon image for an achievement resource.
    | ICUITLeaderboardIcon
      -- ^ @LEADERBOARD_ICON@
      -- The icon image for a leaderboard resource.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ImageConfigurationsUploadImageType

instance FromHttpApiData ImageConfigurationsUploadImageType where
    parseQueryParam = \case
        "IMAGE_TYPE_UNSPECIFIED" -> Right ICUITImageTypeUnspecified
        "ACHIEVEMENT_ICON" -> Right ICUITAchievementIcon
        "LEADERBOARD_ICON" -> Right ICUITLeaderboardIcon
        x -> Left ("Unable to parse ImageConfigurationsUploadImageType from: " <> x)

instance ToHttpApiData ImageConfigurationsUploadImageType where
    toQueryParam = \case
        ICUITImageTypeUnspecified -> "IMAGE_TYPE_UNSPECIFIED"
        ICUITAchievementIcon -> "ACHIEVEMENT_ICON"
        ICUITLeaderboardIcon -> "LEADERBOARD_ICON"

instance FromJSON ImageConfigurationsUploadImageType where
    parseJSON = parseJSONText "ImageConfigurationsUploadImageType"

instance ToJSON ImageConfigurationsUploadImageType where
    toJSON = toJSONText

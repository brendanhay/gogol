{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.GamesConfiguration.Internal.Product
  ( -- * AchievementConfiguration
    AchievementConfiguration (..),
    newAchievementConfiguration,

    -- * AchievementConfigurationDetail
    AchievementConfigurationDetail (..),
    newAchievementConfigurationDetail,

    -- * AchievementConfigurationListResponse
    AchievementConfigurationListResponse (..),
    newAchievementConfigurationListResponse,

    -- * GamesNumberAffixConfiguration
    GamesNumberAffixConfiguration (..),
    newGamesNumberAffixConfiguration,

    -- * GamesNumberFormatConfiguration
    GamesNumberFormatConfiguration (..),
    newGamesNumberFormatConfiguration,

    -- * LeaderboardConfiguration
    LeaderboardConfiguration (..),
    newLeaderboardConfiguration,

    -- * LeaderboardConfigurationDetail
    LeaderboardConfigurationDetail (..),
    newLeaderboardConfigurationDetail,

    -- * LeaderboardConfigurationListResponse
    LeaderboardConfigurationListResponse (..),
    newLeaderboardConfigurationListResponse,

    -- * LocalizedString
    LocalizedString (..),
    newLocalizedString,

    -- * LocalizedStringBundle
    LocalizedStringBundle (..),
    newLocalizedStringBundle,
  )
where

import Gogol.GamesConfiguration.Internal.Sum
import qualified Gogol.Prelude as Core

-- | An achievement configuration resource.
--
-- /See:/ 'newAchievementConfiguration' smart constructor.
data AchievementConfiguration = AchievementConfiguration
  { -- | The type of the achievement.
    achievementType :: (Core.Maybe AchievementConfiguration_AchievementType),
    -- | The draft data of the achievement.
    draft :: (Core.Maybe AchievementConfigurationDetail),
    -- | The ID of the achievement.
    id :: (Core.Maybe Core.Text),
    -- | The initial state of the achievement.
    initialState :: (Core.Maybe AchievementConfiguration_InitialState),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#achievementConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | The read-only published data of the achievement.
    published :: (Core.Maybe AchievementConfigurationDetail),
    -- | Steps to unlock. Only applicable to incremental achievements.
    stepsToUnlock :: (Core.Maybe Core.Int32),
    -- | The token for this resource.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementConfiguration' with the minimum fields required to make a request.
newAchievementConfiguration ::
  AchievementConfiguration
newAchievementConfiguration =
  AchievementConfiguration
    { achievementType = Core.Nothing,
      draft = Core.Nothing,
      id = Core.Nothing,
      initialState = Core.Nothing,
      kind = Core.Nothing,
      published = Core.Nothing,
      stepsToUnlock = Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON AchievementConfiguration where
  parseJSON =
    Core.withObject
      "AchievementConfiguration"
      ( \o ->
          AchievementConfiguration
            Core.<$> (o Core..:? "achievementType")
            Core.<*> (o Core..:? "draft")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "initialState")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "published")
            Core.<*> (o Core..:? "stepsToUnlock")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON AchievementConfiguration where
  toJSON AchievementConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("achievementType" Core..=)
              Core.<$> achievementType,
            ("draft" Core..=) Core.<$> draft,
            ("id" Core..=) Core.<$> id,
            ("initialState" Core..=) Core.<$> initialState,
            ("kind" Core..=) Core.<$> kind,
            ("published" Core..=) Core.<$> published,
            ("stepsToUnlock" Core..=) Core.<$> stepsToUnlock,
            ("token" Core..=) Core.<$> token
          ]
      )

-- | An achievement configuration detail.
--
-- /See:/ 'newAchievementConfigurationDetail' smart constructor.
data AchievementConfigurationDetail = AchievementConfigurationDetail
  { -- | Localized strings for the achievement description.
    description :: (Core.Maybe LocalizedStringBundle),
    -- | The icon url of this achievement. Writes to this field are ignored.
    iconUrl :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#achievementConfigurationDetail@.
    kind :: (Core.Maybe Core.Text),
    -- | Localized strings for the achievement name.
    name :: (Core.Maybe LocalizedStringBundle),
    -- | Point value for the achievement.
    pointValue :: (Core.Maybe Core.Int32),
    -- | The sort rank of this achievement. Writes to this field are ignored.
    sortRank :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementConfigurationDetail' with the minimum fields required to make a request.
newAchievementConfigurationDetail ::
  AchievementConfigurationDetail
newAchievementConfigurationDetail =
  AchievementConfigurationDetail
    { description = Core.Nothing,
      iconUrl = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      pointValue = Core.Nothing,
      sortRank = Core.Nothing
    }

instance Core.FromJSON AchievementConfigurationDetail where
  parseJSON =
    Core.withObject
      "AchievementConfigurationDetail"
      ( \o ->
          AchievementConfigurationDetail
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pointValue")
            Core.<*> (o Core..:? "sortRank")
      )

instance Core.ToJSON AchievementConfigurationDetail where
  toJSON AchievementConfigurationDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("iconUrl" Core..=) Core.<$> iconUrl,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("pointValue" Core..=) Core.<$> pointValue,
            ("sortRank" Core..=) Core.<$> sortRank
          ]
      )

-- | A ListConfigurations response.
--
-- /See:/ 'newAchievementConfigurationListResponse' smart constructor.
data AchievementConfigurationListResponse = AchievementConfigurationListResponse
  { -- | The achievement configurations.
    items :: (Core.Maybe [AchievementConfiguration]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#achievementConfigurationListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AchievementConfigurationListResponse' with the minimum fields required to make a request.
newAchievementConfigurationListResponse ::
  AchievementConfigurationListResponse
newAchievementConfigurationListResponse =
  AchievementConfigurationListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    AchievementConfigurationListResponse
  where
  parseJSON =
    Core.withObject
      "AchievementConfigurationListResponse"
      ( \o ->
          AchievementConfigurationListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    AchievementConfigurationListResponse
  where
  toJSON AchievementConfigurationListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A number affix resource.
--
-- /See:/ 'newGamesNumberAffixConfiguration' smart constructor.
data GamesNumberAffixConfiguration = GamesNumberAffixConfiguration
  { -- | When the language requires special treatment of \"small\" numbers (as with 2, 3, and 4 in Czech; or numbers ending 2, 3, or 4 but not 12, 13, or 14 in Polish).
    few :: (Core.Maybe LocalizedStringBundle),
    -- | When the language requires special treatment of \"large\" numbers (as with numbers ending 11-99 in Maltese).
    many :: (Core.Maybe LocalizedStringBundle),
    -- | When the language requires special treatment of numbers like one (as with the number 1 in English and most other languages; in Russian, any number ending in 1 but not ending in 11 is in this class).
    one :: (Core.Maybe LocalizedStringBundle),
    -- | When the language does not require special treatment of the given quantity (as with all numbers in Chinese, or 42 in English).
    other :: (Core.Maybe LocalizedStringBundle),
    -- | When the language requires special treatment of numbers like two (as with 2 in Welsh, or 102 in Slovenian).
    two :: (Core.Maybe LocalizedStringBundle),
    -- | When the language requires special treatment of the number 0 (as in Arabic).
    zero :: (Core.Maybe LocalizedStringBundle)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesNumberAffixConfiguration' with the minimum fields required to make a request.
newGamesNumberAffixConfiguration ::
  GamesNumberAffixConfiguration
newGamesNumberAffixConfiguration =
  GamesNumberAffixConfiguration
    { few = Core.Nothing,
      many = Core.Nothing,
      one = Core.Nothing,
      other = Core.Nothing,
      two = Core.Nothing,
      zero = Core.Nothing
    }

instance Core.FromJSON GamesNumberAffixConfiguration where
  parseJSON =
    Core.withObject
      "GamesNumberAffixConfiguration"
      ( \o ->
          GamesNumberAffixConfiguration
            Core.<$> (o Core..:? "few")
            Core.<*> (o Core..:? "many")
            Core.<*> (o Core..:? "one")
            Core.<*> (o Core..:? "other")
            Core.<*> (o Core..:? "two")
            Core.<*> (o Core..:? "zero")
      )

instance Core.ToJSON GamesNumberAffixConfiguration where
  toJSON GamesNumberAffixConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("few" Core..=) Core.<$> few,
            ("many" Core..=) Core.<$> many,
            ("one" Core..=) Core.<$> one,
            ("other" Core..=) Core.<$> other,
            ("two" Core..=) Core.<$> two,
            ("zero" Core..=) Core.<$> zero
          ]
      )

-- | A number format resource.
--
-- /See:/ 'newGamesNumberFormatConfiguration' smart constructor.
data GamesNumberFormatConfiguration = GamesNumberFormatConfiguration
  { -- | The curreny code string. Only used for CURRENCY format type.
    currencyCode :: (Core.Maybe Core.Text),
    -- | The number of decimal places for number. Only used for NUMERIC format type.
    numDecimalPlaces :: (Core.Maybe Core.Int32),
    -- | The formatting for the number.
    numberFormatType :: (Core.Maybe GamesNumberFormatConfiguration_NumberFormatType),
    -- | An optional suffix for the NUMERIC format type. These strings follow the same plural rules as all Android string resources.
    suffix :: (Core.Maybe GamesNumberAffixConfiguration)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GamesNumberFormatConfiguration' with the minimum fields required to make a request.
newGamesNumberFormatConfiguration ::
  GamesNumberFormatConfiguration
newGamesNumberFormatConfiguration =
  GamesNumberFormatConfiguration
    { currencyCode = Core.Nothing,
      numDecimalPlaces = Core.Nothing,
      numberFormatType = Core.Nothing,
      suffix = Core.Nothing
    }

instance Core.FromJSON GamesNumberFormatConfiguration where
  parseJSON =
    Core.withObject
      "GamesNumberFormatConfiguration"
      ( \o ->
          GamesNumberFormatConfiguration
            Core.<$> (o Core..:? "currencyCode")
            Core.<*> (o Core..:? "numDecimalPlaces")
            Core.<*> (o Core..:? "numberFormatType")
            Core.<*> (o Core..:? "suffix")
      )

instance Core.ToJSON GamesNumberFormatConfiguration where
  toJSON GamesNumberFormatConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("currencyCode" Core..=) Core.<$> currencyCode,
            ("numDecimalPlaces" Core..=)
              Core.<$> numDecimalPlaces,
            ("numberFormatType" Core..=)
              Core.<$> numberFormatType,
            ("suffix" Core..=) Core.<$> suffix
          ]
      )

-- | An leaderboard configuration resource.
--
-- /See:/ 'newLeaderboardConfiguration' smart constructor.
data LeaderboardConfiguration = LeaderboardConfiguration
  { -- | The draft data of the leaderboard.
    draft :: (Core.Maybe LeaderboardConfigurationDetail),
    -- | The ID of the leaderboard.
    id :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#leaderboardConfiguration@.
    kind :: (Core.Maybe Core.Text),
    -- | The read-only published data of the leaderboard.
    published :: (Core.Maybe LeaderboardConfigurationDetail),
    -- | Maximum score that can be posted to this leaderboard.
    scoreMax :: (Core.Maybe Core.Int64),
    -- | Minimum score that can be posted to this leaderboard.
    scoreMin :: (Core.Maybe Core.Int64),
    -- |
    scoreOrder :: (Core.Maybe LeaderboardConfiguration_ScoreOrder),
    -- | The token for this resource.
    token :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardConfiguration' with the minimum fields required to make a request.
newLeaderboardConfiguration ::
  LeaderboardConfiguration
newLeaderboardConfiguration =
  LeaderboardConfiguration
    { draft = Core.Nothing,
      id = Core.Nothing,
      kind = Core.Nothing,
      published = Core.Nothing,
      scoreMax = Core.Nothing,
      scoreMin = Core.Nothing,
      scoreOrder = Core.Nothing,
      token = Core.Nothing
    }

instance Core.FromJSON LeaderboardConfiguration where
  parseJSON =
    Core.withObject
      "LeaderboardConfiguration"
      ( \o ->
          LeaderboardConfiguration
            Core.<$> (o Core..:? "draft")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "published")
            Core.<*> ( o Core..:? "scoreMax"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> ( o Core..:? "scoreMin"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "scoreOrder")
            Core.<*> (o Core..:? "token")
      )

instance Core.ToJSON LeaderboardConfiguration where
  toJSON LeaderboardConfiguration {..} =
    Core.object
      ( Core.catMaybes
          [ ("draft" Core..=) Core.<$> draft,
            ("id" Core..=) Core.<$> id,
            ("kind" Core..=) Core.<$> kind,
            ("published" Core..=) Core.<$> published,
            ("scoreMax" Core..=) Core.. Core.AsText
              Core.<$> scoreMax,
            ("scoreMin" Core..=) Core.. Core.AsText
              Core.<$> scoreMin,
            ("scoreOrder" Core..=) Core.<$> scoreOrder,
            ("token" Core..=) Core.<$> token
          ]
      )

-- | A leaderboard configuration detail.
--
-- /See:/ 'newLeaderboardConfigurationDetail' smart constructor.
data LeaderboardConfigurationDetail = LeaderboardConfigurationDetail
  { -- | The icon url of this leaderboard. Writes to this field are ignored.
    iconUrl :: (Core.Maybe Core.Text),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#leaderboardConfigurationDetail@.
    kind :: (Core.Maybe Core.Text),
    -- | Localized strings for the leaderboard name.
    name :: (Core.Maybe LocalizedStringBundle),
    -- | The score formatting for the leaderboard.
    scoreFormat :: (Core.Maybe GamesNumberFormatConfiguration),
    -- | The sort rank of this leaderboard. Writes to this field are ignored.
    sortRank :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardConfigurationDetail' with the minimum fields required to make a request.
newLeaderboardConfigurationDetail ::
  LeaderboardConfigurationDetail
newLeaderboardConfigurationDetail =
  LeaderboardConfigurationDetail
    { iconUrl = Core.Nothing,
      kind = Core.Nothing,
      name = Core.Nothing,
      scoreFormat = Core.Nothing,
      sortRank = Core.Nothing
    }

instance Core.FromJSON LeaderboardConfigurationDetail where
  parseJSON =
    Core.withObject
      "LeaderboardConfigurationDetail"
      ( \o ->
          LeaderboardConfigurationDetail
            Core.<$> (o Core..:? "iconUrl")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "scoreFormat")
            Core.<*> (o Core..:? "sortRank")
      )

instance Core.ToJSON LeaderboardConfigurationDetail where
  toJSON LeaderboardConfigurationDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("iconUrl" Core..=) Core.<$> iconUrl,
            ("kind" Core..=) Core.<$> kind,
            ("name" Core..=) Core.<$> name,
            ("scoreFormat" Core..=) Core.<$> scoreFormat,
            ("sortRank" Core..=) Core.<$> sortRank
          ]
      )

-- | A ListConfigurations response.
--
-- /See:/ 'newLeaderboardConfigurationListResponse' smart constructor.
data LeaderboardConfigurationListResponse = LeaderboardConfigurationListResponse
  { -- | The leaderboard configurations.
    items :: (Core.Maybe [LeaderboardConfiguration]),
    -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#leaderboardConfigurationListResponse@.
    kind :: (Core.Maybe Core.Text),
    -- | The pagination token for the next page of results.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LeaderboardConfigurationListResponse' with the minimum fields required to make a request.
newLeaderboardConfigurationListResponse ::
  LeaderboardConfigurationListResponse
newLeaderboardConfigurationListResponse =
  LeaderboardConfigurationListResponse
    { items = Core.Nothing,
      kind = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    LeaderboardConfigurationListResponse
  where
  parseJSON =
    Core.withObject
      "LeaderboardConfigurationListResponse"
      ( \o ->
          LeaderboardConfigurationListResponse
            Core.<$> (o Core..:? "items")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    LeaderboardConfigurationListResponse
  where
  toJSON LeaderboardConfigurationListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("items" Core..=) Core.<$> items,
            ("kind" Core..=) Core.<$> kind,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | A localized string resource.
--
-- /See:/ 'newLocalizedString' smart constructor.
data LocalizedString = LocalizedString
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#localizedString@.
    kind :: (Core.Maybe Core.Text),
    -- | The locale string.
    locale :: (Core.Maybe Core.Text),
    -- | The string value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedString' with the minimum fields required to make a request.
newLocalizedString ::
  LocalizedString
newLocalizedString =
  LocalizedString
    { kind = Core.Nothing,
      locale = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON LocalizedString where
  parseJSON =
    Core.withObject
      "LocalizedString"
      ( \o ->
          LocalizedString
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "locale")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON LocalizedString where
  toJSON LocalizedString {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("locale" Core..=) Core.<$> locale,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A localized string bundle resource.
--
-- /See:/ 'newLocalizedStringBundle' smart constructor.
data LocalizedStringBundle = LocalizedStringBundle
  { -- | Uniquely identifies the type of this resource. Value is always the fixed string @gamesConfiguration#localizedStringBundle@.
    kind :: (Core.Maybe Core.Text),
    -- | The locale strings.
    translations :: (Core.Maybe [LocalizedString])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LocalizedStringBundle' with the minimum fields required to make a request.
newLocalizedStringBundle ::
  LocalizedStringBundle
newLocalizedStringBundle =
  LocalizedStringBundle {kind = Core.Nothing, translations = Core.Nothing}

instance Core.FromJSON LocalizedStringBundle where
  parseJSON =
    Core.withObject
      "LocalizedStringBundle"
      ( \o ->
          LocalizedStringBundle
            Core.<$> (o Core..:? "kind")
            Core.<*> (o Core..:? "translations")
      )

instance Core.ToJSON LocalizedStringBundle where
  toJSON LocalizedStringBundle {..} =
    Core.object
      ( Core.catMaybes
          [ ("kind" Core..=) Core.<$> kind,
            ("translations" Core..=) Core.<$> translations
          ]
      )

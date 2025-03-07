{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.GamesConfiguration.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.GamesConfiguration.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AchievementConfiguration_AchievementType
    AchievementConfiguration_AchievementType
      ( AchievementConfiguration_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED,
        AchievementConfiguration_AchievementType_Standard,
        AchievementConfiguration_AchievementType_Incremental,
        ..
      ),

    -- * AchievementConfiguration_InitialState
    AchievementConfiguration_InitialState
      ( AchievementConfiguration_InitialState_INITIALSTATEUNSPECIFIED,
        AchievementConfiguration_InitialState_Hidden,
        AchievementConfiguration_InitialState_Revealed,
        ..
      ),

    -- * GamesNumberFormatConfiguration_NumberFormatType
    GamesNumberFormatConfiguration_NumberFormatType
      ( GamesNumberFormatConfiguration_NumberFormatType_NUMBERFORMATTYPEUNSPECIFIED,
        GamesNumberFormatConfiguration_NumberFormatType_Numeric,
        GamesNumberFormatConfiguration_NumberFormatType_TIMEDURATION,
        GamesNumberFormatConfiguration_NumberFormatType_Currency,
        ..
      ),

    -- * LeaderboardConfiguration_ScoreOrder
    LeaderboardConfiguration_ScoreOrder
      ( LeaderboardConfiguration_ScoreOrder_SCOREORDERUNSPECIFIED,
        LeaderboardConfiguration_ScoreOrder_LARGERISBETTER,
        LeaderboardConfiguration_ScoreOrder_SMALLERISBETTER,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The type of the achievement.
newtype AchievementConfiguration_AchievementType = AchievementConfiguration_AchievementType {fromAchievementConfiguration_AchievementType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern AchievementConfiguration_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED :: AchievementConfiguration_AchievementType
pattern AchievementConfiguration_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED = AchievementConfiguration_AchievementType "ACHIEVEMENT_TYPE_UNSPECIFIED"

-- | Achievement is either locked or unlocked.
pattern AchievementConfiguration_AchievementType_Standard :: AchievementConfiguration_AchievementType
pattern AchievementConfiguration_AchievementType_Standard = AchievementConfiguration_AchievementType "STANDARD"

-- | Achievement is incremental.
pattern AchievementConfiguration_AchievementType_Incremental :: AchievementConfiguration_AchievementType
pattern AchievementConfiguration_AchievementType_Incremental = AchievementConfiguration_AchievementType "INCREMENTAL"

{-# COMPLETE
  AchievementConfiguration_AchievementType_ACHIEVEMENTTYPEUNSPECIFIED,
  AchievementConfiguration_AchievementType_Standard,
  AchievementConfiguration_AchievementType_Incremental,
  AchievementConfiguration_AchievementType
  #-}

-- | The initial state of the achievement.
newtype AchievementConfiguration_InitialState = AchievementConfiguration_InitialState {fromAchievementConfiguration_InitialState :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern AchievementConfiguration_InitialState_INITIALSTATEUNSPECIFIED :: AchievementConfiguration_InitialState
pattern AchievementConfiguration_InitialState_INITIALSTATEUNSPECIFIED = AchievementConfiguration_InitialState "INITIAL_STATE_UNSPECIFIED"

-- | Achievement is hidden.
pattern AchievementConfiguration_InitialState_Hidden :: AchievementConfiguration_InitialState
pattern AchievementConfiguration_InitialState_Hidden = AchievementConfiguration_InitialState "HIDDEN"

-- | Achievement is revealed.
pattern AchievementConfiguration_InitialState_Revealed :: AchievementConfiguration_InitialState
pattern AchievementConfiguration_InitialState_Revealed = AchievementConfiguration_InitialState "REVEALED"

{-# COMPLETE
  AchievementConfiguration_InitialState_INITIALSTATEUNSPECIFIED,
  AchievementConfiguration_InitialState_Hidden,
  AchievementConfiguration_InitialState_Revealed,
  AchievementConfiguration_InitialState
  #-}

-- | The formatting for the number.
newtype GamesNumberFormatConfiguration_NumberFormatType = GamesNumberFormatConfiguration_NumberFormatType {fromGamesNumberFormatConfiguration_NumberFormatType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern GamesNumberFormatConfiguration_NumberFormatType_NUMBERFORMATTYPEUNSPECIFIED :: GamesNumberFormatConfiguration_NumberFormatType
pattern GamesNumberFormatConfiguration_NumberFormatType_NUMBERFORMATTYPEUNSPECIFIED = GamesNumberFormatConfiguration_NumberFormatType "NUMBER_FORMAT_TYPE_UNSPECIFIED"

-- | Numbers are formatted to have no digits or fixed number of digits after the decimal point according to locale. An optional custom unit can be added.
pattern GamesNumberFormatConfiguration_NumberFormatType_Numeric :: GamesNumberFormatConfiguration_NumberFormatType
pattern GamesNumberFormatConfiguration_NumberFormatType_Numeric = GamesNumberFormatConfiguration_NumberFormatType "NUMERIC"

-- | Numbers are formatted to hours, minutes and seconds.
pattern GamesNumberFormatConfiguration_NumberFormatType_TIMEDURATION :: GamesNumberFormatConfiguration_NumberFormatType
pattern GamesNumberFormatConfiguration_NumberFormatType_TIMEDURATION = GamesNumberFormatConfiguration_NumberFormatType "TIME_DURATION"

-- | Numbers are formatted to currency according to locale.
pattern GamesNumberFormatConfiguration_NumberFormatType_Currency :: GamesNumberFormatConfiguration_NumberFormatType
pattern GamesNumberFormatConfiguration_NumberFormatType_Currency = GamesNumberFormatConfiguration_NumberFormatType "CURRENCY"

{-# COMPLETE
  GamesNumberFormatConfiguration_NumberFormatType_NUMBERFORMATTYPEUNSPECIFIED,
  GamesNumberFormatConfiguration_NumberFormatType_Numeric,
  GamesNumberFormatConfiguration_NumberFormatType_TIMEDURATION,
  GamesNumberFormatConfiguration_NumberFormatType_Currency,
  GamesNumberFormatConfiguration_NumberFormatType
  #-}

newtype LeaderboardConfiguration_ScoreOrder = LeaderboardConfiguration_ScoreOrder {fromLeaderboardConfiguration_ScoreOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default value. This value is unused.
pattern LeaderboardConfiguration_ScoreOrder_SCOREORDERUNSPECIFIED :: LeaderboardConfiguration_ScoreOrder
pattern LeaderboardConfiguration_ScoreOrder_SCOREORDERUNSPECIFIED = LeaderboardConfiguration_ScoreOrder "SCORE_ORDER_UNSPECIFIED"

-- | Larger scores posted are ranked higher.
pattern LeaderboardConfiguration_ScoreOrder_LARGERISBETTER :: LeaderboardConfiguration_ScoreOrder
pattern LeaderboardConfiguration_ScoreOrder_LARGERISBETTER = LeaderboardConfiguration_ScoreOrder "LARGER_IS_BETTER"

-- | Smaller scores posted are ranked higher.
pattern LeaderboardConfiguration_ScoreOrder_SMALLERISBETTER :: LeaderboardConfiguration_ScoreOrder
pattern LeaderboardConfiguration_ScoreOrder_SMALLERISBETTER = LeaderboardConfiguration_ScoreOrder "SMALLER_IS_BETTER"

{-# COMPLETE
  LeaderboardConfiguration_ScoreOrder_SCOREORDERUNSPECIFIED,
  LeaderboardConfiguration_ScoreOrder_LARGERISBETTER,
  LeaderboardConfiguration_ScoreOrder_SMALLERISBETTER,
  LeaderboardConfiguration_ScoreOrder
  #-}

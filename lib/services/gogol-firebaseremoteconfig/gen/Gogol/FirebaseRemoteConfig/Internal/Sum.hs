{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.FirebaseRemoteConfig.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.FirebaseRemoteConfig.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * RemoteConfigCondition_TagColor
    RemoteConfigCondition_TagColor
      ( RemoteConfigCondition_TagColor_CONDITIONDISPLAYCOLORUNSPECIFIED,
        RemoteConfigCondition_TagColor_Blue,
        RemoteConfigCondition_TagColor_Brown,
        RemoteConfigCondition_TagColor_Cyan,
        RemoteConfigCondition_TagColor_DEEPORANGE,
        RemoteConfigCondition_TagColor_Green,
        RemoteConfigCondition_TagColor_Indigo,
        RemoteConfigCondition_TagColor_Lime,
        RemoteConfigCondition_TagColor_Orange,
        RemoteConfigCondition_TagColor_Pink,
        RemoteConfigCondition_TagColor_Purple,
        RemoteConfigCondition_TagColor_Teal,
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

-- | Optional. The display (tag) color of this condition. This serves as part of a tag (in the future, we may add tag text as well as tag color, but that is not yet implemented in the UI). This value has no affect on the semantics of the delivered config and it is ignored by the backend, except for passing it through write\/read requests. Not having this value or having the \"CONDITION/DISPLAY/COLOR_UNSPECIFIED\" value (0) have the same meaning: Let the UI choose any valid color when displaying the condition.
newtype RemoteConfigCondition_TagColor = RemoteConfigCondition_TagColor {fromRemoteConfigCondition_TagColor :: Core.Text}
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

pattern RemoteConfigCondition_TagColor_CONDITIONDISPLAYCOLORUNSPECIFIED :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_CONDITIONDISPLAYCOLORUNSPECIFIED = RemoteConfigCondition_TagColor "CONDITION_DISPLAY_COLOR_UNSPECIFIED"

-- | Blue
pattern RemoteConfigCondition_TagColor_Blue :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Blue = RemoteConfigCondition_TagColor "BLUE"

-- | Brown
pattern RemoteConfigCondition_TagColor_Brown :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Brown = RemoteConfigCondition_TagColor "BROWN"

-- | Cyan
pattern RemoteConfigCondition_TagColor_Cyan :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Cyan = RemoteConfigCondition_TagColor "CYAN"

-- | aka \"Red Orange\"
pattern RemoteConfigCondition_TagColor_DEEPORANGE :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_DEEPORANGE = RemoteConfigCondition_TagColor "DEEP_ORANGE"

-- | Green
pattern RemoteConfigCondition_TagColor_Green :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Green = RemoteConfigCondition_TagColor "GREEN"

-- | Indigo *
pattern RemoteConfigCondition_TagColor_Indigo :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Indigo = RemoteConfigCondition_TagColor "INDIGO"

-- | Lime - Approved deviation from Material color palette
pattern RemoteConfigCondition_TagColor_Lime :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Lime = RemoteConfigCondition_TagColor "LIME"

-- | Orange
pattern RemoteConfigCondition_TagColor_Orange :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Orange = RemoteConfigCondition_TagColor "ORANGE"

-- | Pink
pattern RemoteConfigCondition_TagColor_Pink :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Pink = RemoteConfigCondition_TagColor "PINK"

-- | Purple
pattern RemoteConfigCondition_TagColor_Purple :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Purple = RemoteConfigCondition_TagColor "PURPLE"

-- | Teal
pattern RemoteConfigCondition_TagColor_Teal :: RemoteConfigCondition_TagColor
pattern RemoteConfigCondition_TagColor_Teal = RemoteConfigCondition_TagColor "TEAL"

{-# COMPLETE
  RemoteConfigCondition_TagColor_CONDITIONDISPLAYCOLORUNSPECIFIED,
  RemoteConfigCondition_TagColor_Blue,
  RemoteConfigCondition_TagColor_Brown,
  RemoteConfigCondition_TagColor_Cyan,
  RemoteConfigCondition_TagColor_DEEPORANGE,
  RemoteConfigCondition_TagColor_Green,
  RemoteConfigCondition_TagColor_Indigo,
  RemoteConfigCondition_TagColor_Lime,
  RemoteConfigCondition_TagColor_Orange,
  RemoteConfigCondition_TagColor_Pink,
  RemoteConfigCondition_TagColor_Purple,
  RemoteConfigCondition_TagColor_Teal,
  RemoteConfigCondition_TagColor
  #-}

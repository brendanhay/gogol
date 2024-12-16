{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AdExperienceReport.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AdExperienceReport.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * PlatformSummary_BetterAdsStatus
    PlatformSummary_BetterAdsStatus
      (
        PlatformSummary_BetterAdsStatus_Unknown,
        PlatformSummary_BetterAdsStatus_Passing,
        PlatformSummary_BetterAdsStatus_Warning,
        PlatformSummary_BetterAdsStatus_Failing,
        ..
      ),

    -- * PlatformSummary_FilterStatus
    PlatformSummary_FilterStatus
      (
        PlatformSummary_FilterStatus_Unknown,
        PlatformSummary_FilterStatus_ON,
        PlatformSummary_FilterStatus_Off,
        PlatformSummary_FilterStatus_Paused,
        PlatformSummary_FilterStatus_Pending,
        ..
      ),

    -- * PlatformSummary_RegionItem
    PlatformSummary_RegionItem
      (
        PlatformSummary_RegionItem_REGIONUNKNOWN,
        PlatformSummary_RegionItem_REGIONA,
        PlatformSummary_RegionItem_REGIONB,
        PlatformSummary_RegionItem_REGIONC,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | The site\'s Ad Experience Report status on this platform.
newtype PlatformSummary_BetterAdsStatus = PlatformSummary_BetterAdsStatus { fromPlatformSummary_BetterAdsStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not reviewed.
pattern PlatformSummary_BetterAdsStatus_Unknown :: PlatformSummary_BetterAdsStatus
pattern PlatformSummary_BetterAdsStatus_Unknown = PlatformSummary_BetterAdsStatus "UNKNOWN"

-- | Passing.
pattern PlatformSummary_BetterAdsStatus_Passing :: PlatformSummary_BetterAdsStatus
pattern PlatformSummary_BetterAdsStatus_Passing = PlatformSummary_BetterAdsStatus "PASSING"

-- | Warning. No longer a possible status.
pattern PlatformSummary_BetterAdsStatus_Warning :: PlatformSummary_BetterAdsStatus
pattern PlatformSummary_BetterAdsStatus_Warning = PlatformSummary_BetterAdsStatus "WARNING"

-- | Failing.
pattern PlatformSummary_BetterAdsStatus_Failing :: PlatformSummary_BetterAdsStatus
pattern PlatformSummary_BetterAdsStatus_Failing = PlatformSummary_BetterAdsStatus "FAILING"

{-# COMPLETE
  PlatformSummary_BetterAdsStatus_Unknown,
  PlatformSummary_BetterAdsStatus_Passing,
  PlatformSummary_BetterAdsStatus_Warning,
  PlatformSummary_BetterAdsStatus_Failing,
  PlatformSummary_BetterAdsStatus #-}

-- | The site\'s <https://support.google.com/webtools/answer/7308033 enforcement status> on this platform.
newtype PlatformSummary_FilterStatus = PlatformSummary_FilterStatus { fromPlatformSummary_FilterStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | N\/A.
pattern PlatformSummary_FilterStatus_Unknown :: PlatformSummary_FilterStatus
pattern PlatformSummary_FilterStatus_Unknown = PlatformSummary_FilterStatus "UNKNOWN"

-- | Ad filtering is on.
pattern PlatformSummary_FilterStatus_ON :: PlatformSummary_FilterStatus
pattern PlatformSummary_FilterStatus_ON = PlatformSummary_FilterStatus "ON"

-- | Ad filtering is off.
pattern PlatformSummary_FilterStatus_Off :: PlatformSummary_FilterStatus
pattern PlatformSummary_FilterStatus_Off = PlatformSummary_FilterStatus "OFF"

-- | Ad filtering is paused.
pattern PlatformSummary_FilterStatus_Paused :: PlatformSummary_FilterStatus
pattern PlatformSummary_FilterStatus_Paused = PlatformSummary_FilterStatus "PAUSED"

-- | Ad filtering is pending.
pattern PlatformSummary_FilterStatus_Pending :: PlatformSummary_FilterStatus
pattern PlatformSummary_FilterStatus_Pending = PlatformSummary_FilterStatus "PENDING"

{-# COMPLETE
  PlatformSummary_FilterStatus_Unknown,
  PlatformSummary_FilterStatus_ON,
  PlatformSummary_FilterStatus_Off,
  PlatformSummary_FilterStatus_Paused,
  PlatformSummary_FilterStatus_Pending,
  PlatformSummary_FilterStatus #-}

newtype PlatformSummary_RegionItem = PlatformSummary_RegionItem { fromPlatformSummary_RegionItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Ad standard not yet defined for your region.
pattern PlatformSummary_RegionItem_REGIONUNKNOWN :: PlatformSummary_RegionItem
pattern PlatformSummary_RegionItem_REGIONUNKNOWN = PlatformSummary_RegionItem "REGION_UNKNOWN"

-- | Region A.
pattern PlatformSummary_RegionItem_REGIONA :: PlatformSummary_RegionItem
pattern PlatformSummary_RegionItem_REGIONA = PlatformSummary_RegionItem "REGION_A"

-- | Region B.
pattern PlatformSummary_RegionItem_REGIONB :: PlatformSummary_RegionItem
pattern PlatformSummary_RegionItem_REGIONB = PlatformSummary_RegionItem "REGION_B"

-- | Region C.
pattern PlatformSummary_RegionItem_REGIONC :: PlatformSummary_RegionItem
pattern PlatformSummary_RegionItem_REGIONC = PlatformSummary_RegionItem "REGION_C"

{-# COMPLETE
  PlatformSummary_RegionItem_REGIONUNKNOWN,
  PlatformSummary_RegionItem_REGIONA,
  PlatformSummary_RegionItem_REGIONB,
  PlatformSummary_RegionItem_REGIONC,
  PlatformSummary_RegionItem #-}

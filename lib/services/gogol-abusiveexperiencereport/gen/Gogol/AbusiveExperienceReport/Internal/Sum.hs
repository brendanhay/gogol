{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AbusiveExperienceReport.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AbusiveExperienceReport.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * SiteSummaryResponse_AbusiveStatus
    SiteSummaryResponse_AbusiveStatus
      (
        SiteSummaryResponse_AbusiveStatus_Unknown,
        SiteSummaryResponse_AbusiveStatus_Passing,
        SiteSummaryResponse_AbusiveStatus_Failing,
        ..
      ),

    -- * SiteSummaryResponse_FilterStatus
    SiteSummaryResponse_FilterStatus
      (
        SiteSummaryResponse_FilterStatus_Unknown,
        SiteSummaryResponse_FilterStatus_ON,
        SiteSummaryResponse_FilterStatus_Off,
        SiteSummaryResponse_FilterStatus_Paused,
        SiteSummaryResponse_FilterStatus_Pending,
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

-- | The site\'s Abusive Experience Report status.
newtype SiteSummaryResponse_AbusiveStatus = SiteSummaryResponse_AbusiveStatus { fromSiteSummaryResponse_AbusiveStatus :: Core.Text }
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
pattern SiteSummaryResponse_AbusiveStatus_Unknown :: SiteSummaryResponse_AbusiveStatus
pattern SiteSummaryResponse_AbusiveStatus_Unknown = SiteSummaryResponse_AbusiveStatus "UNKNOWN"

-- | Passing.
pattern SiteSummaryResponse_AbusiveStatus_Passing :: SiteSummaryResponse_AbusiveStatus
pattern SiteSummaryResponse_AbusiveStatus_Passing = SiteSummaryResponse_AbusiveStatus "PASSING"

-- | Failing.
pattern SiteSummaryResponse_AbusiveStatus_Failing :: SiteSummaryResponse_AbusiveStatus
pattern SiteSummaryResponse_AbusiveStatus_Failing = SiteSummaryResponse_AbusiveStatus "FAILING"

{-# COMPLETE
  SiteSummaryResponse_AbusiveStatus_Unknown,
  SiteSummaryResponse_AbusiveStatus_Passing,
  SiteSummaryResponse_AbusiveStatus_Failing,
  SiteSummaryResponse_AbusiveStatus #-}

-- | The site\'s <https://support.google.com/webtools/answer/7538608 enforcement status>.
newtype SiteSummaryResponse_FilterStatus = SiteSummaryResponse_FilterStatus { fromSiteSummaryResponse_FilterStatus :: Core.Text }
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
pattern SiteSummaryResponse_FilterStatus_Unknown :: SiteSummaryResponse_FilterStatus
pattern SiteSummaryResponse_FilterStatus_Unknown = SiteSummaryResponse_FilterStatus "UNKNOWN"

-- | Enforcement is on.
pattern SiteSummaryResponse_FilterStatus_ON :: SiteSummaryResponse_FilterStatus
pattern SiteSummaryResponse_FilterStatus_ON = SiteSummaryResponse_FilterStatus "ON"

-- | Enforcement is off.
pattern SiteSummaryResponse_FilterStatus_Off :: SiteSummaryResponse_FilterStatus
pattern SiteSummaryResponse_FilterStatus_Off = SiteSummaryResponse_FilterStatus "OFF"

-- | Enforcement is paused.
pattern SiteSummaryResponse_FilterStatus_Paused :: SiteSummaryResponse_FilterStatus
pattern SiteSummaryResponse_FilterStatus_Paused = SiteSummaryResponse_FilterStatus "PAUSED"

-- | Enforcement is pending.
pattern SiteSummaryResponse_FilterStatus_Pending :: SiteSummaryResponse_FilterStatus
pattern SiteSummaryResponse_FilterStatus_Pending = SiteSummaryResponse_FilterStatus "PENDING"

{-# COMPLETE
  SiteSummaryResponse_FilterStatus_Unknown,
  SiteSummaryResponse_FilterStatus_ON,
  SiteSummaryResponse_FilterStatus_Off,
  SiteSummaryResponse_FilterStatus_Paused,
  SiteSummaryResponse_FilterStatus_Pending,
  SiteSummaryResponse_FilterStatus #-}

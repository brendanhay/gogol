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
-- Module      : Network.Google.AdExperienceReport.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AdExperienceReport.Types
  ( -- * Configuration
    adExperienceReportService,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** PlatformSummary
    PlatformSummary (..),
    newPlatformSummary,

    -- ** PlatformSummary_BetterAdsStatus
    PlatformSummary_BetterAdsStatus (..),

    -- ** PlatformSummary_FilterStatus
    PlatformSummary_FilterStatus (..),

    -- ** PlatformSummary_RegionItem
    PlatformSummary_RegionItem (..),

    -- ** SiteSummaryResponse
    SiteSummaryResponse (..),
    newSiteSummaryResponse,

    -- ** ViolatingSitesResponse
    ViolatingSitesResponse (..),
    newViolatingSitesResponse,
  )
where

import Network.Google.AdExperienceReport.Internal.Product
import Network.Google.AdExperienceReport.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Ad Experience Report API. This contains the host and root path used as a starting point for constructing service requests.
adExperienceReportService :: Core.ServiceConfig
adExperienceReportService =
  Core.defaultService
    (Core.ServiceId "adexperiencereport:v1")
    "adexperiencereport.googleapis.com"

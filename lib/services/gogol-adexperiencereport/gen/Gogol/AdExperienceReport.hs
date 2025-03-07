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
-- Module      : Gogol.AdExperienceReport
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Ad Experience Report data, and gets a list of sites that have a significant number of annoying ads.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference>
module Gogol.AdExperienceReport
  ( -- * Configuration
    adExperienceReportService,

    -- * Resources

    -- ** adexperiencereport.sites.get
    AdExperienceReportSitesGetResource,
    AdExperienceReportSitesGet (..),
    newAdExperienceReportSitesGet,

    -- ** adexperiencereport.violatingSites.list
    AdExperienceReportViolatingSitesListResource,
    AdExperienceReportViolatingSitesList (..),
    newAdExperienceReportViolatingSitesList,

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

import Gogol.AdExperienceReport.Sites.Get
import Gogol.AdExperienceReport.Types
import Gogol.AdExperienceReport.ViolatingSites.List

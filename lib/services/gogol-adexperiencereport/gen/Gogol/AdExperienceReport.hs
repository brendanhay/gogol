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
-- Module      : Gogol.AdExperienceReport
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Ad Experience Report data, and gets a list of sites that have a significant number of annoying ads.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference>
module Gogol.AdExperienceReport
    (
    -- * Configuration
      adExperienceReportService

    -- * Resources

    -- ** adexperiencereport.sites.get
    , AdExperienceReportSitesGetResource
    , newAdExperienceReportSitesGet
    , AdExperienceReportSitesGet

    -- ** adexperiencereport.violatingSites.list
    , AdExperienceReportViolatingSitesListResource
    , newAdExperienceReportViolatingSitesList
    , AdExperienceReportViolatingSitesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** PlatformSummary
    , PlatformSummary (..)
    , newPlatformSummary

    -- ** PlatformSummary_BetterAdsStatus
    , PlatformSummary_BetterAdsStatus (..)

    -- ** PlatformSummary_FilterStatus
    , PlatformSummary_FilterStatus (..)

    -- ** PlatformSummary_RegionItem
    , PlatformSummary_RegionItem (..)

    -- ** SiteSummaryResponse
    , SiteSummaryResponse (..)
    , newSiteSummaryResponse

    -- ** ViolatingSitesResponse
    , ViolatingSitesResponse (..)
    , newViolatingSitesResponse
    ) where

import Gogol.AdExperienceReport.Sites.Get
import Gogol.AdExperienceReport.Types
import Gogol.AdExperienceReport.ViolatingSites.List

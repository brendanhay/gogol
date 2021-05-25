{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AdExperienceReport
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Ad Experience Report data, and gets a list of sites that have a
-- significant number of annoying ads.
--
-- /See:/ <https://developers.google.com/ad-experience-report/ Ad Experience Report API Reference>
module Network.Google.AdExperienceReport
    (
    -- * Service Configuration
      adExperienceReportService

    -- * API Declaration
    , AdExperienceReportAPI

    -- * Resources

    -- ** adexperiencereport.sites.get
    , module Network.Google.Resource.AdExperienceReport.Sites.Get

    -- ** adexperiencereport.violatingSites.list
    , module Network.Google.Resource.AdExperienceReport.ViolatingSites.List

    -- * Types

    -- ** SiteSummaryResponse
    , SiteSummaryResponse
    , siteSummaryResponse
    , ssrMobileSummary
    , ssrReviewedSite
    , ssrDesktopSummary

    -- ** PlatformSummaryFilterStatus
    , PlatformSummaryFilterStatus (..)

    -- ** ViolatingSitesResponse
    , ViolatingSitesResponse
    , violatingSitesResponse
    , vsrViolatingSites

    -- ** PlatformSummaryRegionItem
    , PlatformSummaryRegionItem (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** PlatformSummary
    , PlatformSummary
    , platformSummary
    , psEnforcementTime
    , psLastChangeTime
    , psFilterStatus
    , psUnderReview
    , psBetterAdsStatus
    , psReportURL
    , psRegion

    -- ** PlatformSummaryBetterAdsStatus
    , PlatformSummaryBetterAdsStatus (..)
    ) where

import Network.Google.Prelude
import Network.Google.AdExperienceReport.Types
import Network.Google.Resource.AdExperienceReport.Sites.Get
import Network.Google.Resource.AdExperienceReport.ViolatingSites.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Ad Experience Report API service.
type AdExperienceReportAPI =
     ViolatingSitesListResource :<|> SitesGetResource

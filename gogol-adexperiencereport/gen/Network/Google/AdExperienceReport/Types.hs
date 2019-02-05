{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExperienceReport.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExperienceReport.Types
    (
    -- * Service Configuration
      adExperienceReportService

    -- * OAuth Scopes
    , xapiZooScope

    -- * SiteSummaryResponse
    , SiteSummaryResponse
    , siteSummaryResponse
    , ssrMobileSummary
    , ssrReviewedSite
    , ssrDesktopSummary

    -- * PlatformSummaryFilterStatus
    , PlatformSummaryFilterStatus (..)

    -- * ViolatingSitesResponse
    , ViolatingSitesResponse
    , violatingSitesResponse
    , vsrViolatingSites

    -- * Xgafv
    , Xgafv (..)

    -- * PlatformSummary
    , PlatformSummary
    , platformSummary
    , psEnforcementTime
    , psLastChangeTime
    , psFilterStatus
    , psUnderReview
    , psBetterAdsStatus
    , psReportURL
    , psRegion

    -- * PlatformSummaryBetterAdsStatus
    , PlatformSummaryBetterAdsStatus (..)
    ) where

import           Network.Google.AdExperienceReport.Types.Product
import           Network.Google.AdExperienceReport.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Ad Experience Report API. This contains the host and root path used as a starting point for constructing service requests.
adExperienceReportService :: ServiceConfig
adExperienceReportService
  = defaultService (ServiceId "adexperiencereport:v1")
      "adexperiencereport.googleapis.com"

-- | Test scope for access to the Zoo service
xapiZooScope :: Proxy '["https://www.googleapis.com/auth/xapi.zoo"]
xapiZooScope = Proxy;

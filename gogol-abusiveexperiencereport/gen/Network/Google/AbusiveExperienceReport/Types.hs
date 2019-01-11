{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AbusiveExperienceReport.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AbusiveExperienceReport.Types
    (
    -- * Service Configuration
      abusiveExperienceReportService

    -- * OAuth Scopes
    , xapiZooScope

    -- * SiteSummaryResponse
    , SiteSummaryResponse
    , siteSummaryResponse
    , ssrAbusiveStatus
    , ssrEnforcementTime
    , ssrLastChangeTime
    , ssrFilterStatus
    , ssrUnderReview
    , ssrReportURL
    , ssrReviewedSite

    -- * SiteSummaryResponseAbusiveStatus
    , SiteSummaryResponseAbusiveStatus (..)

    -- * ViolatingSitesResponse
    , ViolatingSitesResponse
    , violatingSitesResponse
    , vsrViolatingSites

    -- * Xgafv
    , Xgafv (..)

    -- * SiteSummaryResponseFilterStatus
    , SiteSummaryResponseFilterStatus (..)
    ) where

import           Network.Google.AbusiveExperienceReport.Types.Product
import           Network.Google.AbusiveExperienceReport.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Abusive Experience Report API. This contains the host and root path used as a starting point for constructing service requests.
abusiveExperienceReportService :: ServiceConfig
abusiveExperienceReportService
  = defaultService
      (ServiceId "abusiveexperiencereport:v1")
      "abusiveexperiencereport.googleapis.com"

-- | Test scope for access to the Zoo service
xapiZooScope :: Proxy '["https://www.googleapis.com/auth/xapi.zoo"]
xapiZooScope = Proxy;

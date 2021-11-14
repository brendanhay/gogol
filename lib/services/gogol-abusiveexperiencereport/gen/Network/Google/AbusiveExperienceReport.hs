{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AbusiveExperienceReport
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Views Abusive Experience Report data, and gets a list of sites that have
-- a significant number of abusive experiences.
--
-- /See:/ <https://developers.google.com/abusive-experience-report/ Abusive Experience Report API Reference>
module Network.Google.AbusiveExperienceReport
    (
    -- * Service Configuration
      abusiveExperienceReportService

    -- * API Declaration
    , AbusiveExperienceReportAPI

    -- * Resources

    -- ** abusiveexperiencereport.sites.get
    , module Network.Google.Resource.AbusiveExperienceReport.Sites.Get

    -- ** abusiveexperiencereport.violatingSites.list
    , module Network.Google.Resource.AbusiveExperienceReport.ViolatingSites.List

    -- * Types

    -- ** SiteSummaryResponse
    , SiteSummaryResponse
    , siteSummaryResponse
    , ssrAbusiveStatus
    , ssrEnforcementTime
    , ssrLastChangeTime
    , ssrFilterStatus
    , ssrUnderReview
    , ssrReportURL
    , ssrReviewedSite

    -- ** SiteSummaryResponseAbusiveStatus
    , SiteSummaryResponseAbusiveStatus (..)

    -- ** ViolatingSitesResponse
    , ViolatingSitesResponse
    , violatingSitesResponse
    , vsrViolatingSites

    -- ** Xgafv
    , Xgafv (..)

    -- ** SiteSummaryResponseFilterStatus
    , SiteSummaryResponseFilterStatus (..)
    ) where

import Network.Google.Prelude
import Network.Google.AbusiveExperienceReport.Types
import Network.Google.Resource.AbusiveExperienceReport.Sites.Get
import Network.Google.Resource.AbusiveExperienceReport.ViolatingSites.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Abusive Experience Report API service.
type AbusiveExperienceReportAPI =
     ViolatingSitesListResource :<|> SitesGetResource

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.YouTubeReporting.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.YouTubeReporting.Types
    (
    -- * Service Configuration
      youTubeReportingService

    -- * OAuth Scopes
    , youTubeAnalyticsReadOnlyScope
    , youTubeAnalyticsMonetaryReadOnlyScope

    -- * ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports

    -- * Empty
    , Empty
    , empty

    -- * Report
    , Report
    , report
    , rJobId
    , rStartTime
    , rDownloadURL
    , rEndTime
    , rId
    , rCreateTime
    , rJobExpireTime

    -- * ListReportTypesResponse
    , ListReportTypesResponse
    , listReportTypesResponse
    , lrtrNextPageToken
    , lrtrReportTypes

    -- * Media
    , Media
    , media
    , mResourceName

    -- * Job
    , Job
    , job
    , jName
    , jId
    , jSystemManaged
    , jReportTypeId
    , jExpireTime
    , jCreateTime

    -- * Xgafv
    , Xgafv (..)

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * ReportType
    , ReportType
    , reportType
    , rtName
    , rtId
    , rtDeprecateTime
    , rtSystemManaged
    ) where

import           Network.Google.Prelude
import           Network.Google.YouTubeReporting.Types.Product
import           Network.Google.YouTubeReporting.Types.Sum

-- | Default request referring to version 'v1' of the YouTube Reporting API. This contains the host and root path used as a starting point for constructing service requests.
youTubeReportingService :: ServiceConfig
youTubeReportingService
  = defaultService (ServiceId "youtubereporting:v1")
      "youtubereporting.googleapis.com"

-- | View YouTube Analytics reports for your YouTube content
youTubeAnalyticsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
youTubeAnalyticsReadOnlyScope = Proxy;

-- | View monetary and non-monetary YouTube Analytics reports for your
-- YouTube content
youTubeAnalyticsMonetaryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
youTubeAnalyticsMonetaryReadOnlyScope = Proxy;

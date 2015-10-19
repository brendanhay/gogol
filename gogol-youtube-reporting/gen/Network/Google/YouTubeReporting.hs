{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeReporting
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | An API to schedule reporting jobs and download the resulting bulk data
-- reports about YouTube channels, videos etc. in the form of CSV files.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference>
module Network.Google.YouTubeReporting
    (
    -- * Service Configuration
      youTubeReportingService

    -- * API Declaration
    , YouTubeReportingAPI

    -- * Resources

    -- ** YouTubereportingJobsCreate
    , module Network.Google.Resource.YouTubeReporting.Jobs.Create

    -- ** YouTubereportingJobsDelete
    , module Network.Google.Resource.YouTubeReporting.Jobs.Delete

    -- ** YouTubereportingJobsGet
    , module Network.Google.Resource.YouTubeReporting.Jobs.Get

    -- ** YouTubereportingJobsList
    , module Network.Google.Resource.YouTubeReporting.Jobs.List

    -- ** YouTubereportingJobsReportsGet
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get

    -- ** YouTubereportingJobsReportsList
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.List

    -- ** YouTubereportingMediaDownload
    , module Network.Google.Resource.YouTubeReporting.Media.Download

    -- ** YouTubereportingReportTypesList
    , module Network.Google.Resource.YouTubeReporting.ReportTypes.List

    -- * Types

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports

    -- ** Empty
    , Empty
    , empty

    -- ** Report
    , Report
    , report
    , rJobId
    , rStartTime
    , rDownloadURL
    , rEndTime
    , rId
    , rCreateTime

    -- ** ListReportTypesResponse
    , ListReportTypesResponse
    , listReportTypesResponse
    , lrtrNextPageToken
    , lrtrReportTypes

    -- ** Media
    , Media
    , media
    , mResourceName

    -- ** Job
    , Job
    , job
    , jName
    , jId
    , jReportTypeId
    , jCreateTime

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** ReportType
    , ReportType
    , reportType
    , rtName
    , rtId
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.YouTubeReporting.Jobs.Create
import           Network.Google.Resource.YouTubeReporting.Jobs.Delete
import           Network.Google.Resource.YouTubeReporting.Jobs.Get
import           Network.Google.Resource.YouTubeReporting.Jobs.List
import           Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get
import           Network.Google.Resource.YouTubeReporting.Jobs.Reports.List
import           Network.Google.Resource.YouTubeReporting.Media.Download
import           Network.Google.Resource.YouTubeReporting.ReportTypes.List
import           Network.Google.YouTubeReporting.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the YouTube Reporting API service.
type YouTubeReportingAPI =
     JobsReportsListResource :<|> JobsReportsGetResource
       :<|> JobsListResource
       :<|> JobsGetResource
       :<|> JobsCreateResource
       :<|> JobsDeleteResource
       :<|> MediaDownloadResource
       :<|> ReportTypesListResource

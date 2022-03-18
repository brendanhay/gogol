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
-- Module      : Network.Google.YouTubeReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules reporting jobs containing your YouTube Analytics data and downloads the resulting bulk data reports in the form of CSV files.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference>
module Network.Google.YouTubeReporting
  ( -- * Configuration
    youTubeReportingService,

    -- * OAuth Scopes
    youtubeAnalyticsMonetaryReadOnlyScope,
    youtubeAnalyticsReadOnlyScope,

    -- * Resources

    -- ** youtubereporting.jobs.create
    YouTubeReportingJobsCreateResource,
    newYouTubeReportingJobsCreate,
    YouTubeReportingJobsCreate,

    -- ** youtubereporting.jobs.delete
    YouTubeReportingJobsDeleteResource,
    newYouTubeReportingJobsDelete,
    YouTubeReportingJobsDelete,

    -- ** youtubereporting.jobs.get
    YouTubeReportingJobsGetResource,
    newYouTubeReportingJobsGet,
    YouTubeReportingJobsGet,

    -- ** youtubereporting.jobs.list
    YouTubeReportingJobsListResource,
    newYouTubeReportingJobsList,
    YouTubeReportingJobsList,

    -- ** youtubereporting.jobs.reports.get
    YouTubeReportingJobsReportsGetResource,
    newYouTubeReportingJobsReportsGet,
    YouTubeReportingJobsReportsGet,

    -- ** youtubereporting.jobs.reports.list
    YouTubeReportingJobsReportsListResource,
    newYouTubeReportingJobsReportsList,
    YouTubeReportingJobsReportsList,

    -- ** youtubereporting.media.download
    YouTubeReportingMediaDownloadResource,
    newYouTubeReportingMediaDownload,
    YouTubeReportingMediaDownload,

    -- ** youtubereporting.reportTypes.list
    YouTubeReportingReportTypesListResource,
    newYouTubeReportingReportTypesList,
    YouTubeReportingReportTypesList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** GdataBlobstore2Info
    GdataBlobstore2Info (..),
    newGdataBlobstore2Info,

    -- ** GdataCompositeMedia
    GdataCompositeMedia (..),
    newGdataCompositeMedia,

    -- ** GdataCompositeMedia_ReferenceType
    GdataCompositeMedia_ReferenceType (..),

    -- ** GdataContentTypeInfo
    GdataContentTypeInfo (..),
    newGdataContentTypeInfo,

    -- ** GdataDiffChecksumsResponse
    GdataDiffChecksumsResponse (..),
    newGdataDiffChecksumsResponse,

    -- ** GdataDiffDownloadResponse
    GdataDiffDownloadResponse (..),
    newGdataDiffDownloadResponse,

    -- ** GdataDiffUploadRequest
    GdataDiffUploadRequest (..),
    newGdataDiffUploadRequest,

    -- ** GdataDiffUploadResponse
    GdataDiffUploadResponse (..),
    newGdataDiffUploadResponse,

    -- ** GdataDiffVersionResponse
    GdataDiffVersionResponse (..),
    newGdataDiffVersionResponse,

    -- ** GdataDownloadParameters
    GdataDownloadParameters (..),
    newGdataDownloadParameters,

    -- ** GdataMedia
    GdataMedia (..),
    newGdataMedia,

    -- ** GdataMedia_ReferenceType
    GdataMedia_ReferenceType (..),

    -- ** GdataObjectId
    GdataObjectId (..),
    newGdataObjectId,

    -- ** Job
    Job (..),
    newJob,

    -- ** ListJobsResponse
    ListJobsResponse (..),
    newListJobsResponse,

    -- ** ListReportTypesResponse
    ListReportTypesResponse (..),
    newListReportTypesResponse,

    -- ** ListReportsResponse
    ListReportsResponse (..),
    newListReportsResponse,

    -- ** Report
    Report (..),
    newReport,

    -- ** ReportType
    ReportType (..),
    newReportType,
  )
where

import Network.Google.YouTubeReporting.Jobs.Create
import Network.Google.YouTubeReporting.Jobs.Delete
import Network.Google.YouTubeReporting.Jobs.Get
import Network.Google.YouTubeReporting.Jobs.List
import Network.Google.YouTubeReporting.Jobs.Reports.Get
import Network.Google.YouTubeReporting.Jobs.Reports.List
import Network.Google.YouTubeReporting.Media.Download
import Network.Google.YouTubeReporting.ReportTypes.List
import Network.Google.YouTubeReporting.Types

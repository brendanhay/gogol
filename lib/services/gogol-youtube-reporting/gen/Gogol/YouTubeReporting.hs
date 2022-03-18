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
-- Module      : Gogol.YouTubeReporting
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules reporting jobs containing your YouTube Analytics data and downloads the resulting bulk data reports in the form of CSV files.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference>
module Gogol.YouTubeReporting
    (
    -- * Configuration
      youTubeReportingService

    -- * OAuth Scopes
    , youtubeAnalyticsMonetaryReadOnlyScope
    , youtubeAnalyticsReadOnlyScope

    -- * Resources

    -- ** youtubereporting.jobs.create
    , YouTubeReportingJobsCreateResource
    , newYouTubeReportingJobsCreate
    , YouTubeReportingJobsCreate

    -- ** youtubereporting.jobs.delete
    , YouTubeReportingJobsDeleteResource
    , newYouTubeReportingJobsDelete
    , YouTubeReportingJobsDelete

    -- ** youtubereporting.jobs.get
    , YouTubeReportingJobsGetResource
    , newYouTubeReportingJobsGet
    , YouTubeReportingJobsGet

    -- ** youtubereporting.jobs.list
    , YouTubeReportingJobsListResource
    , newYouTubeReportingJobsList
    , YouTubeReportingJobsList

    -- ** youtubereporting.jobs.reports.get
    , YouTubeReportingJobsReportsGetResource
    , newYouTubeReportingJobsReportsGet
    , YouTubeReportingJobsReportsGet

    -- ** youtubereporting.jobs.reports.list
    , YouTubeReportingJobsReportsListResource
    , newYouTubeReportingJobsReportsList
    , YouTubeReportingJobsReportsList

    -- ** youtubereporting.media.download
    , YouTubeReportingMediaDownloadResource
    , newYouTubeReportingMediaDownload
    , YouTubeReportingMediaDownload

    -- ** youtubereporting.reportTypes.list
    , YouTubeReportingReportTypesListResource
    , newYouTubeReportingReportTypesList
    , YouTubeReportingReportTypesList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** GdataBlobstore2Info
    , GdataBlobstore2Info (..)
    , newGdataBlobstore2Info

    -- ** GdataCompositeMedia
    , GdataCompositeMedia (..)
    , newGdataCompositeMedia

    -- ** GdataCompositeMedia_ReferenceType
    , GdataCompositeMedia_ReferenceType (..)

    -- ** GdataContentTypeInfo
    , GdataContentTypeInfo (..)
    , newGdataContentTypeInfo

    -- ** GdataDiffChecksumsResponse
    , GdataDiffChecksumsResponse (..)
    , newGdataDiffChecksumsResponse

    -- ** GdataDiffDownloadResponse
    , GdataDiffDownloadResponse (..)
    , newGdataDiffDownloadResponse

    -- ** GdataDiffUploadRequest
    , GdataDiffUploadRequest (..)
    , newGdataDiffUploadRequest

    -- ** GdataDiffUploadResponse
    , GdataDiffUploadResponse (..)
    , newGdataDiffUploadResponse

    -- ** GdataDiffVersionResponse
    , GdataDiffVersionResponse (..)
    , newGdataDiffVersionResponse

    -- ** GdataDownloadParameters
    , GdataDownloadParameters (..)
    , newGdataDownloadParameters

    -- ** GdataMedia
    , GdataMedia (..)
    , newGdataMedia

    -- ** GdataMedia_ReferenceType
    , GdataMedia_ReferenceType (..)

    -- ** GdataObjectId
    , GdataObjectId (..)
    , newGdataObjectId

    -- ** Job
    , Job (..)
    , newJob

    -- ** ListJobsResponse
    , ListJobsResponse (..)
    , newListJobsResponse

    -- ** ListReportTypesResponse
    , ListReportTypesResponse (..)
    , newListReportTypesResponse

    -- ** ListReportsResponse
    , ListReportsResponse (..)
    , newListReportsResponse

    -- ** Report
    , Report (..)
    , newReport

    -- ** ReportType
    , ReportType (..)
    , newReportType
    ) where

import Gogol.YouTubeReporting.Jobs.Create
import Gogol.YouTubeReporting.Jobs.Delete
import Gogol.YouTubeReporting.Jobs.Get
import Gogol.YouTubeReporting.Jobs.List
import Gogol.YouTubeReporting.Jobs.Reports.Get
import Gogol.YouTubeReporting.Jobs.Reports.List
import Gogol.YouTubeReporting.Media.Download
import Gogol.YouTubeReporting.ReportTypes.List
import Gogol.YouTubeReporting.Types

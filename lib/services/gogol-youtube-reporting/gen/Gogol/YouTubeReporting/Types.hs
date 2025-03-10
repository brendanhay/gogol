{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.YouTubeReporting.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.YouTubeReporting.Types
  ( -- * Configuration
    youTubeReportingService,

    -- * OAuth Scopes
    YtAnalyticsMonetary'Readonly,
    YtAnalytics'Readonly,

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

import Gogol.Prelude qualified as Core
import Gogol.YouTubeReporting.Internal.Product
import Gogol.YouTubeReporting.Internal.Sum

-- | Default request referring to version @v1@ of the YouTube Reporting API. This contains the host and root path used as a starting point for constructing service requests.
youTubeReportingService :: Core.ServiceConfig
youTubeReportingService =
  Core.defaultService
    (Core.ServiceId "youtubereporting:v1")
    "youtubereporting.googleapis.com"

-- | View monetary and non-monetary YouTube Analytics reports for your YouTube content
type YtAnalyticsMonetary'Readonly =
  "https://www.googleapis.com/auth/yt-analytics-monetary.readonly"

-- | View YouTube Analytics reports for your YouTube content
type YtAnalytics'Readonly =
  "https://www.googleapis.com/auth/yt-analytics.readonly"

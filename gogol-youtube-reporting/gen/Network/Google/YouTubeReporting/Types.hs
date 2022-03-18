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
-- Module      : Network.Google.YouTubeReporting.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.YouTubeReporting.Types
  ( -- * Configuration
    youTubeReportingService,

    -- * OAuth Scopes
    youtubeAnalyticsMonetaryReadOnlyScope,
    youtubeAnalyticsReadOnlyScope,

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

import qualified Network.Google.Prelude as Core
import Network.Google.YouTubeReporting.Internal.Product
import Network.Google.YouTubeReporting.Internal.Sum

-- | Default request referring to version @v1@ of the YouTube Reporting API. This contains the host and root path used as a starting point for constructing service requests.
youTubeReportingService :: Core.ServiceConfig
youTubeReportingService =
  Core.defaultService
    (Core.ServiceId "youtubereporting:v1")
    "youtubereporting.googleapis.com"

-- | View monetary and non-monetary YouTube Analytics reports for your YouTube content
youtubeAnalyticsMonetaryReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
youtubeAnalyticsMonetaryReadOnlyScope = Core.Proxy

-- | View YouTube Analytics reports for your YouTube content
youtubeAnalyticsReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
youtubeAnalyticsReadOnlyScope = Core.Proxy

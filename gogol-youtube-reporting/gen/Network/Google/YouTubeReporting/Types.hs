{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * GDataDiffChecksumsResponse
    , GDataDiffChecksumsResponse
    , gDataDiffChecksumsResponse
    , gddcrChecksumsLocation
    , gddcrObjectSizeBytes
    , gddcrChunkSizeBytes
    , gddcrObjectVersion
    , gddcrObjectLocation

    -- * GDataObjectId
    , GDataObjectId
    , gDataObjectId
    , gdoiObjectName
    , gdoiBucketName
    , gdoiGeneration

    -- * Empty
    , Empty
    , empty

    -- * GDataCompositeMediaReferenceType
    , GDataCompositeMediaReferenceType (..)

    -- * GDataMediaReferenceType
    , GDataMediaReferenceType (..)

    -- * GDataContentTypeInfo
    , GDataContentTypeInfo
    , gDataContentTypeInfo
    , gdctiFromBytes
    , gdctiFromFileName
    , gdctiFromHeader
    , gdctiBestGuess
    , gdctiFromURLPath

    -- * GDataMedia
    , GDataMedia
    , gDataMedia
    , gdmLength
    , gdmDiffVersionResponse
    , gdmDiffUploadRequest
    , gdmBigstoreObjectRef
    , gdmHash
    , gdmIsPotentialRetry
    , gdmCrc32cHash
    , gdmBlobRef
    , gdmPath
    , gdmObjectId
    , gdmToken
    , gdmInline
    , gdmMediaId
    , gdmSha1Hash
    , gdmHashVerified
    , gdmContentTypeInfo
    , gdmAlgorithm
    , gdmDiffDownloadResponse
    , gdmDiffUploadResponse
    , gdmDiffChecksumsResponse
    , gdmBlobstore2Info
    , gdmReferenceType
    , gdmTimestamp
    , gdmMD5Hash
    , gdmDownloadParameters
    , gdmCosmoBinaryReference
    , gdmFilename
    , gdmSha256Hash
    , gdmContentType
    , gdmCompositeMedia

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

    -- * GDataCompositeMedia
    , GDataCompositeMedia
    , gDataCompositeMedia
    , gdcmLength
    , gdcmCrc32cHash
    , gdcmBlobRef
    , gdcmPath
    , gdcmObjectId
    , gdcmInline
    , gdcmSha1Hash
    , gdcmBlobstore2Info
    , gdcmReferenceType
    , gdcmMD5Hash
    , gdcmCosmoBinaryReference

    -- * GDataDownloadParameters
    , GDataDownloadParameters
    , gDataDownloadParameters
    , gddpIgnoreRange
    , gddpAllowGzipCompression

    -- * ListReportTypesResponse
    , ListReportTypesResponse
    , listReportTypesResponse
    , lrtrNextPageToken
    , lrtrReportTypes

    -- * GDataBlobstore2Info
    , GDataBlobstore2Info
    , gDataBlobstore2Info
    , gdbiBlobGeneration
    , gdbiBlobId
    , gdbiReadToken
    , gdbiDownloadReadHandle
    , gdbiUploadMetadataContainer

    -- * Job
    , Job
    , job
    , jName
    , jId
    , jSystemManaged
    , jReportTypeId
    , jExpireTime
    , jCreateTime

    -- * GDataDiffUploadResponse
    , GDataDiffUploadResponse
    , gDataDiffUploadResponse
    , gddurOriginalObject
    , gddurObjectVersion

    -- * Xgafv
    , Xgafv (..)

    -- * GDataDiffDownloadResponse
    , GDataDiffDownloadResponse
    , gDataDiffDownloadResponse
    , gdddrObjectLocation

    -- * ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- * GDataDiffUploadRequest
    , GDataDiffUploadRequest
    , gDataDiffUploadRequest
    , gChecksumsInfo
    , gObjectVersion
    , gObjectInfo

    -- * GDataDiffVersionResponse
    , GDataDiffVersionResponse
    , gDataDiffVersionResponse
    , gddvrObjectSizeBytes
    , gddvrObjectVersion

    -- * ReportType
    , ReportType
    , reportType
    , rtName
    , rtId
    , rtDeprecateTime
    , rtSystemManaged
    ) where

import Network.Google.Prelude
import Network.Google.YouTubeReporting.Types.Product
import Network.Google.YouTubeReporting.Types.Sum

-- | Default request referring to version 'v1' of the YouTube Reporting API. This contains the host and root path used as a starting point for constructing service requests.
youTubeReportingService :: ServiceConfig
youTubeReportingService
  = defaultService (ServiceId "youtubereporting:v1")
      "youtubereporting.googleapis.com"

-- | View YouTube Analytics reports for your YouTube content
youTubeAnalyticsReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics.readonly"]
youTubeAnalyticsReadOnlyScope = Proxy

-- | View monetary and non-monetary YouTube Analytics reports for your
-- YouTube content
youTubeAnalyticsMonetaryReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/yt-analytics-monetary.readonly"]
youTubeAnalyticsMonetaryReadOnlyScope = Proxy

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.YouTubeReporting
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Schedules reporting jobs containing your YouTube Analytics data and
-- downloads the resulting bulk data reports in the form of CSV files.
--
-- /See:/ <https://developers.google.com/youtube/reporting/v1/reports/ YouTube Reporting API Reference>
module Network.Google.YouTubeReporting
    (
    -- * Service Configuration
      youTubeReportingService

    -- * OAuth Scopes
    , youTubeAnalyticsReadOnlyScope
    , youTubeAnalyticsMonetaryReadOnlyScope

    -- * API Declaration
    , YouTubeReportingAPI

    -- * Resources

    -- ** youtubereporting.jobs.create
    , module Network.Google.Resource.YouTubeReporting.Jobs.Create

    -- ** youtubereporting.jobs.delete
    , module Network.Google.Resource.YouTubeReporting.Jobs.Delete

    -- ** youtubereporting.jobs.get
    , module Network.Google.Resource.YouTubeReporting.Jobs.Get

    -- ** youtubereporting.jobs.list
    , module Network.Google.Resource.YouTubeReporting.Jobs.List

    -- ** youtubereporting.jobs.reports.get
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get

    -- ** youtubereporting.jobs.reports.list
    , module Network.Google.Resource.YouTubeReporting.Jobs.Reports.List

    -- ** youtubereporting.media.download
    , module Network.Google.Resource.YouTubeReporting.Media.Download

    -- ** youtubereporting.reportTypes.list
    , module Network.Google.Resource.YouTubeReporting.ReportTypes.List

    -- * Types

    -- ** ListReportsResponse
    , ListReportsResponse
    , listReportsResponse
    , lrrNextPageToken
    , lrrReports

    -- ** GDataDiffChecksumsResponse
    , GDataDiffChecksumsResponse
    , gDataDiffChecksumsResponse
    , gddcrChecksumsLocation
    , gddcrObjectSizeBytes
    , gddcrChunkSizeBytes
    , gddcrObjectVersion
    , gddcrObjectLocation

    -- ** GDataObjectId
    , GDataObjectId
    , gDataObjectId
    , gdoiObjectName
    , gdoiBucketName
    , gdoiGeneration

    -- ** Empty
    , Empty
    , empty

    -- ** GDataCompositeMediaReferenceType
    , GDataCompositeMediaReferenceType (..)

    -- ** GDataMediaReferenceType
    , GDataMediaReferenceType (..)

    -- ** GDataContentTypeInfo
    , GDataContentTypeInfo
    , gDataContentTypeInfo
    , gdctiFromBytes
    , gdctiFromFileName
    , gdctiFromHeader
    , gdctiBestGuess
    , gdctiFromURLPath

    -- ** GDataMedia
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

    -- ** Report
    , Report
    , report
    , rJobId
    , rStartTime
    , rDownloadURL
    , rEndTime
    , rId
    , rCreateTime
    , rJobExpireTime

    -- ** GDataCompositeMedia
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

    -- ** GDataDownloadParameters
    , GDataDownloadParameters
    , gDataDownloadParameters
    , gddpIgnoreRange
    , gddpAllowGzipCompression

    -- ** ListReportTypesResponse
    , ListReportTypesResponse
    , listReportTypesResponse
    , lrtrNextPageToken
    , lrtrReportTypes

    -- ** GDataBlobstore2Info
    , GDataBlobstore2Info
    , gDataBlobstore2Info
    , gdbiBlobGeneration
    , gdbiBlobId
    , gdbiReadToken
    , gdbiDownloadReadHandle
    , gdbiUploadMetadataContainer

    -- ** Job
    , Job
    , job
    , jName
    , jId
    , jSystemManaged
    , jReportTypeId
    , jExpireTime
    , jCreateTime

    -- ** GDataDiffUploadResponse
    , GDataDiffUploadResponse
    , gDataDiffUploadResponse
    , gddurOriginalObject
    , gddurObjectVersion

    -- ** Xgafv
    , Xgafv (..)

    -- ** GDataDiffDownloadResponse
    , GDataDiffDownloadResponse
    , gDataDiffDownloadResponse
    , gdddrObjectLocation

    -- ** ListJobsResponse
    , ListJobsResponse
    , listJobsResponse
    , ljrNextPageToken
    , ljrJobs

    -- ** GDataDiffUploadRequest
    , GDataDiffUploadRequest
    , gDataDiffUploadRequest
    , gChecksumsInfo
    , gObjectVersion
    , gObjectInfo

    -- ** GDataDiffVersionResponse
    , GDataDiffVersionResponse
    , gDataDiffVersionResponse
    , gddvrObjectSizeBytes
    , gddvrObjectVersion

    -- ** ReportType
    , ReportType
    , reportType
    , rtName
    , rtId
    , rtDeprecateTime
    , rtSystemManaged
    ) where

import Network.Google.Prelude
import Network.Google.Resource.YouTubeReporting.Jobs.Create
import Network.Google.Resource.YouTubeReporting.Jobs.Delete
import Network.Google.Resource.YouTubeReporting.Jobs.Get
import Network.Google.Resource.YouTubeReporting.Jobs.List
import Network.Google.Resource.YouTubeReporting.Jobs.Reports.Get
import Network.Google.Resource.YouTubeReporting.Jobs.Reports.List
import Network.Google.Resource.YouTubeReporting.Media.Download
import Network.Google.Resource.YouTubeReporting.ReportTypes.List
import Network.Google.YouTubeReporting.Types

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

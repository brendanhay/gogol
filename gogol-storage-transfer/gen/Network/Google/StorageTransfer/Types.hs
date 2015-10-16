{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StorageTransfer.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.StorageTransfer.Types
    (
    -- * Service Configuration
      storageTransferService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ErrorSummary
    , ErrorSummary
    , errorSummary
    , esErrorCount
    , esErrorCode
    , esErrorLogEntries

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * Schedule
    , Schedule
    , schedule
    , sScheduleEndDate
    , sScheduleStartDate
    , sStartTimeOfDay

    -- * ObjectConditions
    , ObjectConditions
    , objectConditions
    , ocMinTimeElapsedSinceLastModification
    , ocIncludePrefixes
    , ocMaxTimeElapsedSinceLastModification
    , ocExcludePrefixes

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

    -- * GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * UpdateTransferJobRequest
    , UpdateTransferJobRequest
    , updateTransferJobRequest
    , utjrTransferJob
    , utjrProjectId
    , utjrUpdateTransferJobFieldMask

    -- * TransferCounters
    , TransferCounters
    , transferCounters
    , tcBytesFoundOnlyFromSink
    , tcBytesDeletedFromSink
    , tcObjectsDeletedFromSource
    , tcObjectsFoundFromSource
    , tcBytesFailedToDeleteFromSink
    , tcBytesFromSourceFailed
    , tcBytesCopiedToSink
    , tcBytesFoundFromSource
    , tcBytesDeletedFromSource
    , tcObjectsDeletedFromSink
    , tcObjectsFoundOnlyFromSink
    , tcBytesFromSourceSkippedBySync
    , tcObjectsCopiedToSink
    , tcObjectsFromSourceFailed
    , tcObjectsFailedToDeleteFromSink
    , tcObjectsFromSourceSkippedBySync

    -- * TransferJob
    , TransferJob
    , transferJob
    , tjCreationTime
    , tjStatus
    , tjSchedule
    , tjDeletionTime
    , tjName
    , tjProjectId
    , tjTransferSpec
    , tjDescription
    , tjLastModificationTime

    -- * GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- * AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- * HTTPData
    , HTTPData
    , hTTPData
    , httpdListURL

    -- * TimeOfDay'
    , TimeOfDay'
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- * ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleURL
    , eleErrorDetails

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

    -- * TransferOperation
    , TransferOperation
    , transferOperation
    , toStatus
    , toCounters
    , toStartTime
    , toTransferJobName
    , toName
    , toEndTime
    , toProjectId
    , toTransferSpec
    , toErrorBreakdowns

    -- * TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHTTPDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- * ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest

    -- * AwsAccessKey
    , AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types.Product
import           Network.Google.StorageTransfer.Types.Sum

-- | Default request referring to version 'v1' of the Google Storage Transfer API. This contains the host and root path used as a starting point for constructing service requests.
storageTransferService :: Service
storageTransferService
  = defaultService (ServiceId "storagetransfer:v1")
      "storagetransfer.googleapis.com"
      ""

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: OAuthScope
cloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

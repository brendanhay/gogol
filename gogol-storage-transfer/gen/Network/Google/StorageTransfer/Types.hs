{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.StorageTransfer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- * RunTransferJobRequest
    , RunTransferJobRequest
    , runTransferJobRequest
    , rtjrProjectId

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncEventTypes
    , ncPubsubTopic
    , ncPayloadFormat

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * TransferOperationStatus
    , TransferOperationStatus (..)

    -- * NotificationConfigPayloadFormat
    , NotificationConfigPayloadFormat (..)

    -- * Schedule
    , Schedule
    , schedule
    , sRepeatInterval
    , sScheduleEndDate
    , sScheduleStartDate
    , sEndTimeOfDay
    , sStartTimeOfDay

    -- * ObjectConditions
    , ObjectConditions
    , objectConditions
    , ocLastModifiedBefore
    , ocMinTimeElapsedSinceLastModification
    , ocIncludePrefixes
    , ocMaxTimeElapsedSinceLastModification
    , ocExcludePrefixes
    , ocLastModifiedSince

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
    , gsaSubjectId

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * AzureCredentials
    , AzureCredentials
    , azureCredentials
    , acSasToken

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
    , tjNotificationConfig
    , tjSchedule
    , tjDeletionTime
    , tjName
    , tjProjectId
    , tjTransferSpec
    , tjDescription
    , tjLastModificationTime
    , tjLatestOperationName

    -- * GcsData
    , GcsData
    , gcsData
    , gdPath
    , gdBucketName

    -- * Xgafv
    , Xgafv (..)

    -- * NotificationConfigEventTypesItem
    , NotificationConfigEventTypesItem (..)

    -- * AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdPath
    , asdBucketName
    , asdAwsAccessKey
    , asdRoleArn

    -- * TransferJobStatus
    , TransferJobStatus (..)

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

    -- * AzureBlobStorageData
    , AzureBlobStorageData
    , azureBlobStorageData
    , absdPath
    , absdAzureCredentials
    , absdContainer
    , absdStorageAccount

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
    , toNotificationConfig
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
    , tsAzureBlobStorageDataSource

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

    -- * ErrorSummaryErrorCode
    , ErrorSummaryErrorCode (..)
    ) where

import Network.Google.Prelude
import Network.Google.StorageTransfer.Types.Product
import Network.Google.StorageTransfer.Types.Sum

-- | Default request referring to version 'v1' of the Storage Transfer API. This contains the host and root path used as a starting point for constructing service requests.
storageTransferService :: ServiceConfig
storageTransferService
  = defaultService (ServiceId "storagetransfer:v1")
      "storagetransfer.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

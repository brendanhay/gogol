{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.StorageTransfer
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Transfers data from external data sources to a Google Cloud Storage
-- bucket or between Google Cloud Storage buckets.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference>
module Network.Google.StorageTransfer
    (
    -- * Resources
      StorageTransfer
    , TransferJobsAPI
    , TransferJobsList
    , TransferJobsPatch
    , TransferJobsGet
    , TransferJobsCreate
    , V1API
    , V1GetGoogleServiceAccount
    , TransferOperationsAPI
    , TransferOperationsList
    , TransferOperationsGet
    , TransferOperationsPause
    , TransferOperationsCancel
    , TransferOperationsDelete
    , TransferOperationsResume
    , GoogleServiceAccountsAPI
    , GoogleServiceAccountsGet

    -- * Types

    -- ** AwsAccessKey
    , AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId

    -- ** AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** Empty
    , Empty
    , empty

    -- ** ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleUrl
    , eleErrorDetails

    -- ** ErrorSummary
    , ErrorSummary
    , errorSummary
    , esErrorCount
    , esErrorCode
    , esErrorLogEntries

    -- ** GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- ** GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- ** HttpData
    , HttpData
    , httpData
    , hdListUrl

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

    -- ** ObjectConditions
    , ObjectConditions
    , objectConditions
    , ocMinTimeElapsedSinceLastModification
    , ocIncludePrefixes
    , ocMaxTimeElapsedSinceLastModification
    , ocExcludePrefixes

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

    -- ** PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

    -- ** ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest

    -- ** Schedule
    , Schedule
    , schedule
    , sScheduleEndDate
    , sScheduleStartDate
    , sStartTimeOfDay

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- ** TimeOfDay
    , TimeOfDay
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** TransferCounters
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

    -- ** TransferJob
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

    -- ** TransferOperation
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

    -- ** TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

    -- ** TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHttpDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- ** UpdateTransferJobRequest
    , UpdateTransferJobRequest
    , updateTransferJobRequest
    , utjrTransferJob
    , utjrProjectId
    , utjrUpdateTransferJobFieldMask
    ) where

import           Network.Google.StorageTransfer.Types

{- $resources
TODO
-}

type StorageTransfer =
     V1API :<|>
       TransferOperationsAPI :<|>
         GoogleServiceAccountsAPI :<|> TransferJobsAPI

type TransferJobsAPI =
     TransferJobsPatch :<|>
       TransferJobsGet :<|>
         TransferJobsCreate :<|> TransferJobsList

-- | Lists transfer jobs.
type TransferJobsList =
     "v1" :> "transferJobs" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Updates a transfer job. Updating a job\'s transfer spec does not affect
-- transfer operations that are running already. Updating the scheduling of
-- a job is not allowed.
type TransferJobsPatch =
     "v1" :> "{+jobName}" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets a transfer job.
type TransferJobsGet =
     "v1" :> "{+jobName}" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "projectId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Creates a transfer job that runs periodically.
type TransferJobsCreate =
     "v1" :> "transferJobs" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type V1API = V1GetGoogleServiceAccount

-- | Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
type V1GetGoogleServiceAccount =
     "v1:getGoogleServiceAccount" :>
       QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "projectId" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type TransferOperationsAPI =
     TransferOperationsGet :<|>
       TransferOperationsPause :<|>
         TransferOperationsCancel :<|>
           TransferOperationsDelete :<|>
             TransferOperationsResume :<|> TransferOperationsList

-- | Lists operations that match the specified filter in the request. If the
-- server doesn\'t support this method, it returns \`UNIMPLEMENTED\`. NOTE:
-- the \`name\` binding below allows API services to override the binding
-- to use different resource name schemes, such as
-- \`users\/*\/operations\`.
type TransferOperationsList =
     "v1" :> "{+name}" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "pageSize" Int32
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Gets the latest state of a long-running operation. Clients can use this
-- method to poll the operation result at intervals as recommended by the
-- API service.
type TransferOperationsGet =
     "v1" :> "{+name}" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Pauses a transfer operation.
type TransferOperationsPause =
     "v1" :> "{+name}:pause" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Cancels a transfer. Use the get method to check whether the cancellation
-- succeeded or whether the operation completed despite cancellation.
type TransferOperationsCancel =
     "v1" :> "{+name}:cancel" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | This method is not supported and the server returns \`UNIMPLEMENTED\`.
type TransferOperationsDelete =
     "v1" :> "{+name}" :> QueryParam "$.xgafv" Text :>
       QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

-- | Resumes a transfer operation that is paused.
type TransferOperationsResume =
     "v1" :> "{+name}:resume" :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

type GoogleServiceAccountsAPI =
     GoogleServiceAccountsGet

-- | Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
type GoogleServiceAccountsGet =
     "v1" :> "googleServiceAccounts" :>
       Capture "projectId" Text
       :> QueryParam "$.xgafv" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "upload_protocol" Text
       :> QueryParam "pp" Bool
       :> QueryParam "access_token" Text
       :> QueryParam "uploadType" Text
       :> QueryParam "bearer_token" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "callback" Text
       :> QueryParam "alt" Text

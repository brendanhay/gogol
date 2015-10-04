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
-- | Transfers data from external data sources to a Google Cloud Storage
-- bucket or between Google Cloud Storage buckets.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference>
module Network.Google.StorageTransfer
    (
    -- * API
      StorageTransferAPI
    , storageTransferAPI
    , storageTransferURL

    -- * Service Methods

    -- * REST Resources

    -- ** StorageTransferGetGoogleServiceAccount
    , module Network.Google.Resource.StorageTransfer.GetGoogleServiceAccount

    -- ** StorageTransferGoogleServiceAccountsGet
    , module Network.Google.Resource.StorageTransfer.GoogleServiceAccounts.Get

    -- ** StorageTransferTransferJobsCreate
    , module Network.Google.Resource.StorageTransfer.TransferJobs.Create

    -- ** StorageTransferTransferJobsGet
    , module Network.Google.Resource.StorageTransfer.TransferJobs.Get

    -- ** StorageTransferTransferJobsList
    , module Network.Google.Resource.StorageTransfer.TransferJobs.List

    -- ** StorageTransferTransferJobsPatch
    , module Network.Google.Resource.StorageTransfer.TransferJobs.Patch

    -- ** StorageTransferTransferOperationsCancel
    , module Network.Google.Resource.StorageTransfer.TransferOperations.Cancel

    -- ** StorageTransferTransferOperationsDelete
    , module Network.Google.Resource.StorageTransfer.TransferOperations.Delete

    -- ** StorageTransferTransferOperationsGet
    , module Network.Google.Resource.StorageTransfer.TransferOperations.Get

    -- ** StorageTransferTransferOperationsList
    , module Network.Google.Resource.StorageTransfer.TransferOperations.List

    -- ** StorageTransferTransferOperationsPause
    , module Network.Google.Resource.StorageTransfer.TransferOperations.Pause

    -- ** StorageTransferTransferOperationsResume
    , module Network.Google.Resource.StorageTransfer.TransferOperations.Resume

    -- * Types

    -- ** ErrorSummary
    , ErrorSummary
    , errorSummary
    , esErrorCount
    , esErrorCode
    , esErrorLogEntries

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** Schedule
    , Schedule
    , schedule
    , sScheduleEndDate
    , sScheduleStartDate
    , sStartTimeOfDay

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

    -- ** Empty
    , Empty
    , empty

    -- ** PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

    -- ** GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** UpdateTransferJobRequest
    , UpdateTransferJobRequest
    , updateTransferJobRequest
    , utjrTransferJob
    , utjrProjectId
    , utjrUpdateTransferJobFieldMask

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

    -- ** GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- ** AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- ** HTTPData
    , HTTPData
    , hTTPData
    , httpdListURL

    -- ** TimeOfDay
    , TimeOfDay
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleURL
    , eleErrorDetails

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

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

    -- ** TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHTTPDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- ** ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

    -- ** ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest

    -- ** AwsAccessKey
    , AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.StorageTransfer.GetGoogleServiceAccount
import           Network.Google.Resource.StorageTransfer.GoogleServiceAccounts.Get
import           Network.Google.Resource.StorageTransfer.TransferJobs.Create
import           Network.Google.Resource.StorageTransfer.TransferJobs.Get
import           Network.Google.Resource.StorageTransfer.TransferJobs.List
import           Network.Google.Resource.StorageTransfer.TransferJobs.Patch
import           Network.Google.Resource.StorageTransfer.TransferOperations.Cancel
import           Network.Google.Resource.StorageTransfer.TransferOperations.Delete
import           Network.Google.Resource.StorageTransfer.TransferOperations.Get
import           Network.Google.Resource.StorageTransfer.TransferOperations.List
import           Network.Google.Resource.StorageTransfer.TransferOperations.Pause
import           Network.Google.Resource.StorageTransfer.TransferOperations.Resume
import           Network.Google.StorageTransfer.Types

{- $resources
TODO
-}

type StorageTransferAPI =
     TransferJobsListResource :<|>
       TransferJobsPatchResource
       :<|> TransferJobsGetResource
       :<|> TransferJobsCreateResource
       :<|> GetGoogleServiceAccountResource
       :<|> TransferOperationsListResource
       :<|> TransferOperationsGetResource
       :<|> TransferOperationsPauseResource
       :<|> TransferOperationsCancelResource
       :<|> TransferOperationsDeleteResource
       :<|> TransferOperationsResumeResource
       :<|> GoogleServiceAccountsGetResource

storageTransferAPI :: Proxy StorageTransferAPI
storageTransferAPI = Proxy

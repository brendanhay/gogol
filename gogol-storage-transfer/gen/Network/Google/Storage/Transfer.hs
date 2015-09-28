{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Storage.Transfer
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
module Network.Google.Storage.Transfer
    (
    -- * REST Resources

    -- ** Google Storage Transfer API
      StorageTransfer
    , storageTransfer
    , storageTransferURL

    -- ** storagetransfer.getGoogleServiceAccount
    , module Network.Google.API.StorageTransfer.GetGoogleServiceAccount

    -- ** storagetransfer.googleServiceAccounts.get
    , module Network.Google.API.StorageTransfer.GoogleServiceAccounts.Get

    -- ** storagetransfer.transferJobs.create
    , module Network.Google.API.StorageTransfer.TransferJobs.Create

    -- ** storagetransfer.transferJobs.get
    , module Network.Google.API.StorageTransfer.TransferJobs.Get

    -- ** storagetransfer.transferJobs.list
    , module Network.Google.API.StorageTransfer.TransferJobs.List

    -- ** storagetransfer.transferJobs.patch
    , module Network.Google.API.StorageTransfer.TransferJobs.Patch

    -- ** storagetransfer.transferOperations.cancel
    , module Network.Google.API.StorageTransfer.TransferOperations.Cancel

    -- ** storagetransfer.transferOperations.delete
    , module Network.Google.API.StorageTransfer.TransferOperations.Delete

    -- ** storagetransfer.transferOperations.get
    , module Network.Google.API.StorageTransfer.TransferOperations.Get

    -- ** storagetransfer.transferOperations.list
    , module Network.Google.API.StorageTransfer.TransferOperations.List

    -- ** storagetransfer.transferOperations.pause
    , module Network.Google.API.StorageTransfer.TransferOperations.Pause

    -- ** storagetransfer.transferOperations.resume
    , module Network.Google.API.StorageTransfer.TransferOperations.Resume

    -- * Types

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

    -- ** GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- ** AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- ** OperationResponse
    , OperationResponse
    , operationResponse

    -- ** ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleUrl
    , eleErrorDetails

    -- ** TimeOfDay
    , TimeOfDay
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

    -- ** HttpData
    , HttpData
    , httpData
    , hdListUrl

    -- ** TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

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

    -- ** Empty
    , Empty
    , empty

    -- ** PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

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

    -- ** GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- ** StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- ** AwsAccessKey
    , AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId

    -- ** TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHttpDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- ** ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest

    -- ** ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

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
    ) where

import           Network.Google.API.StorageTransfer.GetGoogleServiceAccount
import           Network.Google.API.StorageTransfer.GoogleServiceAccounts.Get
import           Network.Google.API.StorageTransfer.TransferJobs.Create
import           Network.Google.API.StorageTransfer.TransferJobs.Get
import           Network.Google.API.StorageTransfer.TransferJobs.List
import           Network.Google.API.StorageTransfer.TransferJobs.Patch
import           Network.Google.API.StorageTransfer.TransferOperations.Cancel
import           Network.Google.API.StorageTransfer.TransferOperations.Delete
import           Network.Google.API.StorageTransfer.TransferOperations.Get
import           Network.Google.API.StorageTransfer.TransferOperations.List
import           Network.Google.API.StorageTransfer.TransferOperations.Pause
import           Network.Google.API.StorageTransfer.TransferOperations.Resume
import           Network.Google.Prelude
import           Network.Google.Storage.Transfer.Types

{- $resources
TODO
-}

type StorageTransfer =
     TransferJobsGetAPI :<|> TransferOperationsListAPI
       :<|> TransferOperationsDeleteAPI
       :<|> TransferOperationsResumeAPI
       :<|> TransferOperationsCancelAPI
       :<|> GetGoogleServiceAccountAPI
       :<|> TransferJobsListAPI
       :<|> GoogleServiceAccountsGetAPI
       :<|> TransferJobsPatchAPI
       :<|> TransferOperationsPauseAPI
       :<|> TransferJobsCreateAPI
       :<|> TransferOperationsGetAPI

storageTransfer :: Proxy StorageTransfer
storageTransfer = Proxy

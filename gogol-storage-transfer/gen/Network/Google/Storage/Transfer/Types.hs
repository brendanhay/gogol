{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Storage.Transfer.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Storage.Transfer.Types
    (

    -- * AwsAccessKey
      AwsAccessKey
    , awsAccessKey
    , aakSecretAccessKey
    , aakAccessKeyId

    -- * AwsS3Data
    , AwsS3Data
    , awsS3Data
    , asdBucketName
    , asdAwsAccessKey

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * Empty
    , Empty
    , empty

    -- * ErrorLogEntry
    , ErrorLogEntry
    , errorLogEntry
    , eleUrl
    , eleErrorDetails

    -- * ErrorSummary
    , ErrorSummary
    , errorSummary
    , esErrorCount
    , esErrorCode
    , esErrorLogEntries

    -- * GcsData
    , GcsData
    , gcsData
    , gdBucketName

    -- * GoogleServiceAccount
    , GoogleServiceAccount
    , googleServiceAccount
    , gsaAccountEmail

    -- * HttpData
    , HttpData
    , httpData
    , hdListUrl

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * ListTransferJobsResponse
    , ListTransferJobsResponse
    , listTransferJobsResponse
    , ltjrNextPageToken
    , ltjrTransferJobs

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

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata

    -- * OperationResponse
    , OperationResponse
    , operationResponse

    -- * PauseTransferOperationRequest
    , PauseTransferOperationRequest
    , pauseTransferOperationRequest

    -- * ResumeTransferOperationRequest
    , ResumeTransferOperationRequest
    , resumeTransferOperationRequest

    -- * Schedule
    , Schedule
    , schedule
    , sScheduleEndDate
    , sScheduleStartDate
    , sStartTimeOfDay

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * StatusItemDetails
    , StatusItemDetails
    , statusItemDetails

    -- * TimeOfDay
    , TimeOfDay
    , timeOfDay
    , todNanos
    , todHours
    , todMinutes
    , todSeconds

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

    -- * TransferOptions
    , TransferOptions
    , transferOptions
    , toDeleteObjectsUniqueInSink
    , toDeleteObjectsFromSourceAfterTransfer
    , toOverwriteObjectsAlreadyExistingInSink

    -- * TransferSpec
    , TransferSpec
    , transferSpec
    , tsGcsDataSource
    , tsObjectConditions
    , tsHttpDataSource
    , tsAwsS3DataSource
    , tsGcsDataSink
    , tsTransferOptions

    -- * UpdateTransferJobRequest
    , UpdateTransferJobRequest
    , updateTransferJobRequest
    , utjrTransferJob
    , utjrProjectId
    , utjrUpdateTransferJobFieldMask
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Transfer.Types.Product
import           Network.Google.Storage.Transfer.Types.Sum

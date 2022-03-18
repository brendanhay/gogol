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
-- Module      : Network.Google.StorageTransfer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference>
module Network.Google.StorageTransfer
  ( -- * Configuration
    storageTransferService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** storagetransfer.googleServiceAccounts.get
    StorageTransferGoogleServiceAccountsGetResource,
    newStorageTransferGoogleServiceAccountsGet,
    StorageTransferGoogleServiceAccountsGet,

    -- ** storagetransfer.projects.agentPools.create
    StorageTransferProjectsAgentPoolsCreateResource,
    newStorageTransferProjectsAgentPoolsCreate,
    StorageTransferProjectsAgentPoolsCreate,

    -- ** storagetransfer.projects.agentPools.delete
    StorageTransferProjectsAgentPoolsDeleteResource,
    newStorageTransferProjectsAgentPoolsDelete,
    StorageTransferProjectsAgentPoolsDelete,

    -- ** storagetransfer.projects.agentPools.get
    StorageTransferProjectsAgentPoolsGetResource,
    newStorageTransferProjectsAgentPoolsGet,
    StorageTransferProjectsAgentPoolsGet,

    -- ** storagetransfer.projects.agentPools.list
    StorageTransferProjectsAgentPoolsListResource,
    newStorageTransferProjectsAgentPoolsList,
    StorageTransferProjectsAgentPoolsList,

    -- ** storagetransfer.projects.agentPools.patch
    StorageTransferProjectsAgentPoolsPatchResource,
    newStorageTransferProjectsAgentPoolsPatch,
    StorageTransferProjectsAgentPoolsPatch,

    -- ** storagetransfer.transferJobs.create
    StorageTransferTransferJobsCreateResource,
    newStorageTransferTransferJobsCreate,
    StorageTransferTransferJobsCreate,

    -- ** storagetransfer.transferJobs.get
    StorageTransferTransferJobsGetResource,
    newStorageTransferTransferJobsGet,
    StorageTransferTransferJobsGet,

    -- ** storagetransfer.transferJobs.list
    StorageTransferTransferJobsListResource,
    newStorageTransferTransferJobsList,
    StorageTransferTransferJobsList,

    -- ** storagetransfer.transferJobs.patch
    StorageTransferTransferJobsPatchResource,
    newStorageTransferTransferJobsPatch,
    StorageTransferTransferJobsPatch,

    -- ** storagetransfer.transferJobs.run
    StorageTransferTransferJobsRunResource,
    newStorageTransferTransferJobsRun,
    StorageTransferTransferJobsRun,

    -- ** storagetransfer.transferOperations.cancel
    StorageTransferTransferOperationsCancelResource,
    newStorageTransferTransferOperationsCancel,
    StorageTransferTransferOperationsCancel,

    -- ** storagetransfer.transferOperations.get
    StorageTransferTransferOperationsGetResource,
    newStorageTransferTransferOperationsGet,
    StorageTransferTransferOperationsGet,

    -- ** storagetransfer.transferOperations.list
    StorageTransferTransferOperationsListResource,
    newStorageTransferTransferOperationsList,
    StorageTransferTransferOperationsList,

    -- ** storagetransfer.transferOperations.pause
    StorageTransferTransferOperationsPauseResource,
    newStorageTransferTransferOperationsPause,
    StorageTransferTransferOperationsPause,

    -- ** storagetransfer.transferOperations.resume
    StorageTransferTransferOperationsResumeResource,
    newStorageTransferTransferOperationsResume,
    StorageTransferTransferOperationsResume,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AgentPool
    AgentPool (..),
    newAgentPool,

    -- ** AgentPool_State
    AgentPool_State (..),

    -- ** AwsAccessKey
    AwsAccessKey (..),
    newAwsAccessKey,

    -- ** AwsS3Data
    AwsS3Data (..),
    newAwsS3Data,

    -- ** AzureBlobStorageData
    AzureBlobStorageData (..),
    newAzureBlobStorageData,

    -- ** AzureCredentials
    AzureCredentials (..),
    newAzureCredentials,

    -- ** BandwidthLimit
    BandwidthLimit (..),
    newBandwidthLimit,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** Date
    Date (..),
    newDate,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ErrorLogEntry
    ErrorLogEntry (..),
    newErrorLogEntry,

    -- ** ErrorSummary
    ErrorSummary (..),
    newErrorSummary,

    -- ** ErrorSummary_ErrorCode
    ErrorSummary_ErrorCode (..),

    -- ** GcsData
    GcsData (..),
    newGcsData,

    -- ** GoogleServiceAccount
    GoogleServiceAccount (..),
    newGoogleServiceAccount,

    -- ** HttpData
    HttpData (..),
    newHttpData,

    -- ** ListAgentPoolsResponse
    ListAgentPoolsResponse (..),
    newListAgentPoolsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListTransferJobsResponse
    ListTransferJobsResponse (..),
    newListTransferJobsResponse,

    -- ** LoggingConfig
    LoggingConfig (..),
    newLoggingConfig,

    -- ** LoggingConfig_LogActionStatesItem
    LoggingConfig_LogActionStatesItem (..),

    -- ** LoggingConfig_LogActionsItem
    LoggingConfig_LogActionsItem (..),

    -- ** MetadataOptions
    MetadataOptions (..),
    newMetadataOptions,

    -- ** MetadataOptions_Acl
    MetadataOptions_Acl (..),

    -- ** MetadataOptions_Gid
    MetadataOptions_Gid (..),

    -- ** MetadataOptions_KmsKey
    MetadataOptions_KmsKey (..),

    -- ** MetadataOptions_Mode
    MetadataOptions_Mode (..),

    -- ** MetadataOptions_StorageClass
    MetadataOptions_StorageClass (..),

    -- ** MetadataOptions_Symlink
    MetadataOptions_Symlink (..),

    -- ** MetadataOptions_TemporaryHold
    MetadataOptions_TemporaryHold (..),

    -- ** MetadataOptions_TimeCreated
    MetadataOptions_TimeCreated (..),

    -- ** MetadataOptions_Uid
    MetadataOptions_Uid (..),

    -- ** NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- ** NotificationConfig_EventTypesItem
    NotificationConfig_EventTypesItem (..),

    -- ** NotificationConfig_PayloadFormat
    NotificationConfig_PayloadFormat (..),

    -- ** ObjectConditions
    ObjectConditions (..),
    newObjectConditions,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PauseTransferOperationRequest
    PauseTransferOperationRequest (..),
    newPauseTransferOperationRequest,

    -- ** PosixFilesystem
    PosixFilesystem (..),
    newPosixFilesystem,

    -- ** ResumeTransferOperationRequest
    ResumeTransferOperationRequest (..),
    newResumeTransferOperationRequest,

    -- ** RunTransferJobRequest
    RunTransferJobRequest (..),
    newRunTransferJobRequest,

    -- ** Schedule
    Schedule (..),
    newSchedule,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TransferCounters
    TransferCounters (..),
    newTransferCounters,

    -- ** TransferJob
    TransferJob (..),
    newTransferJob,

    -- ** TransferJob_Status
    TransferJob_Status (..),

    -- ** TransferManifest
    TransferManifest (..),
    newTransferManifest,

    -- ** TransferOperation
    TransferOperation (..),
    newTransferOperation,

    -- ** TransferOperation_Status
    TransferOperation_Status (..),

    -- ** TransferOptions
    TransferOptions (..),
    newTransferOptions,

    -- ** TransferSpec
    TransferSpec (..),
    newTransferSpec,

    -- ** UpdateTransferJobRequest
    UpdateTransferJobRequest (..),
    newUpdateTransferJobRequest,
  )
where

import Network.Google.StorageTransfer.GoogleServiceAccounts.Get
import Network.Google.StorageTransfer.Projects.AgentPools.Create
import Network.Google.StorageTransfer.Projects.AgentPools.Delete
import Network.Google.StorageTransfer.Projects.AgentPools.Get
import Network.Google.StorageTransfer.Projects.AgentPools.List
import Network.Google.StorageTransfer.Projects.AgentPools.Patch
import Network.Google.StorageTransfer.TransferJobs.Create
import Network.Google.StorageTransfer.TransferJobs.Get
import Network.Google.StorageTransfer.TransferJobs.List
import Network.Google.StorageTransfer.TransferJobs.Patch
import Network.Google.StorageTransfer.TransferJobs.Run
import Network.Google.StorageTransfer.TransferOperations.Cancel
import Network.Google.StorageTransfer.TransferOperations.Get
import Network.Google.StorageTransfer.TransferOperations.List
import Network.Google.StorageTransfer.TransferOperations.Pause
import Network.Google.StorageTransfer.TransferOperations.Resume
import Network.Google.StorageTransfer.Types

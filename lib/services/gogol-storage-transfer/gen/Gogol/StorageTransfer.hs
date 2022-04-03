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
-- Module      : Gogol.StorageTransfer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Transfers data from external data sources to a Google Cloud Storage bucket or between Google Cloud Storage buckets.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference>
module Gogol.StorageTransfer
  ( -- * Configuration
    storageTransferService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** storagetransfer.googleServiceAccounts.get
    StorageTransferGoogleServiceAccountsGetResource,
    StorageTransferGoogleServiceAccountsGet (..),
    newStorageTransferGoogleServiceAccountsGet,

    -- ** storagetransfer.projects.agentPools.create
    StorageTransferProjectsAgentPoolsCreateResource,
    StorageTransferProjectsAgentPoolsCreate (..),
    newStorageTransferProjectsAgentPoolsCreate,

    -- ** storagetransfer.projects.agentPools.delete
    StorageTransferProjectsAgentPoolsDeleteResource,
    StorageTransferProjectsAgentPoolsDelete (..),
    newStorageTransferProjectsAgentPoolsDelete,

    -- ** storagetransfer.projects.agentPools.get
    StorageTransferProjectsAgentPoolsGetResource,
    StorageTransferProjectsAgentPoolsGet (..),
    newStorageTransferProjectsAgentPoolsGet,

    -- ** storagetransfer.projects.agentPools.list
    StorageTransferProjectsAgentPoolsListResource,
    StorageTransferProjectsAgentPoolsList (..),
    newStorageTransferProjectsAgentPoolsList,

    -- ** storagetransfer.projects.agentPools.patch
    StorageTransferProjectsAgentPoolsPatchResource,
    StorageTransferProjectsAgentPoolsPatch (..),
    newStorageTransferProjectsAgentPoolsPatch,

    -- ** storagetransfer.transferJobs.create
    StorageTransferTransferJobsCreateResource,
    StorageTransferTransferJobsCreate (..),
    newStorageTransferTransferJobsCreate,

    -- ** storagetransfer.transferJobs.get
    StorageTransferTransferJobsGetResource,
    StorageTransferTransferJobsGet (..),
    newStorageTransferTransferJobsGet,

    -- ** storagetransfer.transferJobs.list
    StorageTransferTransferJobsListResource,
    StorageTransferTransferJobsList (..),
    newStorageTransferTransferJobsList,

    -- ** storagetransfer.transferJobs.patch
    StorageTransferTransferJobsPatchResource,
    StorageTransferTransferJobsPatch (..),
    newStorageTransferTransferJobsPatch,

    -- ** storagetransfer.transferJobs.run
    StorageTransferTransferJobsRunResource,
    StorageTransferTransferJobsRun (..),
    newStorageTransferTransferJobsRun,

    -- ** storagetransfer.transferOperations.cancel
    StorageTransferTransferOperationsCancelResource,
    StorageTransferTransferOperationsCancel (..),
    newStorageTransferTransferOperationsCancel,

    -- ** storagetransfer.transferOperations.get
    StorageTransferTransferOperationsGetResource,
    StorageTransferTransferOperationsGet (..),
    newStorageTransferTransferOperationsGet,

    -- ** storagetransfer.transferOperations.list
    StorageTransferTransferOperationsListResource,
    StorageTransferTransferOperationsList (..),
    newStorageTransferTransferOperationsList,

    -- ** storagetransfer.transferOperations.pause
    StorageTransferTransferOperationsPauseResource,
    StorageTransferTransferOperationsPause (..),
    newStorageTransferTransferOperationsPause,

    -- ** storagetransfer.transferOperations.resume
    StorageTransferTransferOperationsResumeResource,
    StorageTransferTransferOperationsResume (..),
    newStorageTransferTransferOperationsResume,

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

import Gogol.StorageTransfer.GoogleServiceAccounts.Get
import Gogol.StorageTransfer.Projects.AgentPools.Create
import Gogol.StorageTransfer.Projects.AgentPools.Delete
import Gogol.StorageTransfer.Projects.AgentPools.Get
import Gogol.StorageTransfer.Projects.AgentPools.List
import Gogol.StorageTransfer.Projects.AgentPools.Patch
import Gogol.StorageTransfer.TransferJobs.Create
import Gogol.StorageTransfer.TransferJobs.Get
import Gogol.StorageTransfer.TransferJobs.List
import Gogol.StorageTransfer.TransferJobs.Patch
import Gogol.StorageTransfer.TransferJobs.Run
import Gogol.StorageTransfer.TransferOperations.Cancel
import Gogol.StorageTransfer.TransferOperations.Get
import Gogol.StorageTransfer.TransferOperations.List
import Gogol.StorageTransfer.TransferOperations.Pause
import Gogol.StorageTransfer.TransferOperations.Resume
import Gogol.StorageTransfer.Types

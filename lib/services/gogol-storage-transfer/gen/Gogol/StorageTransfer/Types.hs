{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StorageTransfer.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.StorageTransfer.Types
    (
    -- * Configuration
      storageTransferService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AgentPool
    , AgentPool (..)
    , newAgentPool

    -- ** AgentPool_State
    , AgentPool_State (..)

    -- ** AwsAccessKey
    , AwsAccessKey (..)
    , newAwsAccessKey

    -- ** AwsS3Data
    , AwsS3Data (..)
    , newAwsS3Data

    -- ** AzureBlobStorageData
    , AzureBlobStorageData (..)
    , newAzureBlobStorageData

    -- ** AzureCredentials
    , AzureCredentials (..)
    , newAzureCredentials

    -- ** BandwidthLimit
    , BandwidthLimit (..)
    , newBandwidthLimit

    -- ** CancelOperationRequest
    , CancelOperationRequest (..)
    , newCancelOperationRequest

    -- ** Date
    , Date (..)
    , newDate

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** ErrorLogEntry
    , ErrorLogEntry (..)
    , newErrorLogEntry

    -- ** ErrorSummary
    , ErrorSummary (..)
    , newErrorSummary

    -- ** ErrorSummary_ErrorCode
    , ErrorSummary_ErrorCode (..)

    -- ** GcsData
    , GcsData (..)
    , newGcsData

    -- ** GoogleServiceAccount
    , GoogleServiceAccount (..)
    , newGoogleServiceAccount

    -- ** HttpData
    , HttpData (..)
    , newHttpData

    -- ** ListAgentPoolsResponse
    , ListAgentPoolsResponse (..)
    , newListAgentPoolsResponse

    -- ** ListOperationsResponse
    , ListOperationsResponse (..)
    , newListOperationsResponse

    -- ** ListTransferJobsResponse
    , ListTransferJobsResponse (..)
    , newListTransferJobsResponse

    -- ** LoggingConfig
    , LoggingConfig (..)
    , newLoggingConfig

    -- ** LoggingConfig_LogActionStatesItem
    , LoggingConfig_LogActionStatesItem (..)

    -- ** LoggingConfig_LogActionsItem
    , LoggingConfig_LogActionsItem (..)

    -- ** MetadataOptions
    , MetadataOptions (..)
    , newMetadataOptions

    -- ** MetadataOptions_Acl
    , MetadataOptions_Acl (..)

    -- ** MetadataOptions_Gid
    , MetadataOptions_Gid (..)

    -- ** MetadataOptions_KmsKey
    , MetadataOptions_KmsKey (..)

    -- ** MetadataOptions_Mode
    , MetadataOptions_Mode (..)

    -- ** MetadataOptions_StorageClass
    , MetadataOptions_StorageClass (..)

    -- ** MetadataOptions_Symlink
    , MetadataOptions_Symlink (..)

    -- ** MetadataOptions_TemporaryHold
    , MetadataOptions_TemporaryHold (..)

    -- ** MetadataOptions_TimeCreated
    , MetadataOptions_TimeCreated (..)

    -- ** MetadataOptions_Uid
    , MetadataOptions_Uid (..)

    -- ** NotificationConfig
    , NotificationConfig (..)
    , newNotificationConfig

    -- ** NotificationConfig_EventTypesItem
    , NotificationConfig_EventTypesItem (..)

    -- ** NotificationConfig_PayloadFormat
    , NotificationConfig_PayloadFormat (..)

    -- ** ObjectConditions
    , ObjectConditions (..)
    , newObjectConditions

    -- ** Operation
    , Operation (..)
    , newOperation

    -- ** Operation_Metadata
    , Operation_Metadata (..)
    , newOperation_Metadata

    -- ** Operation_Response
    , Operation_Response (..)
    , newOperation_Response

    -- ** PauseTransferOperationRequest
    , PauseTransferOperationRequest (..)
    , newPauseTransferOperationRequest

    -- ** PosixFilesystem
    , PosixFilesystem (..)
    , newPosixFilesystem

    -- ** ResumeTransferOperationRequest
    , ResumeTransferOperationRequest (..)
    , newResumeTransferOperationRequest

    -- ** RunTransferJobRequest
    , RunTransferJobRequest (..)
    , newRunTransferJobRequest

    -- ** Schedule
    , Schedule (..)
    , newSchedule

    -- ** Status
    , Status (..)
    , newStatus

    -- ** Status_DetailsItem
    , Status_DetailsItem (..)
    , newStatus_DetailsItem

    -- ** TimeOfDay'
    , TimeOfDay' (..)
    , newTimeOfDay

    -- ** TransferCounters
    , TransferCounters (..)
    , newTransferCounters

    -- ** TransferJob
    , TransferJob (..)
    , newTransferJob

    -- ** TransferJob_Status
    , TransferJob_Status (..)

    -- ** TransferManifest
    , TransferManifest (..)
    , newTransferManifest

    -- ** TransferOperation
    , TransferOperation (..)
    , newTransferOperation

    -- ** TransferOperation_Status
    , TransferOperation_Status (..)

    -- ** TransferOptions
    , TransferOptions (..)
    , newTransferOptions

    -- ** TransferSpec
    , TransferSpec (..)
    , newTransferSpec

    -- ** UpdateTransferJobRequest
    , UpdateTransferJobRequest (..)
    , newUpdateTransferJobRequest
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Internal.Product
import Gogol.StorageTransfer.Internal.Sum

-- | Default request referring to version @v1@ of the Storage Transfer API. This contains the host and root path used as a starting point for constructing service requests.
storageTransferService :: Core.ServiceConfig
storageTransferService
  = Core.defaultService
      (Core.ServiceId "storagetransfer:v1")
      "storagetransfer.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

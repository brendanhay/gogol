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
-- Module      : Network.Google.Genomics.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Genomics.Types
  ( -- * Configuration
    genomicsService,

    -- * OAuth Scopes
    cloudPlatformScope,
    genomicsScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Accelerator
    Accelerator (..),
    newAccelerator,

    -- ** Action
    Action (..),
    newAction,

    -- ** Action_Environment
    Action_Environment (..),
    newAction_Environment,

    -- ** Action_FlagsItem
    Action_FlagsItem (..),

    -- ** Action_Labels
    Action_Labels (..),
    newAction_Labels,

    -- ** Action_PortMappings
    Action_PortMappings (..),
    newAction_PortMappings,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CheckInRequest
    CheckInRequest (..),
    newCheckInRequest,

    -- ** CheckInRequest_Event
    CheckInRequest_Event (..),
    newCheckInRequest_Event,

    -- ** CheckInResponse
    CheckInResponse (..),
    newCheckInResponse,

    -- ** CheckInResponse_Features
    CheckInResponse_Features (..),
    newCheckInResponse_Features,

    -- ** CheckInResponse_Metadata
    CheckInResponse_Metadata (..),
    newCheckInResponse_Metadata,

    -- ** ContainerKilledEvent
    ContainerKilledEvent (..),
    newContainerKilledEvent,

    -- ** ContainerStartedEvent
    ContainerStartedEvent (..),
    newContainerStartedEvent,

    -- ** ContainerStartedEvent_PortMappings
    ContainerStartedEvent_PortMappings (..),
    newContainerStartedEvent_PortMappings,

    -- ** ContainerStoppedEvent
    ContainerStoppedEvent (..),
    newContainerStoppedEvent,

    -- ** DelayedEvent
    DelayedEvent (..),
    newDelayedEvent,

    -- ** Disk
    Disk (..),
    newDisk,

    -- ** DiskStatus
    DiskStatus (..),
    newDiskStatus,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Event
    Event (..),
    newEvent,

    -- ** Event_Details
    Event_Details (..),
    newEvent_Details,

    -- ** ExistingDisk
    ExistingDisk (..),
    newExistingDisk,

    -- ** FailedEvent
    FailedEvent (..),
    newFailedEvent,

    -- ** FailedEvent_Code
    FailedEvent_Code (..),

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Metadata
    Metadata (..),
    newMetadata,

    -- ** Metadata_Labels
    Metadata_Labels (..),
    newMetadata_Labels,

    -- ** Mount
    Mount (..),
    newMount,

    -- ** NFSMount
    NFSMount (..),
    newNFSMount,

    -- ** Network
    Network (..),
    newNetwork,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** PersistentDisk
    PersistentDisk (..),
    newPersistentDisk,

    -- ** Pipeline
    Pipeline (..),
    newPipeline,

    -- ** Pipeline_Environment
    Pipeline_Environment (..),
    newPipeline_Environment,

    -- ** PullStartedEvent
    PullStartedEvent (..),
    newPullStartedEvent,

    -- ** PullStoppedEvent
    PullStoppedEvent (..),
    newPullStoppedEvent,

    -- ** Resources
    Resources (..),
    newResources,

    -- ** RunPipelineRequest
    RunPipelineRequest (..),
    newRunPipelineRequest,

    -- ** RunPipelineRequest_Labels
    RunPipelineRequest_Labels (..),
    newRunPipelineRequest_Labels,

    -- ** RunPipelineResponse
    RunPipelineResponse (..),
    newRunPipelineResponse,

    -- ** Secret
    Secret (..),
    newSecret,

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TimestampedEvent
    TimestampedEvent (..),
    newTimestampedEvent,

    -- ** TimestampedEvent_Data
    TimestampedEvent_Data (..),
    newTimestampedEvent_Data,

    -- ** UnexpectedExitStatusEvent
    UnexpectedExitStatusEvent (..),
    newUnexpectedExitStatusEvent,

    -- ** VirtualMachine
    VirtualMachine (..),
    newVirtualMachine,

    -- ** VirtualMachine_Labels
    VirtualMachine_Labels (..),
    newVirtualMachine_Labels,

    -- ** Volume
    Volume (..),
    newVolume,

    -- ** WorkerAssignedEvent
    WorkerAssignedEvent (..),
    newWorkerAssignedEvent,

    -- ** WorkerReleasedEvent
    WorkerReleasedEvent (..),
    newWorkerReleasedEvent,

    -- ** WorkerStatus
    WorkerStatus (..),
    newWorkerStatus,

    -- ** WorkerStatus_AttachedDisks
    WorkerStatus_AttachedDisks (..),
    newWorkerStatus_AttachedDisks,
  )
where

import Network.Google.Genomics.Internal.Product
import Network.Google.Genomics.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v2alpha1@ of the Genomics API. This contains the host and root path used as a starting point for constructing service requests.
genomicsService :: Core.ServiceConfig
genomicsService =
  Core.defaultService
    (Core.ServiceId "genomics:v2alpha1")
    "genomics.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

-- | View and manage Genomics data
genomicsScope :: Core.Proxy '["https://www.googleapis.com/auth/genomics"]
genomicsScope = Core.Proxy

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
-- Module      : Gogol.Genomics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads, processes, queries, and searches Genomics data in the cloud.
--
-- /See:/ <https://cloud.google.com/genomics Genomics API Reference>
module Gogol.Genomics
  ( -- * Configuration
    genomicsService,

    -- * OAuth Scopes
    cloudPlatformScope,
    genomicsScope,

    -- * Resources

    -- ** genomics.pipelines.run
    GenomicsPipelinesRunResource,
    newGenomicsPipelinesRun,
    GenomicsPipelinesRun,

    -- ** genomics.projects.operations.cancel
    GenomicsProjectsOperationsCancelResource,
    newGenomicsProjectsOperationsCancel,
    GenomicsProjectsOperationsCancel,

    -- ** genomics.projects.operations.get
    GenomicsProjectsOperationsGetResource,
    newGenomicsProjectsOperationsGet,
    GenomicsProjectsOperationsGet,

    -- ** genomics.projects.operations.list
    GenomicsProjectsOperationsListResource,
    newGenomicsProjectsOperationsList,
    GenomicsProjectsOperationsList,

    -- ** genomics.projects.workers.checkIn
    GenomicsProjectsWorkersCheckInResource,
    newGenomicsProjectsWorkersCheckIn,
    GenomicsProjectsWorkersCheckIn,

    -- ** genomics.workers.checkIn
    GenomicsWorkersCheckInResource,
    newGenomicsWorkersCheckIn,
    GenomicsWorkersCheckIn,

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

import Gogol.Genomics.Pipelines.Run
import Gogol.Genomics.Projects.Operations.Cancel
import Gogol.Genomics.Projects.Operations.Get
import Gogol.Genomics.Projects.Operations.List
import Gogol.Genomics.Projects.Workers.CheckIn
import Gogol.Genomics.Types
import Gogol.Genomics.Workers.CheckIn

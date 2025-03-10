{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TPU.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TPU.Types
  ( -- * Configuration
    tPUService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- ** AcceleratorConfig_Type
    AcceleratorConfig_Type (..),

    -- ** AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- ** AcceptedData
    AcceptedData (..),
    newAcceptedData,

    -- ** AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- ** ActiveData
    ActiveData (..),
    newActiveData,

    -- ** AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- ** AttachedDisk_Mode
    AttachedDisk_Mode (..),

    -- ** CreatingData
    CreatingData (..),
    newCreatingData,

    -- ** DeletingData
    DeletingData (..),
    newDeletingData,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FailedData
    FailedData (..),
    newFailedData,

    -- ** GenerateServiceIdentityRequest
    GenerateServiceIdentityRequest (..),
    newGenerateServiceIdentityRequest,

    -- ** GenerateServiceIdentityResponse
    GenerateServiceIdentityResponse (..),
    newGenerateServiceIdentityResponse,

    -- ** GetGuestAttributesRequest
    GetGuestAttributesRequest (..),
    newGetGuestAttributesRequest,

    -- ** GetGuestAttributesResponse
    GetGuestAttributesResponse (..),
    newGetGuestAttributesResponse,

    -- ** Guaranteed
    Guaranteed (..),
    newGuaranteed,

    -- ** GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- ** GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- ** GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

    -- ** Interval
    Interval (..),
    newInterval,

    -- ** ListAcceleratorTypesResponse
    ListAcceleratorTypesResponse (..),
    newListAcceleratorTypesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListNodesResponse
    ListNodesResponse (..),
    newListNodesResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListQueuedResourcesResponse
    ListQueuedResourcesResponse (..),
    newListQueuedResourcesResponse,

    -- ** ListRuntimeVersionsResponse
    ListRuntimeVersionsResponse (..),
    newListRuntimeVersionsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** MultisliceParams
    MultisliceParams (..),
    newMultisliceParams,

    -- ** NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- ** NetworkEndpoint
    NetworkEndpoint (..),
    newNetworkEndpoint,

    -- ** Node
    Node (..),
    newNode,

    -- ** Node_ApiVersion
    Node_ApiVersion (..),

    -- ** Node_Health
    Node_Health (..),

    -- ** Node_Labels
    Node_Labels (..),
    newNode_Labels,

    -- ** Node_Metadata
    Node_Metadata (..),
    newNode_Metadata,

    -- ** Node_State
    Node_State (..),

    -- ** NodeSpec
    NodeSpec (..),
    newNodeSpec,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** ProvisioningData
    ProvisioningData (..),
    newProvisioningData,

    -- ** QueuedResource
    QueuedResource (..),
    newQueuedResource,

    -- ** QueuedResourceState
    QueuedResourceState (..),
    newQueuedResourceState,

    -- ** QueuedResourceState_State
    QueuedResourceState_State (..),

    -- ** QueuedResourceState_StateInitiator
    QueuedResourceState_StateInitiator (..),

    -- ** QueueingPolicy
    QueueingPolicy (..),
    newQueueingPolicy,

    -- ** ResetQueuedResourceRequest
    ResetQueuedResourceRequest (..),
    newResetQueuedResourceRequest,

    -- ** RuntimeVersion
    RuntimeVersion (..),
    newRuntimeVersion,

    -- ** SchedulingConfig
    SchedulingConfig (..),
    newSchedulingConfig,

    -- ** ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- ** ServiceIdentity
    ServiceIdentity (..),
    newServiceIdentity,

    -- ** ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- ** Spot
    Spot (..),
    newSpot,

    -- ** StartNodeRequest
    StartNodeRequest (..),
    newStartNodeRequest,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StopNodeRequest
    StopNodeRequest (..),
    newStopNodeRequest,

    -- ** SuspendedData
    SuspendedData (..),
    newSuspendedData,

    -- ** SuspendingData
    SuspendingData (..),
    newSuspendingData,

    -- ** Symptom
    Symptom (..),
    newSymptom,

    -- ** Symptom_SymptomType
    Symptom_SymptomType (..),

    -- ** Tpu
    Tpu (..),
    newTpu,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.TPU.Internal.Product
import Gogol.TPU.Internal.Sum

-- | Default request referring to version @v2@ of the Cloud TPU API. This contains the host and root path used as a starting point for constructing service requests.
tPUService :: Core.ServiceConfig
tPUService =
  Core.defaultService
    (Core.ServiceId "tpu:v2")
    "tpu.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

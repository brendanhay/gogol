{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.TPU
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- TPU API provides customers with access to Google TPU technology.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference>
module Gogol.TPU
  ( -- * Configuration
    tPUService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** tpu.projects.locations.acceleratorTypes.get
    TPUProjectsLocationsAcceleratorTypesGetResource,
    TPUProjectsLocationsAcceleratorTypesGet (..),
    newTPUProjectsLocationsAcceleratorTypesGet,

    -- ** tpu.projects.locations.acceleratorTypes.list
    TPUProjectsLocationsAcceleratorTypesListResource,
    TPUProjectsLocationsAcceleratorTypesList (..),
    newTPUProjectsLocationsAcceleratorTypesList,

    -- ** tpu.projects.locations.generateServiceIdentity
    TPUProjectsLocationsGenerateServiceIdentityResource,
    TPUProjectsLocationsGenerateServiceIdentity (..),
    newTPUProjectsLocationsGenerateServiceIdentity,

    -- ** tpu.projects.locations.get
    TPUProjectsLocationsGetResource,
    TPUProjectsLocationsGet (..),
    newTPUProjectsLocationsGet,

    -- ** tpu.projects.locations.list
    TPUProjectsLocationsListResource,
    TPUProjectsLocationsList (..),
    newTPUProjectsLocationsList,

    -- ** tpu.projects.locations.nodes.create
    TPUProjectsLocationsNodesCreateResource,
    TPUProjectsLocationsNodesCreate (..),
    newTPUProjectsLocationsNodesCreate,

    -- ** tpu.projects.locations.nodes.delete
    TPUProjectsLocationsNodesDeleteResource,
    TPUProjectsLocationsNodesDelete (..),
    newTPUProjectsLocationsNodesDelete,

    -- ** tpu.projects.locations.nodes.get
    TPUProjectsLocationsNodesGetResource,
    TPUProjectsLocationsNodesGet (..),
    newTPUProjectsLocationsNodesGet,

    -- ** tpu.projects.locations.nodes.getGuestAttributes
    TPUProjectsLocationsNodesGetGuestAttributesResource,
    TPUProjectsLocationsNodesGetGuestAttributes (..),
    newTPUProjectsLocationsNodesGetGuestAttributes,

    -- ** tpu.projects.locations.nodes.list
    TPUProjectsLocationsNodesListResource,
    TPUProjectsLocationsNodesList (..),
    newTPUProjectsLocationsNodesList,

    -- ** tpu.projects.locations.nodes.patch
    TPUProjectsLocationsNodesPatchResource,
    TPUProjectsLocationsNodesPatch (..),
    newTPUProjectsLocationsNodesPatch,

    -- ** tpu.projects.locations.nodes.start
    TPUProjectsLocationsNodesStartResource,
    TPUProjectsLocationsNodesStart (..),
    newTPUProjectsLocationsNodesStart,

    -- ** tpu.projects.locations.nodes.stop
    TPUProjectsLocationsNodesStopResource,
    TPUProjectsLocationsNodesStop (..),
    newTPUProjectsLocationsNodesStop,

    -- ** tpu.projects.locations.operations.cancel
    TPUProjectsLocationsOperationsCancelResource,
    TPUProjectsLocationsOperationsCancel (..),
    newTPUProjectsLocationsOperationsCancel,

    -- ** tpu.projects.locations.operations.delete
    TPUProjectsLocationsOperationsDeleteResource,
    TPUProjectsLocationsOperationsDelete (..),
    newTPUProjectsLocationsOperationsDelete,

    -- ** tpu.projects.locations.operations.get
    TPUProjectsLocationsOperationsGetResource,
    TPUProjectsLocationsOperationsGet (..),
    newTPUProjectsLocationsOperationsGet,

    -- ** tpu.projects.locations.operations.list
    TPUProjectsLocationsOperationsListResource,
    TPUProjectsLocationsOperationsList (..),
    newTPUProjectsLocationsOperationsList,

    -- ** tpu.projects.locations.queuedResources.create
    TPUProjectsLocationsQueuedResourcesCreateResource,
    TPUProjectsLocationsQueuedResourcesCreate (..),
    newTPUProjectsLocationsQueuedResourcesCreate,

    -- ** tpu.projects.locations.queuedResources.delete
    TPUProjectsLocationsQueuedResourcesDeleteResource,
    TPUProjectsLocationsQueuedResourcesDelete (..),
    newTPUProjectsLocationsQueuedResourcesDelete,

    -- ** tpu.projects.locations.queuedResources.get
    TPUProjectsLocationsQueuedResourcesGetResource,
    TPUProjectsLocationsQueuedResourcesGet (..),
    newTPUProjectsLocationsQueuedResourcesGet,

    -- ** tpu.projects.locations.queuedResources.list
    TPUProjectsLocationsQueuedResourcesListResource,
    TPUProjectsLocationsQueuedResourcesList (..),
    newTPUProjectsLocationsQueuedResourcesList,

    -- ** tpu.projects.locations.queuedResources.reset
    TPUProjectsLocationsQueuedResourcesResetResource,
    TPUProjectsLocationsQueuedResourcesReset (..),
    newTPUProjectsLocationsQueuedResourcesReset,

    -- ** tpu.projects.locations.runtimeVersions.get
    TPUProjectsLocationsRuntimeVersionsGetResource,
    TPUProjectsLocationsRuntimeVersionsGet (..),
    newTPUProjectsLocationsRuntimeVersionsGet,

    -- ** tpu.projects.locations.runtimeVersions.list
    TPUProjectsLocationsRuntimeVersionsListResource,
    TPUProjectsLocationsRuntimeVersionsList (..),
    newTPUProjectsLocationsRuntimeVersionsList,

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

import Gogol.TPU.Projects.Locations.AcceleratorTypes.Get
import Gogol.TPU.Projects.Locations.AcceleratorTypes.List
import Gogol.TPU.Projects.Locations.GenerateServiceIdentity
import Gogol.TPU.Projects.Locations.Get
import Gogol.TPU.Projects.Locations.List
import Gogol.TPU.Projects.Locations.Nodes.Create
import Gogol.TPU.Projects.Locations.Nodes.Delete
import Gogol.TPU.Projects.Locations.Nodes.Get
import Gogol.TPU.Projects.Locations.Nodes.GetGuestAttributes
import Gogol.TPU.Projects.Locations.Nodes.List
import Gogol.TPU.Projects.Locations.Nodes.Patch
import Gogol.TPU.Projects.Locations.Nodes.Start
import Gogol.TPU.Projects.Locations.Nodes.Stop
import Gogol.TPU.Projects.Locations.Operations.Cancel
import Gogol.TPU.Projects.Locations.Operations.Delete
import Gogol.TPU.Projects.Locations.Operations.Get
import Gogol.TPU.Projects.Locations.Operations.List
import Gogol.TPU.Projects.Locations.QueuedResources.Create
import Gogol.TPU.Projects.Locations.QueuedResources.Delete
import Gogol.TPU.Projects.Locations.QueuedResources.Get
import Gogol.TPU.Projects.Locations.QueuedResources.List
import Gogol.TPU.Projects.Locations.QueuedResources.Reset
import Gogol.TPU.Projects.Locations.RuntimeVersions.Get
import Gogol.TPU.Projects.Locations.RuntimeVersions.List
import Gogol.TPU.Types

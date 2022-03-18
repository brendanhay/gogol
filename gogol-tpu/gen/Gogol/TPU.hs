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
-- Module      : Gogol.TPU
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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
    cloudPlatformScope,

    -- * Resources

    -- ** tpu.projects.locations.acceleratorTypes.get
    TPUProjectsLocationsAcceleratorTypesGetResource,
    newTPUProjectsLocationsAcceleratorTypesGet,
    TPUProjectsLocationsAcceleratorTypesGet,

    -- ** tpu.projects.locations.acceleratorTypes.list
    TPUProjectsLocationsAcceleratorTypesListResource,
    newTPUProjectsLocationsAcceleratorTypesList,
    TPUProjectsLocationsAcceleratorTypesList,

    -- ** tpu.projects.locations.generateServiceIdentity
    TPUProjectsLocationsGenerateServiceIdentityResource,
    newTPUProjectsLocationsGenerateServiceIdentity,
    TPUProjectsLocationsGenerateServiceIdentity,

    -- ** tpu.projects.locations.get
    TPUProjectsLocationsGetResource,
    newTPUProjectsLocationsGet,
    TPUProjectsLocationsGet,

    -- ** tpu.projects.locations.list
    TPUProjectsLocationsListResource,
    newTPUProjectsLocationsList,
    TPUProjectsLocationsList,

    -- ** tpu.projects.locations.nodes.create
    TPUProjectsLocationsNodesCreateResource,
    newTPUProjectsLocationsNodesCreate,
    TPUProjectsLocationsNodesCreate,

    -- ** tpu.projects.locations.nodes.delete
    TPUProjectsLocationsNodesDeleteResource,
    newTPUProjectsLocationsNodesDelete,
    TPUProjectsLocationsNodesDelete,

    -- ** tpu.projects.locations.nodes.get
    TPUProjectsLocationsNodesGetResource,
    newTPUProjectsLocationsNodesGet,
    TPUProjectsLocationsNodesGet,

    -- ** tpu.projects.locations.nodes.getGuestAttributes
    TPUProjectsLocationsNodesGetGuestAttributesResource,
    newTPUProjectsLocationsNodesGetGuestAttributes,
    TPUProjectsLocationsNodesGetGuestAttributes,

    -- ** tpu.projects.locations.nodes.list
    TPUProjectsLocationsNodesListResource,
    newTPUProjectsLocationsNodesList,
    TPUProjectsLocationsNodesList,

    -- ** tpu.projects.locations.nodes.patch
    TPUProjectsLocationsNodesPatchResource,
    newTPUProjectsLocationsNodesPatch,
    TPUProjectsLocationsNodesPatch,

    -- ** tpu.projects.locations.nodes.start
    TPUProjectsLocationsNodesStartResource,
    newTPUProjectsLocationsNodesStart,
    TPUProjectsLocationsNodesStart,

    -- ** tpu.projects.locations.nodes.stop
    TPUProjectsLocationsNodesStopResource,
    newTPUProjectsLocationsNodesStop,
    TPUProjectsLocationsNodesStop,

    -- ** tpu.projects.locations.operations.cancel
    TPUProjectsLocationsOperationsCancelResource,
    newTPUProjectsLocationsOperationsCancel,
    TPUProjectsLocationsOperationsCancel,

    -- ** tpu.projects.locations.operations.delete
    TPUProjectsLocationsOperationsDeleteResource,
    newTPUProjectsLocationsOperationsDelete,
    TPUProjectsLocationsOperationsDelete,

    -- ** tpu.projects.locations.operations.get
    TPUProjectsLocationsOperationsGetResource,
    newTPUProjectsLocationsOperationsGet,
    TPUProjectsLocationsOperationsGet,

    -- ** tpu.projects.locations.operations.list
    TPUProjectsLocationsOperationsListResource,
    newTPUProjectsLocationsOperationsList,
    TPUProjectsLocationsOperationsList,

    -- ** tpu.projects.locations.runtimeVersions.get
    TPUProjectsLocationsRuntimeVersionsGetResource,
    newTPUProjectsLocationsRuntimeVersionsGet,
    TPUProjectsLocationsRuntimeVersionsGet,

    -- ** tpu.projects.locations.runtimeVersions.list
    TPUProjectsLocationsRuntimeVersionsListResource,
    newTPUProjectsLocationsRuntimeVersionsList,
    TPUProjectsLocationsRuntimeVersionsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- ** AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- ** AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- ** AttachedDisk_Mode
    AttachedDisk_Mode (..),

    -- ** Empty
    Empty (..),
    newEmpty,

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

    -- ** GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- ** GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- ** GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

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

    -- ** Symptom
    Symptom (..),
    newSymptom,

    -- ** Symptom_SymptomType
    Symptom_SymptomType (..),
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
import Gogol.TPU.Projects.Locations.RuntimeVersions.Get
import Gogol.TPU.Projects.Locations.RuntimeVersions.List
import Gogol.TPU.Types

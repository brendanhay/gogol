{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TPU.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.TPU.Internal.Product
  (

    -- * AcceleratorConfig
    AcceleratorConfig (..),
    newAcceleratorConfig,

    -- * AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- * AcceptedData
    AcceptedData (..),
    newAcceptedData,

    -- * AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- * ActiveData
    ActiveData (..),
    newActiveData,

    -- * AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- * CreatingData
    CreatingData (..),
    newCreatingData,

    -- * DeletingData
    DeletingData (..),
    newDeletingData,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FailedData
    FailedData (..),
    newFailedData,

    -- * GenerateServiceIdentityRequest
    GenerateServiceIdentityRequest (..),
    newGenerateServiceIdentityRequest,

    -- * GenerateServiceIdentityResponse
    GenerateServiceIdentityResponse (..),
    newGenerateServiceIdentityResponse,

    -- * GetGuestAttributesRequest
    GetGuestAttributesRequest (..),
    newGetGuestAttributesRequest,

    -- * GetGuestAttributesResponse
    GetGuestAttributesResponse (..),
    newGetGuestAttributesResponse,

    -- * Guaranteed
    Guaranteed (..),
    newGuaranteed,

    -- * GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- * GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- * GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

    -- * Interval
    Interval (..),
    newInterval,

    -- * ListAcceleratorTypesResponse
    ListAcceleratorTypesResponse (..),
    newListAcceleratorTypesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListNodesResponse
    ListNodesResponse (..),
    newListNodesResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListQueuedResourcesResponse
    ListQueuedResourcesResponse (..),
    newListQueuedResourcesResponse,

    -- * ListRuntimeVersionsResponse
    ListRuntimeVersionsResponse (..),
    newListRuntimeVersionsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MultisliceParams
    MultisliceParams (..),
    newMultisliceParams,

    -- * NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- * NetworkEndpoint
    NetworkEndpoint (..),
    newNetworkEndpoint,

    -- * Node
    Node (..),
    newNode,

    -- * Node_Labels
    Node_Labels (..),
    newNode_Labels,

    -- * Node_Metadata
    Node_Metadata (..),
    newNode_Metadata,

    -- * NodeSpec
    NodeSpec (..),
    newNodeSpec,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * ProvisioningData
    ProvisioningData (..),
    newProvisioningData,

    -- * QueuedResource
    QueuedResource (..),
    newQueuedResource,

    -- * QueuedResourceState
    QueuedResourceState (..),
    newQueuedResourceState,

    -- * QueueingPolicy
    QueueingPolicy (..),
    newQueueingPolicy,

    -- * ResetQueuedResourceRequest
    ResetQueuedResourceRequest (..),
    newResetQueuedResourceRequest,

    -- * RuntimeVersion
    RuntimeVersion (..),
    newRuntimeVersion,

    -- * SchedulingConfig
    SchedulingConfig (..),
    newSchedulingConfig,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * ServiceIdentity
    ServiceIdentity (..),
    newServiceIdentity,

    -- * ShieldedInstanceConfig
    ShieldedInstanceConfig (..),
    newShieldedInstanceConfig,

    -- * Spot
    Spot (..),
    newSpot,

    -- * StartNodeRequest
    StartNodeRequest (..),
    newStartNodeRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StopNodeRequest
    StopNodeRequest (..),
    newStopNodeRequest,

    -- * SuspendedData
    SuspendedData (..),
    newSuspendedData,

    -- * SuspendingData
    SuspendingData (..),
    newSuspendingData,

    -- * Symptom
    Symptom (..),
    newSymptom,

    -- * Tpu
    Tpu (..),
    newTpu,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Internal.Sum

-- | A TPU accelerator configuration.
--
-- /See:/ 'newAcceleratorConfig' smart constructor.
data AcceleratorConfig = AcceleratorConfig
    {
      -- | Required. Topology of TPU in chips.
      topology :: (Core.Maybe Core.Text)
      -- | Required. Type of TPU.
    , type' :: (Core.Maybe AcceleratorConfig_Type)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorConfig' with the minimum fields required to make a request.
newAcceleratorConfig 
    ::  AcceleratorConfig
newAcceleratorConfig =
  AcceleratorConfig {topology = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AcceleratorConfig where
        parseJSON
          = Core.withObject "AcceleratorConfig"
              (\ o ->
                 AcceleratorConfig Core.<$>
                   (o Core..:? "topology") Core.<*> (o Core..:? "type"))

instance Core.ToJSON AcceleratorConfig where
        toJSON AcceleratorConfig{..}
          = Core.object
              (Core.catMaybes
                 [("topology" Core..=) Core.<$> topology,
                  ("type" Core..=) Core.<$> type'])


-- | A accelerator type that a Node can be configured with.
--
-- /See:/ 'newAcceleratorType' smart constructor.
data AcceleratorType = AcceleratorType
    {
      -- | The accelerator config.
      acceleratorConfigs :: (Core.Maybe [AcceleratorConfig])
      -- | The resource name.
    , name :: (Core.Maybe Core.Text)
      -- | The accelerator type.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorType' with the minimum fields required to make a request.
newAcceleratorType 
    ::  AcceleratorType
newAcceleratorType =
  AcceleratorType
    { acceleratorConfigs = Core.Nothing
    , name = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON AcceleratorType where
        parseJSON
          = Core.withObject "AcceleratorType"
              (\ o ->
                 AcceleratorType Core.<$>
                   (o Core..:? "acceleratorConfigs") Core.<*>
                     (o Core..:? "name")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON AcceleratorType where
        toJSON AcceleratorType{..}
          = Core.object
              (Core.catMaybes
                 [("acceleratorConfigs" Core..=) Core.<$>
                    acceleratorConfigs,
                  ("name" Core..=) Core.<$> name,
                  ("type" Core..=) Core.<$> type'])


-- | Further data for the accepted state.
--
-- /See:/ 'newAcceptedData' smart constructor.
data AcceptedData = AcceptedData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceptedData' with the minimum fields required to make a request.
newAcceptedData 
    ::  AcceptedData
newAcceptedData = AcceptedData

instance Core.FromJSON AcceptedData where
        parseJSON
          = Core.withObject "AcceptedData"
              (\ o -> Core.pure AcceptedData)

instance Core.ToJSON AcceptedData where
        toJSON = Core.const Core.emptyObject


-- | An access config attached to the TPU worker.
--
-- /See:/ 'newAccessConfig' smart constructor.
newtype AccessConfig = AccessConfig
    {
      -- | Output only. An external IP address associated with the TPU worker.
      externalIp :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
newAccessConfig 
    ::  AccessConfig
newAccessConfig = AccessConfig {externalIp = Core.Nothing}

instance Core.FromJSON AccessConfig where
        parseJSON
          = Core.withObject "AccessConfig"
              (\ o ->
                 AccessConfig Core.<$> (o Core..:? "externalIp"))

instance Core.ToJSON AccessConfig where
        toJSON AccessConfig{..}
          = Core.object
              (Core.catMaybes
                 [("externalIp" Core..=) Core.<$> externalIp])


-- | Further data for the active state.
--
-- /See:/ 'newActiveData' smart constructor.
data ActiveData = ActiveData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActiveData' with the minimum fields required to make a request.
newActiveData 
    ::  ActiveData
newActiveData = ActiveData

instance Core.FromJSON ActiveData where
        parseJSON
          = Core.withObject "ActiveData"
              (\ o -> Core.pure ActiveData)

instance Core.ToJSON ActiveData where
        toJSON = Core.const Core.emptyObject


-- | A node-attached disk resource. Next ID: 8;
--
-- /See:/ 'newAttachedDisk' smart constructor.
data AttachedDisk = AttachedDisk
    {
      -- | The mode in which to attach this disk. If not specified, the default is READ/WRITE mode. Only applicable to data/disks.
      mode :: (Core.Maybe AttachedDisk_Mode)
      -- | Specifies the full path to an existing disk. For example: \"projects\/my-project\/zones\/us-central1-c\/disks\/my-disk\".
    , sourceDisk :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
newAttachedDisk 
    ::  AttachedDisk
newAttachedDisk = AttachedDisk {mode = Core.Nothing, sourceDisk = Core.Nothing}

instance Core.FromJSON AttachedDisk where
        parseJSON
          = Core.withObject "AttachedDisk"
              (\ o ->
                 AttachedDisk Core.<$>
                   (o Core..:? "mode") Core.<*>
                     (o Core..:? "sourceDisk"))

instance Core.ToJSON AttachedDisk where
        toJSON AttachedDisk{..}
          = Core.object
              (Core.catMaybes
                 [("mode" Core..=) Core.<$> mode,
                  ("sourceDisk" Core..=) Core.<$> sourceDisk])


-- | Further data for the creating state.
--
-- /See:/ 'newCreatingData' smart constructor.
data CreatingData = CreatingData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreatingData' with the minimum fields required to make a request.
newCreatingData 
    ::  CreatingData
newCreatingData = CreatingData

instance Core.FromJSON CreatingData where
        parseJSON
          = Core.withObject "CreatingData"
              (\ o -> Core.pure CreatingData)

instance Core.ToJSON CreatingData where
        toJSON = Core.const Core.emptyObject


-- | Further data for the deleting state.
--
-- /See:/ 'newDeletingData' smart constructor.
data DeletingData = DeletingData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeletingData' with the minimum fields required to make a request.
newDeletingData 
    ::  DeletingData
newDeletingData = DeletingData

instance Core.FromJSON DeletingData where
        parseJSON
          = Core.withObject "DeletingData"
              (\ o -> Core.pure DeletingData)

instance Core.ToJSON DeletingData where
        toJSON = Core.const Core.emptyObject


-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Further data for the failed state.
--
-- /See:/ 'newFailedData' smart constructor.
newtype FailedData = FailedData
    {
      -- | Output only. The error that caused the queued resource to enter the FAILED state.
      error :: (Core.Maybe Status)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailedData' with the minimum fields required to make a request.
newFailedData 
    ::  FailedData
newFailedData = FailedData {error = Core.Nothing}

instance Core.FromJSON FailedData where
        parseJSON
          = Core.withObject "FailedData"
              (\ o -> FailedData Core.<$> (o Core..:? "error"))

instance Core.ToJSON FailedData where
        toJSON FailedData{..}
          = Core.object
              (Core.catMaybes [("error" Core..=) Core.<$> error])


-- | Request for GenerateServiceIdentity.
--
-- /See:/ 'newGenerateServiceIdentityRequest' smart constructor.
data GenerateServiceIdentityRequest = GenerateServiceIdentityRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateServiceIdentityRequest' with the minimum fields required to make a request.
newGenerateServiceIdentityRequest 
    ::  GenerateServiceIdentityRequest
newGenerateServiceIdentityRequest = GenerateServiceIdentityRequest

instance Core.FromJSON GenerateServiceIdentityRequest
         where
        parseJSON
          = Core.withObject "GenerateServiceIdentityRequest"
              (\ o -> Core.pure GenerateServiceIdentityRequest)

instance Core.ToJSON GenerateServiceIdentityRequest
         where
        toJSON = Core.const Core.emptyObject


-- | Response for GenerateServiceIdentity.
--
-- /See:/ 'newGenerateServiceIdentityResponse' smart constructor.
newtype GenerateServiceIdentityResponse = GenerateServiceIdentityResponse
    {
      -- | ServiceIdentity that was created or retrieved.
      identity :: (Core.Maybe ServiceIdentity)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateServiceIdentityResponse' with the minimum fields required to make a request.
newGenerateServiceIdentityResponse 
    ::  GenerateServiceIdentityResponse
newGenerateServiceIdentityResponse =
  GenerateServiceIdentityResponse {identity = Core.Nothing}

instance Core.FromJSON
           GenerateServiceIdentityResponse
         where
        parseJSON
          = Core.withObject "GenerateServiceIdentityResponse"
              (\ o ->
                 GenerateServiceIdentityResponse Core.<$>
                   (o Core..:? "identity"))

instance Core.ToJSON GenerateServiceIdentityResponse
         where
        toJSON GenerateServiceIdentityResponse{..}
          = Core.object
              (Core.catMaybes
                 [("identity" Core..=) Core.<$> identity])


-- | Request for GetGuestAttributes.
--
-- /See:/ 'newGetGuestAttributesRequest' smart constructor.
data GetGuestAttributesRequest = GetGuestAttributesRequest
    {
      -- | The guest attributes path to be queried.
      queryPath :: (Core.Maybe Core.Text)
      -- | The 0-based worker ID. If it is empty, all workers\' GuestAttributes will be returned.
    , workerIds :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetGuestAttributesRequest' with the minimum fields required to make a request.
newGetGuestAttributesRequest 
    ::  GetGuestAttributesRequest
newGetGuestAttributesRequest =
  GetGuestAttributesRequest {queryPath = Core.Nothing, workerIds = Core.Nothing}

instance Core.FromJSON GetGuestAttributesRequest
         where
        parseJSON
          = Core.withObject "GetGuestAttributesRequest"
              (\ o ->
                 GetGuestAttributesRequest Core.<$>
                   (o Core..:? "queryPath") Core.<*>
                     (o Core..:? "workerIds"))

instance Core.ToJSON GetGuestAttributesRequest where
        toJSON GetGuestAttributesRequest{..}
          = Core.object
              (Core.catMaybes
                 [("queryPath" Core..=) Core.<$> queryPath,
                  ("workerIds" Core..=) Core.<$> workerIds])


-- | Response for GetGuestAttributes.
--
-- /See:/ 'newGetGuestAttributesResponse' smart constructor.
newtype GetGuestAttributesResponse = GetGuestAttributesResponse
    {
      -- | The guest attributes for the TPU workers.
      guestAttributes :: (Core.Maybe [GuestAttributes])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetGuestAttributesResponse' with the minimum fields required to make a request.
newGetGuestAttributesResponse 
    ::  GetGuestAttributesResponse
newGetGuestAttributesResponse =
  GetGuestAttributesResponse {guestAttributes = Core.Nothing}

instance Core.FromJSON GetGuestAttributesResponse
         where
        parseJSON
          = Core.withObject "GetGuestAttributesResponse"
              (\ o ->
                 GetGuestAttributesResponse Core.<$>
                   (o Core..:? "guestAttributes"))

instance Core.ToJSON GetGuestAttributesResponse where
        toJSON GetGuestAttributesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("guestAttributes" Core..=) Core.<$>
                    guestAttributes])


-- | Guaranteed tier definition.
--
-- /See:/ 'newGuaranteed' smart constructor.
newtype Guaranteed = Guaranteed
    {
      -- | Optional. Defines the minimum duration of the guarantee. If specified, the requested resources will only be provisioned if they can be allocated for at least the given duration.
      minDuration :: (Core.Maybe Core.Duration)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Guaranteed' with the minimum fields required to make a request.
newGuaranteed 
    ::  Guaranteed
newGuaranteed = Guaranteed {minDuration = Core.Nothing}

instance Core.FromJSON Guaranteed where
        parseJSON
          = Core.withObject "Guaranteed"
              (\ o ->
                 Guaranteed Core.<$> (o Core..:? "minDuration"))

instance Core.ToJSON Guaranteed where
        toJSON Guaranteed{..}
          = Core.object
              (Core.catMaybes
                 [("minDuration" Core..=) Core.<$> minDuration])


-- | A guest attributes.
--
-- /See:/ 'newGuestAttributes' smart constructor.
data GuestAttributes = GuestAttributes
    {
      -- | The path to be queried. This can be the default namespace (\'\/\') or a nested namespace (\'\/\\\/\') or a specified key (\'\/\\\/\\\')
      queryPath :: (Core.Maybe Core.Text)
      -- | The value of the requested queried path.
    , queryValue :: (Core.Maybe GuestAttributesValue)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributes' with the minimum fields required to make a request.
newGuestAttributes 
    ::  GuestAttributes
newGuestAttributes =
  GuestAttributes {queryPath = Core.Nothing, queryValue = Core.Nothing}

instance Core.FromJSON GuestAttributes where
        parseJSON
          = Core.withObject "GuestAttributes"
              (\ o ->
                 GuestAttributes Core.<$>
                   (o Core..:? "queryPath") Core.<*>
                     (o Core..:? "queryValue"))

instance Core.ToJSON GuestAttributes where
        toJSON GuestAttributes{..}
          = Core.object
              (Core.catMaybes
                 [("queryPath" Core..=) Core.<$> queryPath,
                  ("queryValue" Core..=) Core.<$> queryValue])


-- | A guest attributes namespace\/key\/value entry.
--
-- /See:/ 'newGuestAttributesEntry' smart constructor.
data GuestAttributesEntry = GuestAttributesEntry
    {
      -- | Key for the guest attribute entry.
      key :: (Core.Maybe Core.Text)
      -- | Namespace for the guest attribute entry.
    , namespace :: (Core.Maybe Core.Text)
      -- | Value for the guest attribute entry.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributesEntry' with the minimum fields required to make a request.
newGuestAttributesEntry 
    ::  GuestAttributesEntry
newGuestAttributesEntry =
  GuestAttributesEntry
    {key = Core.Nothing, namespace = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON GuestAttributesEntry where
        parseJSON
          = Core.withObject "GuestAttributesEntry"
              (\ o ->
                 GuestAttributesEntry Core.<$>
                   (o Core..:? "key") Core.<*> (o Core..:? "namespace")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON GuestAttributesEntry where
        toJSON GuestAttributesEntry{..}
          = Core.object
              (Core.catMaybes
                 [("key" Core..=) Core.<$> key,
                  ("namespace" Core..=) Core.<$> namespace,
                  ("value" Core..=) Core.<$> value])


-- | Array of guest attribute namespace\/key\/value tuples.
--
-- /See:/ 'newGuestAttributesValue' smart constructor.
newtype GuestAttributesValue = GuestAttributesValue
    {
      -- | The list of guest attributes entries.
      items :: (Core.Maybe [GuestAttributesEntry])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributesValue' with the minimum fields required to make a request.
newGuestAttributesValue 
    ::  GuestAttributesValue
newGuestAttributesValue = GuestAttributesValue {items = Core.Nothing}

instance Core.FromJSON GuestAttributesValue where
        parseJSON
          = Core.withObject "GuestAttributesValue"
              (\ o ->
                 GuestAttributesValue Core.<$> (o Core..:? "items"))

instance Core.ToJSON GuestAttributesValue where
        toJSON GuestAttributesValue{..}
          = Core.object
              (Core.catMaybes [("items" Core..=) Core.<$> items])


-- | Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
--
-- /See:/ 'newInterval' smart constructor.
data Interval = Interval
    {
      -- | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
      endTime :: (Core.Maybe Core.DateTime)
      -- | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
    , startTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Interval' with the minimum fields required to make a request.
newInterval 
    ::  Interval
newInterval = Interval {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON Interval where
        parseJSON
          = Core.withObject "Interval"
              (\ o ->
                 Interval Core.<$>
                   (o Core..:? "endTime") Core.<*>
                     (o Core..:? "startTime"))

instance Core.ToJSON Interval where
        toJSON Interval{..}
          = Core.object
              (Core.catMaybes
                 [("endTime" Core..=) Core.<$> endTime,
                  ("startTime" Core..=) Core.<$> startTime])


-- | Response for ListAcceleratorTypes.
--
-- /See:/ 'newListAcceleratorTypesResponse' smart constructor.
data ListAcceleratorTypesResponse = ListAcceleratorTypesResponse
    {
      -- | The listed nodes.
      acceleratorTypes :: (Core.Maybe [AcceleratorType])
      -- | The next page token or empty if none.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Locations that could not be reached.
    , unreachable :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAcceleratorTypesResponse' with the minimum fields required to make a request.
newListAcceleratorTypesResponse 
    ::  ListAcceleratorTypesResponse
newListAcceleratorTypesResponse =
  ListAcceleratorTypesResponse
    { acceleratorTypes = Core.Nothing
    , nextPageToken = Core.Nothing
    , unreachable = Core.Nothing
    }

instance Core.FromJSON ListAcceleratorTypesResponse
         where
        parseJSON
          = Core.withObject "ListAcceleratorTypesResponse"
              (\ o ->
                 ListAcceleratorTypesResponse Core.<$>
                   (o Core..:? "acceleratorTypes") Core.<*>
                     (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "unreachable"))

instance Core.ToJSON ListAcceleratorTypesResponse
         where
        toJSON ListAcceleratorTypesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("acceleratorTypes" Core..=) Core.<$>
                    acceleratorTypes,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("unreachable" Core..=) Core.<$> unreachable])


-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
    {
      -- | A list of locations that matches the specified filter in the request.
      locations :: (Core.Maybe [Location])
      -- | The standard List next-page token.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse 
    ::  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
        parseJSON
          = Core.withObject "ListLocationsResponse"
              (\ o ->
                 ListLocationsResponse Core.<$>
                   (o Core..:? "locations") Core.<*>
                     (o Core..:? "nextPageToken"))

instance Core.ToJSON ListLocationsResponse where
        toJSON ListLocationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("locations" Core..=) Core.<$> locations,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])


-- | Response for ListNodes.
--
-- /See:/ 'newListNodesResponse' smart constructor.
data ListNodesResponse = ListNodesResponse
    {
      -- | The next page token or empty if none.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The listed nodes.
    , nodes :: (Core.Maybe [Node])
      -- | Locations that could not be reached.
    , unreachable :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNodesResponse' with the minimum fields required to make a request.
newListNodesResponse 
    ::  ListNodesResponse
newListNodesResponse =
  ListNodesResponse
    { nextPageToken = Core.Nothing
    , nodes = Core.Nothing
    , unreachable = Core.Nothing
    }

instance Core.FromJSON ListNodesResponse where
        parseJSON
          = Core.withObject "ListNodesResponse"
              (\ o ->
                 ListNodesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "nodes")
                     Core.<*> (o Core..:? "unreachable"))

instance Core.ToJSON ListNodesResponse where
        toJSON ListNodesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("nodes" Core..=) Core.<$> nodes,
                  ("unreachable" Core..=) Core.<$> unreachable])


-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
    {
      -- | The standard List next-page token.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | A list of operations that matches the specified filter in the request.
    , operations :: (Core.Maybe [Operation])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse 
    ::  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    {nextPageToken = Core.Nothing, operations = Core.Nothing}

instance Core.FromJSON ListOperationsResponse where
        parseJSON
          = Core.withObject "ListOperationsResponse"
              (\ o ->
                 ListOperationsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "operations"))

instance Core.ToJSON ListOperationsResponse where
        toJSON ListOperationsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("operations" Core..=) Core.<$> operations])


-- | Response for ListQueuedResources.
--
-- /See:/ 'newListQueuedResourcesResponse' smart constructor.
data ListQueuedResourcesResponse = ListQueuedResourcesResponse
    {
      -- | The next page token or empty if none.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The listed queued resources.
    , queuedResources :: (Core.Maybe [QueuedResource])
      -- | Locations that could not be reached.
    , unreachable :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListQueuedResourcesResponse' with the minimum fields required to make a request.
newListQueuedResourcesResponse 
    ::  ListQueuedResourcesResponse
newListQueuedResourcesResponse =
  ListQueuedResourcesResponse
    { nextPageToken = Core.Nothing
    , queuedResources = Core.Nothing
    , unreachable = Core.Nothing
    }

instance Core.FromJSON ListQueuedResourcesResponse
         where
        parseJSON
          = Core.withObject "ListQueuedResourcesResponse"
              (\ o ->
                 ListQueuedResourcesResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "queuedResources")
                     Core.<*> (o Core..:? "unreachable"))

instance Core.ToJSON ListQueuedResourcesResponse
         where
        toJSON ListQueuedResourcesResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("queuedResources" Core..=) Core.<$> queuedResources,
                  ("unreachable" Core..=) Core.<$> unreachable])


-- | Response for ListRuntimeVersions.
--
-- /See:/ 'newListRuntimeVersionsResponse' smart constructor.
data ListRuntimeVersionsResponse = ListRuntimeVersionsResponse
    {
      -- | The next page token or empty if none.
      nextPageToken :: (Core.Maybe Core.Text)
      -- | The listed nodes.
    , runtimeVersions :: (Core.Maybe [RuntimeVersion])
      -- | Locations that could not be reached.
    , unreachable :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRuntimeVersionsResponse' with the minimum fields required to make a request.
newListRuntimeVersionsResponse 
    ::  ListRuntimeVersionsResponse
newListRuntimeVersionsResponse =
  ListRuntimeVersionsResponse
    { nextPageToken = Core.Nothing
    , runtimeVersions = Core.Nothing
    , unreachable = Core.Nothing
    }

instance Core.FromJSON ListRuntimeVersionsResponse
         where
        parseJSON
          = Core.withObject "ListRuntimeVersionsResponse"
              (\ o ->
                 ListRuntimeVersionsResponse Core.<$>
                   (o Core..:? "nextPageToken") Core.<*>
                     (o Core..:? "runtimeVersions")
                     Core.<*> (o Core..:? "unreachable"))

instance Core.ToJSON ListRuntimeVersionsResponse
         where
        toJSON ListRuntimeVersionsResponse{..}
          = Core.object
              (Core.catMaybes
                 [("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("runtimeVersions" Core..=) Core.<$> runtimeVersions,
                  ("unreachable" Core..=) Core.<$> unreachable])


-- | A resource that represents a Google Cloud location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
    {
      -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
      displayName :: (Core.Maybe Core.Text)
      -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    , labels :: (Core.Maybe Location_Labels)
      -- | The canonical id for this location. For example: @\"us-east1\"@.
    , locationId :: (Core.Maybe Core.Text)
      -- | Service-specific metadata. For example the available capacity at the given location.
    , metadata :: (Core.Maybe Location_Metadata)
      -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    , name :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation 
    ::  Location
newLocation =
  Location
    { displayName = Core.Nothing
    , labels = Core.Nothing
    , locationId = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    }

instance Core.FromJSON Location where
        parseJSON
          = Core.withObject "Location"
              (\ o ->
                 Location Core.<$>
                   (o Core..:? "displayName") Core.<*>
                     (o Core..:? "labels")
                     Core.<*> (o Core..:? "locationId")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name"))

instance Core.ToJSON Location where
        toJSON Location{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("labels" Core..=) Core.<$> labels,
                  ("locationId" Core..=) Core.<$> locationId,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name])


-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
        parseJSON
          = Core.withObject "Location_Labels"
              (\ o ->
                 Location_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Labels where
        toJSON Location_Labels{..} = Core.toJSON additional


-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
        parseJSON
          = Core.withObject "Location_Metadata"
              (\ o ->
                 Location_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Location_Metadata where
        toJSON Location_Metadata{..} = Core.toJSON additional


-- | Parameters to specify for multislice QueuedResource requests. This message must be populated in case of multislice requests instead of node_id.
--
-- /See:/ 'newMultisliceParams' smart constructor.
data MultisliceParams = MultisliceParams
    {
      -- | Required. Number of nodes with this spec. The system will attempt to provison \"node_count\" nodes as part of the request. This needs to be > 1.
      nodeCount :: (Core.Maybe Core.Int32)
      -- | Optional. Prefix of node/ids in case of multislice request. Should follow the @^[A-Za-z0-9_.~+%-]+$@ regex format. If node/count = 3 and node/id/prefix = \"np\", node ids of nodes created will be \"np-0\", \"np-1\", \"np-2\". If this field is not provided we use queued/resource/id as the node/id/prefix.
    , nodeIdPrefix :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MultisliceParams' with the minimum fields required to make a request.
newMultisliceParams 
    ::  MultisliceParams
newMultisliceParams =
  MultisliceParams {nodeCount = Core.Nothing, nodeIdPrefix = Core.Nothing}

instance Core.FromJSON MultisliceParams where
        parseJSON
          = Core.withObject "MultisliceParams"
              (\ o ->
                 MultisliceParams Core.<$>
                   (o Core..:? "nodeCount") Core.<*>
                     (o Core..:? "nodeIdPrefix"))

instance Core.ToJSON MultisliceParams where
        toJSON MultisliceParams{..}
          = Core.object
              (Core.catMaybes
                 [("nodeCount" Core..=) Core.<$> nodeCount,
                  ("nodeIdPrefix" Core..=) Core.<$> nodeIdPrefix])


-- | Network related configurations.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
    {
      -- | Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
      canIpForward :: (Core.Maybe Core.Bool)
      -- | Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
    , enableExternalIps :: (Core.Maybe Core.Bool)
      -- | The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, \"default\" will be used.
    , network :: (Core.Maybe Core.Text)
      -- | Optional. Specifies networking queue count for TPU VM instance\'s network interface.
    , queueCount :: (Core.Maybe Core.Int32)
      -- | The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, \"default\" will be used.
    , subnetwork :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig 
    ::  NetworkConfig
newNetworkConfig =
  NetworkConfig
    { canIpForward = Core.Nothing
    , enableExternalIps = Core.Nothing
    , network = Core.Nothing
    , queueCount = Core.Nothing
    , subnetwork = Core.Nothing
    }

instance Core.FromJSON NetworkConfig where
        parseJSON
          = Core.withObject "NetworkConfig"
              (\ o ->
                 NetworkConfig Core.<$>
                   (o Core..:? "canIpForward") Core.<*>
                     (o Core..:? "enableExternalIps")
                     Core.<*> (o Core..:? "network")
                     Core.<*> (o Core..:? "queueCount")
                     Core.<*> (o Core..:? "subnetwork"))

instance Core.ToJSON NetworkConfig where
        toJSON NetworkConfig{..}
          = Core.object
              (Core.catMaybes
                 [("canIpForward" Core..=) Core.<$> canIpForward,
                  ("enableExternalIps" Core..=) Core.<$>
                    enableExternalIps,
                  ("network" Core..=) Core.<$> network,
                  ("queueCount" Core..=) Core.<$> queueCount,
                  ("subnetwork" Core..=) Core.<$> subnetwork])


-- | A network endpoint over which a TPU worker can be reached.
--
-- /See:/ 'newNetworkEndpoint' smart constructor.
data NetworkEndpoint = NetworkEndpoint
    {
      -- | The access config for the TPU worker.
      accessConfig :: (Core.Maybe AccessConfig)
      -- | The internal IP address of this network endpoint.
    , ipAddress :: (Core.Maybe Core.Text)
      -- | The port of this network endpoint.
    , port :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkEndpoint' with the minimum fields required to make a request.
newNetworkEndpoint 
    ::  NetworkEndpoint
newNetworkEndpoint =
  NetworkEndpoint
    {accessConfig = Core.Nothing, ipAddress = Core.Nothing, port = Core.Nothing}

instance Core.FromJSON NetworkEndpoint where
        parseJSON
          = Core.withObject "NetworkEndpoint"
              (\ o ->
                 NetworkEndpoint Core.<$>
                   (o Core..:? "accessConfig") Core.<*>
                     (o Core..:? "ipAddress")
                     Core.<*> (o Core..:? "port"))

instance Core.ToJSON NetworkEndpoint where
        toJSON NetworkEndpoint{..}
          = Core.object
              (Core.catMaybes
                 [("accessConfig" Core..=) Core.<$> accessConfig,
                  ("ipAddress" Core..=) Core.<$> ipAddress,
                  ("port" Core..=) Core.<$> port])


-- | A TPU instance.
--
-- /See:/ 'newNode' smart constructor.
data Node = Node
    {
      -- | The AccleratorConfig for the TPU Node.
      acceleratorConfig :: (Core.Maybe AcceleratorConfig)
      -- | Optional. The type of hardware accelerators associated with this node.
    , acceleratorType :: (Core.Maybe Core.Text)
      -- | Output only. The API version that created this Node.
    , apiVersion :: (Core.Maybe Node_ApiVersion)
      -- | The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a \/29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user\'s provided network, or the provided network is peered with another network that is using that CIDR block.
    , cidrBlock :: (Core.Maybe Core.Text)
      -- | Output only. The time when the node was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | The additional data disks for the Node.
    , dataDisks :: (Core.Maybe [AttachedDisk])
      -- | The user-supplied description of the TPU. Maximum of 512 characters.
    , description :: (Core.Maybe Core.Text)
      -- | The health status of the TPU node.
    , health :: (Core.Maybe Node_Health)
      -- | Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy.
    , healthDescription :: (Core.Maybe Core.Text)
      -- | Output only. The unique identifier for the TPU Node.
    , id :: (Core.Maybe Core.Int64)
      -- | Resource labels to represent user-provided metadata.
    , labels :: (Core.Maybe Node_Labels)
      -- | Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
    , metadata :: (Core.Maybe Node_Metadata)
      -- | Output only. Whether the Node belongs to a Multislice group.
    , multisliceNode :: (Core.Maybe Core.Bool)
      -- | Output only. Immutable. The name of the TPU.
    , name :: (Core.Maybe Core.Text)
      -- | Network configurations for the TPU node.
    , networkConfig :: (Core.Maybe NetworkConfig)
      -- | Output only. The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
    , networkEndpoints :: (Core.Maybe [NetworkEndpoint])
      -- | Output only. The qualified name of the QueuedResource that requested this Node.
    , queuedResource :: (Core.Maybe Core.Text)
      -- | Required. The runtime version running in the Node.
    , runtimeVersion :: (Core.Maybe Core.Text)
      -- | The scheduling options for this node.
    , schedulingConfig :: (Core.Maybe SchedulingConfig)
      -- | The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
    , serviceAccount :: (Core.Maybe ServiceAccount)
      -- | Shielded Instance options.
    , shieldedInstanceConfig :: (Core.Maybe ShieldedInstanceConfig)
      -- | Output only. The current state for the TPU Node.
    , state :: (Core.Maybe Node_State)
      -- | Output only. The Symptoms that have occurred to the TPU Node.
    , symptoms :: (Core.Maybe [Symptom])
      -- | Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
    , tags :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node' with the minimum fields required to make a request.
newNode 
    ::  Node
newNode =
  Node
    { acceleratorConfig = Core.Nothing
    , acceleratorType = Core.Nothing
    , apiVersion = Core.Nothing
    , cidrBlock = Core.Nothing
    , createTime = Core.Nothing
    , dataDisks = Core.Nothing
    , description = Core.Nothing
    , health = Core.Nothing
    , healthDescription = Core.Nothing
    , id = Core.Nothing
    , labels = Core.Nothing
    , metadata = Core.Nothing
    , multisliceNode = Core.Nothing
    , name = Core.Nothing
    , networkConfig = Core.Nothing
    , networkEndpoints = Core.Nothing
    , queuedResource = Core.Nothing
    , runtimeVersion = Core.Nothing
    , schedulingConfig = Core.Nothing
    , serviceAccount = Core.Nothing
    , shieldedInstanceConfig = Core.Nothing
    , state = Core.Nothing
    , symptoms = Core.Nothing
    , tags = Core.Nothing
    }

instance Core.FromJSON Node where
        parseJSON
          = Core.withObject "Node"
              (\ o ->
                 Node Core.<$>
                   (o Core..:? "acceleratorConfig") Core.<*>
                     (o Core..:? "acceleratorType")
                     Core.<*> (o Core..:? "apiVersion")
                     Core.<*> (o Core..:? "cidrBlock")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "dataDisks")
                     Core.<*> (o Core..:? "description")
                     Core.<*> (o Core..:? "health")
                     Core.<*> (o Core..:? "healthDescription")
                     Core.<*>
                     (o Core..:? "id" Core.<&> Core.fmap Core.fromAsText)
                     Core.<*> (o Core..:? "labels")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "multisliceNode")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "networkConfig")
                     Core.<*> (o Core..:? "networkEndpoints")
                     Core.<*> (o Core..:? "queuedResource")
                     Core.<*> (o Core..:? "runtimeVersion")
                     Core.<*> (o Core..:? "schedulingConfig")
                     Core.<*> (o Core..:? "serviceAccount")
                     Core.<*> (o Core..:? "shieldedInstanceConfig")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "symptoms")
                     Core.<*> (o Core..:? "tags"))

instance Core.ToJSON Node where
        toJSON Node{..}
          = Core.object
              (Core.catMaybes
                 [("acceleratorConfig" Core..=) Core.<$>
                    acceleratorConfig,
                  ("acceleratorType" Core..=) Core.<$> acceleratorType,
                  ("apiVersion" Core..=) Core.<$> apiVersion,
                  ("cidrBlock" Core..=) Core.<$> cidrBlock,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("dataDisks" Core..=) Core.<$> dataDisks,
                  ("description" Core..=) Core.<$> description,
                  ("health" Core..=) Core.<$> health,
                  ("healthDescription" Core..=) Core.<$>
                    healthDescription,
                  ("id" Core..=) Core.. Core.AsText Core.<$> id,
                  ("labels" Core..=) Core.<$> labels,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("multisliceNode" Core..=) Core.<$> multisliceNode,
                  ("name" Core..=) Core.<$> name,
                  ("networkConfig" Core..=) Core.<$> networkConfig,
                  ("networkEndpoints" Core..=) Core.<$>
                    networkEndpoints,
                  ("queuedResource" Core..=) Core.<$> queuedResource,
                  ("runtimeVersion" Core..=) Core.<$> runtimeVersion,
                  ("schedulingConfig" Core..=) Core.<$>
                    schedulingConfig,
                  ("serviceAccount" Core..=) Core.<$> serviceAccount,
                  ("shieldedInstanceConfig" Core..=) Core.<$>
                    shieldedInstanceConfig,
                  ("state" Core..=) Core.<$> state,
                  ("symptoms" Core..=) Core.<$> symptoms,
                  ("tags" Core..=) Core.<$> tags])


-- | Resource labels to represent user-provided metadata.
--
-- /See:/ 'newNode_Labels' smart constructor.
newtype Node_Labels = Node_Labels
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node_Labels' with the minimum fields required to make a request.
newNode_Labels 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Node_Labels
newNode_Labels additional = Node_Labels {additional = additional}

instance Core.FromJSON Node_Labels where
        parseJSON
          = Core.withObject "Node_Labels"
              (\ o ->
                 Node_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Node_Labels where
        toJSON Node_Labels{..} = Core.toJSON additional


-- | Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
--
-- /See:/ 'newNode_Metadata' smart constructor.
newtype Node_Metadata = Node_Metadata
    {
      -- | 
      additional :: (Core.HashMap Core.Text Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node_Metadata' with the minimum fields required to make a request.
newNode_Metadata 
    ::  Core.HashMap Core.Text Core.Text
       -- ^  See 'additional'.
    -> Node_Metadata
newNode_Metadata additional = Node_Metadata {additional = additional}

instance Core.FromJSON Node_Metadata where
        parseJSON
          = Core.withObject "Node_Metadata"
              (\ o ->
                 Node_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Node_Metadata where
        toJSON Node_Metadata{..} = Core.toJSON additional


-- | Details of the TPU node(s) being requested. Users can request either a single node or multiple nodes. NodeSpec provides the specification for node(s) to be created.
--
-- /See:/ 'newNodeSpec' smart constructor.
data NodeSpec = NodeSpec
    {
      -- | Optional. Fields to specify in case of multislice request.
      multisliceParams :: (Core.Maybe MultisliceParams)
      -- | Required. The node.
    , node :: (Core.Maybe Node)
      -- | Optional. The unqualified resource name. Should follow the @^[A-Za-z0-9_.~+%-]+$@ regex format. This is only specified when requesting a single node. In case of multislice requests, multislice_params must be populated instead.
    , nodeId :: (Core.Maybe Core.Text)
      -- | Required. The parent resource name.
    , parent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeSpec' with the minimum fields required to make a request.
newNodeSpec 
    ::  NodeSpec
newNodeSpec =
  NodeSpec
    { multisliceParams = Core.Nothing
    , node = Core.Nothing
    , nodeId = Core.Nothing
    , parent = Core.Nothing
    }

instance Core.FromJSON NodeSpec where
        parseJSON
          = Core.withObject "NodeSpec"
              (\ o ->
                 NodeSpec Core.<$>
                   (o Core..:? "multisliceParams") Core.<*>
                     (o Core..:? "node")
                     Core.<*> (o Core..:? "nodeId")
                     Core.<*> (o Core..:? "parent"))

instance Core.ToJSON NodeSpec where
        toJSON NodeSpec{..}
          = Core.object
              (Core.catMaybes
                 [("multisliceParams" Core..=) Core.<$>
                    multisliceParams,
                  ("node" Core..=) Core.<$> node,
                  ("nodeId" Core..=) Core.<$> nodeId,
                  ("parent" Core..=) Core.<$> parent])


-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
    {
      -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
      done :: (Core.Maybe Core.Bool)
      -- | The error result of the operation in case of failure or cancellation.
    , error :: (Core.Maybe Status)
      -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    , metadata :: (Core.Maybe Operation_Metadata)
      -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    , name :: (Core.Maybe Core.Text)
      -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    , response :: (Core.Maybe Operation_Response)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation 
    ::  Operation
newOperation =
  Operation
    { done = Core.Nothing
    , error = Core.Nothing
    , metadata = Core.Nothing
    , name = Core.Nothing
    , response = Core.Nothing
    }

instance Core.FromJSON Operation where
        parseJSON
          = Core.withObject "Operation"
              (\ o ->
                 Operation Core.<$>
                   (o Core..:? "done") Core.<*> (o Core..:? "error")
                     Core.<*> (o Core..:? "metadata")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "response"))

instance Core.ToJSON Operation where
        toJSON Operation{..}
          = Core.object
              (Core.catMaybes
                 [("done" Core..=) Core.<$> done,
                  ("error" Core..=) Core.<$> error,
                  ("metadata" Core..=) Core.<$> metadata,
                  ("name" Core..=) Core.<$> name,
                  ("response" Core..=) Core.<$> response])


-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
        parseJSON
          = Core.withObject "Operation_Metadata"
              (\ o ->
                 Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
        toJSON Operation_Metadata{..}
          = Core.toJSON additional


-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
        parseJSON
          = Core.withObject "Operation_Response"
              (\ o ->
                 Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
        toJSON Operation_Response{..}
          = Core.toJSON additional


-- | Metadata describing an Operation
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
    {
      -- | API version.
      apiVersion :: (Core.Maybe Core.Text)
      -- | Specifies if cancellation was requested for the operation.
    , cancelRequested :: (Core.Maybe Core.Bool)
      -- | The time the operation was created.
    , createTime :: (Core.Maybe Core.DateTime)
      -- | The time the operation finished running.
    , endTime :: (Core.Maybe Core.DateTime)
      -- | Human-readable status of the operation, if any.
    , statusDetail :: (Core.Maybe Core.Text)
      -- | Target of the operation - for example projects\/project-1\/connectivityTests\/test-1
    , target :: (Core.Maybe Core.Text)
      -- | Name of the verb executed by the operation.
    , verb :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata 
    ::  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing
    , cancelRequested = Core.Nothing
    , createTime = Core.Nothing
    , endTime = Core.Nothing
    , statusDetail = Core.Nothing
    , target = Core.Nothing
    , verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
        parseJSON
          = Core.withObject "OperationMetadata"
              (\ o ->
                 OperationMetadata Core.<$>
                   (o Core..:? "apiVersion") Core.<*>
                     (o Core..:? "cancelRequested")
                     Core.<*> (o Core..:? "createTime")
                     Core.<*> (o Core..:? "endTime")
                     Core.<*> (o Core..:? "statusDetail")
                     Core.<*> (o Core..:? "target")
                     Core.<*> (o Core..:? "verb"))

instance Core.ToJSON OperationMetadata where
        toJSON OperationMetadata{..}
          = Core.object
              (Core.catMaybes
                 [("apiVersion" Core..=) Core.<$> apiVersion,
                  ("cancelRequested" Core..=) Core.<$> cancelRequested,
                  ("createTime" Core..=) Core.<$> createTime,
                  ("endTime" Core..=) Core.<$> endTime,
                  ("statusDetail" Core..=) Core.<$> statusDetail,
                  ("target" Core..=) Core.<$> target,
                  ("verb" Core..=) Core.<$> verb])


-- | Further data for the provisioning state.
--
-- /See:/ 'newProvisioningData' smart constructor.
data ProvisioningData = ProvisioningData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProvisioningData' with the minimum fields required to make a request.
newProvisioningData 
    ::  ProvisioningData
newProvisioningData = ProvisioningData

instance Core.FromJSON ProvisioningData where
        parseJSON
          = Core.withObject "ProvisioningData"
              (\ o -> Core.pure ProvisioningData)

instance Core.ToJSON ProvisioningData where
        toJSON = Core.const Core.emptyObject


-- | A QueuedResource represents a request for resources that will be placed in a queue and fulfilled when the necessary resources are available.
--
-- /See:/ 'newQueuedResource' smart constructor.
data QueuedResource = QueuedResource
    {
      -- | Output only. The time when the QueuedResource was created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Optional. The Guaranteed tier
    , guaranteed :: (Core.Maybe Guaranteed)
      -- | Output only. Immutable. The name of the QueuedResource.
    , name :: (Core.Maybe Core.Text)
      -- | Optional. The queueing policy of the QueuedRequest.
    , queueingPolicy :: (Core.Maybe QueueingPolicy)
      -- | Optional. Name of the reservation in which the resource should be provisioned. Format: projects\/{project}\/locations\/{zone}\/reservations\/{reservation}
    , reservationName :: (Core.Maybe Core.Text)
      -- | Optional. The Spot tier.
    , spot :: (Core.Maybe Spot)
      -- | Output only. State of the QueuedResource request.
    , state :: (Core.Maybe QueuedResourceState)
      -- | Optional. Defines a TPU resource.
    , tpu :: (Core.Maybe Tpu)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueuedResource' with the minimum fields required to make a request.
newQueuedResource 
    ::  QueuedResource
newQueuedResource =
  QueuedResource
    { createTime = Core.Nothing
    , guaranteed = Core.Nothing
    , name = Core.Nothing
    , queueingPolicy = Core.Nothing
    , reservationName = Core.Nothing
    , spot = Core.Nothing
    , state = Core.Nothing
    , tpu = Core.Nothing
    }

instance Core.FromJSON QueuedResource where
        parseJSON
          = Core.withObject "QueuedResource"
              (\ o ->
                 QueuedResource Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "guaranteed")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "queueingPolicy")
                     Core.<*> (o Core..:? "reservationName")
                     Core.<*> (o Core..:? "spot")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "tpu"))

instance Core.ToJSON QueuedResource where
        toJSON QueuedResource{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("guaranteed" Core..=) Core.<$> guaranteed,
                  ("name" Core..=) Core.<$> name,
                  ("queueingPolicy" Core..=) Core.<$> queueingPolicy,
                  ("reservationName" Core..=) Core.<$> reservationName,
                  ("spot" Core..=) Core.<$> spot,
                  ("state" Core..=) Core.<$> state,
                  ("tpu" Core..=) Core.<$> tpu])


-- | QueuedResourceState defines the details of the QueuedResource request.
--
-- /See:/ 'newQueuedResourceState' smart constructor.
data QueuedResourceState = QueuedResourceState
    {
      -- | Output only. Further data for the accepted state.
      acceptedData :: (Core.Maybe AcceptedData)
      -- | Output only. Further data for the active state.
    , activeData :: (Core.Maybe ActiveData)
      -- | Output only. Further data for the creating state.
    , creatingData :: (Core.Maybe CreatingData)
      -- | Output only. Further data for the deleting state.
    , deletingData :: (Core.Maybe DeletingData)
      -- | Output only. Further data for the failed state.
    , failedData :: (Core.Maybe FailedData)
      -- | Output only. Further data for the provisioning state.
    , provisioningData :: (Core.Maybe ProvisioningData)
      -- | Output only. State of the QueuedResource request.
    , state :: (Core.Maybe QueuedResourceState_State)
      -- | Output only. The initiator of the QueuedResources\'s current state. Used to indicate whether the SUSPENDING\/SUSPENDED state was initiated by the user or the service.
    , stateInitiator :: (Core.Maybe QueuedResourceState_StateInitiator)
      -- | Output only. Further data for the suspended state.
    , suspendedData :: (Core.Maybe SuspendedData)
      -- | Output only. Further data for the suspending state.
    , suspendingData :: (Core.Maybe SuspendingData)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueuedResourceState' with the minimum fields required to make a request.
newQueuedResourceState 
    ::  QueuedResourceState
newQueuedResourceState =
  QueuedResourceState
    { acceptedData = Core.Nothing
    , activeData = Core.Nothing
    , creatingData = Core.Nothing
    , deletingData = Core.Nothing
    , failedData = Core.Nothing
    , provisioningData = Core.Nothing
    , state = Core.Nothing
    , stateInitiator = Core.Nothing
    , suspendedData = Core.Nothing
    , suspendingData = Core.Nothing
    }

instance Core.FromJSON QueuedResourceState where
        parseJSON
          = Core.withObject "QueuedResourceState"
              (\ o ->
                 QueuedResourceState Core.<$>
                   (o Core..:? "acceptedData") Core.<*>
                     (o Core..:? "activeData")
                     Core.<*> (o Core..:? "creatingData")
                     Core.<*> (o Core..:? "deletingData")
                     Core.<*> (o Core..:? "failedData")
                     Core.<*> (o Core..:? "provisioningData")
                     Core.<*> (o Core..:? "state")
                     Core.<*> (o Core..:? "stateInitiator")
                     Core.<*> (o Core..:? "suspendedData")
                     Core.<*> (o Core..:? "suspendingData"))

instance Core.ToJSON QueuedResourceState where
        toJSON QueuedResourceState{..}
          = Core.object
              (Core.catMaybes
                 [("acceptedData" Core..=) Core.<$> acceptedData,
                  ("activeData" Core..=) Core.<$> activeData,
                  ("creatingData" Core..=) Core.<$> creatingData,
                  ("deletingData" Core..=) Core.<$> deletingData,
                  ("failedData" Core..=) Core.<$> failedData,
                  ("provisioningData" Core..=) Core.<$>
                    provisioningData,
                  ("state" Core..=) Core.<$> state,
                  ("stateInitiator" Core..=) Core.<$> stateInitiator,
                  ("suspendedData" Core..=) Core.<$> suspendedData,
                  ("suspendingData" Core..=) Core.<$> suspendingData])


-- | Defines the policy of the QueuedRequest.
--
-- /See:/ 'newQueueingPolicy' smart constructor.
data QueueingPolicy = QueueingPolicy
    {
      -- | Optional. A relative time after which resources may be created.
      validAfterDuration :: (Core.Maybe Core.Duration)
      -- | Optional. An absolute time after which resources may be created.
    , validAfterTime :: (Core.Maybe Core.DateTime)
      -- | Optional. An absolute time interval within which resources may be created.
    , validInterval :: (Core.Maybe Interval)
      -- | Optional. A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
    , validUntilDuration :: (Core.Maybe Core.Duration)
      -- | Optional. An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
    , validUntilTime :: (Core.Maybe Core.DateTime)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QueueingPolicy' with the minimum fields required to make a request.
newQueueingPolicy 
    ::  QueueingPolicy
newQueueingPolicy =
  QueueingPolicy
    { validAfterDuration = Core.Nothing
    , validAfterTime = Core.Nothing
    , validInterval = Core.Nothing
    , validUntilDuration = Core.Nothing
    , validUntilTime = Core.Nothing
    }

instance Core.FromJSON QueueingPolicy where
        parseJSON
          = Core.withObject "QueueingPolicy"
              (\ o ->
                 QueueingPolicy Core.<$>
                   (o Core..:? "validAfterDuration") Core.<*>
                     (o Core..:? "validAfterTime")
                     Core.<*> (o Core..:? "validInterval")
                     Core.<*> (o Core..:? "validUntilDuration")
                     Core.<*> (o Core..:? "validUntilTime"))

instance Core.ToJSON QueueingPolicy where
        toJSON QueueingPolicy{..}
          = Core.object
              (Core.catMaybes
                 [("validAfterDuration" Core..=) Core.<$>
                    validAfterDuration,
                  ("validAfterTime" Core..=) Core.<$> validAfterTime,
                  ("validInterval" Core..=) Core.<$> validInterval,
                  ("validUntilDuration" Core..=) Core.<$>
                    validUntilDuration,
                  ("validUntilTime" Core..=) Core.<$> validUntilTime])


-- | Request for ResetQueuedResource.
--
-- /See:/ 'newResetQueuedResourceRequest' smart constructor.
data ResetQueuedResourceRequest = ResetQueuedResourceRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ResetQueuedResourceRequest' with the minimum fields required to make a request.
newResetQueuedResourceRequest 
    ::  ResetQueuedResourceRequest
newResetQueuedResourceRequest = ResetQueuedResourceRequest

instance Core.FromJSON ResetQueuedResourceRequest
         where
        parseJSON
          = Core.withObject "ResetQueuedResourceRequest"
              (\ o -> Core.pure ResetQueuedResourceRequest)

instance Core.ToJSON ResetQueuedResourceRequest where
        toJSON = Core.const Core.emptyObject


-- | A runtime version that a Node can be configured with.
--
-- /See:/ 'newRuntimeVersion' smart constructor.
data RuntimeVersion = RuntimeVersion
    {
      -- | The resource name.
      name :: (Core.Maybe Core.Text)
      -- | The runtime version.
    , version :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeVersion' with the minimum fields required to make a request.
newRuntimeVersion 
    ::  RuntimeVersion
newRuntimeVersion = RuntimeVersion {name = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON RuntimeVersion where
        parseJSON
          = Core.withObject "RuntimeVersion"
              (\ o ->
                 RuntimeVersion Core.<$>
                   (o Core..:? "name") Core.<*> (o Core..:? "version"))

instance Core.ToJSON RuntimeVersion where
        toJSON RuntimeVersion{..}
          = Core.object
              (Core.catMaybes
                 [("name" Core..=) Core.<$> name,
                  ("version" Core..=) Core.<$> version])


-- | Sets the scheduling options for this node.
--
-- /See:/ 'newSchedulingConfig' smart constructor.
data SchedulingConfig = SchedulingConfig
    {
      -- | Defines whether the node is preemptible.
      preemptible :: (Core.Maybe Core.Bool)
      -- | Whether the node is created under a reservation.
    , reserved :: (Core.Maybe Core.Bool)
      -- | Optional. Defines whether the node is Spot VM.
    , spot :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchedulingConfig' with the minimum fields required to make a request.
newSchedulingConfig 
    ::  SchedulingConfig
newSchedulingConfig =
  SchedulingConfig
    {preemptible = Core.Nothing, reserved = Core.Nothing, spot = Core.Nothing}

instance Core.FromJSON SchedulingConfig where
        parseJSON
          = Core.withObject "SchedulingConfig"
              (\ o ->
                 SchedulingConfig Core.<$>
                   (o Core..:? "preemptible") Core.<*>
                     (o Core..:? "reserved")
                     Core.<*> (o Core..:? "spot"))

instance Core.ToJSON SchedulingConfig where
        toJSON SchedulingConfig{..}
          = Core.object
              (Core.catMaybes
                 [("preemptible" Core..=) Core.<$> preemptible,
                  ("reserved" Core..=) Core.<$> reserved,
                  ("spot" Core..=) Core.<$> spot])


-- | A service account.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
    {
      -- | Email address of the service account. If empty, default Compute service account will be used.
      email :: (Core.Maybe Core.Text)
      -- | The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
    , scope :: (Core.Maybe [Core.Text])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount 
    ::  ServiceAccount
newServiceAccount = ServiceAccount {email = Core.Nothing, scope = Core.Nothing}

instance Core.FromJSON ServiceAccount where
        parseJSON
          = Core.withObject "ServiceAccount"
              (\ o ->
                 ServiceAccount Core.<$>
                   (o Core..:? "email") Core.<*> (o Core..:? "scope"))

instance Core.ToJSON ServiceAccount where
        toJSON ServiceAccount{..}
          = Core.object
              (Core.catMaybes
                 [("email" Core..=) Core.<$> email,
                  ("scope" Core..=) Core.<$> scope])


-- | The per-product per-project service identity for Cloud TPU service.
--
-- /See:/ 'newServiceIdentity' smart constructor.
newtype ServiceIdentity = ServiceIdentity
    {
      -- | The email address of the service identity.
      email :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceIdentity' with the minimum fields required to make a request.
newServiceIdentity 
    ::  ServiceIdentity
newServiceIdentity = ServiceIdentity {email = Core.Nothing}

instance Core.FromJSON ServiceIdentity where
        parseJSON
          = Core.withObject "ServiceIdentity"
              (\ o ->
                 ServiceIdentity Core.<$> (o Core..:? "email"))

instance Core.ToJSON ServiceIdentity where
        toJSON ServiceIdentity{..}
          = Core.object
              (Core.catMaybes [("email" Core..=) Core.<$> email])


-- | A set of Shielded Instance options.
--
-- /See:/ 'newShieldedInstanceConfig' smart constructor.
newtype ShieldedInstanceConfig = ShieldedInstanceConfig
    {
      -- | Defines whether the instance has Secure Boot enabled.
      enableSecureBoot :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ShieldedInstanceConfig' with the minimum fields required to make a request.
newShieldedInstanceConfig 
    ::  ShieldedInstanceConfig
newShieldedInstanceConfig =
  ShieldedInstanceConfig {enableSecureBoot = Core.Nothing}

instance Core.FromJSON ShieldedInstanceConfig where
        parseJSON
          = Core.withObject "ShieldedInstanceConfig"
              (\ o ->
                 ShieldedInstanceConfig Core.<$>
                   (o Core..:? "enableSecureBoot"))

instance Core.ToJSON ShieldedInstanceConfig where
        toJSON ShieldedInstanceConfig{..}
          = Core.object
              (Core.catMaybes
                 [("enableSecureBoot" Core..=) Core.<$>
                    enableSecureBoot])


-- | Spot tier definition.
--
-- /See:/ 'newSpot' smart constructor.
data Spot = Spot
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Spot' with the minimum fields required to make a request.
newSpot 
    ::  Spot
newSpot = Spot

instance Core.FromJSON Spot where
        parseJSON
          = Core.withObject "Spot" (\ o -> Core.pure Spot)

instance Core.ToJSON Spot where
        toJSON = Core.const Core.emptyObject


-- | Request for StartNode.
--
-- /See:/ 'newStartNodeRequest' smart constructor.
data StartNodeRequest = StartNodeRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartNodeRequest' with the minimum fields required to make a request.
newStartNodeRequest 
    ::  StartNodeRequest
newStartNodeRequest = StartNodeRequest

instance Core.FromJSON StartNodeRequest where
        parseJSON
          = Core.withObject "StartNodeRequest"
              (\ o -> Core.pure StartNodeRequest)

instance Core.ToJSON StartNodeRequest where
        toJSON = Core.const Core.emptyObject


-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
    {
      -- | The status code, which should be an enum value of google.rpc.Code.
      code :: (Core.Maybe Core.Int32)
      -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    , details :: (Core.Maybe [Status_DetailsItem])
      -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    , message :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus 
    ::  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
        parseJSON
          = Core.withObject "Status"
              (\ o ->
                 Status Core.<$>
                   (o Core..:? "code") Core.<*> (o Core..:? "details")
                     Core.<*> (o Core..:? "message"))

instance Core.ToJSON Status where
        toJSON Status{..}
          = Core.object
              (Core.catMaybes
                 [("code" Core..=) Core.<$> code,
                  ("details" Core..=) Core.<$> details,
                  ("message" Core..=) Core.<$> message])


--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
    {
      -- | Properties of the object. Contains field \@type with type URL.
      additional :: (Core.HashMap Core.Text Core.Value)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem 
    ::  Core.HashMap Core.Text Core.Value
       -- ^  Properties of the object. Contains field \@type with type URL. See 'additional'.
    -> Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
        parseJSON
          = Core.withObject "Status_DetailsItem"
              (\ o ->
                 Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
        toJSON Status_DetailsItem{..}
          = Core.toJSON additional


-- | Request for StopNode.
--
-- /See:/ 'newStopNodeRequest' smart constructor.
data StopNodeRequest = StopNodeRequest
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopNodeRequest' with the minimum fields required to make a request.
newStopNodeRequest 
    ::  StopNodeRequest
newStopNodeRequest = StopNodeRequest

instance Core.FromJSON StopNodeRequest where
        parseJSON
          = Core.withObject "StopNodeRequest"
              (\ o -> Core.pure StopNodeRequest)

instance Core.ToJSON StopNodeRequest where
        toJSON = Core.const Core.emptyObject


-- | Further data for the suspended state.
--
-- /See:/ 'newSuspendedData' smart constructor.
data SuspendedData = SuspendedData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuspendedData' with the minimum fields required to make a request.
newSuspendedData 
    ::  SuspendedData
newSuspendedData = SuspendedData

instance Core.FromJSON SuspendedData where
        parseJSON
          = Core.withObject "SuspendedData"
              (\ o -> Core.pure SuspendedData)

instance Core.ToJSON SuspendedData where
        toJSON = Core.const Core.emptyObject


-- | Further data for the suspending state.
--
-- /See:/ 'newSuspendingData' smart constructor.
data SuspendingData = SuspendingData
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SuspendingData' with the minimum fields required to make a request.
newSuspendingData 
    ::  SuspendingData
newSuspendingData = SuspendingData

instance Core.FromJSON SuspendingData where
        parseJSON
          = Core.withObject "SuspendingData"
              (\ o -> Core.pure SuspendingData)

instance Core.ToJSON SuspendingData where
        toJSON = Core.const Core.emptyObject


-- | A Symptom instance.
--
-- /See:/ 'newSymptom' smart constructor.
data Symptom = Symptom
    {
      -- | Timestamp when the Symptom is created.
      createTime :: (Core.Maybe Core.DateTime)
      -- | Detailed information of the current Symptom.
    , details :: (Core.Maybe Core.Text)
      -- | Type of the Symptom.
    , symptomType :: (Core.Maybe Symptom_SymptomType)
      -- | A string used to uniquely distinguish a worker within a TPU node.
    , workerId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Symptom' with the minimum fields required to make a request.
newSymptom 
    ::  Symptom
newSymptom =
  Symptom
    { createTime = Core.Nothing
    , details = Core.Nothing
    , symptomType = Core.Nothing
    , workerId = Core.Nothing
    }

instance Core.FromJSON Symptom where
        parseJSON
          = Core.withObject "Symptom"
              (\ o ->
                 Symptom Core.<$>
                   (o Core..:? "createTime") Core.<*>
                     (o Core..:? "details")
                     Core.<*> (o Core..:? "symptomType")
                     Core.<*> (o Core..:? "workerId"))

instance Core.ToJSON Symptom where
        toJSON Symptom{..}
          = Core.object
              (Core.catMaybes
                 [("createTime" Core..=) Core.<$> createTime,
                  ("details" Core..=) Core.<$> details,
                  ("symptomType" Core..=) Core.<$> symptomType,
                  ("workerId" Core..=) Core.<$> workerId])


-- | Details of the TPU resource(s) being requested.
--
-- /See:/ 'newTpu' smart constructor.
newtype Tpu = Tpu
    {
      -- | Optional. The TPU node(s) being requested.
      nodeSpec :: (Core.Maybe [NodeSpec])
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tpu' with the minimum fields required to make a request.
newTpu 
    ::  Tpu
newTpu = Tpu {nodeSpec = Core.Nothing}

instance Core.FromJSON Tpu where
        parseJSON
          = Core.withObject "Tpu"
              (\ o -> Tpu Core.<$> (o Core..:? "nodeSpec"))

instance Core.ToJSON Tpu where
        toJSON Tpu{..}
          = Core.object
              (Core.catMaybes
                 [("nodeSpec" Core..=) Core.<$> nodeSpec])


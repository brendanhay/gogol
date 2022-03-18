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
-- Module      : Gogol.TPU.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.TPU.Internal.Product
  ( -- * AcceleratorType
    AcceleratorType (..),
    newAcceleratorType,

    -- * AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- * AttachedDisk
    AttachedDisk (..),
    newAttachedDisk,

    -- * Empty
    Empty (..),
    newEmpty,

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

    -- * GuestAttributes
    GuestAttributes (..),
    newGuestAttributes,

    -- * GuestAttributesEntry
    GuestAttributesEntry (..),
    newGuestAttributesEntry,

    -- * GuestAttributesValue
    GuestAttributesValue (..),
    newGuestAttributesValue,

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

    -- * Symptom
    Symptom (..),
    newSymptom,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Internal.Sum

-- | A accelerator type that a Node can be configured with.
--
-- /See:/ 'newAcceleratorType' smart constructor.
data AcceleratorType = AcceleratorType
  { -- | The resource name.
    name :: (Core.Maybe Core.Text),
    -- | the accelerator type.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AcceleratorType' with the minimum fields required to make a request.
newAcceleratorType ::
  AcceleratorType
newAcceleratorType = AcceleratorType {name = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AcceleratorType where
  parseJSON =
    Core.withObject
      "AcceleratorType"
      ( \o ->
          AcceleratorType
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AcceleratorType where
  toJSON AcceleratorType {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An access config attached to the TPU worker.
--
-- /See:/ 'newAccessConfig' smart constructor.
newtype AccessConfig = AccessConfig
  { -- | Output only. An external IP address associated with the TPU worker.
    externalIp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
newAccessConfig ::
  AccessConfig
newAccessConfig = AccessConfig {externalIp = Core.Nothing}

instance Core.FromJSON AccessConfig where
  parseJSON =
    Core.withObject
      "AccessConfig"
      ( \o ->
          AccessConfig Core.<$> (o Core..:? "externalIp")
      )

instance Core.ToJSON AccessConfig where
  toJSON AccessConfig {..} =
    Core.object
      ( Core.catMaybes
          [("externalIp" Core..=) Core.<$> externalIp]
      )

-- | A node-attached disk resource. Next ID: 8;
--
-- /See:/ 'newAttachedDisk' smart constructor.
data AttachedDisk = AttachedDisk
  { -- | The mode in which to attach this disk. If not specified, the default is READ/WRITE mode. Only applicable to data/disks.
    mode :: (Core.Maybe AttachedDisk_Mode),
    -- | Specifies the full path to an existing disk. For example: \"projects\/my-project\/zones\/us-central1-c\/disks\/my-disk\".
    sourceDisk :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AttachedDisk' with the minimum fields required to make a request.
newAttachedDisk ::
  AttachedDisk
newAttachedDisk = AttachedDisk {mode = Core.Nothing, sourceDisk = Core.Nothing}

instance Core.FromJSON AttachedDisk where
  parseJSON =
    Core.withObject
      "AttachedDisk"
      ( \o ->
          AttachedDisk
            Core.<$> (o Core..:? "mode")
            Core.<*> (o Core..:? "sourceDisk")
      )

instance Core.ToJSON AttachedDisk where
  toJSON AttachedDisk {..} =
    Core.object
      ( Core.catMaybes
          [ ("mode" Core..=) Core.<$> mode,
            ("sourceDisk" Core..=) Core.<$> sourceDisk
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | Request for GenerateServiceIdentity.
--
-- /See:/ 'newGenerateServiceIdentityRequest' smart constructor.
data GenerateServiceIdentityRequest = GenerateServiceIdentityRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateServiceIdentityRequest' with the minimum fields required to make a request.
newGenerateServiceIdentityRequest ::
  GenerateServiceIdentityRequest
newGenerateServiceIdentityRequest = GenerateServiceIdentityRequest

instance Core.FromJSON GenerateServiceIdentityRequest where
  parseJSON =
    Core.withObject
      "GenerateServiceIdentityRequest"
      (\o -> Core.pure GenerateServiceIdentityRequest)

instance Core.ToJSON GenerateServiceIdentityRequest where
  toJSON = Core.const Core.emptyObject

-- | Response for GenerateServiceIdentity.
--
-- /See:/ 'newGenerateServiceIdentityResponse' smart constructor.
newtype GenerateServiceIdentityResponse = GenerateServiceIdentityResponse
  { -- | ServiceIdentity that was created or retrieved.
    identity :: (Core.Maybe ServiceIdentity)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GenerateServiceIdentityResponse' with the minimum fields required to make a request.
newGenerateServiceIdentityResponse ::
  GenerateServiceIdentityResponse
newGenerateServiceIdentityResponse =
  GenerateServiceIdentityResponse {identity = Core.Nothing}

instance
  Core.FromJSON
    GenerateServiceIdentityResponse
  where
  parseJSON =
    Core.withObject
      "GenerateServiceIdentityResponse"
      ( \o ->
          GenerateServiceIdentityResponse
            Core.<$> (o Core..:? "identity")
      )

instance Core.ToJSON GenerateServiceIdentityResponse where
  toJSON GenerateServiceIdentityResponse {..} =
    Core.object
      ( Core.catMaybes
          [("identity" Core..=) Core.<$> identity]
      )

-- | Request for GetGuestAttributes.
--
-- /See:/ 'newGetGuestAttributesRequest' smart constructor.
data GetGuestAttributesRequest = GetGuestAttributesRequest
  { -- | The guest attributes path to be queried.
    queryPath :: (Core.Maybe Core.Text),
    -- | The 0-based worker ID. If it is empty, all workers\' GuestAttributes will be returned.
    workerIds :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetGuestAttributesRequest' with the minimum fields required to make a request.
newGetGuestAttributesRequest ::
  GetGuestAttributesRequest
newGetGuestAttributesRequest =
  GetGuestAttributesRequest {queryPath = Core.Nothing, workerIds = Core.Nothing}

instance Core.FromJSON GetGuestAttributesRequest where
  parseJSON =
    Core.withObject
      "GetGuestAttributesRequest"
      ( \o ->
          GetGuestAttributesRequest
            Core.<$> (o Core..:? "queryPath")
            Core.<*> (o Core..:? "workerIds" Core..!= Core.mempty)
      )

instance Core.ToJSON GetGuestAttributesRequest where
  toJSON GetGuestAttributesRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryPath" Core..=) Core.<$> queryPath,
            ("workerIds" Core..=) Core.<$> workerIds
          ]
      )

-- | Response for GetGuestAttributes.
--
-- /See:/ 'newGetGuestAttributesResponse' smart constructor.
newtype GetGuestAttributesResponse = GetGuestAttributesResponse
  { -- | The guest attributes for the TPU workers.
    guestAttributes :: (Core.Maybe [GuestAttributes])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GetGuestAttributesResponse' with the minimum fields required to make a request.
newGetGuestAttributesResponse ::
  GetGuestAttributesResponse
newGetGuestAttributesResponse =
  GetGuestAttributesResponse {guestAttributes = Core.Nothing}

instance Core.FromJSON GetGuestAttributesResponse where
  parseJSON =
    Core.withObject
      "GetGuestAttributesResponse"
      ( \o ->
          GetGuestAttributesResponse
            Core.<$> (o Core..:? "guestAttributes" Core..!= Core.mempty)
      )

instance Core.ToJSON GetGuestAttributesResponse where
  toJSON GetGuestAttributesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("guestAttributes" Core..=)
              Core.<$> guestAttributes
          ]
      )

-- | A guest attributes.
--
-- /See:/ 'newGuestAttributes' smart constructor.
data GuestAttributes = GuestAttributes
  { -- | The path to be queried. This can be the default namespace (\'\/\') or a nested namespace (\'\/\\\/\') or a specified key (\'\/\\\/\\\')
    queryPath :: (Core.Maybe Core.Text),
    -- | The value of the requested queried path.
    queryValue :: (Core.Maybe GuestAttributesValue)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributes' with the minimum fields required to make a request.
newGuestAttributes ::
  GuestAttributes
newGuestAttributes =
  GuestAttributes {queryPath = Core.Nothing, queryValue = Core.Nothing}

instance Core.FromJSON GuestAttributes where
  parseJSON =
    Core.withObject
      "GuestAttributes"
      ( \o ->
          GuestAttributes
            Core.<$> (o Core..:? "queryPath")
            Core.<*> (o Core..:? "queryValue")
      )

instance Core.ToJSON GuestAttributes where
  toJSON GuestAttributes {..} =
    Core.object
      ( Core.catMaybes
          [ ("queryPath" Core..=) Core.<$> queryPath,
            ("queryValue" Core..=) Core.<$> queryValue
          ]
      )

-- | A guest attributes namespace\/key\/value entry.
--
-- /See:/ 'newGuestAttributesEntry' smart constructor.
data GuestAttributesEntry = GuestAttributesEntry
  { -- | Key for the guest attribute entry.
    key :: (Core.Maybe Core.Text),
    -- | Namespace for the guest attribute entry.
    namespace :: (Core.Maybe Core.Text),
    -- | Value for the guest attribute entry.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributesEntry' with the minimum fields required to make a request.
newGuestAttributesEntry ::
  GuestAttributesEntry
newGuestAttributesEntry =
  GuestAttributesEntry
    { key = Core.Nothing,
      namespace = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON GuestAttributesEntry where
  parseJSON =
    Core.withObject
      "GuestAttributesEntry"
      ( \o ->
          GuestAttributesEntry
            Core.<$> (o Core..:? "key")
            Core.<*> (o Core..:? "namespace")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON GuestAttributesEntry where
  toJSON GuestAttributesEntry {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("namespace" Core..=) Core.<$> namespace,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Array of guest attribute namespace\/key\/value tuples.
--
-- /See:/ 'newGuestAttributesValue' smart constructor.
newtype GuestAttributesValue = GuestAttributesValue
  { -- | The list of guest attributes entries.
    items :: (Core.Maybe [GuestAttributesEntry])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GuestAttributesValue' with the minimum fields required to make a request.
newGuestAttributesValue ::
  GuestAttributesValue
newGuestAttributesValue = GuestAttributesValue {items = Core.Nothing}

instance Core.FromJSON GuestAttributesValue where
  parseJSON =
    Core.withObject
      "GuestAttributesValue"
      ( \o ->
          GuestAttributesValue
            Core.<$> (o Core..:? "items" Core..!= Core.mempty)
      )

instance Core.ToJSON GuestAttributesValue where
  toJSON GuestAttributesValue {..} =
    Core.object
      (Core.catMaybes [("items" Core..=) Core.<$> items])

-- | Response for ListAcceleratorTypes.
--
-- /See:/ 'newListAcceleratorTypesResponse' smart constructor.
data ListAcceleratorTypesResponse = ListAcceleratorTypesResponse
  { -- | The listed nodes.
    acceleratorTypes :: (Core.Maybe [AcceleratorType]),
    -- | The next page token or empty if none.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListAcceleratorTypesResponse' with the minimum fields required to make a request.
newListAcceleratorTypesResponse ::
  ListAcceleratorTypesResponse
newListAcceleratorTypesResponse =
  ListAcceleratorTypesResponse
    { acceleratorTypes = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListAcceleratorTypesResponse where
  parseJSON =
    Core.withObject
      "ListAcceleratorTypesResponse"
      ( \o ->
          ListAcceleratorTypesResponse
            Core.<$> (o Core..:? "acceleratorTypes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
      )

instance Core.ToJSON ListAcceleratorTypesResponse where
  toJSON ListAcceleratorTypesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorTypes" Core..=)
              Core.<$> acceleratorTypes,
            ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The response message for Locations.ListLocations.
--
-- /See:/ 'newListLocationsResponse' smart constructor.
data ListLocationsResponse = ListLocationsResponse
  { -- | A list of locations that matches the specified filter in the request.
    locations :: (Core.Maybe [Location]),
    -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListLocationsResponse' with the minimum fields required to make a request.
newListLocationsResponse ::
  ListLocationsResponse
newListLocationsResponse =
  ListLocationsResponse {locations = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListLocationsResponse where
  parseJSON =
    Core.withObject
      "ListLocationsResponse"
      ( \o ->
          ListLocationsResponse
            Core.<$> (o Core..:? "locations" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListLocationsResponse where
  toJSON ListLocationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("locations" Core..=) Core.<$> locations,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response for ListNodes.
--
-- /See:/ 'newListNodesResponse' smart constructor.
data ListNodesResponse = ListNodesResponse
  { -- | The next page token or empty if none.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The listed nodes.
    nodes :: (Core.Maybe [Node]),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListNodesResponse' with the minimum fields required to make a request.
newListNodesResponse ::
  ListNodesResponse
newListNodesResponse =
  ListNodesResponse
    { nextPageToken = Core.Nothing,
      nodes = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListNodesResponse where
  parseJSON =
    Core.withObject
      "ListNodesResponse"
      ( \o ->
          ListNodesResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "nodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
      )

instance Core.ToJSON ListNodesResponse where
  toJSON ListNodesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("nodes" Core..=) Core.<$> nodes,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newListOperationsResponse' smart constructor.
data ListOperationsResponse = ListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [Operation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListOperationsResponse' with the minimum fields required to make a request.
newListOperationsResponse ::
  ListOperationsResponse
newListOperationsResponse =
  ListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance Core.FromJSON ListOperationsResponse where
  parseJSON =
    Core.withObject
      "ListOperationsResponse"
      ( \o ->
          ListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | Response for ListRuntimeVersions.
--
-- /See:/ 'newListRuntimeVersionsResponse' smart constructor.
data ListRuntimeVersionsResponse = ListRuntimeVersionsResponse
  { -- | The next page token or empty if none.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The listed nodes.
    runtimeVersions :: (Core.Maybe [RuntimeVersion]),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListRuntimeVersionsResponse' with the minimum fields required to make a request.
newListRuntimeVersionsResponse ::
  ListRuntimeVersionsResponse
newListRuntimeVersionsResponse =
  ListRuntimeVersionsResponse
    { nextPageToken = Core.Nothing,
      runtimeVersions = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListRuntimeVersionsResponse where
  parseJSON =
    Core.withObject
      "ListRuntimeVersionsResponse"
      ( \o ->
          ListRuntimeVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "runtimeVersions" Core..!= Core.mempty)
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
      )

instance Core.ToJSON ListRuntimeVersionsResponse where
  toJSON ListRuntimeVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("runtimeVersions" Core..=) Core.<$> runtimeVersions,
            ("unreachable" Core..=) Core.<$> unreachable
          ]
      )

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | The canonical id for this location. For example: @\"us-east1\"@.
    locationId :: (Core.Maybe Core.Text),
    -- | Service-specific metadata. For example the available capacity at the given location.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Resource name for the location, which may vary between implementations. For example: @\"projects\/example-project\/locations\/us-east1\"@
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location' with the minimum fields required to make a request.
newLocation ::
  Location
newLocation =
  Location
    { displayName = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing
    }

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \o ->
          Location
            Core.<$> (o Core..:? "displayName")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON Location where
  toJSON Location {..} =
    Core.object
      ( Core.catMaybes
          [ ("displayName" Core..=) Core.<$> displayName,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name
          ]
      )

-- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
--
-- /See:/ 'newLocation_Labels' smart constructor.
newtype Location_Labels = Location_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Labels' with the minimum fields required to make a request.
newLocation_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Location_Labels
newLocation_Labels additional = Location_Labels {additional = additional}

instance Core.FromJSON Location_Labels where
  parseJSON =
    Core.withObject
      "Location_Labels"
      ( \o ->
          Location_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Labels where
  toJSON Location_Labels {..} = Core.toJSON additional

-- | Service-specific metadata. For example the available capacity at the given location.
--
-- /See:/ 'newLocation_Metadata' smart constructor.
newtype Location_Metadata = Location_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Location_Metadata' with the minimum fields required to make a request.
newLocation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Location_Metadata
newLocation_Metadata additional = Location_Metadata {additional = additional}

instance Core.FromJSON Location_Metadata where
  parseJSON =
    Core.withObject
      "Location_Metadata"
      ( \o ->
          Location_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Location_Metadata where
  toJSON Location_Metadata {..} = Core.toJSON additional

-- | Network related configurations.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | Allows the TPU node to send and receive packets with non-matching destination or source IPs. This is required if you plan to use the TPU workers to forward routes.
    canIpForward :: (Core.Maybe Core.Bool),
    -- | Indicates that external IP addresses would be associated with the TPU workers. If set to false, the specified subnetwork or network should have Private Google Access enabled.
    enableExternalIps :: (Core.Maybe Core.Bool),
    -- | The name of the network for the TPU node. It must be a preexisting Google Compute Engine network. If none is provided, \"default\" will be used.
    network :: (Core.Maybe Core.Text),
    -- | The name of the subnetwork for the TPU node. It must be a preexisting Google Compute Engine subnetwork. If none is provided, \"default\" will be used.
    subnetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig ::
  NetworkConfig
newNetworkConfig =
  NetworkConfig
    { canIpForward = Core.Nothing,
      enableExternalIps = Core.Nothing,
      network = Core.Nothing,
      subnetwork = Core.Nothing
    }

instance Core.FromJSON NetworkConfig where
  parseJSON =
    Core.withObject
      "NetworkConfig"
      ( \o ->
          NetworkConfig
            Core.<$> (o Core..:? "canIpForward")
            Core.<*> (o Core..:? "enableExternalIps")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "subnetwork")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("canIpForward" Core..=) Core.<$> canIpForward,
            ("enableExternalIps" Core..=)
              Core.<$> enableExternalIps,
            ("network" Core..=) Core.<$> network,
            ("subnetwork" Core..=) Core.<$> subnetwork
          ]
      )

-- | A network endpoint over which a TPU worker can be reached.
--
-- /See:/ 'newNetworkEndpoint' smart constructor.
data NetworkEndpoint = NetworkEndpoint
  { -- | The access config for the TPU worker.
    accessConfig :: (Core.Maybe AccessConfig),
    -- | The internal IP address of this network endpoint.
    ipAddress :: (Core.Maybe Core.Text),
    -- | The port of this network endpoint.
    port :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkEndpoint' with the minimum fields required to make a request.
newNetworkEndpoint ::
  NetworkEndpoint
newNetworkEndpoint =
  NetworkEndpoint
    { accessConfig = Core.Nothing,
      ipAddress = Core.Nothing,
      port = Core.Nothing
    }

instance Core.FromJSON NetworkEndpoint where
  parseJSON =
    Core.withObject
      "NetworkEndpoint"
      ( \o ->
          NetworkEndpoint
            Core.<$> (o Core..:? "accessConfig")
            Core.<*> (o Core..:? "ipAddress")
            Core.<*> (o Core..:? "port")
      )

instance Core.ToJSON NetworkEndpoint where
  toJSON NetworkEndpoint {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessConfig" Core..=) Core.<$> accessConfig,
            ("ipAddress" Core..=) Core.<$> ipAddress,
            ("port" Core..=) Core.<$> port
          ]
      )

-- | A TPU instance.
--
-- /See:/ 'newNode' smart constructor.
data Node = Node
  { -- | Required. The type of hardware accelerators associated with this node.
    acceleratorType :: (Core.Maybe Core.Text),
    -- | Output only. The API version that created this Node.
    apiVersion :: (Core.Maybe Node_ApiVersion),
    -- | The CIDR block that the TPU node will use when selecting an IP address. This CIDR block must be a \/29 block; the Compute Engine networks API forbids a smaller block, and using a larger block would be wasteful (a node can only consume one IP address). Errors will occur if the CIDR block has already been used for a currently existing TPU node, the CIDR block conflicts with any subnetworks in the user\'s provided network, or the provided network is peered with another network that is using that CIDR block.
    cidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The time when the node was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The additional data disks for the Node.
    dataDisks :: (Core.Maybe [AttachedDisk]),
    -- | The user-supplied description of the TPU. Maximum of 512 characters.
    description :: (Core.Maybe Core.Text),
    -- | The health status of the TPU node.
    health :: (Core.Maybe Node_Health),
    -- | Output only. If this field is populated, it contains a description of why the TPU Node is unhealthy.
    healthDescription :: (Core.Maybe Core.Text),
    -- | Output only. The unique identifier for the TPU Node.
    id :: (Core.Maybe Core.Int64),
    -- | Resource labels to represent user-provided metadata.
    labels :: (Core.Maybe Node_Labels),
    -- | Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
    metadata :: (Core.Maybe Node_Metadata),
    -- | Output only. Immutable. The name of the TPU.
    name :: (Core.Maybe Core.Text),
    -- | Network configurations for the TPU node.
    networkConfig :: (Core.Maybe NetworkConfig),
    -- | Output only. The network endpoints where TPU workers can be accessed and sent work. It is recommended that runtime clients of the node reach out to the 0th entry in this map first.
    networkEndpoints :: (Core.Maybe [NetworkEndpoint]),
    -- | Required. The runtime version running in the Node.
    runtimeVersion :: (Core.Maybe Core.Text),
    -- | The scheduling options for this node.
    schedulingConfig :: (Core.Maybe SchedulingConfig),
    -- | The Google Cloud Platform Service Account to be used by the TPU node VMs. If None is specified, the default compute service account will be used.
    serviceAccount :: (Core.Maybe ServiceAccount),
    -- | Output only. The current state for the TPU Node.
    state :: (Core.Maybe Node_State),
    -- | Output only. The Symptoms that have occurred to the TPU Node.
    symptoms :: (Core.Maybe [Symptom]),
    -- | Tags to apply to the TPU Node. Tags are used to identify valid sources or targets for network firewalls.
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node' with the minimum fields required to make a request.
newNode ::
  Node
newNode =
  Node
    { acceleratorType = Core.Nothing,
      apiVersion = Core.Nothing,
      cidrBlock = Core.Nothing,
      createTime = Core.Nothing,
      dataDisks = Core.Nothing,
      description = Core.Nothing,
      health = Core.Nothing,
      healthDescription = Core.Nothing,
      id = Core.Nothing,
      labels = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      networkConfig = Core.Nothing,
      networkEndpoints = Core.Nothing,
      runtimeVersion = Core.Nothing,
      schedulingConfig = Core.Nothing,
      serviceAccount = Core.Nothing,
      state = Core.Nothing,
      symptoms = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON Node where
  parseJSON =
    Core.withObject
      "Node"
      ( \o ->
          Node
            Core.<$> (o Core..:? "acceleratorType")
            Core.<*> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cidrBlock")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "dataDisks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "health")
            Core.<*> (o Core..:? "healthDescription")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "networkEndpoints" Core..!= Core.mempty)
            Core.<*> (o Core..:? "runtimeVersion")
            Core.<*> (o Core..:? "schedulingConfig")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "symptoms" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tags" Core..!= Core.mempty)
      )

instance Core.ToJSON Node where
  toJSON Node {..} =
    Core.object
      ( Core.catMaybes
          [ ("acceleratorType" Core..=)
              Core.<$> acceleratorType,
            ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cidrBlock" Core..=) Core.<$> cidrBlock,
            ("createTime" Core..=) Core.<$> createTime,
            ("dataDisks" Core..=) Core.<$> dataDisks,
            ("description" Core..=) Core.<$> description,
            ("health" Core..=) Core.<$> health,
            ("healthDescription" Core..=)
              Core.<$> healthDescription,
            ("id" Core..=) Core.. Core.AsText Core.<$> id,
            ("labels" Core..=) Core.<$> labels,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("networkConfig" Core..=) Core.<$> networkConfig,
            ("networkEndpoints" Core..=)
              Core.<$> networkEndpoints,
            ("runtimeVersion" Core..=) Core.<$> runtimeVersion,
            ("schedulingConfig" Core..=)
              Core.<$> schedulingConfig,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("state" Core..=) Core.<$> state,
            ("symptoms" Core..=) Core.<$> symptoms,
            ("tags" Core..=) Core.<$> tags
          ]
      )

-- | Resource labels to represent user-provided metadata.
--
-- /See:/ 'newNode_Labels' smart constructor.
newtype Node_Labels = Node_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node_Labels' with the minimum fields required to make a request.
newNode_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Node_Labels
newNode_Labels additional = Node_Labels {additional = additional}

instance Core.FromJSON Node_Labels where
  parseJSON =
    Core.withObject
      "Node_Labels"
      ( \o ->
          Node_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Node_Labels where
  toJSON Node_Labels {..} = Core.toJSON additional

-- | Custom metadata to apply to the TPU Node. Can set startup-script and shutdown-script
--
-- /See:/ 'newNode_Metadata' smart constructor.
newtype Node_Metadata = Node_Metadata
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Node_Metadata' with the minimum fields required to make a request.
newNode_Metadata ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Node_Metadata
newNode_Metadata additional = Node_Metadata {additional = additional}

instance Core.FromJSON Node_Metadata where
  parseJSON =
    Core.withObject
      "Node_Metadata"
      ( \o ->
          Node_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Node_Metadata where
  toJSON Node_Metadata {..} = Core.toJSON additional

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Metadata describing an Operation
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | API version.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Specifies if cancellation was requested for the operation.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime'),
    -- | Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Target of the operation - for example projects\/project-1\/connectivityTests\/test-1
    target :: (Core.Maybe Core.Text),
    -- | Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | A runtime version that a Node can be configured with.
--
-- /See:/ 'newRuntimeVersion' smart constructor.
data RuntimeVersion = RuntimeVersion
  { -- | The resource name.
    name :: (Core.Maybe Core.Text),
    -- | The runtime version.
    version :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RuntimeVersion' with the minimum fields required to make a request.
newRuntimeVersion ::
  RuntimeVersion
newRuntimeVersion = RuntimeVersion {name = Core.Nothing, version = Core.Nothing}

instance Core.FromJSON RuntimeVersion where
  parseJSON =
    Core.withObject
      "RuntimeVersion"
      ( \o ->
          RuntimeVersion
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON RuntimeVersion where
  toJSON RuntimeVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Sets the scheduling options for this node.
--
-- /See:/ 'newSchedulingConfig' smart constructor.
data SchedulingConfig = SchedulingConfig
  { -- | Defines whether the node is preemptible.
    preemptible :: (Core.Maybe Core.Bool),
    -- | Whether the node is created under a reservation.
    reserved :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchedulingConfig' with the minimum fields required to make a request.
newSchedulingConfig ::
  SchedulingConfig
newSchedulingConfig =
  SchedulingConfig {preemptible = Core.Nothing, reserved = Core.Nothing}

instance Core.FromJSON SchedulingConfig where
  parseJSON =
    Core.withObject
      "SchedulingConfig"
      ( \o ->
          SchedulingConfig
            Core.<$> (o Core..:? "preemptible")
            Core.<*> (o Core..:? "reserved")
      )

instance Core.ToJSON SchedulingConfig where
  toJSON SchedulingConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("preemptible" Core..=) Core.<$> preemptible,
            ("reserved" Core..=) Core.<$> reserved
          ]
      )

-- | A service account.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | Email address of the service account. If empty, default Compute service account will be used.
    email :: (Core.Maybe Core.Text),
    -- | The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
    scope :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount = ServiceAccount {email = Core.Nothing, scope = Core.Nothing}

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "scope" Core..!= Core.mempty)
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("scope" Core..=) Core.<$> scope
          ]
      )

-- | The per-product per-project service identity for Cloud TPU service.
--
-- /See:/ 'newServiceIdentity' smart constructor.
newtype ServiceIdentity = ServiceIdentity
  { -- | The email address of the service identity.
    email :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceIdentity' with the minimum fields required to make a request.
newServiceIdentity ::
  ServiceIdentity
newServiceIdentity = ServiceIdentity {email = Core.Nothing}

instance Core.FromJSON ServiceIdentity where
  parseJSON =
    Core.withObject
      "ServiceIdentity"
      ( \o ->
          ServiceIdentity Core.<$> (o Core..:? "email")
      )

instance Core.ToJSON ServiceIdentity where
  toJSON ServiceIdentity {..} =
    Core.object
      (Core.catMaybes [("email" Core..=) Core.<$> email])

-- | Request for StartNode.
--
-- /See:/ 'newStartNodeRequest' smart constructor.
data StartNodeRequest = StartNodeRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StartNodeRequest' with the minimum fields required to make a request.
newStartNodeRequest ::
  StartNodeRequest
newStartNodeRequest = StartNodeRequest

instance Core.FromJSON StartNodeRequest where
  parseJSON =
    Core.withObject
      "StartNodeRequest"
      (\o -> Core.pure StartNodeRequest)

instance Core.ToJSON StartNodeRequest where
  toJSON = Core.const Core.emptyObject

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Request for StopNode.
--
-- /See:/ 'newStopNodeRequest' smart constructor.
data StopNodeRequest = StopNodeRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopNodeRequest' with the minimum fields required to make a request.
newStopNodeRequest ::
  StopNodeRequest
newStopNodeRequest = StopNodeRequest

instance Core.FromJSON StopNodeRequest where
  parseJSON =
    Core.withObject
      "StopNodeRequest"
      (\o -> Core.pure StopNodeRequest)

instance Core.ToJSON StopNodeRequest where
  toJSON = Core.const Core.emptyObject

-- | A Symptom instance.
--
-- /See:/ 'newSymptom' smart constructor.
data Symptom = Symptom
  { -- | Timestamp when the Symptom is created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Detailed information of the current Symptom.
    details :: (Core.Maybe Core.Text),
    -- | Type of the Symptom.
    symptomType :: (Core.Maybe Symptom_SymptomType),
    -- | A string used to uniquely distinguish a worker within a TPU node.
    workerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Symptom' with the minimum fields required to make a request.
newSymptom ::
  Symptom
newSymptom =
  Symptom
    { createTime = Core.Nothing,
      details = Core.Nothing,
      symptomType = Core.Nothing,
      workerId = Core.Nothing
    }

instance Core.FromJSON Symptom where
  parseJSON =
    Core.withObject
      "Symptom"
      ( \o ->
          Symptom
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "symptomType")
            Core.<*> (o Core..:? "workerId")
      )

instance Core.ToJSON Symptom where
  toJSON Symptom {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("details" Core..=) Core.<$> details,
            ("symptomType" Core..=) Core.<$> symptomType,
            ("workerId" Core..=) Core.<$> workerId
          ]
      )

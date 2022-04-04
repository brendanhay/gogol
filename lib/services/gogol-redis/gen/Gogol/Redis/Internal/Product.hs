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
-- Module      : Gogol.Redis.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Redis.Internal.Product
  ( -- * Empty
    Empty (..),
    newEmpty,

    -- * ExportInstanceRequest
    ExportInstanceRequest (..),
    newExportInstanceRequest,

    -- * FailoverInstanceRequest
    FailoverInstanceRequest (..),
    newFailoverInstanceRequest,

    -- * GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- * GcsSource
    GcsSource (..),
    newGcsSource,

    -- * GoogleCloudRedisV1LocationMetadata
    GoogleCloudRedisV1LocationMetadata (..),
    newGoogleCloudRedisV1LocationMetadata,

    -- * GoogleCloudRedisV1LocationMetadata_AvailableZones
    GoogleCloudRedisV1LocationMetadata_AvailableZones (..),
    newGoogleCloudRedisV1LocationMetadata_AvailableZones,

    -- * GoogleCloudRedisV1OperationMetadata
    GoogleCloudRedisV1OperationMetadata (..),
    newGoogleCloudRedisV1OperationMetadata,

    -- * GoogleCloudRedisV1ZoneMetadata
    GoogleCloudRedisV1ZoneMetadata (..),
    newGoogleCloudRedisV1ZoneMetadata,

    -- * ImportInstanceRequest
    ImportInstanceRequest (..),
    newImportInstanceRequest,

    -- * InputConfig
    InputConfig (..),
    newInputConfig,

    -- * Instance
    Instance (..),
    newInstance,

    -- * Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- * Instance_RedisConfigs
    Instance_RedisConfigs (..),
    newInstance_RedisConfigs,

    -- * InstanceAuthString
    InstanceAuthString (..),
    newInstanceAuthString,

    -- * ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- * ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * Location
    Location (..),
    newLocation,

    -- * Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- * Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- * MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- * MaintenanceSchedule
    MaintenanceSchedule (..),
    newMaintenanceSchedule,

    -- * NodeInfo
    NodeInfo (..),
    newNodeInfo,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- * PersistenceConfig
    PersistenceConfig (..),
    newPersistenceConfig,

    -- * RescheduleMaintenanceRequest
    RescheduleMaintenanceRequest (..),
    newRescheduleMaintenanceRequest,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- * TlsCertificate
    TlsCertificate (..),
    newTlsCertificate,

    -- * UpgradeInstanceRequest
    UpgradeInstanceRequest (..),
    newUpgradeInstanceRequest,

    -- * WeeklyMaintenanceWindow
    WeeklyMaintenanceWindow (..),
    newWeeklyMaintenanceWindow,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Redis.Internal.Sum

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

-- | Request for Export.
--
-- /See:/ 'newExportInstanceRequest' smart constructor.
newtype ExportInstanceRequest = ExportInstanceRequest
  { -- | Required. Specify data to be exported.
    outputConfig :: (Core.Maybe OutputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExportInstanceRequest' with the minimum fields required to make a request.
newExportInstanceRequest ::
  ExportInstanceRequest
newExportInstanceRequest = ExportInstanceRequest {outputConfig = Core.Nothing}

instance Core.FromJSON ExportInstanceRequest where
  parseJSON =
    Core.withObject
      "ExportInstanceRequest"
      ( \o ->
          ExportInstanceRequest
            Core.<$> (o Core..:? "outputConfig")
      )

instance Core.ToJSON ExportInstanceRequest where
  toJSON ExportInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("outputConfig" Core..=) Core.<$> outputConfig]
      )

-- | Request for Failover.
--
-- /See:/ 'newFailoverInstanceRequest' smart constructor.
newtype FailoverInstanceRequest = FailoverInstanceRequest
  { -- | Optional. Available data protection modes that the user can choose. If it\'s unspecified, data protection mode will be LIMITED/DATA/LOSS by default.
    dataProtectionMode :: (Core.Maybe FailoverInstanceRequest_DataProtectionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailoverInstanceRequest' with the minimum fields required to make a request.
newFailoverInstanceRequest ::
  FailoverInstanceRequest
newFailoverInstanceRequest =
  FailoverInstanceRequest {dataProtectionMode = Core.Nothing}

instance Core.FromJSON FailoverInstanceRequest where
  parseJSON =
    Core.withObject
      "FailoverInstanceRequest"
      ( \o ->
          FailoverInstanceRequest
            Core.<$> (o Core..:? "dataProtectionMode")
      )

instance Core.ToJSON FailoverInstanceRequest where
  toJSON FailoverInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("dataProtectionMode" Core..=)
              Core.<$> dataProtectionMode
          ]
      )

-- | The Cloud Storage location for the output content
--
-- /See:/ 'newGcsDestination' smart constructor.
newtype GcsDestination = GcsDestination
  { -- | Required. Data destination URI (e.g. \'gs:\/\/my/bucket\/my/object\'). Existing files will be overwritten.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsDestination' with the minimum fields required to make a request.
newGcsDestination ::
  GcsDestination
newGcsDestination = GcsDestination {uri = Core.Nothing}

instance Core.FromJSON GcsDestination where
  parseJSON =
    Core.withObject
      "GcsDestination"
      (\o -> GcsDestination Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsDestination where
  toJSON GcsDestination {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | The Cloud Storage location for the input content
--
-- /See:/ 'newGcsSource' smart constructor.
newtype GcsSource = GcsSource
  { -- | Required. Source data URI. (e.g. \'gs:\/\/my/bucket\/my/object\').
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GcsSource' with the minimum fields required to make a request.
newGcsSource ::
  GcsSource
newGcsSource = GcsSource {uri = Core.Nothing}

instance Core.FromJSON GcsSource where
  parseJSON =
    Core.withObject
      "GcsSource"
      (\o -> GcsSource Core.<$> (o Core..:? "uri"))

instance Core.ToJSON GcsSource where
  toJSON GcsSource {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | This location metadata represents additional configuration options for a given location where a Redis instance may be created. All fields are output only. It is returned as content of the @google.cloud.location.Location.metadata@ field.
--
-- /See:/ 'newGoogleCloudRedisV1LocationMetadata' smart constructor.
newtype GoogleCloudRedisV1LocationMetadata = GoogleCloudRedisV1LocationMetadata
  { -- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
    availableZones :: (Core.Maybe GoogleCloudRedisV1LocationMetadata_AvailableZones)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1LocationMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1LocationMetadata ::
  GoogleCloudRedisV1LocationMetadata
newGoogleCloudRedisV1LocationMetadata =
  GoogleCloudRedisV1LocationMetadata {availableZones = Core.Nothing}

instance
  Core.FromJSON
    GoogleCloudRedisV1LocationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1LocationMetadata"
      ( \o ->
          GoogleCloudRedisV1LocationMetadata
            Core.<$> (o Core..:? "availableZones")
      )

instance
  Core.ToJSON
    GoogleCloudRedisV1LocationMetadata
  where
  toJSON GoogleCloudRedisV1LocationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [("availableZones" Core..=) Core.<$> availableZones]
      )

-- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by GCE. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
--
-- /See:/ 'newGoogleCloudRedisV1LocationMetadata_AvailableZones' smart constructor.
newtype GoogleCloudRedisV1LocationMetadata_AvailableZones = GoogleCloudRedisV1LocationMetadata_AvailableZones
  { -- |
    additional :: (Core.HashMap Core.Text GoogleCloudRedisV1ZoneMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1LocationMetadata_AvailableZones' with the minimum fields required to make a request.
newGoogleCloudRedisV1LocationMetadata_AvailableZones ::
  -- |  See 'additional'.
  Core.HashMap Core.Text GoogleCloudRedisV1ZoneMetadata ->
  GoogleCloudRedisV1LocationMetadata_AvailableZones
newGoogleCloudRedisV1LocationMetadata_AvailableZones additional =
  GoogleCloudRedisV1LocationMetadata_AvailableZones {additional = additional}

instance
  Core.FromJSON
    GoogleCloudRedisV1LocationMetadata_AvailableZones
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1LocationMetadata_AvailableZones"
      ( \o ->
          GoogleCloudRedisV1LocationMetadata_AvailableZones
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudRedisV1LocationMetadata_AvailableZones
  where
  toJSON
    GoogleCloudRedisV1LocationMetadata_AvailableZones {..} =
      Core.toJSON additional

-- | Represents the v1 metadata of the long-running operation.
--
-- /See:/ 'newGoogleCloudRedisV1OperationMetadata' smart constructor.
data GoogleCloudRedisV1OperationMetadata = GoogleCloudRedisV1OperationMetadata
  { -- | API version.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Specifies if cancellation was requested for the operation.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | Creation timestamp.
    createTime :: (Core.Maybe Core.DateTime),
    -- | End timestamp.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Operation status details.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Operation target.
    target :: (Core.Maybe Core.Text),
    -- | Operation verb.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1OperationMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1OperationMetadata ::
  GoogleCloudRedisV1OperationMetadata
newGoogleCloudRedisV1OperationMetadata =
  GoogleCloudRedisV1OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudRedisV1OperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1OperationMetadata"
      ( \o ->
          GoogleCloudRedisV1OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance
  Core.ToJSON
    GoogleCloudRedisV1OperationMetadata
  where
  toJSON GoogleCloudRedisV1OperationMetadata {..} =
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

-- | Defines specific information for a particular zone. Currently empty and reserved for future use only.
--
-- /See:/ 'newGoogleCloudRedisV1ZoneMetadata' smart constructor.
data GoogleCloudRedisV1ZoneMetadata = GoogleCloudRedisV1ZoneMetadata
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudRedisV1ZoneMetadata' with the minimum fields required to make a request.
newGoogleCloudRedisV1ZoneMetadata ::
  GoogleCloudRedisV1ZoneMetadata
newGoogleCloudRedisV1ZoneMetadata = GoogleCloudRedisV1ZoneMetadata

instance Core.FromJSON GoogleCloudRedisV1ZoneMetadata where
  parseJSON =
    Core.withObject
      "GoogleCloudRedisV1ZoneMetadata"
      (\o -> Core.pure GoogleCloudRedisV1ZoneMetadata)

instance Core.ToJSON GoogleCloudRedisV1ZoneMetadata where
  toJSON = Core.const Core.emptyObject

-- | Request for Import.
--
-- /See:/ 'newImportInstanceRequest' smart constructor.
newtype ImportInstanceRequest = ImportInstanceRequest
  { -- | Required. Specify data to be imported.
    inputConfig :: (Core.Maybe InputConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImportInstanceRequest' with the minimum fields required to make a request.
newImportInstanceRequest ::
  ImportInstanceRequest
newImportInstanceRequest = ImportInstanceRequest {inputConfig = Core.Nothing}

instance Core.FromJSON ImportInstanceRequest where
  parseJSON =
    Core.withObject
      "ImportInstanceRequest"
      ( \o ->
          ImportInstanceRequest
            Core.<$> (o Core..:? "inputConfig")
      )

instance Core.ToJSON ImportInstanceRequest where
  toJSON ImportInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("inputConfig" Core..=) Core.<$> inputConfig]
      )

-- | The input content
--
-- /See:/ 'newInputConfig' smart constructor.
newtype InputConfig = InputConfig
  { -- | Google Cloud Storage location where input content is located.
    gcsSource :: (Core.Maybe GcsSource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InputConfig' with the minimum fields required to make a request.
newInputConfig ::
  InputConfig
newInputConfig = InputConfig {gcsSource = Core.Nothing}

instance Core.FromJSON InputConfig where
  parseJSON =
    Core.withObject
      "InputConfig"
      ( \o ->
          InputConfig Core.<$> (o Core..:? "gcsSource")
      )

instance Core.ToJSON InputConfig where
  toJSON InputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsSource" Core..=) Core.<$> gcsSource]
      )

-- | A Memorystore for Redis instance.
--
-- /See:/ 'newInstance' smart constructor.
data Instance = Instance
  { -- | Optional. If specified, at least one node will be provisioned in this zone in addition to the zone specified in location/id. Only applicable to standard tier. If provided, it must be a different zone from the one provided in [location/id]. Additional nodes beyond the first 2 will be placed in zones selected by the service.
    alternativeLocationId :: (Core.Maybe Core.Text),
    -- | Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set to \"true\" AUTH is enabled on the instance. Default value is \"false\" meaning AUTH is disabled.
    authEnabled :: (Core.Maybe Core.Bool),
    -- | Optional. The full name of the Google Compute Engine <https://cloud.google.com/vpc/docs/vpc network> to which the instance is connected. If left unspecified, the @default@ network will be used.
    authorizedNetwork :: (Core.Maybe Core.Text),
    -- | Optional. The network connect mode of the Redis instance. If not provided, the connect mode defaults to DIRECT_PEERING.
    connectMode :: (Core.Maybe Instance_ConnectMode),
    -- | Output only. The time the instance was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The current zone where the Redis primary node is located. In basic tier, this will always be the same as [location_id]. In standard tier, this can be the zone of any node in the instance.
    currentLocationId :: (Core.Maybe Core.Text),
    -- | An arbitrary and optional user-provided name for the instance.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Hostname or IP address of the exposed Redis endpoint used by clients to connect to the service.
    host :: (Core.Maybe Core.Text),
    -- | Resource labels to represent user provided metadata
    labels :: (Core.Maybe Instance_Labels),
    -- | Optional. The zone where the instance will be provisioned. If not provided, the service will choose a zone from the specified region for the instance. For standard tier, additional nodes will be added across multiple zones for protection against zonal failures. If specified, at least one node will be provisioned in this zone.
    locationId :: (Core.Maybe Core.Text),
    -- | Optional. The maintenance policy for the instance. If not provided, maintenance events can be performed at any time.
    maintenancePolicy :: (Core.Maybe MaintenancePolicy),
    -- | Output only. Date and time of upcoming maintenance events which have been scheduled.
    maintenanceSchedule :: (Core.Maybe MaintenanceSchedule),
    -- | Required. Redis memory size in GiB.
    memorySizeGb :: (Core.Maybe Core.Int32),
    -- | Required. Unique name of the resource in this scope including project and location using the form: @projects\/{project_id}\/locations\/{location_id}\/instances\/{instance_id}@ Note: Redis instances are managed and addressed at regional level so location/id here refers to a GCP region; however, users may choose which specific zone (or collection of zones for cross-zone instances) an instance should be provisioned in. Refer to location/id and alternative/location/id fields for more details.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Info per node.
    nodes :: (Core.Maybe [NodeInfo]),
    -- | Optional. Persistence configuration parameters
    persistenceConfig :: (Core.Maybe PersistenceConfig),
    -- | Output only. Cloud IAM identity used by import \/ export operations to transfer data to\/from Cloud Storage. Format is \"serviceAccount:\". The value may change over time for a given instance so should be checked before each import\/export operation.
    persistenceIamIdentity :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed Redis endpoint.
    port :: (Core.Maybe Core.Int32),
    -- | Output only. Hostname or IP address of the exposed readonly Redis endpoint. Standard tier only. Targets all healthy replica nodes in instance. Replication is asynchronous and replica nodes will exhibit some lag behind the primary. Write requests must target \'host\'.
    readEndpoint :: (Core.Maybe Core.Text),
    -- | Output only. The port number of the exposed readonly redis endpoint. Standard tier only. Write requests should target \'port\'.
    readEndpointPort :: (Core.Maybe Core.Int32),
    -- | Optional. Read replicas mode for the instance. Defaults to READ/REPLICAS/DISABLED.
    readReplicasMode :: (Core.Maybe Instance_ReadReplicasMode),
    -- | Optional. Redis configuration parameters, according to http:\/\/redis.io\/topics\/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
    redisConfigs :: (Core.Maybe Instance_RedisConfigs),
    -- | Optional. The version of Redis software. If not provided, latest supported version will be used. Currently, the supported values are: * @REDIS_3_2@ for Redis 3.2 compatibility * @REDIS_4_0@ for Redis 4.0 compatibility (default) * @REDIS_5_0@ for Redis 5.0 compatibility * @REDIS_6_X@ for Redis 6.x compatibility
    redisVersion :: (Core.Maybe Core.Text),
    -- | Optional. The number of replica nodes. The valid range for the Standard Tier with read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled for a Standard Tier instance, the only valid value is 1 and the default is 1. The valid value for basic tier is 0 and the default is also 0.
    replicaCount :: (Core.Maybe Core.Int32),
    -- | Optional. For DIRECT/PEERING mode, the CIDR range of internal addresses that are reserved for this instance. Range must be unique and non-overlapping with existing subnets in an authorized network. For PRIVATE/SERVICE/ACCESS mode, the name of one allocated IP address ranges associated with this private service access connection. If not provided, the service will choose an unused \/29 block, for example, 10.0.0.0\/29 or 192.168.0.0\/29. For READ/REPLICAS_ENABLED the default block size is \/28.
    reservedIpRange :: (Core.Maybe Core.Text),
    -- | Optional. Additional IP range for node placement. Required when enabling read replicas on an existing instance. For DIRECT/PEERING mode value must be a CIDR range of size \/28, or \"auto\". For PRIVATE/SERVICE_ACCESS mode value must be the name of an allocated address range associated with the private service access connection, or \"auto\".
    secondaryIpRange :: (Core.Maybe Core.Text),
    -- | Output only. List of server CA certificates for the instance.
    serverCaCerts :: (Core.Maybe [TlsCertificate]),
    -- | Output only. The current state of this instance.
    state :: (Core.Maybe Instance_State),
    -- | Output only. Additional information about the current status of this instance, if available.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Required. The service tier of the instance.
    tier :: (Core.Maybe Instance_Tier),
    -- | Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled for the instance.
    transitEncryptionMode :: (Core.Maybe Instance_TransitEncryptionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance' with the minimum fields required to make a request.
newInstance ::
  Instance
newInstance =
  Instance
    { alternativeLocationId = Core.Nothing,
      authEnabled = Core.Nothing,
      authorizedNetwork = Core.Nothing,
      connectMode = Core.Nothing,
      createTime = Core.Nothing,
      currentLocationId = Core.Nothing,
      displayName = Core.Nothing,
      host = Core.Nothing,
      labels = Core.Nothing,
      locationId = Core.Nothing,
      maintenancePolicy = Core.Nothing,
      maintenanceSchedule = Core.Nothing,
      memorySizeGb = Core.Nothing,
      name = Core.Nothing,
      nodes = Core.Nothing,
      persistenceConfig = Core.Nothing,
      persistenceIamIdentity = Core.Nothing,
      port = Core.Nothing,
      readEndpoint = Core.Nothing,
      readEndpointPort = Core.Nothing,
      readReplicasMode = Core.Nothing,
      redisConfigs = Core.Nothing,
      redisVersion = Core.Nothing,
      replicaCount = Core.Nothing,
      reservedIpRange = Core.Nothing,
      secondaryIpRange = Core.Nothing,
      serverCaCerts = Core.Nothing,
      state = Core.Nothing,
      statusMessage = Core.Nothing,
      tier = Core.Nothing,
      transitEncryptionMode = Core.Nothing
    }

instance Core.FromJSON Instance where
  parseJSON =
    Core.withObject
      "Instance"
      ( \o ->
          Instance
            Core.<$> (o Core..:? "alternativeLocationId")
            Core.<*> (o Core..:? "authEnabled")
            Core.<*> (o Core..:? "authorizedNetwork")
            Core.<*> (o Core..:? "connectMode")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "currentLocationId")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "locationId")
            Core.<*> (o Core..:? "maintenancePolicy")
            Core.<*> (o Core..:? "maintenanceSchedule")
            Core.<*> (o Core..:? "memorySizeGb")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "nodes" Core..!= Core.mempty)
            Core.<*> (o Core..:? "persistenceConfig")
            Core.<*> (o Core..:? "persistenceIamIdentity")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "readEndpoint")
            Core.<*> (o Core..:? "readEndpointPort")
            Core.<*> (o Core..:? "readReplicasMode")
            Core.<*> (o Core..:? "redisConfigs")
            Core.<*> (o Core..:? "redisVersion")
            Core.<*> (o Core..:? "replicaCount")
            Core.<*> (o Core..:? "reservedIpRange")
            Core.<*> (o Core..:? "secondaryIpRange")
            Core.<*> (o Core..:? "serverCaCerts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "tier")
            Core.<*> (o Core..:? "transitEncryptionMode")
      )

instance Core.ToJSON Instance where
  toJSON Instance {..} =
    Core.object
      ( Core.catMaybes
          [ ("alternativeLocationId" Core..=)
              Core.<$> alternativeLocationId,
            ("authEnabled" Core..=) Core.<$> authEnabled,
            ("authorizedNetwork" Core..=)
              Core.<$> authorizedNetwork,
            ("connectMode" Core..=) Core.<$> connectMode,
            ("createTime" Core..=) Core.<$> createTime,
            ("currentLocationId" Core..=)
              Core.<$> currentLocationId,
            ("displayName" Core..=) Core.<$> displayName,
            ("host" Core..=) Core.<$> host,
            ("labels" Core..=) Core.<$> labels,
            ("locationId" Core..=) Core.<$> locationId,
            ("maintenancePolicy" Core..=)
              Core.<$> maintenancePolicy,
            ("maintenanceSchedule" Core..=)
              Core.<$> maintenanceSchedule,
            ("memorySizeGb" Core..=) Core.<$> memorySizeGb,
            ("name" Core..=) Core.<$> name,
            ("nodes" Core..=) Core.<$> nodes,
            ("persistenceConfig" Core..=)
              Core.<$> persistenceConfig,
            ("persistenceIamIdentity" Core..=)
              Core.<$> persistenceIamIdentity,
            ("port" Core..=) Core.<$> port,
            ("readEndpoint" Core..=) Core.<$> readEndpoint,
            ("readEndpointPort" Core..=)
              Core.<$> readEndpointPort,
            ("readReplicasMode" Core..=)
              Core.<$> readReplicasMode,
            ("redisConfigs" Core..=) Core.<$> redisConfigs,
            ("redisVersion" Core..=) Core.<$> redisVersion,
            ("replicaCount" Core..=) Core.<$> replicaCount,
            ("reservedIpRange" Core..=) Core.<$> reservedIpRange,
            ("secondaryIpRange" Core..=)
              Core.<$> secondaryIpRange,
            ("serverCaCerts" Core..=) Core.<$> serverCaCerts,
            ("state" Core..=) Core.<$> state,
            ("statusMessage" Core..=) Core.<$> statusMessage,
            ("tier" Core..=) Core.<$> tier,
            ("transitEncryptionMode" Core..=)
              Core.<$> transitEncryptionMode
          ]
      )

-- | Resource labels to represent user provided metadata
--
-- /See:/ 'newInstance_Labels' smart constructor.
newtype Instance_Labels = Instance_Labels
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_Labels' with the minimum fields required to make a request.
newInstance_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_Labels
newInstance_Labels additional = Instance_Labels {additional = additional}

instance Core.FromJSON Instance_Labels where
  parseJSON =
    Core.withObject
      "Instance_Labels"
      ( \o ->
          Instance_Labels Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Instance_Labels where
  toJSON Instance_Labels {..} = Core.toJSON additional

-- | Optional. Redis configuration parameters, according to http:\/\/redis.io\/topics\/config. Currently, the only supported parameters are: Redis version 3.2 and newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer: * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
--
-- /See:/ 'newInstance_RedisConfigs' smart constructor.
newtype Instance_RedisConfigs = Instance_RedisConfigs
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Instance_RedisConfigs' with the minimum fields required to make a request.
newInstance_RedisConfigs ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Instance_RedisConfigs
newInstance_RedisConfigs additional =
  Instance_RedisConfigs {additional = additional}

instance Core.FromJSON Instance_RedisConfigs where
  parseJSON =
    Core.withObject
      "Instance_RedisConfigs"
      ( \o ->
          Instance_RedisConfigs
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Instance_RedisConfigs where
  toJSON Instance_RedisConfigs {..} =
    Core.toJSON additional

-- | Instance AUTH string details.
--
-- /See:/ 'newInstanceAuthString' smart constructor.
newtype InstanceAuthString = InstanceAuthString
  { -- | AUTH string set on the instance.
    authString :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InstanceAuthString' with the minimum fields required to make a request.
newInstanceAuthString ::
  InstanceAuthString
newInstanceAuthString = InstanceAuthString {authString = Core.Nothing}

instance Core.FromJSON InstanceAuthString where
  parseJSON =
    Core.withObject
      "InstanceAuthString"
      ( \o ->
          InstanceAuthString
            Core.<$> (o Core..:? "authString")
      )

instance Core.ToJSON InstanceAuthString where
  toJSON InstanceAuthString {..} =
    Core.object
      ( Core.catMaybes
          [("authString" Core..=) Core.<$> authString]
      )

-- | Response for ListInstances.
--
-- /See:/ 'newListInstancesResponse' smart constructor.
data ListInstancesResponse = ListInstancesResponse
  { -- | A list of Redis instances in the project in the specified location, or across all locations. If the @location_id@ in the parent field of the request is \"-\", all regions available to the project are queried, and the results aggregated. If in such an aggregated query a location is unavailable, a placeholder Redis entry is included in the response with the @name@ field set to a value of the form @projects\/{project_id}\/locations\/{location_id}\/instances\/@- and the @status@ field set to ERROR and @status_message@ field set to \"location not available for ListInstances\".
    instances :: (Core.Maybe [Instance]),
    -- | Token to retrieve the next page of results, or empty if there are no more results in the list.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | Locations that could not be reached.
    unreachable :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListInstancesResponse' with the minimum fields required to make a request.
newListInstancesResponse ::
  ListInstancesResponse
newListInstancesResponse =
  ListInstancesResponse
    { instances = Core.Nothing,
      nextPageToken = Core.Nothing,
      unreachable = Core.Nothing
    }

instance Core.FromJSON ListInstancesResponse where
  parseJSON =
    Core.withObject
      "ListInstancesResponse"
      ( \o ->
          ListInstancesResponse
            Core.<$> (o Core..:? "instances" Core..!= Core.mempty)
            Core.<*> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "unreachable" Core..!= Core.mempty)
      )

instance Core.ToJSON ListInstancesResponse where
  toJSON ListInstancesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("instances" Core..=) Core.<$> instances,
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

-- | A resource that represents Google Cloud Platform location.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location
  { -- | The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".
    displayName :: (Core.Maybe Core.Text),
    -- | Cross-service attributes for the location. For example {\"cloud.googleapis.com\/region\": \"us-east1\"}
    labels :: (Core.Maybe Location_Labels),
    -- | Resource ID for the region. For example: \"us-east1\".
    locationId :: (Core.Maybe Core.Text),
    -- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
    metadata :: (Core.Maybe Location_Metadata),
    -- | Full resource name for the region. For example: \"projects\/example-project\/locations\/us-east1\".
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

-- | Output only. The set of available zones in the location. The map is keyed by the lowercase ID of each zone, as defined by Compute Engine. These keys can be specified in @location_id@ or @alternative_location_id@ fields when creating a Redis instance.
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

-- | Maintenance policy for an instance.
--
-- /See:/ 'newMaintenancePolicy' smart constructor.
data MaintenancePolicy = MaintenancePolicy
  { -- | Output only. The time when the policy was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Description of what this policy is for. Create\/Update methods return INVALID_ARGUMENT if the length is greater than 512.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The time when the policy was last updated.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Maintenance window that is applied to resources covered by this policy. Minimum 1. For the current version, the maximum number of weekly_window is expected to be one.
    weeklyMaintenanceWindow :: (Core.Maybe [WeeklyMaintenanceWindow])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenancePolicy' with the minimum fields required to make a request.
newMaintenancePolicy ::
  MaintenancePolicy
newMaintenancePolicy =
  MaintenancePolicy
    { createTime = Core.Nothing,
      description = Core.Nothing,
      updateTime = Core.Nothing,
      weeklyMaintenanceWindow = Core.Nothing
    }

instance Core.FromJSON MaintenancePolicy where
  parseJSON =
    Core.withObject
      "MaintenancePolicy"
      ( \o ->
          MaintenancePolicy
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> ( o Core..:? "weeklyMaintenanceWindow"
                         Core..!= Core.mempty
                     )
      )

instance Core.ToJSON MaintenancePolicy where
  toJSON MaintenancePolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("weeklyMaintenanceWindow" Core..=)
              Core.<$> weeklyMaintenanceWindow
          ]
      )

-- | Upcoming maintenance schedule. If no maintenance is scheduled, fields are not populated.
--
-- /See:/ 'newMaintenanceSchedule' smart constructor.
data MaintenanceSchedule = MaintenanceSchedule
  { -- | If the scheduled maintenance can be rescheduled, default is true.
    canReschedule :: (Core.Maybe Core.Bool),
    -- | Output only. The end time of any upcoming scheduled maintenance for this instance.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The deadline that the maintenance schedule start time can not go beyond, including reschedule.
    scheduleDeadlineTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The start time of any upcoming scheduled maintenance for this instance.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceSchedule' with the minimum fields required to make a request.
newMaintenanceSchedule ::
  MaintenanceSchedule
newMaintenanceSchedule =
  MaintenanceSchedule
    { canReschedule = Core.Nothing,
      endTime = Core.Nothing,
      scheduleDeadlineTime = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON MaintenanceSchedule where
  parseJSON =
    Core.withObject
      "MaintenanceSchedule"
      ( \o ->
          MaintenanceSchedule
            Core.<$> (o Core..:? "canReschedule")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "scheduleDeadlineTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON MaintenanceSchedule where
  toJSON MaintenanceSchedule {..} =
    Core.object
      ( Core.catMaybes
          [ ("canReschedule" Core..=) Core.<$> canReschedule,
            ("endTime" Core..=) Core.<$> endTime,
            ("scheduleDeadlineTime" Core..=)
              Core.<$> scheduleDeadlineTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Node specific properties.
--
-- /See:/ 'newNodeInfo' smart constructor.
data NodeInfo = NodeInfo
  { -- | Output only. Node identifying string. e.g. \'node-0\', \'node-1\'
    id :: (Core.Maybe Core.Text),
    -- | Output only. Location of the node.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeInfo' with the minimum fields required to make a request.
newNodeInfo ::
  NodeInfo
newNodeInfo = NodeInfo {id = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON NodeInfo where
  parseJSON =
    Core.withObject
      "NodeInfo"
      ( \o ->
          NodeInfo
            Core.<$> (o Core..:? "id") Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON NodeInfo where
  toJSON NodeInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | { @createTime@: The time the operation was created. @endTime@: The time the operation finished running. @target@: Server-defined resource path for the target of the operation. @verb@: Name of the verb executed by the operation. @statusDetail@: Human-readable status of the operation, if any. @cancelRequested@: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@. @apiVersion@: API version used to start the operation. }
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

-- | { @createTime@: The time the operation was created. @endTime@: The time the operation finished running. @target@: Server-defined resource path for the target of the operation. @verb@: Name of the verb executed by the operation. @statusDetail@: Human-readable status of the operation, if any. @cancelRequested@: Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@. @apiVersion@: API version used to start the operation. }
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

-- | The output content
--
-- /See:/ 'newOutputConfig' smart constructor.
newtype OutputConfig = OutputConfig
  { -- | Google Cloud Storage destination for output content.
    gcsDestination :: (Core.Maybe GcsDestination)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OutputConfig' with the minimum fields required to make a request.
newOutputConfig ::
  OutputConfig
newOutputConfig = OutputConfig {gcsDestination = Core.Nothing}

instance Core.FromJSON OutputConfig where
  parseJSON =
    Core.withObject
      "OutputConfig"
      ( \o ->
          OutputConfig Core.<$> (o Core..:? "gcsDestination")
      )

instance Core.ToJSON OutputConfig where
  toJSON OutputConfig {..} =
    Core.object
      ( Core.catMaybes
          [("gcsDestination" Core..=) Core.<$> gcsDestination]
      )

-- | Configuration of the persistence functionality.
--
-- /See:/ 'newPersistenceConfig' smart constructor.
data PersistenceConfig = PersistenceConfig
  { -- | Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
    persistenceMode :: (Core.Maybe PersistenceConfig_PersistenceMode),
    -- | Output only. The next time that a snapshot attempt is scheduled to occur.
    rdbNextSnapshotTime :: (Core.Maybe Core.DateTime),
    -- | Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01\/01\/2033 06:45 and SIX/HOURS snapshot period will do nothing until 01\/01\/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY/FOUR_HOURS will be used as default.
    rdbSnapshotPeriod :: (Core.Maybe PersistenceConfig_RdbSnapshotPeriod),
    -- | Optional. Date and time that the first snapshot was\/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
    rdbSnapshotStartTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PersistenceConfig' with the minimum fields required to make a request.
newPersistenceConfig ::
  PersistenceConfig
newPersistenceConfig =
  PersistenceConfig
    { persistenceMode = Core.Nothing,
      rdbNextSnapshotTime = Core.Nothing,
      rdbSnapshotPeriod = Core.Nothing,
      rdbSnapshotStartTime = Core.Nothing
    }

instance Core.FromJSON PersistenceConfig where
  parseJSON =
    Core.withObject
      "PersistenceConfig"
      ( \o ->
          PersistenceConfig
            Core.<$> (o Core..:? "persistenceMode")
            Core.<*> (o Core..:? "rdbNextSnapshotTime")
            Core.<*> (o Core..:? "rdbSnapshotPeriod")
            Core.<*> (o Core..:? "rdbSnapshotStartTime")
      )

instance Core.ToJSON PersistenceConfig where
  toJSON PersistenceConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("persistenceMode" Core..=)
              Core.<$> persistenceMode,
            ("rdbNextSnapshotTime" Core..=)
              Core.<$> rdbNextSnapshotTime,
            ("rdbSnapshotPeriod" Core..=)
              Core.<$> rdbSnapshotPeriod,
            ("rdbSnapshotStartTime" Core..=)
              Core.<$> rdbSnapshotStartTime
          ]
      )

-- | Request for RescheduleMaintenance.
--
-- /See:/ 'newRescheduleMaintenanceRequest' smart constructor.
data RescheduleMaintenanceRequest = RescheduleMaintenanceRequest
  { -- | Required. If reschedule type is SPECIFIC/TIME, must set up schedule/time as well.
    rescheduleType :: (Core.Maybe RescheduleMaintenanceRequest_RescheduleType),
    -- | Optional. Timestamp when the maintenance shall be rescheduled to if reschedule/type=SPECIFIC/TIME, in RFC 3339 format, for example @2012-11-15T16:19:00.094Z@.
    scheduleTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RescheduleMaintenanceRequest' with the minimum fields required to make a request.
newRescheduleMaintenanceRequest ::
  RescheduleMaintenanceRequest
newRescheduleMaintenanceRequest =
  RescheduleMaintenanceRequest
    { rescheduleType = Core.Nothing,
      scheduleTime = Core.Nothing
    }

instance Core.FromJSON RescheduleMaintenanceRequest where
  parseJSON =
    Core.withObject
      "RescheduleMaintenanceRequest"
      ( \o ->
          RescheduleMaintenanceRequest
            Core.<$> (o Core..:? "rescheduleType")
            Core.<*> (o Core..:? "scheduleTime")
      )

instance Core.ToJSON RescheduleMaintenanceRequest where
  toJSON RescheduleMaintenanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("rescheduleType" Core..=) Core.<$> rescheduleType,
            ("scheduleTime" Core..=) Core.<$> scheduleTime
          ]
      )

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

-- | Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and @google.protobuf.Timestamp@.
--
-- /See:/ 'newTimeOfDay' smart constructor.
data TimeOfDay' = TimeOfDay'
  { -- | Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.
    hours :: (Core.Maybe Core.Int32),
    -- | Minutes of hour of day. Must be from 0 to 59.
    minutes :: (Core.Maybe Core.Int32),
    -- | Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
    nanos :: (Core.Maybe Core.Int32),
    -- | Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
    seconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeOfDay' with the minimum fields required to make a request.
newTimeOfDay ::
  TimeOfDay'
newTimeOfDay =
  TimeOfDay'
    { hours = Core.Nothing,
      minutes = Core.Nothing,
      nanos = Core.Nothing,
      seconds = Core.Nothing
    }

instance Core.FromJSON TimeOfDay' where
  parseJSON =
    Core.withObject
      "TimeOfDay'"
      ( \o ->
          TimeOfDay'
            Core.<$> (o Core..:? "hours")
            Core.<*> (o Core..:? "minutes")
            Core.<*> (o Core..:? "nanos")
            Core.<*> (o Core..:? "seconds")
      )

instance Core.ToJSON TimeOfDay' where
  toJSON TimeOfDay' {..} =
    Core.object
      ( Core.catMaybes
          [ ("hours" Core..=) Core.<$> hours,
            ("minutes" Core..=) Core.<$> minutes,
            ("nanos" Core..=) Core.<$> nanos,
            ("seconds" Core..=) Core.<$> seconds
          ]
      )

-- | TlsCertificate Resource
--
-- /See:/ 'newTlsCertificate' smart constructor.
data TlsCertificate = TlsCertificate
  { -- | PEM representation.
    cert :: (Core.Maybe Core.Text),
    -- | Output only. The time when the certificate was created in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2020-05-18T00:00:00.094Z@.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time when the certificate expires in <https://tools.ietf.org/html/rfc3339 RFC 3339> format, for example @2020-05-18T00:00:00.094Z@.
    expireTime :: (Core.Maybe Core.DateTime),
    -- | Serial number, as extracted from the certificate.
    serialNumber :: (Core.Maybe Core.Text),
    -- | Sha1 Fingerprint of the certificate.
    sha1Fingerprint :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TlsCertificate' with the minimum fields required to make a request.
newTlsCertificate ::
  TlsCertificate
newTlsCertificate =
  TlsCertificate
    { cert = Core.Nothing,
      createTime = Core.Nothing,
      expireTime = Core.Nothing,
      serialNumber = Core.Nothing,
      sha1Fingerprint = Core.Nothing
    }

instance Core.FromJSON TlsCertificate where
  parseJSON =
    Core.withObject
      "TlsCertificate"
      ( \o ->
          TlsCertificate
            Core.<$> (o Core..:? "cert")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "expireTime")
            Core.<*> (o Core..:? "serialNumber")
            Core.<*> (o Core..:? "sha1Fingerprint")
      )

instance Core.ToJSON TlsCertificate where
  toJSON TlsCertificate {..} =
    Core.object
      ( Core.catMaybes
          [ ("cert" Core..=) Core.<$> cert,
            ("createTime" Core..=) Core.<$> createTime,
            ("expireTime" Core..=) Core.<$> expireTime,
            ("serialNumber" Core..=) Core.<$> serialNumber,
            ("sha1Fingerprint" Core..=)
              Core.<$> sha1Fingerprint
          ]
      )

-- | Request for UpgradeInstance.
--
-- /See:/ 'newUpgradeInstanceRequest' smart constructor.
newtype UpgradeInstanceRequest = UpgradeInstanceRequest
  { -- | Required. Specifies the target version of Redis software to upgrade to.
    redisVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpgradeInstanceRequest' with the minimum fields required to make a request.
newUpgradeInstanceRequest ::
  UpgradeInstanceRequest
newUpgradeInstanceRequest = UpgradeInstanceRequest {redisVersion = Core.Nothing}

instance Core.FromJSON UpgradeInstanceRequest where
  parseJSON =
    Core.withObject
      "UpgradeInstanceRequest"
      ( \o ->
          UpgradeInstanceRequest
            Core.<$> (o Core..:? "redisVersion")
      )

instance Core.ToJSON UpgradeInstanceRequest where
  toJSON UpgradeInstanceRequest {..} =
    Core.object
      ( Core.catMaybes
          [("redisVersion" Core..=) Core.<$> redisVersion]
      )

-- | Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
--
-- /See:/ 'newWeeklyMaintenanceWindow' smart constructor.
data WeeklyMaintenanceWindow = WeeklyMaintenanceWindow
  { -- | Required. The day of week that maintenance updates occur.
    day :: (Core.Maybe WeeklyMaintenanceWindow_Day),
    -- | Output only. Duration of the maintenance window. The current window is fixed at 1 hour.
    duration :: (Core.Maybe Core.Duration),
    -- | Required. Start time of the window in UTC time.
    startTime :: (Core.Maybe TimeOfDay')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WeeklyMaintenanceWindow' with the minimum fields required to make a request.
newWeeklyMaintenanceWindow ::
  WeeklyMaintenanceWindow
newWeeklyMaintenanceWindow =
  WeeklyMaintenanceWindow
    { day = Core.Nothing,
      duration = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON WeeklyMaintenanceWindow where
  parseJSON =
    Core.withObject
      "WeeklyMaintenanceWindow"
      ( \o ->
          WeeklyMaintenanceWindow
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "duration")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON WeeklyMaintenanceWindow where
  toJSON WeeklyMaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("duration" Core..=) Core.<$> duration,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

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
-- Module      : Network.Google.ReplicaPool.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ReplicaPool.Internal.Product
  ( -- * AccessConfig
    AccessConfig (..),
    newAccessConfig,

    -- * Action
    Action (..),
    newAction,

    -- * DiskAttachment
    DiskAttachment (..),
    newDiskAttachment,

    -- * EnvVariable
    EnvVariable (..),
    newEnvVariable,

    -- * ExistingDisk
    ExistingDisk (..),
    newExistingDisk,

    -- * HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- * Label
    Label (..),
    newLabel,

    -- * Metadata
    Metadata (..),
    newMetadata,

    -- * MetadataItem
    MetadataItem (..),
    newMetadataItem,

    -- * NetworkInterface
    NetworkInterface (..),
    newNetworkInterface,

    -- * NewDisk
    NewDisk (..),
    newNewDisk,

    -- * NewDiskInitializeParams
    NewDiskInitializeParams (..),
    newNewDiskInitializeParams,

    -- * Pool
    Pool (..),
    newPool,

    -- * PoolsDeleteRequest
    PoolsDeleteRequest (..),
    newPoolsDeleteRequest,

    -- * PoolsListResponse
    PoolsListResponse (..),
    newPoolsListResponse,

    -- * Replica
    Replica (..),
    newReplica,

    -- * ReplicaStatus
    ReplicaStatus (..),
    newReplicaStatus,

    -- * ReplicasDeleteRequest
    ReplicasDeleteRequest (..),
    newReplicasDeleteRequest,

    -- * ReplicasListResponse
    ReplicasListResponse (..),
    newReplicasListResponse,

    -- * ServiceAccount
    ServiceAccount (..),
    newServiceAccount,

    -- * Tag
    Tag (..),
    newTag,

    -- * Template
    Template (..),
    newTemplate,

    -- * VmParams
    VmParams (..),
    newVmParams,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.ReplicaPool.Internal.Sum

-- | A Compute Engine network accessConfig. Identical to the accessConfig on corresponding Compute Engine resource.
--
-- /See:/ 'newAccessConfig' smart constructor.
data AccessConfig = AccessConfig
  { -- | Name of this access configuration.
    name :: (Core.Maybe Core.Text),
    -- | An external IP address associated with this instance.
    natIp :: (Core.Maybe Core.Text),
    -- | Type of this access configuration file. Currently only ONE/TO/ONE_NAT is supported.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessConfig' with the minimum fields required to make a request.
newAccessConfig ::
  AccessConfig
newAccessConfig =
  AccessConfig {name = Core.Nothing, natIp = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON AccessConfig where
  parseJSON =
    Core.withObject
      "AccessConfig"
      ( \o ->
          AccessConfig
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "natIp")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON AccessConfig where
  toJSON AccessConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("natIp" Core..=) Core.<$> natIp,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | An action that gets executed during initialization of the replicas.
--
-- /See:/ 'newAction' smart constructor.
data Action = Action
  { -- | A list of commands to run, one per line. If any command fails, the whole action is considered a failure and no further actions are run. This also marks the virtual machine or replica as a failure.
    commands :: (Core.Maybe [Core.Text]),
    -- | A list of environment variables to use for the commands in this action.
    envVariables :: (Core.Maybe [EnvVariable]),
    -- | If an action\'s commands on a particular replica do not finish in the specified timeoutMilliSeconds, the replica is considered to be in a FAILING state. No efforts are made to stop any processes that were spawned or created as the result of running the action\'s commands. The default is the max allowed value, 1 hour (i.e. 3600000 milliseconds).
    timeoutMilliSeconds :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Action' with the minimum fields required to make a request.
newAction ::
  Action
newAction =
  Action
    { commands = Core.Nothing,
      envVariables = Core.Nothing,
      timeoutMilliSeconds = Core.Nothing
    }

instance Core.FromJSON Action where
  parseJSON =
    Core.withObject
      "Action"
      ( \o ->
          Action
            Core.<$> (o Core..:? "commands" Core..!= Core.mempty)
            Core.<*> (o Core..:? "envVariables" Core..!= Core.mempty)
            Core.<*> (o Core..:? "timeoutMilliSeconds")
      )

instance Core.ToJSON Action where
  toJSON Action {..} =
    Core.object
      ( Core.catMaybes
          [ ("commands" Core..=) Core.<$> commands,
            ("envVariables" Core..=) Core.<$> envVariables,
            ("timeoutMilliSeconds" Core..=)
              Core.<$> timeoutMilliSeconds
          ]
      )

-- | Specifies how to attach a disk to a Replica.
--
-- /See:/ 'newDiskAttachment' smart constructor.
data DiskAttachment = DiskAttachment
  { -- | The device name of this disk.
    deviceName :: (Core.Maybe Core.Text),
    -- | A zero-based index to assign to this disk, where 0 is reserved for the boot disk. If not specified, this is assigned by the server.
    index :: (Core.Maybe Core.Word32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DiskAttachment' with the minimum fields required to make a request.
newDiskAttachment ::
  DiskAttachment
newDiskAttachment =
  DiskAttachment {deviceName = Core.Nothing, index = Core.Nothing}

instance Core.FromJSON DiskAttachment where
  parseJSON =
    Core.withObject
      "DiskAttachment"
      ( \o ->
          DiskAttachment
            Core.<$> (o Core..:? "deviceName")
            Core.<*> (o Core..:? "index")
      )

instance Core.ToJSON DiskAttachment where
  toJSON DiskAttachment {..} =
    Core.object
      ( Core.catMaybes
          [ ("deviceName" Core..=) Core.<$> deviceName,
            ("index" Core..=) Core.<$> index
          ]
      )

-- | An environment variable to set for an action.
--
-- /See:/ 'newEnvVariable' smart constructor.
data EnvVariable = EnvVariable
  { -- | Deprecated, do not use.
    hidden :: (Core.Maybe Core.Bool),
    -- | The name of the environment variable.
    name :: (Core.Maybe Core.Text),
    -- | The value of the variable.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvVariable' with the minimum fields required to make a request.
newEnvVariable ::
  EnvVariable
newEnvVariable =
  EnvVariable {hidden = Core.Nothing, name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON EnvVariable where
  parseJSON =
    Core.withObject
      "EnvVariable"
      ( \o ->
          EnvVariable
            Core.<$> (o Core..:? "hidden")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON EnvVariable where
  toJSON EnvVariable {..} =
    Core.object
      ( Core.catMaybes
          [ ("hidden" Core..=) Core.<$> hidden,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A pre-existing persistent disk that will be attached to every Replica in the Pool in READ_ONLY mode.
--
-- /See:/ 'newExistingDisk' smart constructor.
data ExistingDisk = ExistingDisk
  { -- | How the disk will be attached to the Replica.
    attachment :: (Core.Maybe DiskAttachment),
    -- | The name of the Persistent Disk resource. The Persistent Disk resource must be in the same zone as the Pool.
    source :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExistingDisk' with the minimum fields required to make a request.
newExistingDisk ::
  ExistingDisk
newExistingDisk =
  ExistingDisk {attachment = Core.Nothing, source = Core.Nothing}

instance Core.FromJSON ExistingDisk where
  parseJSON =
    Core.withObject
      "ExistingDisk"
      ( \o ->
          ExistingDisk
            Core.<$> (o Core..:? "attachment")
            Core.<*> (o Core..:? "source")
      )

instance Core.ToJSON ExistingDisk where
  toJSON ExistingDisk {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachment" Core..=) Core.<$> attachment,
            ("source" Core..=) Core.<$> source
          ]
      )

--
-- /See:/ 'newHealthCheck' smart constructor.
data HealthCheck = HealthCheck
  { -- | How often (in seconds) to make HTTP requests for this healthcheck. The default value is 5 seconds.
    checkIntervalSec :: (Core.Maybe Core.Int32),
    -- | The description for this health check.
    description :: (Core.Maybe Core.Text),
    -- | The number of consecutive health check requests that need to succeed before the replica is considered healthy again. The default value is 2.
    healthyThreshold :: (Core.Maybe Core.Int32),
    -- | The value of the host header in the HTTP health check request. If left empty (default value), the localhost IP 127.0.0.1 will be used.
    host :: (Core.Maybe Core.Text),
    -- | The name of this health check.
    name :: (Core.Maybe Core.Text),
    -- | The localhost request path to send this health check, in the format \/path\/to\/use. For example, \/healthcheck.
    path :: (Core.Maybe Core.Text),
    -- | The TCP port for the health check requests.
    port :: (Core.Maybe Core.Int32),
    -- | How long (in seconds) to wait before a timeout failure for this healthcheck. The default value is 5 seconds.
    timeoutSec :: (Core.Maybe Core.Int32),
    -- | The number of consecutive health check requests that need to fail in order to consider the replica unhealthy. The default value is 2.
    unhealthyThreshold :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HealthCheck' with the minimum fields required to make a request.
newHealthCheck ::
  HealthCheck
newHealthCheck =
  HealthCheck
    { checkIntervalSec = Core.Nothing,
      description = Core.Nothing,
      healthyThreshold = Core.Nothing,
      host = Core.Nothing,
      name = Core.Nothing,
      path = Core.Nothing,
      port = Core.Nothing,
      timeoutSec = Core.Nothing,
      unhealthyThreshold = Core.Nothing
    }

instance Core.FromJSON HealthCheck where
  parseJSON =
    Core.withObject
      "HealthCheck"
      ( \o ->
          HealthCheck
            Core.<$> (o Core..:? "checkIntervalSec")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "healthyThreshold")
            Core.<*> (o Core..:? "host")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "timeoutSec")
            Core.<*> (o Core..:? "unhealthyThreshold")
      )

instance Core.ToJSON HealthCheck where
  toJSON HealthCheck {..} =
    Core.object
      ( Core.catMaybes
          [ ("checkIntervalSec" Core..=)
              Core.<$> checkIntervalSec,
            ("description" Core..=) Core.<$> description,
            ("healthyThreshold" Core..=)
              Core.<$> healthyThreshold,
            ("host" Core..=) Core.<$> host,
            ("name" Core..=) Core.<$> name,
            ("path" Core..=) Core.<$> path,
            ("port" Core..=) Core.<$> port,
            ("timeoutSec" Core..=) Core.<$> timeoutSec,
            ("unhealthyThreshold" Core..=)
              Core.<$> unhealthyThreshold
          ]
      )

-- | A label to apply to this replica pool.
--
-- /See:/ 'newLabel' smart constructor.
data Label = Label
  { -- | The key for this label.
    key :: (Core.Maybe Core.Text),
    -- | The value of this label.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Label' with the minimum fields required to make a request.
newLabel ::
  Label
newLabel = Label {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Label where
  parseJSON =
    Core.withObject
      "Label"
      ( \o ->
          Label
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Label where
  toJSON Label {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A Compute Engine metadata entry. Identical to the metadata on the corresponding Compute Engine resource.
--
-- /See:/ 'newMetadata' smart constructor.
data Metadata = Metadata
  { -- | The fingerprint of the metadata. Required for updating the metadata entries for this instance.
    fingerPrint :: (Core.Maybe Core.Text),
    -- | A list of metadata items.
    items :: (Core.Maybe [MetadataItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Metadata' with the minimum fields required to make a request.
newMetadata ::
  Metadata
newMetadata = Metadata {fingerPrint = Core.Nothing, items = Core.Nothing}

instance Core.FromJSON Metadata where
  parseJSON =
    Core.withObject
      "Metadata"
      ( \o ->
          Metadata
            Core.<$> (o Core..:? "fingerPrint")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
      )

instance Core.ToJSON Metadata where
  toJSON Metadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("fingerPrint" Core..=) Core.<$> fingerPrint,
            ("items" Core..=) Core.<$> items
          ]
      )

-- | A Compute Engine metadata item, defined as a key:value pair. Identical to the metadata on the corresponding Compute Engine resource.
--
-- /See:/ 'newMetadataItem' smart constructor.
data MetadataItem = MetadataItem
  { -- | A metadata key.
    key :: (Core.Maybe Core.Text),
    -- | A metadata value.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MetadataItem' with the minimum fields required to make a request.
newMetadataItem ::
  MetadataItem
newMetadataItem = MetadataItem {key = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON MetadataItem where
  parseJSON =
    Core.withObject
      "MetadataItem"
      ( \o ->
          MetadataItem
            Core.<$> (o Core..:? "key") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON MetadataItem where
  toJSON MetadataItem {..} =
    Core.object
      ( Core.catMaybes
          [ ("key" Core..=) Core.<$> key,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | A Compute Engine NetworkInterface resource. Identical to the NetworkInterface on the corresponding Compute Engine resource.
--
-- /See:/ 'newNetworkInterface' smart constructor.
data NetworkInterface = NetworkInterface
  { -- | An array of configurations for this interface. This specifies how this interface is configured to interact with other network services.
    accessConfigs :: (Core.Maybe [AccessConfig]),
    -- | Name the Network resource to which this interface applies.
    network :: (Core.Maybe Core.Text),
    -- | An optional IPV4 internal network address to assign to the instance for this network interface.
    networkIp :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkInterface' with the minimum fields required to make a request.
newNetworkInterface ::
  NetworkInterface
newNetworkInterface =
  NetworkInterface
    { accessConfigs = Core.Nothing,
      network = Core.Nothing,
      networkIp = Core.Nothing
    }

instance Core.FromJSON NetworkInterface where
  parseJSON =
    Core.withObject
      "NetworkInterface"
      ( \o ->
          NetworkInterface
            Core.<$> (o Core..:? "accessConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "networkIp")
      )

instance Core.ToJSON NetworkInterface where
  toJSON NetworkInterface {..} =
    Core.object
      ( Core.catMaybes
          [ ("accessConfigs" Core..=) Core.<$> accessConfigs,
            ("network" Core..=) Core.<$> network,
            ("networkIp" Core..=) Core.<$> networkIp
          ]
      )

-- | A Persistent Disk resource that will be created and attached to each Replica in the Pool. Each Replica will have a unique persistent disk that is created and attached to that Replica in READ_WRITE mode.
--
-- /See:/ 'newNewDisk' smart constructor.
data NewDisk = NewDisk
  { -- | How the disk will be attached to the Replica.
    attachment :: (Core.Maybe DiskAttachment),
    -- | If true, then this disk will be deleted when the instance is deleted. The default value is true.
    autoDelete :: (Core.Maybe Core.Bool),
    -- | If true, indicates that this is the root persistent disk.
    boot :: (Core.Maybe Core.Bool),
    -- | Create the new disk using these parameters. The name of the disk will be \<instance/name>-\<four/random_charactersgt;.
    initializeParams :: (Core.Maybe NewDiskInitializeParams)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NewDisk' with the minimum fields required to make a request.
newNewDisk ::
  NewDisk
newNewDisk =
  NewDisk
    { attachment = Core.Nothing,
      autoDelete = Core.Nothing,
      boot = Core.Nothing,
      initializeParams = Core.Nothing
    }

instance Core.FromJSON NewDisk where
  parseJSON =
    Core.withObject
      "NewDisk"
      ( \o ->
          NewDisk
            Core.<$> (o Core..:? "attachment")
            Core.<*> (o Core..:? "autoDelete")
            Core.<*> (o Core..:? "boot")
            Core.<*> (o Core..:? "initializeParams")
      )

instance Core.ToJSON NewDisk where
  toJSON NewDisk {..} =
    Core.object
      ( Core.catMaybes
          [ ("attachment" Core..=) Core.<$> attachment,
            ("autoDelete" Core..=) Core.<$> autoDelete,
            ("boot" Core..=) Core.<$> boot,
            ("initializeParams" Core..=)
              Core.<$> initializeParams
          ]
      )

-- | Initialization parameters for creating a new disk.
--
-- /See:/ 'newNewDiskInitializeParams' smart constructor.
data NewDiskInitializeParams = NewDiskInitializeParams
  { -- | The size of the created disk in gigabytes.
    diskSizeGb :: (Core.Maybe Core.Int64),
    -- | Name of the disk type resource describing which disk type to use to create the disk. For example \'pd-ssd\' or \'pd-standard\'. Default is \'pd-standard\'
    diskType :: (Core.Maybe Core.Text),
    -- | The name or fully-qualified URL of a source image to use to create this disk. If you provide a name of the source image, Replica Pool will look for an image with that name in your project. If you are specifying an image provided by Compute Engine, you will need to provide the full URL with the correct project, such as: http:\/\/www.googleapis.com\/compute\/v1\/projects\/debian-cloud\/ global\/images\/debian-wheezy-7-vYYYYMMDD
    sourceImage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NewDiskInitializeParams' with the minimum fields required to make a request.
newNewDiskInitializeParams ::
  NewDiskInitializeParams
newNewDiskInitializeParams =
  NewDiskInitializeParams
    { diskSizeGb = Core.Nothing,
      diskType = Core.Nothing,
      sourceImage = Core.Nothing
    }

instance Core.FromJSON NewDiskInitializeParams where
  parseJSON =
    Core.withObject
      "NewDiskInitializeParams"
      ( \o ->
          NewDiskInitializeParams
            Core.<$> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "diskType")
            Core.<*> (o Core..:? "sourceImage")
      )

instance Core.ToJSON NewDiskInitializeParams where
  toJSON NewDiskInitializeParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskSizeGb" Core..=) Core.. Core.AsText
              Core.<$> diskSizeGb,
            ("diskType" Core..=) Core.<$> diskType,
            ("sourceImage" Core..=) Core.<$> sourceImage
          ]
      )

--
-- /See:/ 'newPool' smart constructor.
data Pool = Pool
  { -- | Whether replicas in this pool should be restarted if they experience a failure. The default value is true.
    autoRestart :: (Core.Maybe Core.Bool),
    -- | The base instance name to use for the replicas in this pool. This must match the regex <%5B-a-z0-9%5D*%5Ba-z0-9%5D a-z>?. If specified, the instances in this replica pool will be named in the format \<base-instance-name>-\<ID>. The \<ID> postfix will be a four character alphanumeric identifier generated by the service.
    --
    -- If this is not specified by the user, a random base instance name is generated by the service.
    baseInstanceName :: (Core.Maybe Core.Text),
    -- | [Output Only] The current number of replicas in the pool.
    currentNumReplicas :: (Core.Maybe Core.Int32),
    -- | An optional description of the replica pool.
    description :: (Core.Maybe Core.Text),
    -- | Deprecated. Please use template[].healthChecks instead.
    healthChecks :: (Core.Maybe [HealthCheck]),
    -- | The initial number of replicas this pool should have. You must provide a value greater than or equal to 0.
    initialNumReplicas :: (Core.Maybe Core.Int32),
    -- | A list of labels to attach to this replica pool and all created virtual machines in this replica pool.
    labels :: (Core.Maybe [Label]),
    -- | The name of the replica pool. Must follow the regex <%5B-a-z0-9%5D*%5Ba-z0-9%5D a-z>? and be 1-28 characters long.
    name :: (Core.Maybe Core.Text),
    -- | Deprecated! Use initial/num/replicas instead.
    numReplicas :: (Core.Maybe Core.Int32),
    -- | The list of resource views that should be updated with all the replicas that are managed by this pool.
    resourceViews :: (Core.Maybe [Core.Text]),
    -- | [Output Only] A self-link to the replica pool.
    selfLink :: (Core.Maybe Core.Text),
    -- | Deprecated, please use target_pools instead.
    targetPool :: (Core.Maybe Core.Text),
    -- | A list of target pools to update with the replicas that are managed by this pool. If specified, the replicas in this replica pool will be added to the specified target pools for load balancing purposes. The replica pool must live in the same region as the specified target pools. These values must be the target pool resource names, and not fully qualified URLs.
    targetPools :: (Core.Maybe [Core.Text]),
    -- | The template to use when creating replicas in this pool. This template is used during initial instance creation of the pool, when growing the pool in size, or when a replica restarts.
    template :: (Core.Maybe Template),
    -- | Deprecated! Do not set.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Pool' with the minimum fields required to make a request.
newPool ::
  Pool
newPool =
  Pool
    { autoRestart = Core.Nothing,
      baseInstanceName = Core.Nothing,
      currentNumReplicas = Core.Nothing,
      description = Core.Nothing,
      healthChecks = Core.Nothing,
      initialNumReplicas = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      numReplicas = Core.Nothing,
      resourceViews = Core.Nothing,
      selfLink = Core.Nothing,
      targetPool = Core.Nothing,
      targetPools = Core.Nothing,
      template = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Pool where
  parseJSON =
    Core.withObject
      "Pool"
      ( \o ->
          Pool
            Core.<$> (o Core..:? "autoRestart")
            Core.<*> (o Core..:? "baseInstanceName")
            Core.<*> (o Core..:? "currentNumReplicas")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "healthChecks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "initialNumReplicas")
            Core.<*> (o Core..:? "labels" Core..!= Core.mempty)
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "numReplicas")
            Core.<*> (o Core..:? "resourceViews" Core..!= Core.mempty)
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "targetPool")
            Core.<*> (o Core..:? "targetPools" Core..!= Core.mempty)
            Core.<*> (o Core..:? "template")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Pool where
  toJSON Pool {..} =
    Core.object
      ( Core.catMaybes
          [ ("autoRestart" Core..=) Core.<$> autoRestart,
            ("baseInstanceName" Core..=)
              Core.<$> baseInstanceName,
            ("currentNumReplicas" Core..=)
              Core.<$> currentNumReplicas,
            ("description" Core..=) Core.<$> description,
            ("healthChecks" Core..=) Core.<$> healthChecks,
            ("initialNumReplicas" Core..=)
              Core.<$> initialNumReplicas,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("numReplicas" Core..=) Core.<$> numReplicas,
            ("resourceViews" Core..=) Core.<$> resourceViews,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("targetPool" Core..=) Core.<$> targetPool,
            ("targetPools" Core..=) Core.<$> targetPools,
            ("template" Core..=) Core.<$> template,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newPoolsDeleteRequest' smart constructor.
newtype PoolsDeleteRequest = PoolsDeleteRequest
  { -- | If there are instances you would like to keep, you can specify them here. These instances won\'t be deleted, but the associated replica objects will be removed.
    abandonInstances :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoolsDeleteRequest' with the minimum fields required to make a request.
newPoolsDeleteRequest ::
  PoolsDeleteRequest
newPoolsDeleteRequest = PoolsDeleteRequest {abandonInstances = Core.Nothing}

instance Core.FromJSON PoolsDeleteRequest where
  parseJSON =
    Core.withObject
      "PoolsDeleteRequest"
      ( \o ->
          PoolsDeleteRequest
            Core.<$> (o Core..:? "abandonInstances" Core..!= Core.mempty)
      )

instance Core.ToJSON PoolsDeleteRequest where
  toJSON PoolsDeleteRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("abandonInstances" Core..=)
              Core.<$> abandonInstances
          ]
      )

--
-- /See:/ 'newPoolsListResponse' smart constructor.
data PoolsListResponse = PoolsListResponse
  { -- |
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Pool])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoolsListResponse' with the minimum fields required to make a request.
newPoolsListResponse ::
  PoolsListResponse
newPoolsListResponse =
  PoolsListResponse {nextPageToken = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON PoolsListResponse where
  parseJSON =
    Core.withObject
      "PoolsListResponse"
      ( \o ->
          PoolsListResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON PoolsListResponse where
  toJSON PoolsListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | An individual Replica within a Pool. Replicas are automatically created by the replica pool, using the template provided by the user. You cannot directly create replicas.
--
-- /See:/ 'newReplica' smart constructor.
data Replica = Replica
  { -- | [Output Only] The name of the Replica object.
    name :: (Core.Maybe Core.Text),
    -- | [Output Only] The self-link of the Replica.
    selfLink :: (Core.Maybe Core.Text),
    -- | [Output Only] Last known status of the Replica.
    status :: (Core.Maybe ReplicaStatus)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Replica' with the minimum fields required to make a request.
newReplica ::
  Replica
newReplica =
  Replica {name = Core.Nothing, selfLink = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON Replica where
  parseJSON =
    Core.withObject
      "Replica"
      ( \o ->
          Replica
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "selfLink")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON Replica where
  toJSON Replica {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("selfLink" Core..=) Core.<$> selfLink,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | The current status of a Replica.
--
-- /See:/ 'newReplicaStatus' smart constructor.
data ReplicaStatus = ReplicaStatus
  { -- | [Output Only] Human-readable details about the current state of the replica
    details :: (Core.Maybe Core.Text),
    -- | [Output Only] The state of the Replica.
    state :: (Core.Maybe Core.Text),
    -- | [Output Only] The template used to build the replica.
    templateVersion :: (Core.Maybe Core.Text),
    -- | [Output Only] Link to the virtual machine that this Replica represents.
    vmLink :: (Core.Maybe Core.Text),
    -- | [Output Only] The time that this Replica got to the RUNNING state, in RFC 3339 format. If the start time is unknown, UNKNOWN is returned.
    vmStartTime :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicaStatus' with the minimum fields required to make a request.
newReplicaStatus ::
  ReplicaStatus
newReplicaStatus =
  ReplicaStatus
    { details = Core.Nothing,
      state = Core.Nothing,
      templateVersion = Core.Nothing,
      vmLink = Core.Nothing,
      vmStartTime = Core.Nothing
    }

instance Core.FromJSON ReplicaStatus where
  parseJSON =
    Core.withObject
      "ReplicaStatus"
      ( \o ->
          ReplicaStatus
            Core.<$> (o Core..:? "details")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "templateVersion")
            Core.<*> (o Core..:? "vmLink")
            Core.<*> (o Core..:? "vmStartTime")
      )

instance Core.ToJSON ReplicaStatus where
  toJSON ReplicaStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("details" Core..=) Core.<$> details,
            ("state" Core..=) Core.<$> state,
            ("templateVersion" Core..=) Core.<$> templateVersion,
            ("vmLink" Core..=) Core.<$> vmLink,
            ("vmStartTime" Core..=) Core.<$> vmStartTime
          ]
      )

--
-- /See:/ 'newReplicasDeleteRequest' smart constructor.
newtype ReplicasDeleteRequest = ReplicasDeleteRequest
  { -- | Whether the instance resource represented by this replica should be deleted or abandoned. If abandoned, the replica will be deleted but the virtual machine instance will remain. By default, this is set to false and the instance will be deleted along with the replica.
    abandonInstance :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicasDeleteRequest' with the minimum fields required to make a request.
newReplicasDeleteRequest ::
  ReplicasDeleteRequest
newReplicasDeleteRequest =
  ReplicasDeleteRequest {abandonInstance = Core.Nothing}

instance Core.FromJSON ReplicasDeleteRequest where
  parseJSON =
    Core.withObject
      "ReplicasDeleteRequest"
      ( \o ->
          ReplicasDeleteRequest
            Core.<$> (o Core..:? "abandonInstance")
      )

instance Core.ToJSON ReplicasDeleteRequest where
  toJSON ReplicasDeleteRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("abandonInstance" Core..=)
              Core.<$> abandonInstance
          ]
      )

--
-- /See:/ 'newReplicasListResponse' smart constructor.
data ReplicasListResponse = ReplicasListResponse
  { -- |
    nextPageToken :: (Core.Maybe Core.Text),
    -- |
    resources :: (Core.Maybe [Replica])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReplicasListResponse' with the minimum fields required to make a request.
newReplicasListResponse ::
  ReplicasListResponse
newReplicasListResponse =
  ReplicasListResponse {nextPageToken = Core.Nothing, resources = Core.Nothing}

instance Core.FromJSON ReplicasListResponse where
  parseJSON =
    Core.withObject
      "ReplicasListResponse"
      ( \o ->
          ReplicasListResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "resources" Core..!= Core.mempty)
      )

instance Core.ToJSON ReplicasListResponse where
  toJSON ReplicasListResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("resources" Core..=) Core.<$> resources
          ]
      )

-- | A Compute Engine service account, identical to the Compute Engine resource.
--
-- /See:/ 'newServiceAccount' smart constructor.
data ServiceAccount = ServiceAccount
  { -- | The service account email address, for example: 123845678986\@project.gserviceaccount.com
    email :: (Core.Maybe Core.Text),
    -- | The list of OAuth2 scopes to obtain for the service account, for example: https:\/\/www.googleapis.com\/auth\/devstorage.full_control
    scopes :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ServiceAccount' with the minimum fields required to make a request.
newServiceAccount ::
  ServiceAccount
newServiceAccount = ServiceAccount {email = Core.Nothing, scopes = Core.Nothing}

instance Core.FromJSON ServiceAccount where
  parseJSON =
    Core.withObject
      "ServiceAccount"
      ( \o ->
          ServiceAccount
            Core.<$> (o Core..:? "email")
            Core.<*> (o Core..:? "scopes" Core..!= Core.mempty)
      )

instance Core.ToJSON ServiceAccount where
  toJSON ServiceAccount {..} =
    Core.object
      ( Core.catMaybes
          [ ("email" Core..=) Core.<$> email,
            ("scopes" Core..=) Core.<$> scopes
          ]
      )

-- | A Compute Engine Instance tag, identical to the tags on the corresponding Compute Engine Instance resource.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag
  { -- | The fingerprint of the tag. Required for updating the list of tags.
    fingerPrint :: (Core.Maybe Core.Text),
    -- | Items contained in this tag.
    items :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Tag' with the minimum fields required to make a request.
newTag ::
  Tag
newTag = Tag {fingerPrint = Core.Nothing, items = Core.Nothing}

instance Core.FromJSON Tag where
  parseJSON =
    Core.withObject
      "Tag"
      ( \o ->
          Tag
            Core.<$> (o Core..:? "fingerPrint")
            Core.<*> (o Core..:? "items" Core..!= Core.mempty)
      )

instance Core.ToJSON Tag where
  toJSON Tag {..} =
    Core.object
      ( Core.catMaybes
          [ ("fingerPrint" Core..=) Core.<$> fingerPrint,
            ("items" Core..=) Core.<$> items
          ]
      )

-- | The template used for creating replicas in the pool.
--
-- /See:/ 'newTemplate' smart constructor.
data Template = Template
  { -- | An action to run during initialization of your replicas. An action is run as shell commands which are executed one after the other in the same bash shell, so any state established by one command is inherited by later commands.
    action :: (Core.Maybe Action),
    -- | A list of HTTP Health Checks to configure for this replica pool and all virtual machines in this replica pool.
    healthChecks :: (Core.Maybe [HealthCheck]),
    -- | A free-form string describing the version of this template. You can provide any versioning string you would like. For example, version1 or template-v1.
    version :: (Core.Maybe Core.Text),
    -- | The virtual machine parameters to use for creating replicas. You can define settings such as the machine type and the image of replicas in this pool. This is required if replica type is SMART_VM.
    vmParams :: (Core.Maybe VmParams)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Template' with the minimum fields required to make a request.
newTemplate ::
  Template
newTemplate =
  Template
    { action = Core.Nothing,
      healthChecks = Core.Nothing,
      version = Core.Nothing,
      vmParams = Core.Nothing
    }

instance Core.FromJSON Template where
  parseJSON =
    Core.withObject
      "Template"
      ( \o ->
          Template
            Core.<$> (o Core..:? "action")
            Core.<*> (o Core..:? "healthChecks" Core..!= Core.mempty)
            Core.<*> (o Core..:? "version")
            Core.<*> (o Core..:? "vmParams")
      )

instance Core.ToJSON Template where
  toJSON Template {..} =
    Core.object
      ( Core.catMaybes
          [ ("action" Core..=) Core.<$> action,
            ("healthChecks" Core..=) Core.<$> healthChecks,
            ("version" Core..=) Core.<$> version,
            ("vmParams" Core..=) Core.<$> vmParams
          ]
      )

-- | Parameters for creating a Compute Engine Instance resource. Most fields are identical to the corresponding Compute Engine resource.
--
-- /See:/ 'newVmParams' smart constructor.
data VmParams = VmParams
  { -- | Deprecated. Please use baseInstanceName instead.
    baseInstanceName :: (Core.Maybe Core.Text),
    -- | Enables IP Forwarding, which allows this instance to receive packets destined for a different IP address, and send packets with a different source IP. See IP Forwarding for more information.
    canIpForward :: (Core.Maybe Core.Bool),
    -- | An optional textual description of the instance.
    description :: (Core.Maybe Core.Text),
    -- | A list of existing Persistent Disk resources to attach to each replica in the pool. Each disk will be attached in read-only mode to every replica.
    disksToAttach :: (Core.Maybe [ExistingDisk]),
    -- | A list of Disk resources to create and attach to each Replica in the Pool. Currently, you can only define one disk and it must be a root persistent disk. Note that Replica Pool will create a root persistent disk for each replica.
    disksToCreate :: (Core.Maybe [NewDisk]),
    -- | The machine type for this instance. The resource name (e.g. n1-standard-1).
    machineType :: (Core.Maybe Core.Text),
    -- | The metadata key\/value pairs assigned to this instance.
    metadata :: (Core.Maybe Metadata),
    -- | A list of network interfaces for the instance. Currently only one interface is supported by Google Compute Engine, ONE/TO/ONE_NAT.
    networkInterfaces :: (Core.Maybe [NetworkInterface]),
    -- |
    onHostMaintenance :: (Core.Maybe Core.Text),
    -- | A list of Service Accounts to enable for this instance.
    serviceAccounts :: (Core.Maybe [ServiceAccount]),
    -- | A list of tags to apply to the Google Compute Engine instance to identify resources.
    tags :: (Core.Maybe Tag)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VmParams' with the minimum fields required to make a request.
newVmParams ::
  VmParams
newVmParams =
  VmParams
    { baseInstanceName = Core.Nothing,
      canIpForward = Core.Nothing,
      description = Core.Nothing,
      disksToAttach = Core.Nothing,
      disksToCreate = Core.Nothing,
      machineType = Core.Nothing,
      metadata = Core.Nothing,
      networkInterfaces = Core.Nothing,
      onHostMaintenance = Core.Nothing,
      serviceAccounts = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON VmParams where
  parseJSON =
    Core.withObject
      "VmParams"
      ( \o ->
          VmParams
            Core.<$> (o Core..:? "baseInstanceName")
            Core.<*> (o Core..:? "canIpForward")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disksToAttach" Core..!= Core.mempty)
            Core.<*> (o Core..:? "disksToCreate" Core..!= Core.mempty)
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "networkInterfaces" Core..!= Core.mempty)
            Core.<*> (o Core..:? "onHostMaintenance")
            Core.<*> (o Core..:? "serviceAccounts" Core..!= Core.mempty)
            Core.<*> (o Core..:? "tags")
      )

instance Core.ToJSON VmParams where
  toJSON VmParams {..} =
    Core.object
      ( Core.catMaybes
          [ ("baseInstanceName" Core..=)
              Core.<$> baseInstanceName,
            ("canIpForward" Core..=) Core.<$> canIpForward,
            ("description" Core..=) Core.<$> description,
            ("disksToAttach" Core..=) Core.<$> disksToAttach,
            ("disksToCreate" Core..=) Core.<$> disksToCreate,
            ("machineType" Core..=) Core.<$> machineType,
            ("metadata" Core..=) Core.<$> metadata,
            ("networkInterfaces" Core..=)
              Core.<$> networkInterfaces,
            ("onHostMaintenance" Core..=)
              Core.<$> onHostMaintenance,
            ("serviceAccounts" Core..=) Core.<$> serviceAccounts,
            ("tags" Core..=) Core.<$> tags
          ]
      )

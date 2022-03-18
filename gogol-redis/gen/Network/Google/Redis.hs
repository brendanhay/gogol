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
-- Module      : Network.Google.Redis
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages Redis instances on the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference>
module Network.Google.Redis
  ( -- * Configuration
    redisService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** redis.projects.locations.get
    RedisProjectsLocationsGetResource,
    newRedisProjectsLocationsGet,
    RedisProjectsLocationsGet,

    -- ** redis.projects.locations.instances.create
    RedisProjectsLocationsInstancesCreateResource,
    newRedisProjectsLocationsInstancesCreate,
    RedisProjectsLocationsInstancesCreate,

    -- ** redis.projects.locations.instances.delete
    RedisProjectsLocationsInstancesDeleteResource,
    newRedisProjectsLocationsInstancesDelete,
    RedisProjectsLocationsInstancesDelete,

    -- ** redis.projects.locations.instances.export
    RedisProjectsLocationsInstancesExportResource,
    newRedisProjectsLocationsInstancesExport,
    RedisProjectsLocationsInstancesExport,

    -- ** redis.projects.locations.instances.failover
    RedisProjectsLocationsInstancesFailoverResource,
    newRedisProjectsLocationsInstancesFailover,
    RedisProjectsLocationsInstancesFailover,

    -- ** redis.projects.locations.instances.get
    RedisProjectsLocationsInstancesGetResource,
    newRedisProjectsLocationsInstancesGet,
    RedisProjectsLocationsInstancesGet,

    -- ** redis.projects.locations.instances.getAuthString
    RedisProjectsLocationsInstancesGetAuthStringResource,
    newRedisProjectsLocationsInstancesGetAuthString,
    RedisProjectsLocationsInstancesGetAuthString,

    -- ** redis.projects.locations.instances.import
    RedisProjectsLocationsInstancesImportResource,
    newRedisProjectsLocationsInstancesImport,
    RedisProjectsLocationsInstancesImport,

    -- ** redis.projects.locations.instances.list
    RedisProjectsLocationsInstancesListResource,
    newRedisProjectsLocationsInstancesList,
    RedisProjectsLocationsInstancesList,

    -- ** redis.projects.locations.instances.patch
    RedisProjectsLocationsInstancesPatchResource,
    newRedisProjectsLocationsInstancesPatch,
    RedisProjectsLocationsInstancesPatch,

    -- ** redis.projects.locations.instances.rescheduleMaintenance
    RedisProjectsLocationsInstancesRescheduleMaintenanceResource,
    newRedisProjectsLocationsInstancesRescheduleMaintenance,
    RedisProjectsLocationsInstancesRescheduleMaintenance,

    -- ** redis.projects.locations.instances.upgrade
    RedisProjectsLocationsInstancesUpgradeResource,
    newRedisProjectsLocationsInstancesUpgrade,
    RedisProjectsLocationsInstancesUpgrade,

    -- ** redis.projects.locations.list
    RedisProjectsLocationsListResource,
    newRedisProjectsLocationsList,
    RedisProjectsLocationsList,

    -- ** redis.projects.locations.operations.cancel
    RedisProjectsLocationsOperationsCancelResource,
    newRedisProjectsLocationsOperationsCancel,
    RedisProjectsLocationsOperationsCancel,

    -- ** redis.projects.locations.operations.delete
    RedisProjectsLocationsOperationsDeleteResource,
    newRedisProjectsLocationsOperationsDelete,
    RedisProjectsLocationsOperationsDelete,

    -- ** redis.projects.locations.operations.get
    RedisProjectsLocationsOperationsGetResource,
    newRedisProjectsLocationsOperationsGet,
    RedisProjectsLocationsOperationsGet,

    -- ** redis.projects.locations.operations.list
    RedisProjectsLocationsOperationsListResource,
    newRedisProjectsLocationsOperationsList,
    RedisProjectsLocationsOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ExportInstanceRequest
    ExportInstanceRequest (..),
    newExportInstanceRequest,

    -- ** FailoverInstanceRequest
    FailoverInstanceRequest (..),
    newFailoverInstanceRequest,

    -- ** FailoverInstanceRequest_DataProtectionMode
    FailoverInstanceRequest_DataProtectionMode (..),

    -- ** GcsDestination
    GcsDestination (..),
    newGcsDestination,

    -- ** GcsSource
    GcsSource (..),
    newGcsSource,

    -- ** GoogleCloudRedisV1LocationMetadata
    GoogleCloudRedisV1LocationMetadata (..),
    newGoogleCloudRedisV1LocationMetadata,

    -- ** GoogleCloudRedisV1LocationMetadata_AvailableZones
    GoogleCloudRedisV1LocationMetadata_AvailableZones (..),
    newGoogleCloudRedisV1LocationMetadata_AvailableZones,

    -- ** GoogleCloudRedisV1OperationMetadata
    GoogleCloudRedisV1OperationMetadata (..),
    newGoogleCloudRedisV1OperationMetadata,

    -- ** GoogleCloudRedisV1ZoneMetadata
    GoogleCloudRedisV1ZoneMetadata (..),
    newGoogleCloudRedisV1ZoneMetadata,

    -- ** ImportInstanceRequest
    ImportInstanceRequest (..),
    newImportInstanceRequest,

    -- ** InputConfig
    InputConfig (..),
    newInputConfig,

    -- ** Instance
    Instance (..),
    newInstance,

    -- ** Instance_ConnectMode
    Instance_ConnectMode (..),

    -- ** Instance_Labels
    Instance_Labels (..),
    newInstance_Labels,

    -- ** Instance_ReadReplicasMode
    Instance_ReadReplicasMode (..),

    -- ** Instance_RedisConfigs
    Instance_RedisConfigs (..),
    newInstance_RedisConfigs,

    -- ** Instance_State
    Instance_State (..),

    -- ** Instance_Tier
    Instance_Tier (..),

    -- ** Instance_TransitEncryptionMode
    Instance_TransitEncryptionMode (..),

    -- ** InstanceAuthString
    InstanceAuthString (..),
    newInstanceAuthString,

    -- ** ListInstancesResponse
    ListInstancesResponse (..),
    newListInstancesResponse,

    -- ** ListLocationsResponse
    ListLocationsResponse (..),
    newListLocationsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Location
    Location (..),
    newLocation,

    -- ** Location_Labels
    Location_Labels (..),
    newLocation_Labels,

    -- ** Location_Metadata
    Location_Metadata (..),
    newLocation_Metadata,

    -- ** MaintenancePolicy
    MaintenancePolicy (..),
    newMaintenancePolicy,

    -- ** MaintenanceSchedule
    MaintenanceSchedule (..),
    newMaintenanceSchedule,

    -- ** NodeInfo
    NodeInfo (..),
    newNodeInfo,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OutputConfig
    OutputConfig (..),
    newOutputConfig,

    -- ** PersistenceConfig
    PersistenceConfig (..),
    newPersistenceConfig,

    -- ** PersistenceConfig_PersistenceMode
    PersistenceConfig_PersistenceMode (..),

    -- ** PersistenceConfig_RdbSnapshotPeriod
    PersistenceConfig_RdbSnapshotPeriod (..),

    -- ** RescheduleMaintenanceRequest
    RescheduleMaintenanceRequest (..),
    newRescheduleMaintenanceRequest,

    -- ** RescheduleMaintenanceRequest_RescheduleType
    RescheduleMaintenanceRequest_RescheduleType (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** TimeOfDay'
    TimeOfDay' (..),
    newTimeOfDay,

    -- ** TlsCertificate
    TlsCertificate (..),
    newTlsCertificate,

    -- ** UpgradeInstanceRequest
    UpgradeInstanceRequest (..),
    newUpgradeInstanceRequest,

    -- ** WeeklyMaintenanceWindow
    WeeklyMaintenanceWindow (..),
    newWeeklyMaintenanceWindow,

    -- ** WeeklyMaintenanceWindow_Day
    WeeklyMaintenanceWindow_Day (..),
  )
where

import Network.Google.Redis.Projects.Locations.Get
import Network.Google.Redis.Projects.Locations.Instances.Create
import Network.Google.Redis.Projects.Locations.Instances.Delete
import Network.Google.Redis.Projects.Locations.Instances.Export
import Network.Google.Redis.Projects.Locations.Instances.Failover
import Network.Google.Redis.Projects.Locations.Instances.Get
import Network.Google.Redis.Projects.Locations.Instances.GetAuthString
import Network.Google.Redis.Projects.Locations.Instances.Import
import Network.Google.Redis.Projects.Locations.Instances.List
import Network.Google.Redis.Projects.Locations.Instances.Patch
import Network.Google.Redis.Projects.Locations.Instances.RescheduleMaintenance
import Network.Google.Redis.Projects.Locations.Instances.Upgrade
import Network.Google.Redis.Projects.Locations.List
import Network.Google.Redis.Projects.Locations.Operations.Cancel
import Network.Google.Redis.Projects.Locations.Operations.Delete
import Network.Google.Redis.Projects.Locations.Operations.Get
import Network.Google.Redis.Projects.Locations.Operations.List
import Network.Google.Redis.Types

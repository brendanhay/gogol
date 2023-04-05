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
-- Module      : Gogol.Redis
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages Redis instances on the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/memorystore/docs/redis/ Google Cloud Memorystore for Redis API Reference>
module Gogol.Redis
  ( -- * Configuration
    redisService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** redis.projects.locations.get
    RedisProjectsLocationsGetResource,
    RedisProjectsLocationsGet (..),
    newRedisProjectsLocationsGet,

    -- ** redis.projects.locations.instances.create
    RedisProjectsLocationsInstancesCreateResource,
    RedisProjectsLocationsInstancesCreate (..),
    newRedisProjectsLocationsInstancesCreate,

    -- ** redis.projects.locations.instances.delete
    RedisProjectsLocationsInstancesDeleteResource,
    RedisProjectsLocationsInstancesDelete (..),
    newRedisProjectsLocationsInstancesDelete,

    -- ** redis.projects.locations.instances.export
    RedisProjectsLocationsInstancesExportResource,
    RedisProjectsLocationsInstancesExport (..),
    newRedisProjectsLocationsInstancesExport,

    -- ** redis.projects.locations.instances.failover
    RedisProjectsLocationsInstancesFailoverResource,
    RedisProjectsLocationsInstancesFailover (..),
    newRedisProjectsLocationsInstancesFailover,

    -- ** redis.projects.locations.instances.get
    RedisProjectsLocationsInstancesGetResource,
    RedisProjectsLocationsInstancesGet (..),
    newRedisProjectsLocationsInstancesGet,

    -- ** redis.projects.locations.instances.getAuthString
    RedisProjectsLocationsInstancesGetAuthStringResource,
    RedisProjectsLocationsInstancesGetAuthString (..),
    newRedisProjectsLocationsInstancesGetAuthString,

    -- ** redis.projects.locations.instances.import
    RedisProjectsLocationsInstancesImportResource,
    RedisProjectsLocationsInstancesImport (..),
    newRedisProjectsLocationsInstancesImport,

    -- ** redis.projects.locations.instances.list
    RedisProjectsLocationsInstancesListResource,
    RedisProjectsLocationsInstancesList (..),
    newRedisProjectsLocationsInstancesList,

    -- ** redis.projects.locations.instances.patch
    RedisProjectsLocationsInstancesPatchResource,
    RedisProjectsLocationsInstancesPatch (..),
    newRedisProjectsLocationsInstancesPatch,

    -- ** redis.projects.locations.instances.rescheduleMaintenance
    RedisProjectsLocationsInstancesRescheduleMaintenanceResource,
    RedisProjectsLocationsInstancesRescheduleMaintenance (..),
    newRedisProjectsLocationsInstancesRescheduleMaintenance,

    -- ** redis.projects.locations.instances.upgrade
    RedisProjectsLocationsInstancesUpgradeResource,
    RedisProjectsLocationsInstancesUpgrade (..),
    newRedisProjectsLocationsInstancesUpgrade,

    -- ** redis.projects.locations.list
    RedisProjectsLocationsListResource,
    RedisProjectsLocationsList (..),
    newRedisProjectsLocationsList,

    -- ** redis.projects.locations.operations.cancel
    RedisProjectsLocationsOperationsCancelResource,
    RedisProjectsLocationsOperationsCancel (..),
    newRedisProjectsLocationsOperationsCancel,

    -- ** redis.projects.locations.operations.delete
    RedisProjectsLocationsOperationsDeleteResource,
    RedisProjectsLocationsOperationsDelete (..),
    newRedisProjectsLocationsOperationsDelete,

    -- ** redis.projects.locations.operations.get
    RedisProjectsLocationsOperationsGetResource,
    RedisProjectsLocationsOperationsGet (..),
    newRedisProjectsLocationsOperationsGet,

    -- ** redis.projects.locations.operations.list
    RedisProjectsLocationsOperationsListResource,
    RedisProjectsLocationsOperationsList (..),
    newRedisProjectsLocationsOperationsList,

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

    -- ** Instance_SuspensionReasonsItem
    Instance_SuspensionReasonsItem (..),

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

    -- ** ReconciliationOperationMetadata
    ReconciliationOperationMetadata (..),
    newReconciliationOperationMetadata,

    -- ** ReconciliationOperationMetadata_ExclusiveAction
    ReconciliationOperationMetadata_ExclusiveAction (..),

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

import Gogol.Redis.Projects.Locations.Get
import Gogol.Redis.Projects.Locations.Instances.Create
import Gogol.Redis.Projects.Locations.Instances.Delete
import Gogol.Redis.Projects.Locations.Instances.Export
import Gogol.Redis.Projects.Locations.Instances.Failover
import Gogol.Redis.Projects.Locations.Instances.Get
import Gogol.Redis.Projects.Locations.Instances.GetAuthString
import Gogol.Redis.Projects.Locations.Instances.Import
import Gogol.Redis.Projects.Locations.Instances.List
import Gogol.Redis.Projects.Locations.Instances.Patch
import Gogol.Redis.Projects.Locations.Instances.RescheduleMaintenance
import Gogol.Redis.Projects.Locations.Instances.Upgrade
import Gogol.Redis.Projects.Locations.List
import Gogol.Redis.Projects.Locations.Operations.Cancel
import Gogol.Redis.Projects.Locations.Operations.Delete
import Gogol.Redis.Projects.Locations.Operations.Get
import Gogol.Redis.Projects.Locations.Operations.List
import Gogol.Redis.Types

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
-- Module      : Gogol.Redis.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Redis.Types
  ( -- * Configuration
    redisService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import qualified Gogol.Prelude as Core
import Gogol.Redis.Internal.Product
import Gogol.Redis.Internal.Sum

-- | Default request referring to version @v1@ of the Google Cloud Memorystore for Redis API. This contains the host and root path used as a starting point for constructing service requests.
redisService :: Core.ServiceConfig
redisService =
  Core.defaultService
    (Core.ServiceId "redis:v1")
    "redis.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

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
-- Module      : Gogol.Composer.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Composer.Types
  ( -- * Configuration
    composerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AirflowMetadataRetentionPolicyConfig
    AirflowMetadataRetentionPolicyConfig (..),
    newAirflowMetadataRetentionPolicyConfig,

    -- ** AirflowMetadataRetentionPolicyConfig_RetentionMode
    AirflowMetadataRetentionPolicyConfig_RetentionMode (..),

    -- ** AllowedIpRange
    AllowedIpRange (..),
    newAllowedIpRange,

    -- ** CheckUpgradeRequest
    CheckUpgradeRequest (..),
    newCheckUpgradeRequest,

    -- ** CheckUpgradeResponse
    CheckUpgradeResponse (..),
    newCheckUpgradeResponse,

    -- ** CheckUpgradeResponse_ContainsPypiModulesConflict
    CheckUpgradeResponse_ContainsPypiModulesConflict (..),

    -- ** CheckUpgradeResponse_PypiDependencies
    CheckUpgradeResponse_PypiDependencies (..),
    newCheckUpgradeResponse_PypiDependencies,

    -- ** CidrBlock
    CidrBlock (..),
    newCidrBlock,

    -- ** CloudDataLineageIntegration
    CloudDataLineageIntegration (..),
    newCloudDataLineageIntegration,

    -- ** ComposerWorkload
    ComposerWorkload (..),
    newComposerWorkload,

    -- ** ComposerWorkload_Type
    ComposerWorkload_Type (..),

    -- ** ComposerWorkloadStatus
    ComposerWorkloadStatus (..),
    newComposerWorkloadStatus,

    -- ** ComposerWorkloadStatus_State
    ComposerWorkloadStatus_State (..),

    -- ** DagProcessorResource
    DagProcessorResource (..),
    newDagProcessorResource,

    -- ** DataRetentionConfig
    DataRetentionConfig (..),
    newDataRetentionConfig,

    -- ** DatabaseConfig
    DatabaseConfig (..),
    newDatabaseConfig,

    -- ** DatabaseFailoverRequest
    DatabaseFailoverRequest (..),
    newDatabaseFailoverRequest,

    -- ** DatabaseFailoverResponse
    DatabaseFailoverResponse (..),
    newDatabaseFailoverResponse,

    -- ** Date
    Date (..),
    newDate,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- ** Environment
    Environment (..),
    newEnvironment,

    -- ** Environment_Labels
    Environment_Labels (..),
    newEnvironment_Labels,

    -- ** Environment_State
    Environment_State (..),

    -- ** EnvironmentConfig
    EnvironmentConfig (..),
    newEnvironmentConfig,

    -- ** EnvironmentConfig_EnvironmentSize
    EnvironmentConfig_EnvironmentSize (..),

    -- ** EnvironmentConfig_ResilienceMode
    EnvironmentConfig_ResilienceMode (..),

    -- ** ExecuteAirflowCommandRequest
    ExecuteAirflowCommandRequest (..),
    newExecuteAirflowCommandRequest,

    -- ** ExecuteAirflowCommandResponse
    ExecuteAirflowCommandResponse (..),
    newExecuteAirflowCommandResponse,

    -- ** ExitInfo
    ExitInfo (..),
    newExitInfo,

    -- ** FetchDatabasePropertiesResponse
    FetchDatabasePropertiesResponse (..),
    newFetchDatabasePropertiesResponse,

    -- ** IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- ** ImageVersion
    ImageVersion (..),
    newImageVersion,

    -- ** Line
    Line (..),
    newLine,

    -- ** ListEnvironmentsResponse
    ListEnvironmentsResponse (..),
    newListEnvironmentsResponse,

    -- ** ListImageVersionsResponse
    ListImageVersionsResponse (..),
    newListImageVersionsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListUserWorkloadsConfigMapsResponse
    ListUserWorkloadsConfigMapsResponse (..),
    newListUserWorkloadsConfigMapsResponse,

    -- ** ListUserWorkloadsSecretsResponse
    ListUserWorkloadsSecretsResponse (..),
    newListUserWorkloadsSecretsResponse,

    -- ** ListWorkloadsResponse
    ListWorkloadsResponse (..),
    newListWorkloadsResponse,

    -- ** LoadSnapshotRequest
    LoadSnapshotRequest (..),
    newLoadSnapshotRequest,

    -- ** LoadSnapshotResponse
    LoadSnapshotResponse (..),
    newLoadSnapshotResponse,

    -- ** MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- ** MasterAuthorizedNetworksConfig
    MasterAuthorizedNetworksConfig (..),
    newMasterAuthorizedNetworksConfig,

    -- ** NetworkingConfig
    NetworkingConfig (..),
    newNetworkingConfig,

    -- ** NetworkingConfig_ConnectionType
    NetworkingConfig_ConnectionType (..),

    -- ** NodeConfig
    NodeConfig (..),
    newNodeConfig,

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

    -- ** OperationMetadata_OperationType
    OperationMetadata_OperationType (..),

    -- ** OperationMetadata_State
    OperationMetadata_State (..),

    -- ** PollAirflowCommandRequest
    PollAirflowCommandRequest (..),
    newPollAirflowCommandRequest,

    -- ** PollAirflowCommandResponse
    PollAirflowCommandResponse (..),
    newPollAirflowCommandResponse,

    -- ** PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- ** PrivateEnvironmentConfig
    PrivateEnvironmentConfig (..),
    newPrivateEnvironmentConfig,

    -- ** RecoveryConfig
    RecoveryConfig (..),
    newRecoveryConfig,

    -- ** SaveSnapshotRequest
    SaveSnapshotRequest (..),
    newSaveSnapshotRequest,

    -- ** SaveSnapshotResponse
    SaveSnapshotResponse (..),
    newSaveSnapshotResponse,

    -- ** ScheduledSnapshotsConfig
    ScheduledSnapshotsConfig (..),
    newScheduledSnapshotsConfig,

    -- ** SchedulerResource
    SchedulerResource (..),
    newSchedulerResource,

    -- ** SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- ** SoftwareConfig_AirflowConfigOverrides
    SoftwareConfig_AirflowConfigOverrides (..),
    newSoftwareConfig_AirflowConfigOverrides,

    -- ** SoftwareConfig_EnvVariables
    SoftwareConfig_EnvVariables (..),
    newSoftwareConfig_EnvVariables,

    -- ** SoftwareConfig_PypiPackages
    SoftwareConfig_PypiPackages (..),
    newSoftwareConfig_PypiPackages,

    -- ** SoftwareConfig_WebServerPluginsMode
    SoftwareConfig_WebServerPluginsMode (..),

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StopAirflowCommandRequest
    StopAirflowCommandRequest (..),
    newStopAirflowCommandRequest,

    -- ** StopAirflowCommandResponse
    StopAirflowCommandResponse (..),
    newStopAirflowCommandResponse,

    -- ** StorageConfig
    StorageConfig (..),
    newStorageConfig,

    -- ** TaskLogsRetentionConfig
    TaskLogsRetentionConfig (..),
    newTaskLogsRetentionConfig,

    -- ** TaskLogsRetentionConfig_StorageMode
    TaskLogsRetentionConfig_StorageMode (..),

    -- ** TriggererResource
    TriggererResource (..),
    newTriggererResource,

    -- ** UserWorkloadsConfigMap
    UserWorkloadsConfigMap (..),
    newUserWorkloadsConfigMap,

    -- ** UserWorkloadsConfigMap_Data
    UserWorkloadsConfigMap_Data (..),
    newUserWorkloadsConfigMap_Data,

    -- ** UserWorkloadsSecret
    UserWorkloadsSecret (..),
    newUserWorkloadsSecret,

    -- ** UserWorkloadsSecret_Data
    UserWorkloadsSecret_Data (..),
    newUserWorkloadsSecret_Data,

    -- ** WebServerConfig
    WebServerConfig (..),
    newWebServerConfig,

    -- ** WebServerNetworkAccessControl
    WebServerNetworkAccessControl (..),
    newWebServerNetworkAccessControl,

    -- ** WebServerResource
    WebServerResource (..),
    newWebServerResource,

    -- ** WorkerResource
    WorkerResource (..),
    newWorkerResource,

    -- ** WorkloadsConfig
    WorkloadsConfig (..),
    newWorkloadsConfig,
  )
where

import Gogol.Composer.Internal.Product
import Gogol.Composer.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Cloud Composer API. This contains the host and root path used as a starting point for constructing service requests.
composerService :: Core.ServiceConfig
composerService =
  Core.defaultService
    (Core.ServiceId "composer:v1")
    "composer.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

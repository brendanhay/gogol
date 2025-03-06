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
-- Module      : Gogol.Composer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Apache Airflow environments on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference>
module Gogol.Composer
  ( -- * Configuration
    composerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** composer.projects.locations.environments.checkUpgrade
    ComposerProjectsLocationsEnvironmentsCheckUpgradeResource,
    ComposerProjectsLocationsEnvironmentsCheckUpgrade (..),
    newComposerProjectsLocationsEnvironmentsCheckUpgrade,

    -- ** composer.projects.locations.environments.create
    ComposerProjectsLocationsEnvironmentsCreateResource,
    ComposerProjectsLocationsEnvironmentsCreate (..),
    newComposerProjectsLocationsEnvironmentsCreate,

    -- ** composer.projects.locations.environments.databaseFailover
    ComposerProjectsLocationsEnvironmentsDatabaseFailoverResource,
    ComposerProjectsLocationsEnvironmentsDatabaseFailover (..),
    newComposerProjectsLocationsEnvironmentsDatabaseFailover,

    -- ** composer.projects.locations.environments.delete
    ComposerProjectsLocationsEnvironmentsDeleteResource,
    ComposerProjectsLocationsEnvironmentsDelete (..),
    newComposerProjectsLocationsEnvironmentsDelete,

    -- ** composer.projects.locations.environments.executeAirflowCommand
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommandResource,
    ComposerProjectsLocationsEnvironmentsExecuteAirflowCommand (..),
    newComposerProjectsLocationsEnvironmentsExecuteAirflowCommand,

    -- ** composer.projects.locations.environments.fetchDatabaseProperties
    ComposerProjectsLocationsEnvironmentsFetchDatabasePropertiesResource,
    ComposerProjectsLocationsEnvironmentsFetchDatabaseProperties (..),
    newComposerProjectsLocationsEnvironmentsFetchDatabaseProperties,

    -- ** composer.projects.locations.environments.get
    ComposerProjectsLocationsEnvironmentsGetResource,
    ComposerProjectsLocationsEnvironmentsGet (..),
    newComposerProjectsLocationsEnvironmentsGet,

    -- ** composer.projects.locations.environments.list
    ComposerProjectsLocationsEnvironmentsListResource,
    ComposerProjectsLocationsEnvironmentsList (..),
    newComposerProjectsLocationsEnvironmentsList,

    -- ** composer.projects.locations.environments.loadSnapshot
    ComposerProjectsLocationsEnvironmentsLoadSnapshotResource,
    ComposerProjectsLocationsEnvironmentsLoadSnapshot (..),
    newComposerProjectsLocationsEnvironmentsLoadSnapshot,

    -- ** composer.projects.locations.environments.patch
    ComposerProjectsLocationsEnvironmentsPatchResource,
    ComposerProjectsLocationsEnvironmentsPatch (..),
    newComposerProjectsLocationsEnvironmentsPatch,

    -- ** composer.projects.locations.environments.pollAirflowCommand
    ComposerProjectsLocationsEnvironmentsPollAirflowCommandResource,
    ComposerProjectsLocationsEnvironmentsPollAirflowCommand (..),
    newComposerProjectsLocationsEnvironmentsPollAirflowCommand,

    -- ** composer.projects.locations.environments.saveSnapshot
    ComposerProjectsLocationsEnvironmentsSaveSnapshotResource,
    ComposerProjectsLocationsEnvironmentsSaveSnapshot (..),
    newComposerProjectsLocationsEnvironmentsSaveSnapshot,

    -- ** composer.projects.locations.environments.stopAirflowCommand
    ComposerProjectsLocationsEnvironmentsStopAirflowCommandResource,
    ComposerProjectsLocationsEnvironmentsStopAirflowCommand (..),
    newComposerProjectsLocationsEnvironmentsStopAirflowCommand,

    -- ** composer.projects.locations.environments.userWorkloadsConfigMaps.create
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreateResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate,

    -- ** composer.projects.locations.environments.userWorkloadsConfigMaps.delete
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsDeleteResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsDelete (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsDelete,

    -- ** composer.projects.locations.environments.userWorkloadsConfigMaps.get
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsGetResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsGet (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsGet,

    -- ** composer.projects.locations.environments.userWorkloadsConfigMaps.list
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsListResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsList (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsList,

    -- ** composer.projects.locations.environments.userWorkloadsConfigMaps.update
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdateResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate,

    -- ** composer.projects.locations.environments.userWorkloadsSecrets.create
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreateResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsCreate,

    -- ** composer.projects.locations.environments.userWorkloadsSecrets.delete
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsDeleteResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsDelete (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsDelete,

    -- ** composer.projects.locations.environments.userWorkloadsSecrets.get
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGetResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet,

    -- ** composer.projects.locations.environments.userWorkloadsSecrets.list
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsListResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList,

    -- ** composer.projects.locations.environments.userWorkloadsSecrets.update
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdateResource,
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate,

    -- ** composer.projects.locations.environments.workloads.list
    ComposerProjectsLocationsEnvironmentsWorkloadsListResource,
    ComposerProjectsLocationsEnvironmentsWorkloadsList (..),
    newComposerProjectsLocationsEnvironmentsWorkloadsList,

    -- ** composer.projects.locations.imageVersions.list
    ComposerProjectsLocationsImageVersionsListResource,
    ComposerProjectsLocationsImageVersionsList (..),
    newComposerProjectsLocationsImageVersionsList,

    -- ** composer.projects.locations.operations.delete
    ComposerProjectsLocationsOperationsDeleteResource,
    ComposerProjectsLocationsOperationsDelete (..),
    newComposerProjectsLocationsOperationsDelete,

    -- ** composer.projects.locations.operations.get
    ComposerProjectsLocationsOperationsGetResource,
    ComposerProjectsLocationsOperationsGet (..),
    newComposerProjectsLocationsOperationsGet,

    -- ** composer.projects.locations.operations.list
    ComposerProjectsLocationsOperationsListResource,
    ComposerProjectsLocationsOperationsList (..),
    newComposerProjectsLocationsOperationsList,

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

import Gogol.Composer.Projects.Locations.Environments.CheckUpgrade
import Gogol.Composer.Projects.Locations.Environments.Create
import Gogol.Composer.Projects.Locations.Environments.DatabaseFailover
import Gogol.Composer.Projects.Locations.Environments.Delete
import Gogol.Composer.Projects.Locations.Environments.ExecuteAirflowCommand
import Gogol.Composer.Projects.Locations.Environments.FetchDatabaseProperties
import Gogol.Composer.Projects.Locations.Environments.Get
import Gogol.Composer.Projects.Locations.Environments.List
import Gogol.Composer.Projects.Locations.Environments.LoadSnapshot
import Gogol.Composer.Projects.Locations.Environments.Patch
import Gogol.Composer.Projects.Locations.Environments.PollAirflowCommand
import Gogol.Composer.Projects.Locations.Environments.SaveSnapshot
import Gogol.Composer.Projects.Locations.Environments.StopAirflowCommand
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Create
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Delete
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Get
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.List
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Update
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Create
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Delete
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Get
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.List
import Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Update
import Gogol.Composer.Projects.Locations.Environments.Workloads.List
import Gogol.Composer.Projects.Locations.ImageVersions.List
import Gogol.Composer.Projects.Locations.Operations.Delete
import Gogol.Composer.Projects.Locations.Operations.Get
import Gogol.Composer.Projects.Locations.Operations.List
import Gogol.Composer.Types

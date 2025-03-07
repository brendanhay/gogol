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
-- Module      : Gogol.Composer.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Composer.Internal.Product
  ( -- * AirflowMetadataRetentionPolicyConfig
    AirflowMetadataRetentionPolicyConfig (..),
    newAirflowMetadataRetentionPolicyConfig,

    -- * AllowedIpRange
    AllowedIpRange (..),
    newAllowedIpRange,

    -- * CheckUpgradeRequest
    CheckUpgradeRequest (..),
    newCheckUpgradeRequest,

    -- * CheckUpgradeResponse
    CheckUpgradeResponse (..),
    newCheckUpgradeResponse,

    -- * CheckUpgradeResponse_PypiDependencies
    CheckUpgradeResponse_PypiDependencies (..),
    newCheckUpgradeResponse_PypiDependencies,

    -- * CidrBlock
    CidrBlock (..),
    newCidrBlock,

    -- * CloudDataLineageIntegration
    CloudDataLineageIntegration (..),
    newCloudDataLineageIntegration,

    -- * ComposerWorkload
    ComposerWorkload (..),
    newComposerWorkload,

    -- * ComposerWorkloadStatus
    ComposerWorkloadStatus (..),
    newComposerWorkloadStatus,

    -- * DagProcessorResource
    DagProcessorResource (..),
    newDagProcessorResource,

    -- * DataRetentionConfig
    DataRetentionConfig (..),
    newDataRetentionConfig,

    -- * DatabaseConfig
    DatabaseConfig (..),
    newDatabaseConfig,

    -- * DatabaseFailoverRequest
    DatabaseFailoverRequest (..),
    newDatabaseFailoverRequest,

    -- * DatabaseFailoverResponse
    DatabaseFailoverResponse (..),
    newDatabaseFailoverResponse,

    -- * Date
    Date (..),
    newDate,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * EncryptionConfig
    EncryptionConfig (..),
    newEncryptionConfig,

    -- * Environment
    Environment (..),
    newEnvironment,

    -- * Environment_Labels
    Environment_Labels (..),
    newEnvironment_Labels,

    -- * EnvironmentConfig
    EnvironmentConfig (..),
    newEnvironmentConfig,

    -- * ExecuteAirflowCommandRequest
    ExecuteAirflowCommandRequest (..),
    newExecuteAirflowCommandRequest,

    -- * ExecuteAirflowCommandResponse
    ExecuteAirflowCommandResponse (..),
    newExecuteAirflowCommandResponse,

    -- * ExitInfo
    ExitInfo (..),
    newExitInfo,

    -- * FetchDatabasePropertiesResponse
    FetchDatabasePropertiesResponse (..),
    newFetchDatabasePropertiesResponse,

    -- * IPAllocationPolicy
    IPAllocationPolicy (..),
    newIPAllocationPolicy,

    -- * ImageVersion
    ImageVersion (..),
    newImageVersion,

    -- * Line
    Line (..),
    newLine,

    -- * ListEnvironmentsResponse
    ListEnvironmentsResponse (..),
    newListEnvironmentsResponse,

    -- * ListImageVersionsResponse
    ListImageVersionsResponse (..),
    newListImageVersionsResponse,

    -- * ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- * ListUserWorkloadsConfigMapsResponse
    ListUserWorkloadsConfigMapsResponse (..),
    newListUserWorkloadsConfigMapsResponse,

    -- * ListUserWorkloadsSecretsResponse
    ListUserWorkloadsSecretsResponse (..),
    newListUserWorkloadsSecretsResponse,

    -- * ListWorkloadsResponse
    ListWorkloadsResponse (..),
    newListWorkloadsResponse,

    -- * LoadSnapshotRequest
    LoadSnapshotRequest (..),
    newLoadSnapshotRequest,

    -- * LoadSnapshotResponse
    LoadSnapshotResponse (..),
    newLoadSnapshotResponse,

    -- * MaintenanceWindow
    MaintenanceWindow (..),
    newMaintenanceWindow,

    -- * MasterAuthorizedNetworksConfig
    MasterAuthorizedNetworksConfig (..),
    newMasterAuthorizedNetworksConfig,

    -- * NetworkingConfig
    NetworkingConfig (..),
    newNetworkingConfig,

    -- * NodeConfig
    NodeConfig (..),
    newNodeConfig,

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

    -- * PollAirflowCommandRequest
    PollAirflowCommandRequest (..),
    newPollAirflowCommandRequest,

    -- * PollAirflowCommandResponse
    PollAirflowCommandResponse (..),
    newPollAirflowCommandResponse,

    -- * PrivateClusterConfig
    PrivateClusterConfig (..),
    newPrivateClusterConfig,

    -- * PrivateEnvironmentConfig
    PrivateEnvironmentConfig (..),
    newPrivateEnvironmentConfig,

    -- * RecoveryConfig
    RecoveryConfig (..),
    newRecoveryConfig,

    -- * SaveSnapshotRequest
    SaveSnapshotRequest (..),
    newSaveSnapshotRequest,

    -- * SaveSnapshotResponse
    SaveSnapshotResponse (..),
    newSaveSnapshotResponse,

    -- * ScheduledSnapshotsConfig
    ScheduledSnapshotsConfig (..),
    newScheduledSnapshotsConfig,

    -- * SchedulerResource
    SchedulerResource (..),
    newSchedulerResource,

    -- * SoftwareConfig
    SoftwareConfig (..),
    newSoftwareConfig,

    -- * SoftwareConfig_AirflowConfigOverrides
    SoftwareConfig_AirflowConfigOverrides (..),
    newSoftwareConfig_AirflowConfigOverrides,

    -- * SoftwareConfig_EnvVariables
    SoftwareConfig_EnvVariables (..),
    newSoftwareConfig_EnvVariables,

    -- * SoftwareConfig_PypiPackages
    SoftwareConfig_PypiPackages (..),
    newSoftwareConfig_PypiPackages,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StopAirflowCommandRequest
    StopAirflowCommandRequest (..),
    newStopAirflowCommandRequest,

    -- * StopAirflowCommandResponse
    StopAirflowCommandResponse (..),
    newStopAirflowCommandResponse,

    -- * StorageConfig
    StorageConfig (..),
    newStorageConfig,

    -- * TaskLogsRetentionConfig
    TaskLogsRetentionConfig (..),
    newTaskLogsRetentionConfig,

    -- * TriggererResource
    TriggererResource (..),
    newTriggererResource,

    -- * UserWorkloadsConfigMap
    UserWorkloadsConfigMap (..),
    newUserWorkloadsConfigMap,

    -- * UserWorkloadsConfigMap_Data
    UserWorkloadsConfigMap_Data (..),
    newUserWorkloadsConfigMap_Data,

    -- * UserWorkloadsSecret
    UserWorkloadsSecret (..),
    newUserWorkloadsSecret,

    -- * UserWorkloadsSecret_Data
    UserWorkloadsSecret_Data (..),
    newUserWorkloadsSecret_Data,

    -- * WebServerConfig
    WebServerConfig (..),
    newWebServerConfig,

    -- * WebServerNetworkAccessControl
    WebServerNetworkAccessControl (..),
    newWebServerNetworkAccessControl,

    -- * WebServerResource
    WebServerResource (..),
    newWebServerResource,

    -- * WorkerResource
    WorkerResource (..),
    newWorkerResource,

    -- * WorkloadsConfig
    WorkloadsConfig (..),
    newWorkloadsConfig,
  )
where

import Gogol.Composer.Internal.Sum
import Gogol.Prelude qualified as Core

-- | The policy for airflow metadata database retention.
--
-- /See:/ 'newAirflowMetadataRetentionPolicyConfig' smart constructor.
data AirflowMetadataRetentionPolicyConfig = AirflowMetadataRetentionPolicyConfig
  { -- | Optional. How many days data should be retained for.
    retentionDays :: (Core.Maybe Core.Int32),
    -- | Optional. Retention can be either enabled or disabled.
    retentionMode :: (Core.Maybe AirflowMetadataRetentionPolicyConfig_RetentionMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AirflowMetadataRetentionPolicyConfig' with the minimum fields required to make a request.
newAirflowMetadataRetentionPolicyConfig ::
  AirflowMetadataRetentionPolicyConfig
newAirflowMetadataRetentionPolicyConfig =
  AirflowMetadataRetentionPolicyConfig
    { retentionDays =
        Core.Nothing,
      retentionMode = Core.Nothing
    }

instance Core.FromJSON AirflowMetadataRetentionPolicyConfig where
  parseJSON =
    Core.withObject
      "AirflowMetadataRetentionPolicyConfig"
      ( \o ->
          AirflowMetadataRetentionPolicyConfig
            Core.<$> (o Core..:? "retentionDays")
            Core.<*> (o Core..:? "retentionMode")
      )

instance Core.ToJSON AirflowMetadataRetentionPolicyConfig where
  toJSON AirflowMetadataRetentionPolicyConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("retentionDays" Core..=) Core.<$> retentionDays,
            ("retentionMode" Core..=) Core.<$> retentionMode
          ]
      )

-- | Allowed IP range with user-provided description.
--
-- /See:/ 'newAllowedIpRange' smart constructor.
data AllowedIpRange = AllowedIpRange
  { -- | Optional. User-provided description. It must contain at most 300 characters.
    description :: (Core.Maybe Core.Text),
    -- | IP address or range, defined using CIDR notation, of requests that this rule applies to. Examples: @192.168.1.1@ or @192.168.0.0\/16@ or @2001:db8::\/32@ or @2001:0db8:0000:0042:0000:8a2e:0370:7334@. IP range prefixes should be properly truncated. For example, @1.2.3.4\/24@ should be truncated to @1.2.3.0\/24@. Similarly, for IPv6, @2001:db8::1\/32@ should be truncated to @2001:db8::\/32@.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AllowedIpRange' with the minimum fields required to make a request.
newAllowedIpRange ::
  AllowedIpRange
newAllowedIpRange =
  AllowedIpRange {description = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON AllowedIpRange where
  parseJSON =
    Core.withObject
      "AllowedIpRange"
      ( \o ->
          AllowedIpRange
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON AllowedIpRange where
  toJSON AllowedIpRange {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Request to check whether image upgrade will succeed.
--
-- /See:/ 'newCheckUpgradeRequest' smart constructor.
newtype CheckUpgradeRequest = CheckUpgradeRequest
  { -- | Optional. The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression @composer-([0-9]+(\\.[0-9]+\\.[0-9]+(-preview\\.[0-9]+)?)?|latest)-airflow-([0-9]+(\\.[0-9]+(\\.[0-9]+)?)?)@. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the image version is a full <https://semver.org semantic version>, or an alias in the form of major version number or @latest@. When an alias is provided, the server replaces it with the current Cloud Composer version that satisfies the alias. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. When an alias is provided, the server replaces it with the latest Apache Airflow version that
    -- satisfies the alias and is supported in the given Cloud Composer version. In all cases, the resolved image version is stored in the same field. See also </composer/docs/concepts/versioning/composer-versions version list> and </composer/docs/concepts/versioning/composer-versioning-overview versioning overview>.
    imageVersion :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckUpgradeRequest' with the minimum fields required to make a request.
newCheckUpgradeRequest ::
  CheckUpgradeRequest
newCheckUpgradeRequest =
  CheckUpgradeRequest {imageVersion = Core.Nothing}

instance Core.FromJSON CheckUpgradeRequest where
  parseJSON =
    Core.withObject
      "CheckUpgradeRequest"
      (\o -> CheckUpgradeRequest Core.<$> (o Core..:? "imageVersion"))

instance Core.ToJSON CheckUpgradeRequest where
  toJSON CheckUpgradeRequest {..} =
    Core.object
      (Core.catMaybes [("imageVersion" Core..=) Core.<$> imageVersion])

-- | Message containing information about the result of an upgrade check operation.
--
-- /See:/ 'newCheckUpgradeResponse' smart constructor.
data CheckUpgradeResponse = CheckUpgradeResponse
  { -- | Output only. Url for a docker build log of an upgraded image.
    buildLogUri :: (Core.Maybe Core.Text),
    -- | Output only. Whether build has succeeded or failed on modules conflicts.
    containsPypiModulesConflict :: (Core.Maybe CheckUpgradeResponse_ContainsPypiModulesConflict),
    -- | Composer image for which the build was happening.
    imageVersion :: (Core.Maybe Core.Text),
    -- | Output only. Extract from a docker image build log containing information about pypi modules conflicts.
    pypiConflictBuildLogExtract :: (Core.Maybe Core.Text),
    -- | Pypi dependencies specified in the environment configuration, at the time when the build was triggered.
    pypiDependencies :: (Core.Maybe CheckUpgradeResponse_PypiDependencies)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckUpgradeResponse' with the minimum fields required to make a request.
newCheckUpgradeResponse ::
  CheckUpgradeResponse
newCheckUpgradeResponse =
  CheckUpgradeResponse
    { buildLogUri = Core.Nothing,
      containsPypiModulesConflict = Core.Nothing,
      imageVersion = Core.Nothing,
      pypiConflictBuildLogExtract = Core.Nothing,
      pypiDependencies = Core.Nothing
    }

instance Core.FromJSON CheckUpgradeResponse where
  parseJSON =
    Core.withObject
      "CheckUpgradeResponse"
      ( \o ->
          CheckUpgradeResponse
            Core.<$> (o Core..:? "buildLogUri")
            Core.<*> (o Core..:? "containsPypiModulesConflict")
            Core.<*> (o Core..:? "imageVersion")
            Core.<*> (o Core..:? "pypiConflictBuildLogExtract")
            Core.<*> (o Core..:? "pypiDependencies")
      )

instance Core.ToJSON CheckUpgradeResponse where
  toJSON CheckUpgradeResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("buildLogUri" Core..=) Core.<$> buildLogUri,
            ("containsPypiModulesConflict" Core..=)
              Core.<$> containsPypiModulesConflict,
            ("imageVersion" Core..=) Core.<$> imageVersion,
            ("pypiConflictBuildLogExtract" Core..=)
              Core.<$> pypiConflictBuildLogExtract,
            ("pypiDependencies" Core..=) Core.<$> pypiDependencies
          ]
      )

-- | Pypi dependencies specified in the environment configuration, at the time when the build was triggered.
--
-- /See:/ 'newCheckUpgradeResponse_PypiDependencies' smart constructor.
newtype CheckUpgradeResponse_PypiDependencies = CheckUpgradeResponse_PypiDependencies
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CheckUpgradeResponse_PypiDependencies' with the minimum fields required to make a request.
newCheckUpgradeResponse_PypiDependencies ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  CheckUpgradeResponse_PypiDependencies
newCheckUpgradeResponse_PypiDependencies additional =
  CheckUpgradeResponse_PypiDependencies {additional = additional}

instance Core.FromJSON CheckUpgradeResponse_PypiDependencies where
  parseJSON =
    Core.withObject
      "CheckUpgradeResponse_PypiDependencies"
      ( \o ->
          CheckUpgradeResponse_PypiDependencies
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON CheckUpgradeResponse_PypiDependencies where
  toJSON CheckUpgradeResponse_PypiDependencies {..} =
    Core.toJSON additional

-- | CIDR block with an optional name.
--
-- /See:/ 'newCidrBlock' smart constructor.
data CidrBlock = CidrBlock
  { -- | CIDR block that must be specified in CIDR notation.
    cidrBlock :: (Core.Maybe Core.Text),
    -- | User-defined name that identifies the CIDR block.
    displayName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CidrBlock' with the minimum fields required to make a request.
newCidrBlock ::
  CidrBlock
newCidrBlock =
  CidrBlock {cidrBlock = Core.Nothing, displayName = Core.Nothing}

instance Core.FromJSON CidrBlock where
  parseJSON =
    Core.withObject
      "CidrBlock"
      ( \o ->
          CidrBlock
            Core.<$> (o Core..:? "cidrBlock")
            Core.<*> (o Core..:? "displayName")
      )

instance Core.ToJSON CidrBlock where
  toJSON CidrBlock {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrBlock" Core..=) Core.<$> cidrBlock,
            ("displayName" Core..=) Core.<$> displayName
          ]
      )

-- | Configuration for Cloud Data Lineage integration.
--
-- /See:/ 'newCloudDataLineageIntegration' smart constructor.
newtype CloudDataLineageIntegration = CloudDataLineageIntegration
  { -- | Optional. Whether or not Cloud Data Lineage integration is enabled.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudDataLineageIntegration' with the minimum fields required to make a request.
newCloudDataLineageIntegration ::
  CloudDataLineageIntegration
newCloudDataLineageIntegration =
  CloudDataLineageIntegration {enabled = Core.Nothing}

instance Core.FromJSON CloudDataLineageIntegration where
  parseJSON =
    Core.withObject
      "CloudDataLineageIntegration"
      ( \o ->
          CloudDataLineageIntegration Core.<$> (o Core..:? "enabled")
      )

instance Core.ToJSON CloudDataLineageIntegration where
  toJSON CloudDataLineageIntegration {..} =
    Core.object
      (Core.catMaybes [("enabled" Core..=) Core.<$> enabled])

-- | Information about a single workload.
--
-- /See:/ 'newComposerWorkload' smart constructor.
data ComposerWorkload = ComposerWorkload
  { -- | Name of a workload.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Status of a workload.
    status :: (Core.Maybe ComposerWorkloadStatus),
    -- | Type of a workload.
    type' :: (Core.Maybe ComposerWorkload_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerWorkload' with the minimum fields required to make a request.
newComposerWorkload ::
  ComposerWorkload
newComposerWorkload =
  ComposerWorkload
    { name = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON ComposerWorkload where
  parseJSON =
    Core.withObject
      "ComposerWorkload"
      ( \o ->
          ComposerWorkload
            Core.<$> (o Core..:? "name")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON ComposerWorkload where
  toJSON ComposerWorkload {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Workload status.
--
-- /See:/ 'newComposerWorkloadStatus' smart constructor.
data ComposerWorkloadStatus = ComposerWorkloadStatus
  { -- | Output only. Detailed message of the status.
    detailedStatusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Workload state.
    state :: (Core.Maybe ComposerWorkloadStatus_State),
    -- | Output only. Text to provide more descriptive status.
    statusMessage :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerWorkloadStatus' with the minimum fields required to make a request.
newComposerWorkloadStatus ::
  ComposerWorkloadStatus
newComposerWorkloadStatus =
  ComposerWorkloadStatus
    { detailedStatusMessage = Core.Nothing,
      state = Core.Nothing,
      statusMessage = Core.Nothing
    }

instance Core.FromJSON ComposerWorkloadStatus where
  parseJSON =
    Core.withObject
      "ComposerWorkloadStatus"
      ( \o ->
          ComposerWorkloadStatus
            Core.<$> (o Core..:? "detailedStatusMessage")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "statusMessage")
      )

instance Core.ToJSON ComposerWorkloadStatus where
  toJSON ComposerWorkloadStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("detailedStatusMessage" Core..=) Core.<$> detailedStatusMessage,
            ("state" Core..=) Core.<$> state,
            ("statusMessage" Core..=) Core.<$> statusMessage
          ]
      )

-- | Configuration for resources used by Airflow DAG processors. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
--
-- /See:/ 'newDagProcessorResource' smart constructor.
data DagProcessorResource = DagProcessorResource
  { -- | Optional. The number of DAG processors. If not provided or set to 0, a single DAG processor instance will be created.
    count :: (Core.Maybe Core.Int32),
    -- | Optional. CPU request and limit for a single Airflow DAG processor replica.
    cpu :: (Core.Maybe Core.Double),
    -- | Optional. Memory (GB) request and limit for a single Airflow DAG processor replica.
    memoryGb :: (Core.Maybe Core.Double),
    -- | Optional. Storage (GB) request and limit for a single Airflow DAG processor replica.
    storageGb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DagProcessorResource' with the minimum fields required to make a request.
newDagProcessorResource ::
  DagProcessorResource
newDagProcessorResource =
  DagProcessorResource
    { count = Core.Nothing,
      cpu = Core.Nothing,
      memoryGb = Core.Nothing,
      storageGb = Core.Nothing
    }

instance Core.FromJSON DagProcessorResource where
  parseJSON =
    Core.withObject
      "DagProcessorResource"
      ( \o ->
          DagProcessorResource
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cpu")
            Core.<*> (o Core..:? "memoryGb")
            Core.<*> (o Core..:? "storageGb")
      )

instance Core.ToJSON DagProcessorResource where
  toJSON DagProcessorResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cpu" Core..=) Core.<$> cpu,
            ("memoryGb" Core..=) Core.<$> memoryGb,
            ("storageGb" Core..=) Core.<$> storageGb
          ]
      )

-- | The configuration setting for Airflow database data retention mechanism.
--
-- /See:/ 'newDataRetentionConfig' smart constructor.
data DataRetentionConfig = DataRetentionConfig
  { -- | Optional. The retention policy for airflow metadata database.
    airflowMetadataRetentionConfig :: (Core.Maybe AirflowMetadataRetentionPolicyConfig),
    -- | Optional. The configuration settings for task logs retention
    taskLogsRetentionConfig :: (Core.Maybe TaskLogsRetentionConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataRetentionConfig' with the minimum fields required to make a request.
newDataRetentionConfig ::
  DataRetentionConfig
newDataRetentionConfig =
  DataRetentionConfig
    { airflowMetadataRetentionConfig =
        Core.Nothing,
      taskLogsRetentionConfig = Core.Nothing
    }

instance Core.FromJSON DataRetentionConfig where
  parseJSON =
    Core.withObject
      "DataRetentionConfig"
      ( \o ->
          DataRetentionConfig
            Core.<$> (o Core..:? "airflowMetadataRetentionConfig")
            Core.<*> (o Core..:? "taskLogsRetentionConfig")
      )

instance Core.ToJSON DataRetentionConfig where
  toJSON DataRetentionConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("airflowMetadataRetentionConfig" Core..=)
              Core.<$> airflowMetadataRetentionConfig,
            ("taskLogsRetentionConfig" Core..=)
              Core.<$> taskLogsRetentionConfig
          ]
      )

-- | The configuration of Cloud SQL instance that is used by the Apache Airflow software.
--
-- /See:/ 'newDatabaseConfig' smart constructor.
data DatabaseConfig = DatabaseConfig
  { -- | Optional. Cloud SQL machine type used by Airflow database. It has to be one of: db-n1-standard-2, db-n1-standard-4, db-n1-standard-8 or db-n1-standard-16. If not specified, db-n1-standard-2 will be used. Supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    machineType :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine zone where the Airflow database is created. If zone is provided, it must be in the region selected for the environment. If zone is not provided, a zone is automatically selected. The zone can only be set during environment creation. Supported for Cloud Composer environments in versions composer-2././-airflow-/./.*.
    zone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseConfig' with the minimum fields required to make a request.
newDatabaseConfig ::
  DatabaseConfig
newDatabaseConfig =
  DatabaseConfig {machineType = Core.Nothing, zone = Core.Nothing}

instance Core.FromJSON DatabaseConfig where
  parseJSON =
    Core.withObject
      "DatabaseConfig"
      ( \o ->
          DatabaseConfig
            Core.<$> (o Core..:? "machineType")
            Core.<*> (o Core..:? "zone")
      )

instance Core.ToJSON DatabaseConfig where
  toJSON DatabaseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("machineType" Core..=) Core.<$> machineType,
            ("zone" Core..=) Core.<$> zone
          ]
      )

-- | Request to trigger database failover (only for highly resilient environments).
--
-- /See:/ 'newDatabaseFailoverRequest' smart constructor.
data DatabaseFailoverRequest = DatabaseFailoverRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseFailoverRequest' with the minimum fields required to make a request.
newDatabaseFailoverRequest ::
  DatabaseFailoverRequest
newDatabaseFailoverRequest = DatabaseFailoverRequest

instance Core.FromJSON DatabaseFailoverRequest where
  parseJSON =
    Core.withObject
      "DatabaseFailoverRequest"
      (\o -> Core.pure DatabaseFailoverRequest)

instance Core.ToJSON DatabaseFailoverRequest where
  toJSON = Core.const Core.emptyObject

-- | Response for DatabaseFailoverRequest.
--
-- /See:/ 'newDatabaseFailoverResponse' smart constructor.
data DatabaseFailoverResponse = DatabaseFailoverResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatabaseFailoverResponse' with the minimum fields required to make a request.
newDatabaseFailoverResponse ::
  DatabaseFailoverResponse
newDatabaseFailoverResponse = DatabaseFailoverResponse

instance Core.FromJSON DatabaseFailoverResponse where
  parseJSON =
    Core.withObject
      "DatabaseFailoverResponse"
      (\o -> Core.pure DatabaseFailoverResponse)

instance Core.ToJSON DatabaseFailoverResponse where
  toJSON = Core.const Core.emptyObject

-- | Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
--
-- /See:/ 'newDate' smart constructor.
data Date = Date
  { -- | Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn\'t significant.
    day :: (Core.Maybe Core.Int32),
    -- | Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.
    month :: (Core.Maybe Core.Int32),
    -- | Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.
    year :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Date' with the minimum fields required to make a request.
newDate ::
  Date
newDate =
  Date
    { day = Core.Nothing,
      month = Core.Nothing,
      year = Core.Nothing
    }

instance Core.FromJSON Date where
  parseJSON =
    Core.withObject
      "Date"
      ( \o ->
          Date
            Core.<$> (o Core..:? "day")
            Core.<*> (o Core..:? "month")
            Core.<*> (o Core..:? "year")
      )

instance Core.ToJSON Date where
  toJSON Date {..} =
    Core.object
      ( Core.catMaybes
          [ ("day" Core..=) Core.<$> day,
            ("month" Core..=) Core.<$> month,
            ("year" Core..=) Core.<$> year
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | The encryption options for the Cloud Composer environment and its dependencies.Supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
--
-- /See:/ 'newEncryptionConfig' smart constructor.
newtype EncryptionConfig = EncryptionConfig
  { -- | Optional. Customer-managed Encryption Key available through Google\'s Key Management Service. Cannot be updated. If not specified, Google-managed key will be used.
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EncryptionConfig' with the minimum fields required to make a request.
newEncryptionConfig ::
  EncryptionConfig
newEncryptionConfig = EncryptionConfig {kmsKeyName = Core.Nothing}

instance Core.FromJSON EncryptionConfig where
  parseJSON =
    Core.withObject
      "EncryptionConfig"
      (\o -> EncryptionConfig Core.<$> (o Core..:? "kmsKeyName"))

instance Core.ToJSON EncryptionConfig where
  toJSON EncryptionConfig {..} =
    Core.object
      (Core.catMaybes [("kmsKeyName" Core..=) Core.<$> kmsKeyName])

-- | An environment for running orchestration tasks.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment
  { -- | Optional. Configuration parameters for this environment.
    config :: (Core.Maybe EnvironmentConfig),
    -- | Output only. The time at which this environment was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally constrained to be \<= 128 bytes in size.
    labels :: (Core.Maybe Environment_Labels),
    -- | Identifier. The resource name of the environment, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" EnvironmentId must start with a lowercase letter followed by up to 63 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Reserved for future use.
    satisfiesPzi :: (Core.Maybe Core.Bool),
    -- | Output only. Reserved for future use.
    satisfiesPzs :: (Core.Maybe Core.Bool),
    -- | The current state of the environment.
    state :: (Core.Maybe Environment_State),
    -- | Optional. Storage configuration for this environment.
    storageConfig :: (Core.Maybe StorageConfig),
    -- | Output only. The time at which this environment was last modified.
    updateTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The UUID (Universally Unique IDentifier) associated with this environment. This value is generated when the environment is created.
    uuid :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment' with the minimum fields required to make a request.
newEnvironment ::
  Environment
newEnvironment =
  Environment
    { config = Core.Nothing,
      createTime = Core.Nothing,
      labels = Core.Nothing,
      name = Core.Nothing,
      satisfiesPzi = Core.Nothing,
      satisfiesPzs = Core.Nothing,
      state = Core.Nothing,
      storageConfig = Core.Nothing,
      updateTime = Core.Nothing,
      uuid = Core.Nothing
    }

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      ( \o ->
          Environment
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "labels")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "satisfiesPzi")
            Core.<*> (o Core..:? "satisfiesPzs")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "storageConfig")
            Core.<*> (o Core..:? "updateTime")
            Core.<*> (o Core..:? "uuid")
      )

instance Core.ToJSON Environment where
  toJSON Environment {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("createTime" Core..=) Core.<$> createTime,
            ("labels" Core..=) Core.<$> labels,
            ("name" Core..=) Core.<$> name,
            ("satisfiesPzi" Core..=) Core.<$> satisfiesPzi,
            ("satisfiesPzs" Core..=) Core.<$> satisfiesPzs,
            ("state" Core..=) Core.<$> state,
            ("storageConfig" Core..=) Core.<$> storageConfig,
            ("updateTime" Core..=) Core.<$> updateTime,
            ("uuid" Core..=) Core.<$> uuid
          ]
      )

-- | Optional. User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: * Keys must conform to regexp: \\p{Ll}\\p{Lo}{0,62} * Values must conform to regexp: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} * Both keys and values are additionally constrained to be \<= 128 bytes in size.
--
-- /See:/ 'newEnvironment_Labels' smart constructor.
newtype Environment_Labels = Environment_Labels
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Environment_Labels' with the minimum fields required to make a request.
newEnvironment_Labels ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Environment_Labels
newEnvironment_Labels additional =
  Environment_Labels {additional = additional}

instance Core.FromJSON Environment_Labels where
  parseJSON =
    Core.withObject
      "Environment_Labels"
      (\o -> Environment_Labels Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Environment_Labels where
  toJSON Environment_Labels {..} = Core.toJSON additional

-- | Configuration information for an environment.
--
-- /See:/ 'newEnvironmentConfig' smart constructor.
data EnvironmentConfig = EnvironmentConfig
  { -- | Output only. The \'bring your own identity\' variant of the URI of the Apache Airflow Web UI hosted within this environment, to be accessed with external identities using workforce identity federation (see </composer/docs/composer-2/access-environments-with-workforce-identity-federation Access environments with workforce identity federation>).
    airflowByoidUri :: (Core.Maybe Core.Text),
    -- | Output only. The URI of the Apache Airflow Web UI hosted within this environment (see </composer/docs/how-to/accessing/airflow-web-interface Airflow web interface>).
    airflowUri :: (Core.Maybe Core.Text),
    -- | Output only. The Cloud Storage prefix of the DAGs for this environment. Although Cloud Storage objects reside in a flat namespace, a hierarchical file tree can be simulated using \"\/\"-delimited object name prefixes. DAG objects for this environment reside in a simulated directory with the given prefix.
    dagGcsPrefix :: (Core.Maybe Core.Text),
    -- | Optional. The configuration setting for Airflow database data retention mechanism.
    dataRetentionConfig :: (Core.Maybe DataRetentionConfig),
    -- | Optional. The configuration settings for Cloud SQL instance used internally by Apache Airflow software.
    databaseConfig :: (Core.Maybe DatabaseConfig),
    -- | Optional. The encryption options for the Cloud Composer environment and its dependencies. Cannot be updated.
    encryptionConfig :: (Core.Maybe EncryptionConfig),
    -- | Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
    environmentSize :: (Core.Maybe EnvironmentConfig_EnvironmentSize),
    -- | Output only. The Kubernetes Engine cluster used to run this environment.
    gkeCluster :: (Core.Maybe Core.Text),
    -- | Optional. The maintenance window is the period when Cloud Composer components may undergo maintenance. It is defined so that maintenance is not executed during peak hours or critical time periods. The system will not be under maintenance for every occurrence of this window, but when maintenance is planned, it will be scheduled during the window. The maintenance window period must encompass at least 12 hours per week. This may be split into multiple chunks, each with a size of at least 4 hours. If this value is omitted, the default value for maintenance window is applied. By default, maintenance windows are from 00:00:00 to 04:00:00 (GMT) on Friday, Saturday, and Sunday every week.
    maintenanceWindow :: (Core.Maybe MaintenanceWindow),
    -- | Optional. The configuration options for GKE cluster master authorized networks. By default master authorized networks feature is: - in case of private environment: enabled with no external networks allowlisted. - in case of public environment: disabled.
    masterAuthorizedNetworksConfig :: (Core.Maybe MasterAuthorizedNetworksConfig),
    -- | Optional. The configuration used for the Kubernetes Engine cluster.
    nodeConfig :: (Core.Maybe NodeConfig),
    -- | The number of nodes in the Kubernetes Engine cluster that will be used to run this environment. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    nodeCount :: (Core.Maybe Core.Int32),
    -- | Optional. The configuration used for the Private IP Cloud Composer environment.
    privateEnvironmentConfig :: (Core.Maybe PrivateEnvironmentConfig),
    -- | Optional. The Recovery settings configuration of an environment. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
    recoveryConfig :: (Core.Maybe RecoveryConfig),
    -- | Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-/./.* and newer.
    resilienceMode :: (Core.Maybe EnvironmentConfig_ResilienceMode),
    -- | Optional. The configuration settings for software inside the environment.
    softwareConfig :: (Core.Maybe SoftwareConfig),
    -- | Optional. The configuration settings for the Airflow web server App Engine instance.
    webServerConfig :: (Core.Maybe WebServerConfig),
    -- | Optional. The network-level access control policy for the Airflow web server. If unspecified, no network-level access restrictions will be applied.
    webServerNetworkAccessControl :: (Core.Maybe WebServerNetworkAccessControl),
    -- | Optional. The workloads configuration settings for the GKE cluster associated with the Cloud Composer environment. The GKE cluster runs Airflow scheduler, web server and workers workloads. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
    workloadsConfig :: (Core.Maybe WorkloadsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'EnvironmentConfig' with the minimum fields required to make a request.
newEnvironmentConfig ::
  EnvironmentConfig
newEnvironmentConfig =
  EnvironmentConfig
    { airflowByoidUri = Core.Nothing,
      airflowUri = Core.Nothing,
      dagGcsPrefix = Core.Nothing,
      dataRetentionConfig = Core.Nothing,
      databaseConfig = Core.Nothing,
      encryptionConfig = Core.Nothing,
      environmentSize = Core.Nothing,
      gkeCluster = Core.Nothing,
      maintenanceWindow = Core.Nothing,
      masterAuthorizedNetworksConfig = Core.Nothing,
      nodeConfig = Core.Nothing,
      nodeCount = Core.Nothing,
      privateEnvironmentConfig = Core.Nothing,
      recoveryConfig = Core.Nothing,
      resilienceMode = Core.Nothing,
      softwareConfig = Core.Nothing,
      webServerConfig = Core.Nothing,
      webServerNetworkAccessControl = Core.Nothing,
      workloadsConfig = Core.Nothing
    }

instance Core.FromJSON EnvironmentConfig where
  parseJSON =
    Core.withObject
      "EnvironmentConfig"
      ( \o ->
          EnvironmentConfig
            Core.<$> (o Core..:? "airflowByoidUri")
            Core.<*> (o Core..:? "airflowUri")
            Core.<*> (o Core..:? "dagGcsPrefix")
            Core.<*> (o Core..:? "dataRetentionConfig")
            Core.<*> (o Core..:? "databaseConfig")
            Core.<*> (o Core..:? "encryptionConfig")
            Core.<*> (o Core..:? "environmentSize")
            Core.<*> (o Core..:? "gkeCluster")
            Core.<*> (o Core..:? "maintenanceWindow")
            Core.<*> (o Core..:? "masterAuthorizedNetworksConfig")
            Core.<*> (o Core..:? "nodeConfig")
            Core.<*> (o Core..:? "nodeCount")
            Core.<*> (o Core..:? "privateEnvironmentConfig")
            Core.<*> (o Core..:? "recoveryConfig")
            Core.<*> (o Core..:? "resilienceMode")
            Core.<*> (o Core..:? "softwareConfig")
            Core.<*> (o Core..:? "webServerConfig")
            Core.<*> (o Core..:? "webServerNetworkAccessControl")
            Core.<*> (o Core..:? "workloadsConfig")
      )

instance Core.ToJSON EnvironmentConfig where
  toJSON EnvironmentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("airflowByoidUri" Core..=) Core.<$> airflowByoidUri,
            ("airflowUri" Core..=) Core.<$> airflowUri,
            ("dagGcsPrefix" Core..=) Core.<$> dagGcsPrefix,
            ("dataRetentionConfig" Core..=) Core.<$> dataRetentionConfig,
            ("databaseConfig" Core..=) Core.<$> databaseConfig,
            ("encryptionConfig" Core..=) Core.<$> encryptionConfig,
            ("environmentSize" Core..=) Core.<$> environmentSize,
            ("gkeCluster" Core..=) Core.<$> gkeCluster,
            ("maintenanceWindow" Core..=) Core.<$> maintenanceWindow,
            ("masterAuthorizedNetworksConfig" Core..=)
              Core.<$> masterAuthorizedNetworksConfig,
            ("nodeConfig" Core..=) Core.<$> nodeConfig,
            ("nodeCount" Core..=) Core.<$> nodeCount,
            ("privateEnvironmentConfig" Core..=)
              Core.<$> privateEnvironmentConfig,
            ("recoveryConfig" Core..=) Core.<$> recoveryConfig,
            ("resilienceMode" Core..=) Core.<$> resilienceMode,
            ("softwareConfig" Core..=) Core.<$> softwareConfig,
            ("webServerConfig" Core..=) Core.<$> webServerConfig,
            ("webServerNetworkAccessControl" Core..=)
              Core.<$> webServerNetworkAccessControl,
            ("workloadsConfig" Core..=) Core.<$> workloadsConfig
          ]
      )

-- | Execute Airflow Command request.
--
-- /See:/ 'newExecuteAirflowCommandRequest' smart constructor.
data ExecuteAirflowCommandRequest = ExecuteAirflowCommandRequest
  { -- | Airflow command.
    command :: (Core.Maybe Core.Text),
    -- | Parameters for the Airflow command\/subcommand as an array of arguments. It may contain positional arguments like @[\"my-dag-id\"]@, key-value parameters like @[\"--foo=bar\"]@ or @[\"--foo\",\"bar\"]@, or other flags like @[\"-f\"]@.
    parameters :: (Core.Maybe [Core.Text]),
    -- | Airflow subcommand.
    subcommand :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteAirflowCommandRequest' with the minimum fields required to make a request.
newExecuteAirflowCommandRequest ::
  ExecuteAirflowCommandRequest
newExecuteAirflowCommandRequest =
  ExecuteAirflowCommandRequest
    { command = Core.Nothing,
      parameters = Core.Nothing,
      subcommand = Core.Nothing
    }

instance Core.FromJSON ExecuteAirflowCommandRequest where
  parseJSON =
    Core.withObject
      "ExecuteAirflowCommandRequest"
      ( \o ->
          ExecuteAirflowCommandRequest
            Core.<$> (o Core..:? "command")
            Core.<*> (o Core..:? "parameters")
            Core.<*> (o Core..:? "subcommand")
      )

instance Core.ToJSON ExecuteAirflowCommandRequest where
  toJSON ExecuteAirflowCommandRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("command" Core..=) Core.<$> command,
            ("parameters" Core..=) Core.<$> parameters,
            ("subcommand" Core..=) Core.<$> subcommand
          ]
      )

-- | Response to ExecuteAirflowCommandRequest.
--
-- /See:/ 'newExecuteAirflowCommandResponse' smart constructor.
data ExecuteAirflowCommandResponse = ExecuteAirflowCommandResponse
  { -- | Error message. Empty if there was no error.
    error :: (Core.Maybe Core.Text),
    -- | The unique ID of the command execution for polling.
    executionId :: (Core.Maybe Core.Text),
    -- | The name of the pod where the command is executed.
    pod :: (Core.Maybe Core.Text),
    -- | The namespace of the pod where the command is executed.
    podNamespace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExecuteAirflowCommandResponse' with the minimum fields required to make a request.
newExecuteAirflowCommandResponse ::
  ExecuteAirflowCommandResponse
newExecuteAirflowCommandResponse =
  ExecuteAirflowCommandResponse
    { error = Core.Nothing,
      executionId = Core.Nothing,
      pod = Core.Nothing,
      podNamespace = Core.Nothing
    }

instance Core.FromJSON ExecuteAirflowCommandResponse where
  parseJSON =
    Core.withObject
      "ExecuteAirflowCommandResponse"
      ( \o ->
          ExecuteAirflowCommandResponse
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "executionId")
            Core.<*> (o Core..:? "pod")
            Core.<*> (o Core..:? "podNamespace")
      )

instance Core.ToJSON ExecuteAirflowCommandResponse where
  toJSON ExecuteAirflowCommandResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("executionId" Core..=) Core.<$> executionId,
            ("pod" Core..=) Core.<$> pod,
            ("podNamespace" Core..=) Core.<$> podNamespace
          ]
      )

-- | Information about how a command ended.
--
-- /See:/ 'newExitInfo' smart constructor.
data ExitInfo = ExitInfo
  { -- | Error message. Empty if there was no error.
    error :: (Core.Maybe Core.Text),
    -- | The exit code from the command execution.
    exitCode :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ExitInfo' with the minimum fields required to make a request.
newExitInfo ::
  ExitInfo
newExitInfo =
  ExitInfo {error = Core.Nothing, exitCode = Core.Nothing}

instance Core.FromJSON ExitInfo where
  parseJSON =
    Core.withObject
      "ExitInfo"
      ( \o ->
          ExitInfo
            Core.<$> (o Core..:? "error")
            Core.<*> (o Core..:? "exitCode")
      )

instance Core.ToJSON ExitInfo where
  toJSON ExitInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("error" Core..=) Core.<$> error,
            ("exitCode" Core..=) Core.<$> exitCode
          ]
      )

-- | Response for FetchDatabasePropertiesRequest.
--
-- /See:/ 'newFetchDatabasePropertiesResponse' smart constructor.
data FetchDatabasePropertiesResponse = FetchDatabasePropertiesResponse
  { -- | The availability status of the failover replica. A false status indicates that the failover replica is out of sync. The primary instance can only fail over to the failover replica when the status is true.
    isFailoverReplicaAvailable :: (Core.Maybe Core.Bool),
    -- | The Compute Engine zone that the instance is currently serving from.
    primaryGceZone :: (Core.Maybe Core.Text),
    -- | The Compute Engine zone that the failover instance is currently serving from for a regional Cloud SQL instance.
    secondaryGceZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FetchDatabasePropertiesResponse' with the minimum fields required to make a request.
newFetchDatabasePropertiesResponse ::
  FetchDatabasePropertiesResponse
newFetchDatabasePropertiesResponse =
  FetchDatabasePropertiesResponse
    { isFailoverReplicaAvailable =
        Core.Nothing,
      primaryGceZone = Core.Nothing,
      secondaryGceZone = Core.Nothing
    }

instance Core.FromJSON FetchDatabasePropertiesResponse where
  parseJSON =
    Core.withObject
      "FetchDatabasePropertiesResponse"
      ( \o ->
          FetchDatabasePropertiesResponse
            Core.<$> (o Core..:? "isFailoverReplicaAvailable")
            Core.<*> (o Core..:? "primaryGceZone")
            Core.<*> (o Core..:? "secondaryGceZone")
      )

instance Core.ToJSON FetchDatabasePropertiesResponse where
  toJSON FetchDatabasePropertiesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("isFailoverReplicaAvailable" Core..=)
              Core.<$> isFailoverReplicaAvailable,
            ("primaryGceZone" Core..=) Core.<$> primaryGceZone,
            ("secondaryGceZone" Core..=) Core.<$> secondaryGceZone
          ]
      )

-- | Configuration for controlling how IPs are allocated in the GKE cluster running the Apache Airflow software.
--
-- /See:/ 'newIPAllocationPolicy' smart constructor.
data IPAllocationPolicy = IPAllocationPolicy
  { -- | Optional. The IP address range used to allocate IP addresses to pods in the GKE cluster. For Cloud Composer environments in versions composer-1././-airflow-/./.*, this field is applicable only when @use_ip_aliases@ is true. Set to blank to have GKE choose a range with the default size. Set to \/netmask (e.g. @\/14@) to have GKE choose a range with a specific netmask. Set to a <https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    clusterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Optional. The name of the GKE cluster\'s secondary range used to allocate IP addresses to pods. For Cloud Composer environments in versions composer-1././-airflow-/./.*, this field is applicable only when @use_ip_aliases@ is true.
    clusterSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | Optional. The IP address range of the services IP addresses in this GKE cluster. For Cloud Composer environments in versions composer-1././-airflow-/./.*, this field is applicable only when @use_ip_aliases@ is true. Set to blank to have GKE choose a range with the default size. Set to \/netmask (e.g. @\/14@) to have GKE choose a range with a specific netmask. Set to a <https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing CIDR> notation (e.g. @10.96.0.0\/14@) from the RFC-1918 private networks (e.g. @10.0.0.0\/8@, @172.16.0.0\/12@, @192.168.0.0\/16@) to pick a specific range to use.
    servicesIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Optional. The name of the services\' secondary range used to allocate IP addresses to the GKE cluster. For Cloud Composer environments in versions composer-1././-airflow-/./.*, this field is applicable only when @use_ip_aliases@ is true.
    servicesSecondaryRangeName :: (Core.Maybe Core.Text),
    -- | Optional. Whether or not to enable Alias IPs in the GKE cluster. If @true@, a VPC-native cluster is created. This field is only supported for Cloud Composer environments in versions composer-1././-airflow-/./.*. Environments in newer versions always use VPC-native GKE clusters.
    useIpAliases :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IPAllocationPolicy' with the minimum fields required to make a request.
newIPAllocationPolicy ::
  IPAllocationPolicy
newIPAllocationPolicy =
  IPAllocationPolicy
    { clusterIpv4CidrBlock = Core.Nothing,
      clusterSecondaryRangeName = Core.Nothing,
      servicesIpv4CidrBlock = Core.Nothing,
      servicesSecondaryRangeName = Core.Nothing,
      useIpAliases = Core.Nothing
    }

instance Core.FromJSON IPAllocationPolicy where
  parseJSON =
    Core.withObject
      "IPAllocationPolicy"
      ( \o ->
          IPAllocationPolicy
            Core.<$> (o Core..:? "clusterIpv4CidrBlock")
            Core.<*> (o Core..:? "clusterSecondaryRangeName")
            Core.<*> (o Core..:? "servicesIpv4CidrBlock")
            Core.<*> (o Core..:? "servicesSecondaryRangeName")
            Core.<*> (o Core..:? "useIpAliases")
      )

instance Core.ToJSON IPAllocationPolicy where
  toJSON IPAllocationPolicy {..} =
    Core.object
      ( Core.catMaybes
          [ ("clusterIpv4CidrBlock" Core..=) Core.<$> clusterIpv4CidrBlock,
            ("clusterSecondaryRangeName" Core..=)
              Core.<$> clusterSecondaryRangeName,
            ("servicesIpv4CidrBlock" Core..=) Core.<$> servicesIpv4CidrBlock,
            ("servicesSecondaryRangeName" Core..=)
              Core.<$> servicesSecondaryRangeName,
            ("useIpAliases" Core..=) Core.<$> useIpAliases
          ]
      )

-- | ImageVersion information
--
-- /See:/ 'newImageVersion' smart constructor.
data ImageVersion = ImageVersion
  { -- | Whether it is impossible to create an environment with the image version.
    creationDisabled :: (Core.Maybe Core.Bool),
    -- | The string identifier of the ImageVersion, in the form: \"composer-x.y.z-airflow-a.b.c\"
    imageVersionId :: (Core.Maybe Core.Text),
    -- | Whether this is the default ImageVersion used by Composer during environment creation if no input ImageVersion is specified.
    isDefault :: (Core.Maybe Core.Bool),
    -- | The date of the version release.
    releaseDate :: (Core.Maybe Date),
    -- | supported python versions
    supportedPythonVersions :: (Core.Maybe [Core.Text]),
    -- | Whether it is impossible to upgrade an environment running with the image version.
    upgradeDisabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ImageVersion' with the minimum fields required to make a request.
newImageVersion ::
  ImageVersion
newImageVersion =
  ImageVersion
    { creationDisabled = Core.Nothing,
      imageVersionId = Core.Nothing,
      isDefault = Core.Nothing,
      releaseDate = Core.Nothing,
      supportedPythonVersions = Core.Nothing,
      upgradeDisabled = Core.Nothing
    }

instance Core.FromJSON ImageVersion where
  parseJSON =
    Core.withObject
      "ImageVersion"
      ( \o ->
          ImageVersion
            Core.<$> (o Core..:? "creationDisabled")
            Core.<*> (o Core..:? "imageVersionId")
            Core.<*> (o Core..:? "isDefault")
            Core.<*> (o Core..:? "releaseDate")
            Core.<*> (o Core..:? "supportedPythonVersions")
            Core.<*> (o Core..:? "upgradeDisabled")
      )

instance Core.ToJSON ImageVersion where
  toJSON ImageVersion {..} =
    Core.object
      ( Core.catMaybes
          [ ("creationDisabled" Core..=) Core.<$> creationDisabled,
            ("imageVersionId" Core..=) Core.<$> imageVersionId,
            ("isDefault" Core..=) Core.<$> isDefault,
            ("releaseDate" Core..=) Core.<$> releaseDate,
            ("supportedPythonVersions" Core..=)
              Core.<$> supportedPythonVersions,
            ("upgradeDisabled" Core..=) Core.<$> upgradeDisabled
          ]
      )

-- | Contains information about a single line from logs.
--
-- /See:/ 'newLine' smart constructor.
data Line = Line
  { -- | Text content of the log line.
    content :: (Core.Maybe Core.Text),
    -- | Number of the line.
    lineNumber :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Line' with the minimum fields required to make a request.
newLine ::
  Line
newLine = Line {content = Core.Nothing, lineNumber = Core.Nothing}

instance Core.FromJSON Line where
  parseJSON =
    Core.withObject
      "Line"
      ( \o ->
          Line
            Core.<$> (o Core..:? "content")
            Core.<*> (o Core..:? "lineNumber")
      )

instance Core.ToJSON Line where
  toJSON Line {..} =
    Core.object
      ( Core.catMaybes
          [ ("content" Core..=) Core.<$> content,
            ("lineNumber" Core..=) Core.<$> lineNumber
          ]
      )

-- | The environments in a project and location.
--
-- /See:/ 'newListEnvironmentsResponse' smart constructor.
data ListEnvironmentsResponse = ListEnvironmentsResponse
  { -- | The list of environments returned by a ListEnvironmentsRequest.
    environments :: (Core.Maybe [Environment]),
    -- | The page token used to query for the next page if one exists.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListEnvironmentsResponse' with the minimum fields required to make a request.
newListEnvironmentsResponse ::
  ListEnvironmentsResponse
newListEnvironmentsResponse =
  ListEnvironmentsResponse
    { environments = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListEnvironmentsResponse where
  parseJSON =
    Core.withObject
      "ListEnvironmentsResponse"
      ( \o ->
          ListEnvironmentsResponse
            Core.<$> (o Core..:? "environments")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListEnvironmentsResponse where
  toJSON ListEnvironmentsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("environments" Core..=) Core.<$> environments,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | The ImageVersions in a project and location.
--
-- /See:/ 'newListImageVersionsResponse' smart constructor.
data ListImageVersionsResponse = ListImageVersionsResponse
  { -- | The list of supported ImageVersions in a location.
    imageVersions :: (Core.Maybe [ImageVersion]),
    -- | The page token used to query for the next page if one exists.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListImageVersionsResponse' with the minimum fields required to make a request.
newListImageVersionsResponse ::
  ListImageVersionsResponse
newListImageVersionsResponse =
  ListImageVersionsResponse
    { imageVersions = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance Core.FromJSON ListImageVersionsResponse where
  parseJSON =
    Core.withObject
      "ListImageVersionsResponse"
      ( \o ->
          ListImageVersionsResponse
            Core.<$> (o Core..:? "imageVersions")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListImageVersionsResponse where
  toJSON ListImageVersionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageVersions" Core..=) Core.<$> imageVersions,
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
            Core.<*> (o Core..:? "operations")
      )

instance Core.ToJSON ListOperationsResponse where
  toJSON ListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | The user workloads ConfigMaps for a given environment.
--
-- /See:/ 'newListUserWorkloadsConfigMapsResponse' smart constructor.
data ListUserWorkloadsConfigMapsResponse = ListUserWorkloadsConfigMapsResponse
  { -- | The page token used to query for the next page if one exists.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of ConfigMaps returned by a ListUserWorkloadsConfigMapsRequest.
    userWorkloadsConfigMaps :: (Core.Maybe [UserWorkloadsConfigMap])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserWorkloadsConfigMapsResponse' with the minimum fields required to make a request.
newListUserWorkloadsConfigMapsResponse ::
  ListUserWorkloadsConfigMapsResponse
newListUserWorkloadsConfigMapsResponse =
  ListUserWorkloadsConfigMapsResponse
    { nextPageToken = Core.Nothing,
      userWorkloadsConfigMaps = Core.Nothing
    }

instance Core.FromJSON ListUserWorkloadsConfigMapsResponse where
  parseJSON =
    Core.withObject
      "ListUserWorkloadsConfigMapsResponse"
      ( \o ->
          ListUserWorkloadsConfigMapsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "userWorkloadsConfigMaps")
      )

instance Core.ToJSON ListUserWorkloadsConfigMapsResponse where
  toJSON ListUserWorkloadsConfigMapsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("userWorkloadsConfigMaps" Core..=)
              Core.<$> userWorkloadsConfigMaps
          ]
      )

-- | The user workloads Secrets for a given environment.
--
-- /See:/ 'newListUserWorkloadsSecretsResponse' smart constructor.
data ListUserWorkloadsSecretsResponse = ListUserWorkloadsSecretsResponse
  { -- | The page token used to query for the next page if one exists.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of Secrets returned by a ListUserWorkloadsSecretsRequest.
    userWorkloadsSecrets :: (Core.Maybe [UserWorkloadsSecret])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListUserWorkloadsSecretsResponse' with the minimum fields required to make a request.
newListUserWorkloadsSecretsResponse ::
  ListUserWorkloadsSecretsResponse
newListUserWorkloadsSecretsResponse =
  ListUserWorkloadsSecretsResponse
    { nextPageToken = Core.Nothing,
      userWorkloadsSecrets = Core.Nothing
    }

instance Core.FromJSON ListUserWorkloadsSecretsResponse where
  parseJSON =
    Core.withObject
      "ListUserWorkloadsSecretsResponse"
      ( \o ->
          ListUserWorkloadsSecretsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "userWorkloadsSecrets")
      )

instance Core.ToJSON ListUserWorkloadsSecretsResponse where
  toJSON ListUserWorkloadsSecretsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("userWorkloadsSecrets" Core..=) Core.<$> userWorkloadsSecrets
          ]
      )

-- | Response to ListWorkloadsRequest.
--
-- /See:/ 'newListWorkloadsResponse' smart constructor.
data ListWorkloadsResponse = ListWorkloadsResponse
  { -- | The page token used to query for the next page if one exists.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The list of environment workloads.
    workloads :: (Core.Maybe [ComposerWorkload])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkloadsResponse' with the minimum fields required to make a request.
newListWorkloadsResponse ::
  ListWorkloadsResponse
newListWorkloadsResponse =
  ListWorkloadsResponse
    { nextPageToken = Core.Nothing,
      workloads = Core.Nothing
    }

instance Core.FromJSON ListWorkloadsResponse where
  parseJSON =
    Core.withObject
      "ListWorkloadsResponse"
      ( \o ->
          ListWorkloadsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "workloads")
      )

instance Core.ToJSON ListWorkloadsResponse where
  toJSON ListWorkloadsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("workloads" Core..=) Core.<$> workloads
          ]
      )

-- | Request to load a snapshot into a Cloud Composer environment.
--
-- /See:/ 'newLoadSnapshotRequest' smart constructor.
data LoadSnapshotRequest = LoadSnapshotRequest
  { -- | Whether or not to skip setting Airflow overrides when loading the environment\'s state.
    skipAirflowOverridesSetting :: (Core.Maybe Core.Bool),
    -- | Whether or not to skip setting environment variables when loading the environment\'s state.
    skipEnvironmentVariablesSetting :: (Core.Maybe Core.Bool),
    -- | Whether or not to skip copying Cloud Storage data when loading the environment\'s state.
    skipGcsDataCopying :: (Core.Maybe Core.Bool),
    -- | Whether or not to skip installing Pypi packages when loading the environment\'s state.
    skipPypiPackagesInstallation :: (Core.Maybe Core.Bool),
    -- | A Cloud Storage path to a snapshot to load, e.g.: \"gs:\/\/my-bucket\/snapshots\/project/location/environment_timestamp\".
    snapshotPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoadSnapshotRequest' with the minimum fields required to make a request.
newLoadSnapshotRequest ::
  LoadSnapshotRequest
newLoadSnapshotRequest =
  LoadSnapshotRequest
    { skipAirflowOverridesSetting = Core.Nothing,
      skipEnvironmentVariablesSetting = Core.Nothing,
      skipGcsDataCopying = Core.Nothing,
      skipPypiPackagesInstallation = Core.Nothing,
      snapshotPath = Core.Nothing
    }

instance Core.FromJSON LoadSnapshotRequest where
  parseJSON =
    Core.withObject
      "LoadSnapshotRequest"
      ( \o ->
          LoadSnapshotRequest
            Core.<$> (o Core..:? "skipAirflowOverridesSetting")
            Core.<*> (o Core..:? "skipEnvironmentVariablesSetting")
            Core.<*> (o Core..:? "skipGcsDataCopying")
            Core.<*> (o Core..:? "skipPypiPackagesInstallation")
            Core.<*> (o Core..:? "snapshotPath")
      )

instance Core.ToJSON LoadSnapshotRequest where
  toJSON LoadSnapshotRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("skipAirflowOverridesSetting" Core..=)
              Core.<$> skipAirflowOverridesSetting,
            ("skipEnvironmentVariablesSetting" Core..=)
              Core.<$> skipEnvironmentVariablesSetting,
            ("skipGcsDataCopying" Core..=) Core.<$> skipGcsDataCopying,
            ("skipPypiPackagesInstallation" Core..=)
              Core.<$> skipPypiPackagesInstallation,
            ("snapshotPath" Core..=) Core.<$> snapshotPath
          ]
      )

-- | Response to LoadSnapshotRequest.
--
-- /See:/ 'newLoadSnapshotResponse' smart constructor.
data LoadSnapshotResponse = LoadSnapshotResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LoadSnapshotResponse' with the minimum fields required to make a request.
newLoadSnapshotResponse ::
  LoadSnapshotResponse
newLoadSnapshotResponse = LoadSnapshotResponse

instance Core.FromJSON LoadSnapshotResponse where
  parseJSON =
    Core.withObject
      "LoadSnapshotResponse"
      (\o -> Core.pure LoadSnapshotResponse)

instance Core.ToJSON LoadSnapshotResponse where
  toJSON = Core.const Core.emptyObject

-- | The configuration settings for Cloud Composer maintenance window. The following example: @{ \"startTime\":\"2019-08-01T01:00:00Z\" \"endTime\":\"2019-08-01T07:00:00Z\" \"recurrence\":\"FREQ=WEEKLY;BYDAY=TU,WE\" }@ would define a maintenance window between 01 and 07 hours UTC during each Tuesday and Wednesday.
--
-- /See:/ 'newMaintenanceWindow' smart constructor.
data MaintenanceWindow = MaintenanceWindow
  { -- | Required. Maintenance window end time. It is used only to calculate the duration of the maintenance window. The value for end-time must be in the future, relative to @start_time@.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Required. Maintenance window recurrence. Format is a subset of <https://tools.ietf.org/html/rfc5545 RFC-5545> @RRULE@. The only allowed values for @FREQ@ field are @FREQ=DAILY@ and @FREQ=WEEKLY;BYDAY=...@ Example values: @FREQ=WEEKLY;BYDAY=TU,WE@, @FREQ=DAILY@.
    recurrence :: (Core.Maybe Core.Text),
    -- | Required. Start time of the first recurrence of the maintenance window.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MaintenanceWindow' with the minimum fields required to make a request.
newMaintenanceWindow ::
  MaintenanceWindow
newMaintenanceWindow =
  MaintenanceWindow
    { endTime = Core.Nothing,
      recurrence = Core.Nothing,
      startTime = Core.Nothing
    }

instance Core.FromJSON MaintenanceWindow where
  parseJSON =
    Core.withObject
      "MaintenanceWindow"
      ( \o ->
          MaintenanceWindow
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "recurrence")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("recurrence" Core..=) Core.<$> recurrence,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Configuration options for the master authorized networks feature. Enabled master authorized networks will disallow all external traffic to access Kubernetes master through HTTPS except traffic from the given CIDR blocks, Google Compute Engine Public IPs and Google Prod IPs.
--
-- /See:/ 'newMasterAuthorizedNetworksConfig' smart constructor.
data MasterAuthorizedNetworksConfig = MasterAuthorizedNetworksConfig
  { -- | Up to 50 external networks that could access Kubernetes master through HTTPS.
    cidrBlocks :: (Core.Maybe [CidrBlock]),
    -- | Whether or not master authorized networks feature is enabled.
    enabled :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'MasterAuthorizedNetworksConfig' with the minimum fields required to make a request.
newMasterAuthorizedNetworksConfig ::
  MasterAuthorizedNetworksConfig
newMasterAuthorizedNetworksConfig =
  MasterAuthorizedNetworksConfig
    { cidrBlocks = Core.Nothing,
      enabled = Core.Nothing
    }

instance Core.FromJSON MasterAuthorizedNetworksConfig where
  parseJSON =
    Core.withObject
      "MasterAuthorizedNetworksConfig"
      ( \o ->
          MasterAuthorizedNetworksConfig
            Core.<$> (o Core..:? "cidrBlocks")
            Core.<*> (o Core..:? "enabled")
      )

instance Core.ToJSON MasterAuthorizedNetworksConfig where
  toJSON MasterAuthorizedNetworksConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cidrBlocks" Core..=) Core.<$> cidrBlocks,
            ("enabled" Core..=) Core.<$> enabled
          ]
      )

-- | Configuration options for networking connections in the Composer 2 environment.
--
-- /See:/ 'newNetworkingConfig' smart constructor.
newtype NetworkingConfig = NetworkingConfig
  { -- | Optional. Indicates the user requested specifc connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
    connectionType :: (Core.Maybe NetworkingConfig_ConnectionType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkingConfig' with the minimum fields required to make a request.
newNetworkingConfig ::
  NetworkingConfig
newNetworkingConfig =
  NetworkingConfig {connectionType = Core.Nothing}

instance Core.FromJSON NetworkingConfig where
  parseJSON =
    Core.withObject
      "NetworkingConfig"
      (\o -> NetworkingConfig Core.<$> (o Core..:? "connectionType"))

instance Core.ToJSON NetworkingConfig where
  toJSON NetworkingConfig {..} =
    Core.object
      ( Core.catMaybes
          [("connectionType" Core..=) Core.<$> connectionType]
      )

-- | The configuration information for the Kubernetes Engine nodes running the Apache Airflow software.
--
-- /See:/ 'newNodeConfig' smart constructor.
data NodeConfig = NodeConfig
  { -- | Optional. The IP range in CIDR notation to use internally by Cloud Composer. IP addresses are not reserved - and the same range can be used by multiple Cloud Composer environments. In case of overlap, IPs from this range will not be accessible in the user\'s VPC network. Cannot be updated. If not specified, the default value of \'100.64.128.0\/20\' is used. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
    composerInternalIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Optional. Network Attachment that Cloud Composer environment is connected to, which provides connectivity with a user\'s VPC network. Takes precedence over network and subnetwork settings. If not provided, but network and subnetwork are defined during environment, it will be provisioned. If not provided and network and subnetwork are also empty, then connectivity to user\'s VPC network is disabled. Network attachment must be provided in format projects\/{project}\/regions\/{region}\/networkAttachments\/{networkAttachment}. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
    composerNetworkAttachment :: (Core.Maybe Core.Text),
    -- | Optional. The disk size in GB used for node VMs. Minimum size is 30GB. If unspecified, defaults to 100GB. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    diskSizeGb :: (Core.Maybe Core.Int32),
    -- | Optional. Deploys \'ip-masq-agent\' daemon set in the GKE cluster and defines nonMasqueradeCIDRs equals to pod IP range so IP masquerading is used for all destination addresses, except between pods traffic. See: https:\/\/cloud.google.com\/kubernetes-engine\/docs\/how-to\/ip-masquerade-agent
    enableIpMasqAgent :: (Core.Maybe Core.Bool),
    -- | Optional. The configuration for controlling how IPs are allocated in the GKE cluster.
    ipAllocationPolicy :: (Core.Maybe IPAllocationPolicy),
    -- | Optional. The Compute Engine </compute/docs/regions-zones zone> in which to deploy the VMs used to run the Apache Airflow software, specified as a </apis/design/resource_names#relative_resource_name relative resource name>. For example: \"projects\/{projectId}\/zones\/{zoneId}\". This @location@ must belong to the enclosing environment\'s project and location. If both this field and @nodeConfig.machineType@ are specified, @nodeConfig.machineType@ must belong to this @location@; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If only one field (@location@ or @nodeConfig.machineType@) is specified, the location information from the specified field will be propagated to the unspecified field. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    location :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine </compute/docs/machine-types machine type> used for cluster instances, specified as a </apis/design/resource_names#relative_resource_name relative resource name>. For example: \"projects\/{projectId}\/zones\/{zoneId}\/machineTypes\/{machineTypeId}\". The @machineType@ must belong to the enclosing environment\'s project and location. If both this field and @nodeConfig.location@ are specified, this @machineType@ must belong to the @nodeConfig.location@; if both are unspecified, the service will pick a zone in the Compute Engine region corresponding to the Cloud Composer location, and propagate that choice to both fields. If exactly one of this field and @nodeConfig.location@ is specified, the location information from the specified field will be propagated to the unspecified field. The @machineTypeId@ must not be a </compute/docs/machine-types#sharedcore shared-core machine type>. If this field is unspecified, the @machineTypeId@ defaults to \"n1-standard-1\". This field is
    -- supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    machineType :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine network to be used for machine communications, specified as a </apis/design/resource_names#relative_resource_name relative resource name>. For example: \"projects\/{projectId}\/global\/networks\/{networkId}\". If unspecified, the \"default\" network ID in the environment\'s project is used. If a </vpc/docs/vpc#vpc_networks_and_subnets Custom Subnet Network> is provided, @nodeConfig.subnetwork@ must also be provided. For </vpc/docs/shared-vpc Shared VPC> subnetwork requirements, see @nodeConfig.subnetwork@.
    network :: (Core.Maybe Core.Text),
    -- | Optional. The set of Google API scopes to be made available on all node VMs. If @oauth_scopes@ is empty, defaults to [\"https:\/\/www.googleapis.com\/auth\/cloud-platform\"]. Cannot be updated. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    oauthScopes :: (Core.Maybe [Core.Text]),
    -- | Optional. The Google Cloud Platform Service Account to be used by the node VMs. If a service account is not specified, the \"default\" Compute Engine service account is used. Cannot be updated.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | Optional. The Compute Engine subnetwork to be used for machine communications, specified as a </apis/design/resource_names#relative_resource_name relative resource name>. For example: \"projects\/{projectId}\/regions\/{regionId}\/subnetworks\/{subnetworkId}\" If a subnetwork is provided, @nodeConfig.network@ must also be provided, and the subnetwork must belong to the enclosing environment\'s project and location.
    subnetwork :: (Core.Maybe Core.Text),
    -- | Optional. The list of instance tags applied to all node VMs. Tags are used to identify valid sources or targets for network firewalls. Each tag within the list must comply with <https://www.ietf.org/rfc/rfc1035.txt RFC1035>. Cannot be updated.
    tags :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NodeConfig' with the minimum fields required to make a request.
newNodeConfig ::
  NodeConfig
newNodeConfig =
  NodeConfig
    { composerInternalIpv4CidrBlock = Core.Nothing,
      composerNetworkAttachment = Core.Nothing,
      diskSizeGb = Core.Nothing,
      enableIpMasqAgent = Core.Nothing,
      ipAllocationPolicy = Core.Nothing,
      location = Core.Nothing,
      machineType = Core.Nothing,
      network = Core.Nothing,
      oauthScopes = Core.Nothing,
      serviceAccount = Core.Nothing,
      subnetwork = Core.Nothing,
      tags = Core.Nothing
    }

instance Core.FromJSON NodeConfig where
  parseJSON =
    Core.withObject
      "NodeConfig"
      ( \o ->
          NodeConfig
            Core.<$> (o Core..:? "composerInternalIpv4CidrBlock")
            Core.<*> (o Core..:? "composerNetworkAttachment")
            Core.<*> (o Core..:? "diskSizeGb")
            Core.<*> (o Core..:? "enableIpMasqAgent")
            Core.<*> (o Core..:? "ipAllocationPolicy")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "network")
            Core.<*> (o Core..:? "oauthScopes")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "subnetwork")
            Core.<*> (o Core..:? "tags")
      )

instance Core.ToJSON NodeConfig where
  toJSON NodeConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("composerInternalIpv4CidrBlock" Core..=)
              Core.<$> composerInternalIpv4CidrBlock,
            ("composerNetworkAttachment" Core..=)
              Core.<$> composerNetworkAttachment,
            ("diskSizeGb" Core..=) Core.<$> diskSizeGb,
            ("enableIpMasqAgent" Core..=) Core.<$> enableIpMasqAgent,
            ("ipAllocationPolicy" Core..=) Core.<$> ipAllocationPolicy,
            ("location" Core..=) Core.<$> location,
            ("machineType" Core..=) Core.<$> machineType,
            ("network" Core..=) Core.<$> network,
            ("oauthScopes" Core..=) Core.<$> oauthScopes,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("subnetwork" Core..=) Core.<$> subnetwork,
            ("tags" Core..=) Core.<$> tags
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
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
newOperation_Metadata additional =
  Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      (\o -> Operation_Metadata Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} = Core.toJSON additional

-- | The normal, successful response of the operation. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
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
newOperation_Response additional =
  Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      (\o -> Operation_Response Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} = Core.toJSON additional

-- | Metadata describing an operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Output only. The time the operation was submitted to the server.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time when the operation terminated, regardless of its success. This field is unset if the operation is still ongoing.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The type of operation being performed.
    operationType :: (Core.Maybe OperationMetadata_OperationType),
    -- | Output only. The resource being operated on, as a </apis/design/resource_names#relative_resource_name relative resource name>.
    resource :: (Core.Maybe Core.Text),
    -- | Output only. The UUID of the resource being operated on.
    resourceUuid :: (Core.Maybe Core.Text),
    -- | Output only. The current operation state.
    state :: (Core.Maybe OperationMetadata_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { createTime = Core.Nothing,
      endTime = Core.Nothing,
      operationType = Core.Nothing,
      resource = Core.Nothing,
      resourceUuid = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "operationType")
            Core.<*> (o Core..:? "resource")
            Core.<*> (o Core..:? "resourceUuid")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("operationType" Core..=) Core.<$> operationType,
            ("resource" Core..=) Core.<$> resource,
            ("resourceUuid" Core..=) Core.<$> resourceUuid,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Poll Airflow Command request.
--
-- /See:/ 'newPollAirflowCommandRequest' smart constructor.
data PollAirflowCommandRequest = PollAirflowCommandRequest
  { -- | The unique ID of the command execution.
    executionId :: (Core.Maybe Core.Text),
    -- | Line number from which new logs should be fetched.
    nextLineNumber :: (Core.Maybe Core.Int32),
    -- | The name of the pod where the command is executed.
    pod :: (Core.Maybe Core.Text),
    -- | The namespace of the pod where the command is executed.
    podNamespace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PollAirflowCommandRequest' with the minimum fields required to make a request.
newPollAirflowCommandRequest ::
  PollAirflowCommandRequest
newPollAirflowCommandRequest =
  PollAirflowCommandRequest
    { executionId = Core.Nothing,
      nextLineNumber = Core.Nothing,
      pod = Core.Nothing,
      podNamespace = Core.Nothing
    }

instance Core.FromJSON PollAirflowCommandRequest where
  parseJSON =
    Core.withObject
      "PollAirflowCommandRequest"
      ( \o ->
          PollAirflowCommandRequest
            Core.<$> (o Core..:? "executionId")
            Core.<*> (o Core..:? "nextLineNumber")
            Core.<*> (o Core..:? "pod")
            Core.<*> (o Core..:? "podNamespace")
      )

instance Core.ToJSON PollAirflowCommandRequest where
  toJSON PollAirflowCommandRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionId" Core..=) Core.<$> executionId,
            ("nextLineNumber" Core..=) Core.<$> nextLineNumber,
            ("pod" Core..=) Core.<$> pod,
            ("podNamespace" Core..=) Core.<$> podNamespace
          ]
      )

-- | Response to PollAirflowCommandRequest.
--
-- /See:/ 'newPollAirflowCommandResponse' smart constructor.
data PollAirflowCommandResponse = PollAirflowCommandResponse
  { -- | The result exit status of the command.
    exitInfo :: (Core.Maybe ExitInfo),
    -- | Output from the command execution. It may not contain the full output and the caller may need to poll for more lines.
    output :: (Core.Maybe [Line]),
    -- | Whether the command execution has finished and there is no more output.
    outputEnd :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PollAirflowCommandResponse' with the minimum fields required to make a request.
newPollAirflowCommandResponse ::
  PollAirflowCommandResponse
newPollAirflowCommandResponse =
  PollAirflowCommandResponse
    { exitInfo = Core.Nothing,
      output = Core.Nothing,
      outputEnd = Core.Nothing
    }

instance Core.FromJSON PollAirflowCommandResponse where
  parseJSON =
    Core.withObject
      "PollAirflowCommandResponse"
      ( \o ->
          PollAirflowCommandResponse
            Core.<$> (o Core..:? "exitInfo")
            Core.<*> (o Core..:? "output")
            Core.<*> (o Core..:? "outputEnd")
      )

instance Core.ToJSON PollAirflowCommandResponse where
  toJSON PollAirflowCommandResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("exitInfo" Core..=) Core.<$> exitInfo,
            ("output" Core..=) Core.<$> output,
            ("outputEnd" Core..=) Core.<$> outputEnd
          ]
      )

-- | Configuration options for the private GKE cluster in a Cloud Composer environment.
--
-- /See:/ 'newPrivateClusterConfig' smart constructor.
data PrivateClusterConfig = PrivateClusterConfig
  { -- | Optional. If @true@, access to the public endpoint of the GKE cluster is denied.
    enablePrivateEndpoint :: (Core.Maybe Core.Bool),
    -- | Optional. The CIDR block from which IPv4 range for GKE master will be reserved. If left blank, the default value of \'172.16.0.0\/23\' is used.
    masterIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The IP range in CIDR notation to use for the hosted master network. This range is used for assigning internal IP addresses to the GKE cluster master or set of masters and to the internal load balancer virtual IP. This range must not overlap with any other ranges in use within the cluster\'s network.
    masterIpv4ReservedRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateClusterConfig' with the minimum fields required to make a request.
newPrivateClusterConfig ::
  PrivateClusterConfig
newPrivateClusterConfig =
  PrivateClusterConfig
    { enablePrivateEndpoint = Core.Nothing,
      masterIpv4CidrBlock = Core.Nothing,
      masterIpv4ReservedRange = Core.Nothing
    }

instance Core.FromJSON PrivateClusterConfig where
  parseJSON =
    Core.withObject
      "PrivateClusterConfig"
      ( \o ->
          PrivateClusterConfig
            Core.<$> (o Core..:? "enablePrivateEndpoint")
            Core.<*> (o Core..:? "masterIpv4CidrBlock")
            Core.<*> (o Core..:? "masterIpv4ReservedRange")
      )

instance Core.ToJSON PrivateClusterConfig where
  toJSON PrivateClusterConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enablePrivateEndpoint" Core..=) Core.<$> enablePrivateEndpoint,
            ("masterIpv4CidrBlock" Core..=) Core.<$> masterIpv4CidrBlock,
            ("masterIpv4ReservedRange" Core..=)
              Core.<$> masterIpv4ReservedRange
          ]
      )

-- | The configuration information for configuring a Private IP Cloud Composer environment.
--
-- /See:/ 'newPrivateEnvironmentConfig' smart constructor.
data PrivateEnvironmentConfig = PrivateEnvironmentConfig
  { -- | Optional. When specified, the environment will use Private Service Connect instead of VPC peerings to connect to Cloud SQL in the Tenant Project, and the PSC endpoint in the Customer Project will use an IP address from this subnetwork.
    cloudComposerConnectionSubnetwork :: (Core.Maybe Core.Text),
    -- | Optional. The CIDR block from which IP range for Cloud Composer Network in tenant project will be reserved. Needs to be disjoint from private/cluster/config.master/ipv4/cidr/block and cloud/sql/ipv4/cidr_block. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
    cloudComposerNetworkIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The IP range reserved for the tenant project\'s Cloud Composer network. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
    cloudComposerNetworkIpv4ReservedRange :: (Core.Maybe Core.Text),
    -- | Optional. The CIDR block from which IP range in tenant project will be reserved for Cloud SQL. Needs to be disjoint from @web_server_ipv4_cidr_block@.
    cloudSqlIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Optional. If @true@, builds performed during operations that install Python packages have only private connectivity to Google services (including Artifact Registry) and VPC network (if either @NodeConfig.network@ and @NodeConfig.subnetwork@ fields or @NodeConfig.composer_network_attachment@ field are specified). If @false@, the builds also have access to the internet. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
    enablePrivateBuildsOnly :: (Core.Maybe Core.Bool),
    -- | Optional. If @true@, a Private IP Cloud Composer environment is created. If this field is set to true, @IPAllocationPolicy.use_ip_aliases@ must be set to true for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    enablePrivateEnvironment :: (Core.Maybe Core.Bool),
    -- | Optional. When enabled, IPs from public (non-RFC1918) ranges can be used for @IPAllocationPolicy.cluster_ipv4_cidr_block@ and @IPAllocationPolicy.service_ipv4_cidr_block@.
    enablePrivatelyUsedPublicIps :: (Core.Maybe Core.Bool),
    -- | Optional. Configuration for the network connections configuration in the environment.
    networkingConfig :: (Core.Maybe NetworkingConfig),
    -- | Optional. Configuration for the private GKE cluster for a Private IP Cloud Composer environment.
    privateClusterConfig :: (Core.Maybe PrivateClusterConfig),
    -- | Optional. The CIDR block from which IP range for web server will be reserved. Needs to be disjoint from @private_cluster_config.master_ipv4_cidr_block@ and @cloud_sql_ipv4_cidr_block@. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    webServerIpv4CidrBlock :: (Core.Maybe Core.Text),
    -- | Output only. The IP range reserved for the tenant project\'s App Engine VMs. This field is supported for Cloud Composer environments in versions composer-1././-airflow-/./.*.
    webServerIpv4ReservedRange :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivateEnvironmentConfig' with the minimum fields required to make a request.
newPrivateEnvironmentConfig ::
  PrivateEnvironmentConfig
newPrivateEnvironmentConfig =
  PrivateEnvironmentConfig
    { cloudComposerConnectionSubnetwork =
        Core.Nothing,
      cloudComposerNetworkIpv4CidrBlock = Core.Nothing,
      cloudComposerNetworkIpv4ReservedRange = Core.Nothing,
      cloudSqlIpv4CidrBlock = Core.Nothing,
      enablePrivateBuildsOnly = Core.Nothing,
      enablePrivateEnvironment = Core.Nothing,
      enablePrivatelyUsedPublicIps = Core.Nothing,
      networkingConfig = Core.Nothing,
      privateClusterConfig = Core.Nothing,
      webServerIpv4CidrBlock = Core.Nothing,
      webServerIpv4ReservedRange = Core.Nothing
    }

instance Core.FromJSON PrivateEnvironmentConfig where
  parseJSON =
    Core.withObject
      "PrivateEnvironmentConfig"
      ( \o ->
          PrivateEnvironmentConfig
            Core.<$> (o Core..:? "cloudComposerConnectionSubnetwork")
            Core.<*> (o Core..:? "cloudComposerNetworkIpv4CidrBlock")
            Core.<*> (o Core..:? "cloudComposerNetworkIpv4ReservedRange")
            Core.<*> (o Core..:? "cloudSqlIpv4CidrBlock")
            Core.<*> (o Core..:? "enablePrivateBuildsOnly")
            Core.<*> (o Core..:? "enablePrivateEnvironment")
            Core.<*> (o Core..:? "enablePrivatelyUsedPublicIps")
            Core.<*> (o Core..:? "networkingConfig")
            Core.<*> (o Core..:? "privateClusterConfig")
            Core.<*> (o Core..:? "webServerIpv4CidrBlock")
            Core.<*> (o Core..:? "webServerIpv4ReservedRange")
      )

instance Core.ToJSON PrivateEnvironmentConfig where
  toJSON PrivateEnvironmentConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("cloudComposerConnectionSubnetwork" Core..=)
              Core.<$> cloudComposerConnectionSubnetwork,
            ("cloudComposerNetworkIpv4CidrBlock" Core..=)
              Core.<$> cloudComposerNetworkIpv4CidrBlock,
            ("cloudComposerNetworkIpv4ReservedRange" Core..=)
              Core.<$> cloudComposerNetworkIpv4ReservedRange,
            ("cloudSqlIpv4CidrBlock" Core..=) Core.<$> cloudSqlIpv4CidrBlock,
            ("enablePrivateBuildsOnly" Core..=)
              Core.<$> enablePrivateBuildsOnly,
            ("enablePrivateEnvironment" Core..=)
              Core.<$> enablePrivateEnvironment,
            ("enablePrivatelyUsedPublicIps" Core..=)
              Core.<$> enablePrivatelyUsedPublicIps,
            ("networkingConfig" Core..=) Core.<$> networkingConfig,
            ("privateClusterConfig" Core..=) Core.<$> privateClusterConfig,
            ("webServerIpv4CidrBlock" Core..=) Core.<$> webServerIpv4CidrBlock,
            ("webServerIpv4ReservedRange" Core..=)
              Core.<$> webServerIpv4ReservedRange
          ]
      )

-- | The Recovery settings of an environment.
--
-- /See:/ 'newRecoveryConfig' smart constructor.
newtype RecoveryConfig = RecoveryConfig
  { -- | Optional. The configuration for scheduled snapshot creation mechanism.
    scheduledSnapshotsConfig :: (Core.Maybe ScheduledSnapshotsConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RecoveryConfig' with the minimum fields required to make a request.
newRecoveryConfig ::
  RecoveryConfig
newRecoveryConfig =
  RecoveryConfig {scheduledSnapshotsConfig = Core.Nothing}

instance Core.FromJSON RecoveryConfig where
  parseJSON =
    Core.withObject
      "RecoveryConfig"
      ( \o ->
          RecoveryConfig Core.<$> (o Core..:? "scheduledSnapshotsConfig")
      )

instance Core.ToJSON RecoveryConfig where
  toJSON RecoveryConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("scheduledSnapshotsConfig" Core..=)
              Core.<$> scheduledSnapshotsConfig
          ]
      )

-- | Request to create a snapshot of a Cloud Composer environment.
--
-- /See:/ 'newSaveSnapshotRequest' smart constructor.
newtype SaveSnapshotRequest = SaveSnapshotRequest
  { -- | Location in a Cloud Storage where the snapshot is going to be stored, e.g.: \"gs:\/\/my-bucket\/snapshots\".
    snapshotLocation :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SaveSnapshotRequest' with the minimum fields required to make a request.
newSaveSnapshotRequest ::
  SaveSnapshotRequest
newSaveSnapshotRequest =
  SaveSnapshotRequest {snapshotLocation = Core.Nothing}

instance Core.FromJSON SaveSnapshotRequest where
  parseJSON =
    Core.withObject
      "SaveSnapshotRequest"
      ( \o ->
          SaveSnapshotRequest Core.<$> (o Core..:? "snapshotLocation")
      )

instance Core.ToJSON SaveSnapshotRequest where
  toJSON SaveSnapshotRequest {..} =
    Core.object
      ( Core.catMaybes
          [("snapshotLocation" Core..=) Core.<$> snapshotLocation]
      )

-- | Response to SaveSnapshotRequest.
--
-- /See:/ 'newSaveSnapshotResponse' smart constructor.
newtype SaveSnapshotResponse = SaveSnapshotResponse
  { -- | The fully-resolved Cloud Storage path of the created snapshot, e.g.: \"gs:\/\/my-bucket\/snapshots\/project/location/environment_timestamp\". This field is populated only if the snapshot creation was successful.
    snapshotPath :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SaveSnapshotResponse' with the minimum fields required to make a request.
newSaveSnapshotResponse ::
  SaveSnapshotResponse
newSaveSnapshotResponse =
  SaveSnapshotResponse {snapshotPath = Core.Nothing}

instance Core.FromJSON SaveSnapshotResponse where
  parseJSON =
    Core.withObject
      "SaveSnapshotResponse"
      (\o -> SaveSnapshotResponse Core.<$> (o Core..:? "snapshotPath"))

instance Core.ToJSON SaveSnapshotResponse where
  toJSON SaveSnapshotResponse {..} =
    Core.object
      (Core.catMaybes [("snapshotPath" Core..=) Core.<$> snapshotPath])

-- | The configuration for scheduled snapshot creation mechanism.
--
-- /See:/ 'newScheduledSnapshotsConfig' smart constructor.
data ScheduledSnapshotsConfig = ScheduledSnapshotsConfig
  { -- | Optional. Whether scheduled snapshots creation is enabled.
    enabled :: (Core.Maybe Core.Bool),
    -- | Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
    snapshotCreationSchedule :: (Core.Maybe Core.Text),
    -- | Optional. The Cloud Storage location for storing automatically created snapshots.
    snapshotLocation :: (Core.Maybe Core.Text),
    -- | Optional. Time zone that sets the context to interpret snapshot/creation/schedule.
    timeZone :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ScheduledSnapshotsConfig' with the minimum fields required to make a request.
newScheduledSnapshotsConfig ::
  ScheduledSnapshotsConfig
newScheduledSnapshotsConfig =
  ScheduledSnapshotsConfig
    { enabled = Core.Nothing,
      snapshotCreationSchedule = Core.Nothing,
      snapshotLocation = Core.Nothing,
      timeZone = Core.Nothing
    }

instance Core.FromJSON ScheduledSnapshotsConfig where
  parseJSON =
    Core.withObject
      "ScheduledSnapshotsConfig"
      ( \o ->
          ScheduledSnapshotsConfig
            Core.<$> (o Core..:? "enabled")
            Core.<*> (o Core..:? "snapshotCreationSchedule")
            Core.<*> (o Core..:? "snapshotLocation")
            Core.<*> (o Core..:? "timeZone")
      )

instance Core.ToJSON ScheduledSnapshotsConfig where
  toJSON ScheduledSnapshotsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enabled" Core..=) Core.<$> enabled,
            ("snapshotCreationSchedule" Core..=)
              Core.<$> snapshotCreationSchedule,
            ("snapshotLocation" Core..=) Core.<$> snapshotLocation,
            ("timeZone" Core..=) Core.<$> timeZone
          ]
      )

-- | Configuration for resources used by Airflow schedulers.
--
-- /See:/ 'newSchedulerResource' smart constructor.
data SchedulerResource = SchedulerResource
  { -- | Optional. The number of schedulers.
    count :: (Core.Maybe Core.Int32),
    -- | Optional. CPU request and limit for a single Airflow scheduler replica.
    cpu :: (Core.Maybe Core.Double),
    -- | Optional. Memory (GB) request and limit for a single Airflow scheduler replica.
    memoryGb :: (Core.Maybe Core.Double),
    -- | Optional. Storage (GB) request and limit for a single Airflow scheduler replica.
    storageGb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SchedulerResource' with the minimum fields required to make a request.
newSchedulerResource ::
  SchedulerResource
newSchedulerResource =
  SchedulerResource
    { count = Core.Nothing,
      cpu = Core.Nothing,
      memoryGb = Core.Nothing,
      storageGb = Core.Nothing
    }

instance Core.FromJSON SchedulerResource where
  parseJSON =
    Core.withObject
      "SchedulerResource"
      ( \o ->
          SchedulerResource
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cpu")
            Core.<*> (o Core..:? "memoryGb")
            Core.<*> (o Core..:? "storageGb")
      )

instance Core.ToJSON SchedulerResource where
  toJSON SchedulerResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cpu" Core..=) Core.<$> cpu,
            ("memoryGb" Core..=) Core.<$> memoryGb,
            ("storageGb" Core..=) Core.<$> storageGb
          ]
      )

-- | Specifies the selection and configuration of software inside the environment.
--
-- /See:/ 'newSoftwareConfig' smart constructor.
data SoftwareConfig = SoftwareConfig
  { -- | Optional. Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example \"core-dags/are/paused/at/creation\". Section names must not contain hyphens (\"-\"), opening square brackets (\"[\"), or closing square brackets (\"]\"). The property name must not be empty and must not contain an equals sign (\"=\") or semicolon (\";\"). Section and property names must not contain a period (\".\"). Apache Airflow configuration property names must be written in <https://en.wikipedia.org/wiki/Snake_case snake_case>. Property values can contain any character, and can be written in any lower\/upper case format. Certain Apache Airflow configuration property values are </composer/docs/concepts/airflow-configurations blocked>, and cannot be overridden.
    airflowConfigOverrides :: (Core.Maybe SoftwareConfig_AirflowConfigOverrides),
    -- | Optional. The configuration for Cloud Data Lineage integration.
    cloudDataLineageIntegration :: (Core.Maybe CloudDataLineageIntegration),
    -- | Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression @a-zA-Z_*@. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression @AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+@), and they cannot match any of the following reserved names: * @AIRFLOW_HOME@ * @C_FORCE_ROOT@ * @CONTAINER_NAME@ * @DAGS_FOLDER@ * @GCP_PROJECT@ * @GCS_BUCKET@ * @GKE_CLUSTER_NAME@ * @SQL_DATABASE@ * @SQL_INSTANCE@ * @SQL_PASSWORD@ * @SQL_PROJECT@ * @SQL_REGION@ * @SQL_USER@
    envVariables :: (Core.Maybe SoftwareConfig_EnvVariables),
    -- | Optional. The version of the software running in the environment. This encapsulates both the version of Cloud Composer functionality and the version of Apache Airflow. It must match the regular expression @composer-([0-9]+(\\.[0-9]+\\.[0-9]+(-preview\\.[0-9]+)?)?|latest)-airflow-([0-9]+(\\.[0-9]+(\\.[0-9]+)?)?)@. When used as input, the server also checks if the provided version is supported and denies the request for an unsupported version. The Cloud Composer portion of the image version is a full <https://semver.org semantic version>, or an alias in the form of major version number or @latest@. When an alias is provided, the server replaces it with the current Cloud Composer version that satisfies the alias. The Apache Airflow portion of the image version is a full semantic version that points to one of the supported Apache Airflow versions, or an alias in the form of only major or major.minor versions specified. When an alias is provided, the server replaces it with the latest Apache Airflow version that
    -- satisfies the alias and is supported in the given Cloud Composer version. In all cases, the resolved image version is stored in the same field. See also </composer/docs/concepts/versioning/composer-versions version list> and </composer/docs/concepts/versioning/composer-versioning-overview versioning overview>.
    imageVersion :: (Core.Maybe Core.Text),
    -- | Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name such as \"numpy\" and values are the lowercase extras and version specifier such as \"==1.12.0\", \"[devel,gcp_api]\", or \"[devel]>=1.8.2, \<1.9.2\". To specify a package without pinning it to a version specifier, use the empty string as the value.
    pypiPackages :: (Core.Maybe SoftwareConfig_PypiPackages),
    -- | Optional. The major version of Python used to run the Apache Airflow scheduler, worker, and webserver processes. Can be set to \'2\' or \'3\'. If not specified, the default is \'3\'. Cannot be updated. This field is only supported for Cloud Composer environments in versions composer-1././-airflow-/./.*. Environments in newer versions always use Python major version 3.
    pythonVersion :: (Core.Maybe Core.Text),
    -- | Optional. The number of schedulers for Airflow. This field is supported for Cloud Composer environments in versions composer-1././-airflow-2././.
    schedulerCount :: (Core.Maybe Core.Int32),
    -- | Optional. Whether or not the web server uses custom plugins. If unspecified, the field defaults to @PLUGINS_ENABLED@. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
    webServerPluginsMode :: (Core.Maybe SoftwareConfig_WebServerPluginsMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig' with the minimum fields required to make a request.
newSoftwareConfig ::
  SoftwareConfig
newSoftwareConfig =
  SoftwareConfig
    { airflowConfigOverrides = Core.Nothing,
      cloudDataLineageIntegration = Core.Nothing,
      envVariables = Core.Nothing,
      imageVersion = Core.Nothing,
      pypiPackages = Core.Nothing,
      pythonVersion = Core.Nothing,
      schedulerCount = Core.Nothing,
      webServerPluginsMode = Core.Nothing
    }

instance Core.FromJSON SoftwareConfig where
  parseJSON =
    Core.withObject
      "SoftwareConfig"
      ( \o ->
          SoftwareConfig
            Core.<$> (o Core..:? "airflowConfigOverrides")
            Core.<*> (o Core..:? "cloudDataLineageIntegration")
            Core.<*> (o Core..:? "envVariables")
            Core.<*> (o Core..:? "imageVersion")
            Core.<*> (o Core..:? "pypiPackages")
            Core.<*> (o Core..:? "pythonVersion")
            Core.<*> (o Core..:? "schedulerCount")
            Core.<*> (o Core..:? "webServerPluginsMode")
      )

instance Core.ToJSON SoftwareConfig where
  toJSON SoftwareConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("airflowConfigOverrides" Core..=)
              Core.<$> airflowConfigOverrides,
            ("cloudDataLineageIntegration" Core..=)
              Core.<$> cloudDataLineageIntegration,
            ("envVariables" Core..=) Core.<$> envVariables,
            ("imageVersion" Core..=) Core.<$> imageVersion,
            ("pypiPackages" Core..=) Core.<$> pypiPackages,
            ("pythonVersion" Core..=) Core.<$> pythonVersion,
            ("schedulerCount" Core..=) Core.<$> schedulerCount,
            ("webServerPluginsMode" Core..=) Core.<$> webServerPluginsMode
          ]
      )

-- | Optional. Apache Airflow configuration properties to override. Property keys contain the section and property names, separated by a hyphen, for example \"core-dags/are/paused/at/creation\". Section names must not contain hyphens (\"-\"), opening square brackets (\"[\"), or closing square brackets (\"]\"). The property name must not be empty and must not contain an equals sign (\"=\") or semicolon (\";\"). Section and property names must not contain a period (\".\"). Apache Airflow configuration property names must be written in <https://en.wikipedia.org/wiki/Snake_case snake_case>. Property values can contain any character, and can be written in any lower\/upper case format. Certain Apache Airflow configuration property values are </composer/docs/concepts/airflow-configurations blocked>, and cannot be overridden.
--
-- /See:/ 'newSoftwareConfig_AirflowConfigOverrides' smart constructor.
newtype SoftwareConfig_AirflowConfigOverrides = SoftwareConfig_AirflowConfigOverrides
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig_AirflowConfigOverrides' with the minimum fields required to make a request.
newSoftwareConfig_AirflowConfigOverrides ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SoftwareConfig_AirflowConfigOverrides
newSoftwareConfig_AirflowConfigOverrides additional =
  SoftwareConfig_AirflowConfigOverrides {additional = additional}

instance Core.FromJSON SoftwareConfig_AirflowConfigOverrides where
  parseJSON =
    Core.withObject
      "SoftwareConfig_AirflowConfigOverrides"
      ( \o ->
          SoftwareConfig_AirflowConfigOverrides
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SoftwareConfig_AirflowConfigOverrides where
  toJSON SoftwareConfig_AirflowConfigOverrides {..} =
    Core.toJSON additional

-- | Optional. Additional environment variables to provide to the Apache Airflow scheduler, worker, and webserver processes. Environment variable names must match the regular expression @a-zA-Z_*@. They cannot specify Apache Airflow software configuration overrides (they cannot match the regular expression @AIRFLOW__[A-Z0-9_]+__[A-Z0-9_]+@), and they cannot match any of the following reserved names: * @AIRFLOW_HOME@ * @C_FORCE_ROOT@ * @CONTAINER_NAME@ * @DAGS_FOLDER@ * @GCP_PROJECT@ * @GCS_BUCKET@ * @GKE_CLUSTER_NAME@ * @SQL_DATABASE@ * @SQL_INSTANCE@ * @SQL_PASSWORD@ * @SQL_PROJECT@ * @SQL_REGION@ * @SQL_USER@
--
-- /See:/ 'newSoftwareConfig_EnvVariables' smart constructor.
newtype SoftwareConfig_EnvVariables = SoftwareConfig_EnvVariables
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig_EnvVariables' with the minimum fields required to make a request.
newSoftwareConfig_EnvVariables ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SoftwareConfig_EnvVariables
newSoftwareConfig_EnvVariables additional =
  SoftwareConfig_EnvVariables {additional = additional}

instance Core.FromJSON SoftwareConfig_EnvVariables where
  parseJSON =
    Core.withObject
      "SoftwareConfig_EnvVariables"
      ( \o ->
          SoftwareConfig_EnvVariables Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SoftwareConfig_EnvVariables where
  toJSON SoftwareConfig_EnvVariables {..} = Core.toJSON additional

-- | Optional. Custom Python Package Index (PyPI) packages to be installed in the environment. Keys refer to the lowercase package name such as \"numpy\" and values are the lowercase extras and version specifier such as \"==1.12.0\", \"[devel,gcp_api]\", or \"[devel]>=1.8.2, \<1.9.2\". To specify a package without pinning it to a version specifier, use the empty string as the value.
--
-- /See:/ 'newSoftwareConfig_PypiPackages' smart constructor.
newtype SoftwareConfig_PypiPackages = SoftwareConfig_PypiPackages
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SoftwareConfig_PypiPackages' with the minimum fields required to make a request.
newSoftwareConfig_PypiPackages ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  SoftwareConfig_PypiPackages
newSoftwareConfig_PypiPackages additional =
  SoftwareConfig_PypiPackages {additional = additional}

instance Core.FromJSON SoftwareConfig_PypiPackages where
  parseJSON =
    Core.withObject
      "SoftwareConfig_PypiPackages"
      ( \o ->
          SoftwareConfig_PypiPackages Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SoftwareConfig_PypiPackages where
  toJSON SoftwareConfig_PypiPackages {..} = Core.toJSON additional

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
  Status
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
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
newStatus_DetailsItem additional =
  Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      (\o -> Status_DetailsItem Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} = Core.toJSON additional

-- | Stop Airflow Command request.
--
-- /See:/ 'newStopAirflowCommandRequest' smart constructor.
data StopAirflowCommandRequest = StopAirflowCommandRequest
  { -- | The unique ID of the command execution.
    executionId :: (Core.Maybe Core.Text),
    -- | If true, the execution is terminated forcefully (SIGKILL). If false, the execution is stopped gracefully, giving it time for cleanup.
    force :: (Core.Maybe Core.Bool),
    -- | The name of the pod where the command is executed.
    pod :: (Core.Maybe Core.Text),
    -- | The namespace of the pod where the command is executed.
    podNamespace :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopAirflowCommandRequest' with the minimum fields required to make a request.
newStopAirflowCommandRequest ::
  StopAirflowCommandRequest
newStopAirflowCommandRequest =
  StopAirflowCommandRequest
    { executionId = Core.Nothing,
      force = Core.Nothing,
      pod = Core.Nothing,
      podNamespace = Core.Nothing
    }

instance Core.FromJSON StopAirflowCommandRequest where
  parseJSON =
    Core.withObject
      "StopAirflowCommandRequest"
      ( \o ->
          StopAirflowCommandRequest
            Core.<$> (o Core..:? "executionId")
            Core.<*> (o Core..:? "force")
            Core.<*> (o Core..:? "pod")
            Core.<*> (o Core..:? "podNamespace")
      )

instance Core.ToJSON StopAirflowCommandRequest where
  toJSON StopAirflowCommandRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("executionId" Core..=) Core.<$> executionId,
            ("force" Core..=) Core.<$> force,
            ("pod" Core..=) Core.<$> pod,
            ("podNamespace" Core..=) Core.<$> podNamespace
          ]
      )

-- | Response to StopAirflowCommandRequest.
--
-- /See:/ 'newStopAirflowCommandResponse' smart constructor.
data StopAirflowCommandResponse = StopAirflowCommandResponse
  { -- | Whether the execution is still running.
    isDone :: (Core.Maybe Core.Bool),
    -- | Output message from stopping execution request.
    output :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StopAirflowCommandResponse' with the minimum fields required to make a request.
newStopAirflowCommandResponse ::
  StopAirflowCommandResponse
newStopAirflowCommandResponse =
  StopAirflowCommandResponse
    { isDone = Core.Nothing,
      output = Core.Nothing
    }

instance Core.FromJSON StopAirflowCommandResponse where
  parseJSON =
    Core.withObject
      "StopAirflowCommandResponse"
      ( \o ->
          StopAirflowCommandResponse
            Core.<$> (o Core..:? "isDone")
            Core.<*> (o Core..:? "output")
      )

instance Core.ToJSON StopAirflowCommandResponse where
  toJSON StopAirflowCommandResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("isDone" Core..=) Core.<$> isDone,
            ("output" Core..=) Core.<$> output
          ]
      )

-- | The configuration for data storage in the environment.
--
-- /See:/ 'newStorageConfig' smart constructor.
newtype StorageConfig = StorageConfig
  { -- | Optional. The name of the Cloud Storage bucket used by the environment. No @gs:\/\/@ prefix.
    bucket :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageConfig' with the minimum fields required to make a request.
newStorageConfig ::
  StorageConfig
newStorageConfig = StorageConfig {bucket = Core.Nothing}

instance Core.FromJSON StorageConfig where
  parseJSON =
    Core.withObject
      "StorageConfig"
      (\o -> StorageConfig Core.<$> (o Core..:? "bucket"))

instance Core.ToJSON StorageConfig where
  toJSON StorageConfig {..} =
    Core.object (Core.catMaybes [("bucket" Core..=) Core.<$> bucket])

-- | The configuration setting for Task Logs.
--
-- /See:/ 'newTaskLogsRetentionConfig' smart constructor.
newtype TaskLogsRetentionConfig = TaskLogsRetentionConfig
  { -- | Optional. The mode of storage for Airflow workers task logs.
    storageMode :: (Core.Maybe TaskLogsRetentionConfig_StorageMode)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TaskLogsRetentionConfig' with the minimum fields required to make a request.
newTaskLogsRetentionConfig ::
  TaskLogsRetentionConfig
newTaskLogsRetentionConfig =
  TaskLogsRetentionConfig {storageMode = Core.Nothing}

instance Core.FromJSON TaskLogsRetentionConfig where
  parseJSON =
    Core.withObject
      "TaskLogsRetentionConfig"
      ( \o ->
          TaskLogsRetentionConfig Core.<$> (o Core..:? "storageMode")
      )

instance Core.ToJSON TaskLogsRetentionConfig where
  toJSON TaskLogsRetentionConfig {..} =
    Core.object
      (Core.catMaybes [("storageMode" Core..=) Core.<$> storageMode])

-- | Configuration for resources used by Airflow triggerers.
--
-- /See:/ 'newTriggererResource' smart constructor.
data TriggererResource = TriggererResource
  { -- | Optional. The number of triggerers.
    count :: (Core.Maybe Core.Int32),
    -- | Optional. CPU request and limit for a single Airflow triggerer replica.
    cpu :: (Core.Maybe Core.Double),
    -- | Optional. Memory (GB) request and limit for a single Airflow triggerer replica.
    memoryGb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TriggererResource' with the minimum fields required to make a request.
newTriggererResource ::
  TriggererResource
newTriggererResource =
  TriggererResource
    { count = Core.Nothing,
      cpu = Core.Nothing,
      memoryGb = Core.Nothing
    }

instance Core.FromJSON TriggererResource where
  parseJSON =
    Core.withObject
      "TriggererResource"
      ( \o ->
          TriggererResource
            Core.<$> (o Core..:? "count")
            Core.<*> (o Core..:? "cpu")
            Core.<*> (o Core..:? "memoryGb")
      )

instance Core.ToJSON TriggererResource where
  toJSON TriggererResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("count" Core..=) Core.<$> count,
            ("cpu" Core..=) Core.<$> cpu,
            ("memoryGb" Core..=) Core.<$> memoryGb
          ]
      )

-- | User workloads ConfigMap used by Airflow tasks that run with Kubernetes executor or KubernetesPodOperator.
--
-- /See:/ 'newUserWorkloadsConfigMap' smart constructor.
data UserWorkloadsConfigMap = UserWorkloadsConfigMap
  { -- | Optional. The \"data\" field of Kubernetes ConfigMap, organized in key-value pairs. For details see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/configmap\/ Example: { \"example/key\": \"example/value\", \"another/key\": \"another/value\" }
    data' :: (Core.Maybe UserWorkloadsConfigMap_Data),
    -- | Identifier. The resource name of the ConfigMap, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsConfigMaps\/{userWorkloadsConfigMapId}\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserWorkloadsConfigMap' with the minimum fields required to make a request.
newUserWorkloadsConfigMap ::
  UserWorkloadsConfigMap
newUserWorkloadsConfigMap =
  UserWorkloadsConfigMap {data' = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON UserWorkloadsConfigMap where
  parseJSON =
    Core.withObject
      "UserWorkloadsConfigMap"
      ( \o ->
          UserWorkloadsConfigMap
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON UserWorkloadsConfigMap where
  toJSON UserWorkloadsConfigMap {..} =
    Core.object
      ( Core.catMaybes
          [("data" Core..=) Core.<$> data', ("name" Core..=) Core.<$> name]
      )

-- | Optional. The \"data\" field of Kubernetes ConfigMap, organized in key-value pairs. For details see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/configmap\/ Example: { \"example/key\": \"example/value\", \"another/key\": \"another/value\" }
--
-- /See:/ 'newUserWorkloadsConfigMap_Data' smart constructor.
newtype UserWorkloadsConfigMap_Data = UserWorkloadsConfigMap_Data
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserWorkloadsConfigMap_Data' with the minimum fields required to make a request.
newUserWorkloadsConfigMap_Data ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  UserWorkloadsConfigMap_Data
newUserWorkloadsConfigMap_Data additional =
  UserWorkloadsConfigMap_Data {additional = additional}

instance Core.FromJSON UserWorkloadsConfigMap_Data where
  parseJSON =
    Core.withObject
      "UserWorkloadsConfigMap_Data"
      ( \o ->
          UserWorkloadsConfigMap_Data Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON UserWorkloadsConfigMap_Data where
  toJSON UserWorkloadsConfigMap_Data {..} = Core.toJSON additional

-- | User workloads Secret used by Airflow tasks that run with Kubernetes executor or KubernetesPodOperator.
--
-- /See:/ 'newUserWorkloadsSecret' smart constructor.
data UserWorkloadsSecret = UserWorkloadsSecret
  { -- | Optional. The \"data\" field of Kubernetes Secret, organized in key-value pairs, which can contain sensitive values such as a password, a token, or a key. The values for all keys have to be base64-encoded strings. For details see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/secret\/ Example: { \"example\": \"ZXhhbXBsZV92YWx1ZQ==\", \"another-example\": \"YW5vdGhlcl9leGFtcGxlX3ZhbHVl\" }
    data' :: (Core.Maybe UserWorkloadsSecret_Data),
    -- | Identifier. The resource name of the Secret, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsSecrets\/{userWorkloadsSecretId}\"
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserWorkloadsSecret' with the minimum fields required to make a request.
newUserWorkloadsSecret ::
  UserWorkloadsSecret
newUserWorkloadsSecret =
  UserWorkloadsSecret {data' = Core.Nothing, name = Core.Nothing}

instance Core.FromJSON UserWorkloadsSecret where
  parseJSON =
    Core.withObject
      "UserWorkloadsSecret"
      ( \o ->
          UserWorkloadsSecret
            Core.<$> (o Core..:? "data")
            Core.<*> (o Core..:? "name")
      )

instance Core.ToJSON UserWorkloadsSecret where
  toJSON UserWorkloadsSecret {..} =
    Core.object
      ( Core.catMaybes
          [("data" Core..=) Core.<$> data', ("name" Core..=) Core.<$> name]
      )

-- | Optional. The \"data\" field of Kubernetes Secret, organized in key-value pairs, which can contain sensitive values such as a password, a token, or a key. The values for all keys have to be base64-encoded strings. For details see: https:\/\/kubernetes.io\/docs\/concepts\/configuration\/secret\/ Example: { \"example\": \"ZXhhbXBsZV92YWx1ZQ==\", \"another-example\": \"YW5vdGhlcl9leGFtcGxlX3ZhbHVl\" }
--
-- /See:/ 'newUserWorkloadsSecret_Data' smart constructor.
newtype UserWorkloadsSecret_Data = UserWorkloadsSecret_Data
  { additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UserWorkloadsSecret_Data' with the minimum fields required to make a request.
newUserWorkloadsSecret_Data ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  UserWorkloadsSecret_Data
newUserWorkloadsSecret_Data additional =
  UserWorkloadsSecret_Data {additional = additional}

instance Core.FromJSON UserWorkloadsSecret_Data where
  parseJSON =
    Core.withObject
      "UserWorkloadsSecret_Data"
      (\o -> UserWorkloadsSecret_Data Core.<$> (Core.parseJSONObject o))

instance Core.ToJSON UserWorkloadsSecret_Data where
  toJSON UserWorkloadsSecret_Data {..} = Core.toJSON additional

-- | The configuration settings for the Airflow web server App Engine instance. Supported for Cloud Composer environments in versions composer-1././-airflow-/./.*
--
-- /See:/ 'newWebServerConfig' smart constructor.
newtype WebServerConfig = WebServerConfig
  { -- | Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
    machineType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebServerConfig' with the minimum fields required to make a request.
newWebServerConfig ::
  WebServerConfig
newWebServerConfig = WebServerConfig {machineType = Core.Nothing}

instance Core.FromJSON WebServerConfig where
  parseJSON =
    Core.withObject
      "WebServerConfig"
      (\o -> WebServerConfig Core.<$> (o Core..:? "machineType"))

instance Core.ToJSON WebServerConfig where
  toJSON WebServerConfig {..} =
    Core.object
      (Core.catMaybes [("machineType" Core..=) Core.<$> machineType])

-- | Network-level access control policy for the Airflow web server.
--
-- /See:/ 'newWebServerNetworkAccessControl' smart constructor.
newtype WebServerNetworkAccessControl = WebServerNetworkAccessControl
  { -- | A collection of allowed IP ranges with descriptions.
    allowedIpRanges :: (Core.Maybe [AllowedIpRange])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebServerNetworkAccessControl' with the minimum fields required to make a request.
newWebServerNetworkAccessControl ::
  WebServerNetworkAccessControl
newWebServerNetworkAccessControl =
  WebServerNetworkAccessControl {allowedIpRanges = Core.Nothing}

instance Core.FromJSON WebServerNetworkAccessControl where
  parseJSON =
    Core.withObject
      "WebServerNetworkAccessControl"
      ( \o ->
          WebServerNetworkAccessControl
            Core.<$> (o Core..:? "allowedIpRanges")
      )

instance Core.ToJSON WebServerNetworkAccessControl where
  toJSON WebServerNetworkAccessControl {..} =
    Core.object
      ( Core.catMaybes
          [("allowedIpRanges" Core..=) Core.<$> allowedIpRanges]
      )

-- | Configuration for resources used by Airflow web server.
--
-- /See:/ 'newWebServerResource' smart constructor.
data WebServerResource = WebServerResource
  { -- | Optional. CPU request and limit for Airflow web server.
    cpu :: (Core.Maybe Core.Double),
    -- | Optional. Memory (GB) request and limit for Airflow web server.
    memoryGb :: (Core.Maybe Core.Double),
    -- | Optional. Storage (GB) request and limit for Airflow web server.
    storageGb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebServerResource' with the minimum fields required to make a request.
newWebServerResource ::
  WebServerResource
newWebServerResource =
  WebServerResource
    { cpu = Core.Nothing,
      memoryGb = Core.Nothing,
      storageGb = Core.Nothing
    }

instance Core.FromJSON WebServerResource where
  parseJSON =
    Core.withObject
      "WebServerResource"
      ( \o ->
          WebServerResource
            Core.<$> (o Core..:? "cpu")
            Core.<*> (o Core..:? "memoryGb")
            Core.<*> (o Core..:? "storageGb")
      )

instance Core.ToJSON WebServerResource where
  toJSON WebServerResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpu" Core..=) Core.<$> cpu,
            ("memoryGb" Core..=) Core.<$> memoryGb,
            ("storageGb" Core..=) Core.<$> storageGb
          ]
      )

-- | Configuration for resources used by Airflow workers.
--
-- /See:/ 'newWorkerResource' smart constructor.
data WorkerResource = WorkerResource
  { -- | Optional. CPU request and limit for a single Airflow worker replica.
    cpu :: (Core.Maybe Core.Double),
    -- | Optional. Maximum number of workers for autoscaling.
    maxCount :: (Core.Maybe Core.Int32),
    -- | Optional. Memory (GB) request and limit for a single Airflow worker replica.
    memoryGb :: (Core.Maybe Core.Double),
    -- | Optional. Minimum number of workers for autoscaling.
    minCount :: (Core.Maybe Core.Int32),
    -- | Optional. Storage (GB) request and limit for a single Airflow worker replica.
    storageGb :: (Core.Maybe Core.Double)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerResource' with the minimum fields required to make a request.
newWorkerResource ::
  WorkerResource
newWorkerResource =
  WorkerResource
    { cpu = Core.Nothing,
      maxCount = Core.Nothing,
      memoryGb = Core.Nothing,
      minCount = Core.Nothing,
      storageGb = Core.Nothing
    }

instance Core.FromJSON WorkerResource where
  parseJSON =
    Core.withObject
      "WorkerResource"
      ( \o ->
          WorkerResource
            Core.<$> (o Core..:? "cpu")
            Core.<*> (o Core..:? "maxCount")
            Core.<*> (o Core..:? "memoryGb")
            Core.<*> (o Core..:? "minCount")
            Core.<*> (o Core..:? "storageGb")
      )

instance Core.ToJSON WorkerResource where
  toJSON WorkerResource {..} =
    Core.object
      ( Core.catMaybes
          [ ("cpu" Core..=) Core.<$> cpu,
            ("maxCount" Core..=) Core.<$> maxCount,
            ("memoryGb" Core..=) Core.<$> memoryGb,
            ("minCount" Core..=) Core.<$> minCount,
            ("storageGb" Core..=) Core.<$> storageGb
          ]
      )

-- | The Kubernetes workloads configuration for GKE cluster associated with the Cloud Composer environment. Supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
--
-- /See:/ 'newWorkloadsConfig' smart constructor.
data WorkloadsConfig = WorkloadsConfig
  { -- | Optional. Resources used by Airflow DAG processors. This field is supported for Cloud Composer environments in versions composer-3././-airflow-/./.* and newer.
    dagProcessor :: (Core.Maybe DagProcessorResource),
    -- | Optional. Resources used by Airflow schedulers.
    scheduler :: (Core.Maybe SchedulerResource),
    -- | Optional. Resources used by Airflow triggerers.
    triggerer :: (Core.Maybe TriggererResource),
    -- | Optional. Resources used by Airflow web server.
    webServer :: (Core.Maybe WebServerResource),
    -- | Optional. Resources used by Airflow workers.
    worker :: (Core.Maybe WorkerResource)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkloadsConfig' with the minimum fields required to make a request.
newWorkloadsConfig ::
  WorkloadsConfig
newWorkloadsConfig =
  WorkloadsConfig
    { dagProcessor = Core.Nothing,
      scheduler = Core.Nothing,
      triggerer = Core.Nothing,
      webServer = Core.Nothing,
      worker = Core.Nothing
    }

instance Core.FromJSON WorkloadsConfig where
  parseJSON =
    Core.withObject
      "WorkloadsConfig"
      ( \o ->
          WorkloadsConfig
            Core.<$> (o Core..:? "dagProcessor")
            Core.<*> (o Core..:? "scheduler")
            Core.<*> (o Core..:? "triggerer")
            Core.<*> (o Core..:? "webServer")
            Core.<*> (o Core..:? "worker")
      )

instance Core.ToJSON WorkloadsConfig where
  toJSON WorkloadsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("dagProcessor" Core..=) Core.<$> dagProcessor,
            ("scheduler" Core..=) Core.<$> scheduler,
            ("triggerer" Core..=) Core.<$> triggerer,
            ("webServer" Core..=) Core.<$> webServer,
            ("worker" Core..=) Core.<$> worker
          ]
      )

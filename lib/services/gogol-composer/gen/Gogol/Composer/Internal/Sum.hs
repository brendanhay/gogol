{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Composer.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Composer.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AirflowMetadataRetentionPolicyConfig_RetentionMode
    AirflowMetadataRetentionPolicyConfig_RetentionMode
      ( AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEUNSPECIFIED,
        AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEENABLED,
        AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEDISABLED,
        ..
      ),

    -- * CheckUpgradeResponse_ContainsPypiModulesConflict
    CheckUpgradeResponse_ContainsPypiModulesConflict
      ( CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED,
        CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict,
        CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT,
        ..
      ),

    -- * ComposerWorkload_Type
    ComposerWorkload_Type
      ( ComposerWorkload_Type_COMPOSERWORKLOADTYPEUNSPECIFIED,
        ComposerWorkload_Type_CELERYWORKER,
        ComposerWorkload_Type_KUBERNETESWORKER,
        ComposerWorkload_Type_KUBERNETESOPERATORPOD,
        ComposerWorkload_Type_Scheduler,
        ComposerWorkload_Type_DAGPROCESSOR,
        ComposerWorkload_Type_Triggerer,
        ComposerWorkload_Type_WEBSERVER,
        ComposerWorkload_Type_Redis,
        ..
      ),

    -- * ComposerWorkloadStatus_State
    ComposerWorkloadStatus_State
      ( ComposerWorkloadStatus_State_COMPOSERWORKLOADSTATEUNSPECIFIED,
        ComposerWorkloadStatus_State_Pending,
        ComposerWorkloadStatus_State_OK,
        ComposerWorkloadStatus_State_Warning,
        ComposerWorkloadStatus_State_Error',
        ComposerWorkloadStatus_State_Succeeded,
        ComposerWorkloadStatus_State_Failed,
        ..
      ),

    -- * Environment_State
    Environment_State
      ( Environment_State_STATEUNSPECIFIED,
        Environment_State_Creating,
        Environment_State_Running,
        Environment_State_Updating,
        Environment_State_Deleting,
        Environment_State_Error',
        ..
      ),

    -- * EnvironmentConfig_EnvironmentSize
    EnvironmentConfig_EnvironmentSize
      ( EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM,
        EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE,
        ..
      ),

    -- * EnvironmentConfig_ResilienceMode
    EnvironmentConfig_ResilienceMode
      ( EnvironmentConfig_ResilienceMode_RESILIENCEMODEUNSPECIFIED,
        EnvironmentConfig_ResilienceMode_HIGHRESILIENCE,
        ..
      ),

    -- * NetworkingConfig_ConnectionType
    NetworkingConfig_ConnectionType
      ( NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
        NetworkingConfig_ConnectionType_VPCPEERING,
        NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT,
        ..
      ),

    -- * OperationMetadata_OperationType
    OperationMetadata_OperationType
      ( OperationMetadata_OperationType_TYPEUNSPECIFIED,
        OperationMetadata_OperationType_Create,
        OperationMetadata_OperationType_Delete',
        OperationMetadata_OperationType_Update,
        OperationMetadata_OperationType_Check,
        OperationMetadata_OperationType_SAVESNAPSHOT,
        OperationMetadata_OperationType_LOADSNAPSHOT,
        OperationMetadata_OperationType_DATABASEFAILOVER,
        ..
      ),

    -- * OperationMetadata_State
    OperationMetadata_State
      ( OperationMetadata_State_STATEUNSPECIFIED,
        OperationMetadata_State_Pending,
        OperationMetadata_State_Running,
        OperationMetadata_State_Succeeded,
        OperationMetadata_State_Successful,
        OperationMetadata_State_Failed,
        ..
      ),

    -- * SoftwareConfig_WebServerPluginsMode
    SoftwareConfig_WebServerPluginsMode
      ( SoftwareConfig_WebServerPluginsMode_WEBSERVERPLUGINSMODEUNSPECIFIED,
        SoftwareConfig_WebServerPluginsMode_PLUGINSDISABLED,
        SoftwareConfig_WebServerPluginsMode_PLUGINSENABLED,
        ..
      ),

    -- * TaskLogsRetentionConfig_StorageMode
    TaskLogsRetentionConfig_StorageMode
      ( TaskLogsRetentionConfig_StorageMode_TASKLOGSSTORAGEMODEUNSPECIFIED,
        TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGANDCLOUDSTORAGE,
        TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGONLY,
        ..
      ),
  )
where

import Gogol.Prelude qualified as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | Optional. Retention can be either enabled or disabled.
newtype AirflowMetadataRetentionPolicyConfig_RetentionMode = AirflowMetadataRetentionPolicyConfig_RetentionMode {fromAirflowMetadataRetentionPolicyConfig_RetentionMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default mode doesn\'t change environment parameters.
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEUNSPECIFIED :: AirflowMetadataRetentionPolicyConfig_RetentionMode
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEUNSPECIFIED = AirflowMetadataRetentionPolicyConfig_RetentionMode "RETENTION_MODE_UNSPECIFIED"

-- | Retention policy is enabled.
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEENABLED :: AirflowMetadataRetentionPolicyConfig_RetentionMode
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEENABLED = AirflowMetadataRetentionPolicyConfig_RetentionMode "RETENTION_MODE_ENABLED"

-- | Retention policy is disabled.
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEDISABLED :: AirflowMetadataRetentionPolicyConfig_RetentionMode
pattern AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEDISABLED = AirflowMetadataRetentionPolicyConfig_RetentionMode "RETENTION_MODE_DISABLED"

{-# COMPLETE
  AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEUNSPECIFIED,
  AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEENABLED,
  AirflowMetadataRetentionPolicyConfig_RetentionMode_RETENTIONMODEDISABLED,
  AirflowMetadataRetentionPolicyConfig_RetentionMode
  #-}

-- | Output only. Whether build has succeeded or failed on modules conflicts.
newtype CheckUpgradeResponse_ContainsPypiModulesConflict = CheckUpgradeResponse_ContainsPypiModulesConflict {fromCheckUpgradeResponse_ContainsPypiModulesConflict :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | It is unknown whether build had conflicts or not.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED = CheckUpgradeResponse_ContainsPypiModulesConflict "CONFLICT_RESULT_UNSPECIFIED"

-- | There were python packages conflicts.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict = CheckUpgradeResponse_ContainsPypiModulesConflict "CONFLICT"

-- | There were no python packages conflicts.
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT :: CheckUpgradeResponse_ContainsPypiModulesConflict
pattern CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT = CheckUpgradeResponse_ContainsPypiModulesConflict "NO_CONFLICT"

{-# COMPLETE
  CheckUpgradeResponse_ContainsPypiModulesConflict_CONFLICTRESULTUNSPECIFIED,
  CheckUpgradeResponse_ContainsPypiModulesConflict_Conflict,
  CheckUpgradeResponse_ContainsPypiModulesConflict_NOCONFLICT,
  CheckUpgradeResponse_ContainsPypiModulesConflict
  #-}

-- | Type of a workload.
newtype ComposerWorkload_Type = ComposerWorkload_Type {fromComposerWorkload_Type :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not able to determine the type of the workload.
pattern ComposerWorkload_Type_COMPOSERWORKLOADTYPEUNSPECIFIED :: ComposerWorkload_Type
pattern ComposerWorkload_Type_COMPOSERWORKLOADTYPEUNSPECIFIED = ComposerWorkload_Type "COMPOSER_WORKLOAD_TYPE_UNSPECIFIED"

-- | Celery worker.
pattern ComposerWorkload_Type_CELERYWORKER :: ComposerWorkload_Type
pattern ComposerWorkload_Type_CELERYWORKER = ComposerWorkload_Type "CELERY_WORKER"

-- | Kubernetes worker.
pattern ComposerWorkload_Type_KUBERNETESWORKER :: ComposerWorkload_Type
pattern ComposerWorkload_Type_KUBERNETESWORKER = ComposerWorkload_Type "KUBERNETES_WORKER"

-- | Workload created by Kubernetes Pod Operator.
pattern ComposerWorkload_Type_KUBERNETESOPERATORPOD :: ComposerWorkload_Type
pattern ComposerWorkload_Type_KUBERNETESOPERATORPOD = ComposerWorkload_Type "KUBERNETES_OPERATOR_POD"

-- | Airflow scheduler.
pattern ComposerWorkload_Type_Scheduler :: ComposerWorkload_Type
pattern ComposerWorkload_Type_Scheduler = ComposerWorkload_Type "SCHEDULER"

-- | Airflow Dag processor.
pattern ComposerWorkload_Type_DAGPROCESSOR :: ComposerWorkload_Type
pattern ComposerWorkload_Type_DAGPROCESSOR = ComposerWorkload_Type "DAG_PROCESSOR"

-- | Airflow triggerer.
pattern ComposerWorkload_Type_Triggerer :: ComposerWorkload_Type
pattern ComposerWorkload_Type_Triggerer = ComposerWorkload_Type "TRIGGERER"

-- | Airflow web server UI.
pattern ComposerWorkload_Type_WEBSERVER :: ComposerWorkload_Type
pattern ComposerWorkload_Type_WEBSERVER = ComposerWorkload_Type "WEB_SERVER"

-- | Redis.
pattern ComposerWorkload_Type_Redis :: ComposerWorkload_Type
pattern ComposerWorkload_Type_Redis = ComposerWorkload_Type "REDIS"

{-# COMPLETE
  ComposerWorkload_Type_COMPOSERWORKLOADTYPEUNSPECIFIED,
  ComposerWorkload_Type_CELERYWORKER,
  ComposerWorkload_Type_KUBERNETESWORKER,
  ComposerWorkload_Type_KUBERNETESOPERATORPOD,
  ComposerWorkload_Type_Scheduler,
  ComposerWorkload_Type_DAGPROCESSOR,
  ComposerWorkload_Type_Triggerer,
  ComposerWorkload_Type_WEBSERVER,
  ComposerWorkload_Type_Redis,
  ComposerWorkload_Type
  #-}

-- | Output only. Workload state.
newtype ComposerWorkloadStatus_State = ComposerWorkloadStatus_State {fromComposerWorkloadStatus_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Not able to determine the status of the workload.
pattern ComposerWorkloadStatus_State_COMPOSERWORKLOADSTATEUNSPECIFIED :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_COMPOSERWORKLOADSTATEUNSPECIFIED = ComposerWorkloadStatus_State "COMPOSER_WORKLOAD_STATE_UNSPECIFIED"

-- | Workload is in pending state and has not yet started.
pattern ComposerWorkloadStatus_State_Pending :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_Pending = ComposerWorkloadStatus_State "PENDING"

-- | Workload is running fine.
pattern ComposerWorkloadStatus_State_OK :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_OK = ComposerWorkloadStatus_State "OK"

-- | Workload is running but there are some non-critical problems.
pattern ComposerWorkloadStatus_State_Warning :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_Warning = ComposerWorkloadStatus_State "WARNING"

-- | Workload is not running due to an error.
pattern ComposerWorkloadStatus_State_Error' :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_Error' = ComposerWorkloadStatus_State "ERROR"

-- | Workload has finished execution with success.
pattern ComposerWorkloadStatus_State_Succeeded :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_Succeeded = ComposerWorkloadStatus_State "SUCCEEDED"

-- | Workload has finished execution with failure.
pattern ComposerWorkloadStatus_State_Failed :: ComposerWorkloadStatus_State
pattern ComposerWorkloadStatus_State_Failed = ComposerWorkloadStatus_State "FAILED"

{-# COMPLETE
  ComposerWorkloadStatus_State_COMPOSERWORKLOADSTATEUNSPECIFIED,
  ComposerWorkloadStatus_State_Pending,
  ComposerWorkloadStatus_State_OK,
  ComposerWorkloadStatus_State_Warning,
  ComposerWorkloadStatus_State_Error',
  ComposerWorkloadStatus_State_Succeeded,
  ComposerWorkloadStatus_State_Failed,
  ComposerWorkloadStatus_State
  #-}

-- | The current state of the environment.
newtype Environment_State = Environment_State {fromEnvironment_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The state of the environment is unknown.
pattern Environment_State_STATEUNSPECIFIED :: Environment_State
pattern Environment_State_STATEUNSPECIFIED = Environment_State "STATE_UNSPECIFIED"

-- | The environment is in the process of being created.
pattern Environment_State_Creating :: Environment_State
pattern Environment_State_Creating = Environment_State "CREATING"

-- | The environment is currently running and healthy. It is ready for use.
pattern Environment_State_Running :: Environment_State
pattern Environment_State_Running = Environment_State "RUNNING"

-- | The environment is being updated. It remains usable but cannot receive additional update requests or be deleted at this time.
pattern Environment_State_Updating :: Environment_State
pattern Environment_State_Updating = Environment_State "UPDATING"

-- | The environment is undergoing deletion. It cannot be used.
pattern Environment_State_Deleting :: Environment_State
pattern Environment_State_Deleting = Environment_State "DELETING"

-- | The environment has encountered an error and cannot be used.
pattern Environment_State_Error' :: Environment_State
pattern Environment_State_Error' = Environment_State "ERROR"

{-# COMPLETE
  Environment_State_STATEUNSPECIFIED,
  Environment_State_Creating,
  Environment_State_Running,
  Environment_State_Updating,
  Environment_State_Deleting,
  Environment_State_Error',
  Environment_State
  #-}

-- | Optional. The size of the Cloud Composer environment. This field is supported for Cloud Composer environments in versions composer-2././-airflow-/./.* and newer.
newtype EnvironmentConfig_EnvironmentSize = EnvironmentConfig_EnvironmentSize {fromEnvironmentConfig_EnvironmentSize :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The size of the environment is unspecified.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_UNSPECIFIED"

-- | The environment size is small.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_SMALL"

-- | The environment size is medium.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_MEDIUM"

-- | The environment size is large.
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE :: EnvironmentConfig_EnvironmentSize
pattern EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE = EnvironmentConfig_EnvironmentSize "ENVIRONMENT_SIZE_LARGE"

{-# COMPLETE
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEUNSPECIFIED,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZESMALL,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZEMEDIUM,
  EnvironmentConfig_EnvironmentSize_ENVIRONMENTSIZELARGE,
  EnvironmentConfig_EnvironmentSize
  #-}

-- | Optional. Resilience mode of the Cloud Composer Environment. This field is supported for Cloud Composer environments in versions composer-2.2.0-airflow-/./.* and newer.
newtype EnvironmentConfig_ResilienceMode = EnvironmentConfig_ResilienceMode {fromEnvironmentConfig_ResilienceMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default mode doesn\'t change environment parameters.
pattern EnvironmentConfig_ResilienceMode_RESILIENCEMODEUNSPECIFIED :: EnvironmentConfig_ResilienceMode
pattern EnvironmentConfig_ResilienceMode_RESILIENCEMODEUNSPECIFIED = EnvironmentConfig_ResilienceMode "RESILIENCE_MODE_UNSPECIFIED"

-- | Enabled High Resilience mode, including Cloud SQL HA.
pattern EnvironmentConfig_ResilienceMode_HIGHRESILIENCE :: EnvironmentConfig_ResilienceMode
pattern EnvironmentConfig_ResilienceMode_HIGHRESILIENCE = EnvironmentConfig_ResilienceMode "HIGH_RESILIENCE"

{-# COMPLETE
  EnvironmentConfig_ResilienceMode_RESILIENCEMODEUNSPECIFIED,
  EnvironmentConfig_ResilienceMode_HIGHRESILIENCE,
  EnvironmentConfig_ResilienceMode
  #-}

-- | Optional. Indicates the user requested specific connection type between Tenant and Customer projects. You cannot set networking connection type in public IP environment.
newtype NetworkingConfig_ConnectionType = NetworkingConfig_ConnectionType {fromNetworkingConfig_ConnectionType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | No specific connection type was requested, so the environment uses the default value corresponding to the rest of its configuration.
pattern NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED = NetworkingConfig_ConnectionType "CONNECTION_TYPE_UNSPECIFIED"

-- | Requests the use of VPC peerings for connecting the Customer and Tenant projects.
pattern NetworkingConfig_ConnectionType_VPCPEERING :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_VPCPEERING = NetworkingConfig_ConnectionType "VPC_PEERING"

-- | Requests the use of Private Service Connect for connecting the Customer and Tenant projects.
pattern NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT :: NetworkingConfig_ConnectionType
pattern NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT = NetworkingConfig_ConnectionType "PRIVATE_SERVICE_CONNECT"

{-# COMPLETE
  NetworkingConfig_ConnectionType_CONNECTIONTYPEUNSPECIFIED,
  NetworkingConfig_ConnectionType_VPCPEERING,
  NetworkingConfig_ConnectionType_PRIVATESERVICECONNECT,
  NetworkingConfig_ConnectionType
  #-}

-- | Output only. The type of operation being performed.
newtype OperationMetadata_OperationType = OperationMetadata_OperationType {fromOperationMetadata_OperationType :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern OperationMetadata_OperationType_TYPEUNSPECIFIED :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_TYPEUNSPECIFIED = OperationMetadata_OperationType "TYPE_UNSPECIFIED"

-- | A resource creation operation.
pattern OperationMetadata_OperationType_Create :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Create = OperationMetadata_OperationType "CREATE"

-- | A resource deletion operation.
pattern OperationMetadata_OperationType_Delete' :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Delete' = OperationMetadata_OperationType "DELETE"

-- | A resource update operation.
pattern OperationMetadata_OperationType_Update :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Update = OperationMetadata_OperationType "UPDATE"

-- | A resource check operation.
pattern OperationMetadata_OperationType_Check :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_Check = OperationMetadata_OperationType "CHECK"

-- | Saves snapshot of the resource operation.
pattern OperationMetadata_OperationType_SAVESNAPSHOT :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_SAVESNAPSHOT = OperationMetadata_OperationType "SAVE_SNAPSHOT"

-- | Loads snapshot of the resource operation.
pattern OperationMetadata_OperationType_LOADSNAPSHOT :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_LOADSNAPSHOT = OperationMetadata_OperationType "LOAD_SNAPSHOT"

-- | Triggers failover of environment\'s Cloud SQL instance (only for highly resilient environments).
pattern OperationMetadata_OperationType_DATABASEFAILOVER :: OperationMetadata_OperationType
pattern OperationMetadata_OperationType_DATABASEFAILOVER = OperationMetadata_OperationType "DATABASE_FAILOVER"

{-# COMPLETE
  OperationMetadata_OperationType_TYPEUNSPECIFIED,
  OperationMetadata_OperationType_Create,
  OperationMetadata_OperationType_Delete',
  OperationMetadata_OperationType_Update,
  OperationMetadata_OperationType_Check,
  OperationMetadata_OperationType_SAVESNAPSHOT,
  OperationMetadata_OperationType_LOADSNAPSHOT,
  OperationMetadata_OperationType_DATABASEFAILOVER,
  OperationMetadata_OperationType
  #-}

-- | Output only. The current operation state.
newtype OperationMetadata_State = OperationMetadata_State {fromOperationMetadata_State :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Unused.
pattern OperationMetadata_State_STATEUNSPECIFIED :: OperationMetadata_State
pattern OperationMetadata_State_STATEUNSPECIFIED = OperationMetadata_State "STATE_UNSPECIFIED"

-- | The operation has been created but is not yet started.
pattern OperationMetadata_State_Pending :: OperationMetadata_State
pattern OperationMetadata_State_Pending = OperationMetadata_State "PENDING"

-- | The operation is underway.
pattern OperationMetadata_State_Running :: OperationMetadata_State
pattern OperationMetadata_State_Running = OperationMetadata_State "RUNNING"

-- | The operation completed successfully.
pattern OperationMetadata_State_Succeeded :: OperationMetadata_State
pattern OperationMetadata_State_Succeeded = OperationMetadata_State "SUCCEEDED"

pattern OperationMetadata_State_Successful :: OperationMetadata_State
pattern OperationMetadata_State_Successful = OperationMetadata_State "SUCCESSFUL"

-- | The operation is no longer running but did not succeed.
pattern OperationMetadata_State_Failed :: OperationMetadata_State
pattern OperationMetadata_State_Failed = OperationMetadata_State "FAILED"

{-# COMPLETE
  OperationMetadata_State_STATEUNSPECIFIED,
  OperationMetadata_State_Pending,
  OperationMetadata_State_Running,
  OperationMetadata_State_Succeeded,
  OperationMetadata_State_Successful,
  OperationMetadata_State_Failed,
  OperationMetadata_State
  #-}

-- | Optional. Whether or not the web server uses custom plugins. If unspecified, the field defaults to @PLUGINS_ENABLED@. This field is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
newtype SoftwareConfig_WebServerPluginsMode = SoftwareConfig_WebServerPluginsMode {fromSoftwareConfig_WebServerPluginsMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Default mode.
pattern SoftwareConfig_WebServerPluginsMode_WEBSERVERPLUGINSMODEUNSPECIFIED :: SoftwareConfig_WebServerPluginsMode
pattern SoftwareConfig_WebServerPluginsMode_WEBSERVERPLUGINSMODEUNSPECIFIED = SoftwareConfig_WebServerPluginsMode "WEB_SERVER_PLUGINS_MODE_UNSPECIFIED"

-- | Web server plugins are not supported.
pattern SoftwareConfig_WebServerPluginsMode_PLUGINSDISABLED :: SoftwareConfig_WebServerPluginsMode
pattern SoftwareConfig_WebServerPluginsMode_PLUGINSDISABLED = SoftwareConfig_WebServerPluginsMode "PLUGINS_DISABLED"

-- | Web server plugins are supported.
pattern SoftwareConfig_WebServerPluginsMode_PLUGINSENABLED :: SoftwareConfig_WebServerPluginsMode
pattern SoftwareConfig_WebServerPluginsMode_PLUGINSENABLED = SoftwareConfig_WebServerPluginsMode "PLUGINS_ENABLED"

{-# COMPLETE
  SoftwareConfig_WebServerPluginsMode_WEBSERVERPLUGINSMODEUNSPECIFIED,
  SoftwareConfig_WebServerPluginsMode_PLUGINSDISABLED,
  SoftwareConfig_WebServerPluginsMode_PLUGINSENABLED,
  SoftwareConfig_WebServerPluginsMode
  #-}

-- | Optional. The mode of storage for Airflow workers task logs.
newtype TaskLogsRetentionConfig_StorageMode = TaskLogsRetentionConfig_StorageMode {fromTaskLogsRetentionConfig_StorageMode :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | This configuration is not specified by the user.
pattern TaskLogsRetentionConfig_StorageMode_TASKLOGSSTORAGEMODEUNSPECIFIED :: TaskLogsRetentionConfig_StorageMode
pattern TaskLogsRetentionConfig_StorageMode_TASKLOGSSTORAGEMODEUNSPECIFIED = TaskLogsRetentionConfig_StorageMode "TASK_LOGS_STORAGE_MODE_UNSPECIFIED"

-- | Store task logs in Cloud Logging and in the environment\'s Cloud Storage bucket.
pattern TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGANDCLOUDSTORAGE :: TaskLogsRetentionConfig_StorageMode
pattern TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGANDCLOUDSTORAGE = TaskLogsRetentionConfig_StorageMode "CLOUD_LOGGING_AND_CLOUD_STORAGE"

-- | Store task logs in Cloud Logging only.
pattern TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGONLY :: TaskLogsRetentionConfig_StorageMode
pattern TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGONLY = TaskLogsRetentionConfig_StorageMode "CLOUD_LOGGING_ONLY"

{-# COMPLETE
  TaskLogsRetentionConfig_StorageMode_TASKLOGSSTORAGEMODEUNSPECIFIED,
  TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGANDCLOUDSTORAGE,
  TaskLogsRetentionConfig_StorageMode_CLOUDLOGGINGONLY,
  TaskLogsRetentionConfig_StorageMode
  #-}

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
-- Module      : Gogol.Dataproc.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Dataproc.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Batch_State
    Batch_State
      ( Batch_State_STATEUNSPECIFIED,
        Batch_State_Pending,
        Batch_State_Running,
        Batch_State_Cancelling,
        Batch_State_Cancelled,
        Batch_State_Succeeded,
        Batch_State_Failed,
        ..
      ),

    -- * BatchOperationMetadata_OperationType
    BatchOperationMetadata_OperationType
      ( BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED,
        BatchOperationMetadata_OperationType_Batch,
        ..
      ),

    -- * ClusterOperationStatus_State
    ClusterOperationStatus_State
      ( ClusterOperationStatus_State_Unknown,
        ClusterOperationStatus_State_Pending,
        ClusterOperationStatus_State_Running,
        ClusterOperationStatus_State_Done,
        ..
      ),

    -- * ClusterStatus_State
    ClusterStatus_State
      ( ClusterStatus_State_Unknown,
        ClusterStatus_State_Creating,
        ClusterStatus_State_Running,
        ClusterStatus_State_Error',
        ClusterStatus_State_ERRORDUETOUPDATE,
        ClusterStatus_State_Deleting,
        ClusterStatus_State_Updating,
        ClusterStatus_State_Stopping,
        ClusterStatus_State_Stopped,
        ClusterStatus_State_Starting,
        ClusterStatus_State_Repairing,
        ..
      ),

    -- * ClusterStatus_Substate
    ClusterStatus_Substate
      ( ClusterStatus_Substate_Unspecified,
        ClusterStatus_Substate_Unhealthy,
        ClusterStatus_Substate_STALESTATUS,
        ..
      ),

    -- * GceClusterConfig_PrivateIpv6GoogleAccess
    GceClusterConfig_PrivateIpv6GoogleAccess
      ( GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
        GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK,
        GceClusterConfig_PrivateIpv6GoogleAccess_Outbound,
        GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional,
        ..
      ),

    -- * GkeNodePoolTarget_RolesItem
    GkeNodePoolTarget_RolesItem
      ( GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED,
        GkeNodePoolTarget_RolesItem_Default,
        GkeNodePoolTarget_RolesItem_Controller,
        GkeNodePoolTarget_RolesItem_SPARKDRIVER,
        GkeNodePoolTarget_RolesItem_SPARKEXECUTOR,
        ..
      ),

    -- * InstanceGroupConfig_Preemptibility
    InstanceGroupConfig_Preemptibility
      ( InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED,
        InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE,
        InstanceGroupConfig_Preemptibility_Preemptible,
        InstanceGroupConfig_Preemptibility_Spot,
        ..
      ),

    -- * JobStatus_State
    JobStatus_State
      ( JobStatus_State_STATEUNSPECIFIED,
        JobStatus_State_Pending,
        JobStatus_State_SETUPDONE,
        JobStatus_State_Running,
        JobStatus_State_CANCELPENDING,
        JobStatus_State_CANCELSTARTED,
        JobStatus_State_Cancelled,
        JobStatus_State_Done,
        JobStatus_State_Error',
        JobStatus_State_ATTEMPTFAILURE,
        ..
      ),

    -- * JobStatus_Substate
    JobStatus_Substate
      ( JobStatus_Substate_Unspecified,
        JobStatus_Substate_Submitted,
        JobStatus_Substate_Queued,
        JobStatus_Substate_STALESTATUS,
        ..
      ),

    -- * LoggingConfig_DriverLogLevelsAdditional
    LoggingConfig_DriverLogLevelsAdditional
      ( LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED,
        LoggingConfig_DriverLogLevelsAdditional_All,
        LoggingConfig_DriverLogLevelsAdditional_Trace,
        LoggingConfig_DriverLogLevelsAdditional_Debug,
        LoggingConfig_DriverLogLevelsAdditional_Info,
        LoggingConfig_DriverLogLevelsAdditional_Warn,
        LoggingConfig_DriverLogLevelsAdditional_Error',
        LoggingConfig_DriverLogLevelsAdditional_Fatal,
        LoggingConfig_DriverLogLevelsAdditional_Off,
        ..
      ),

    -- * Metric_MetricSource
    Metric_MetricSource
      ( Metric_MetricSource_METRICSOURCEUNSPECIFIED,
        Metric_MetricSource_MONITORINGAGENTDEFAULTS,
        Metric_MetricSource_Hdfs,
        Metric_MetricSource_Spark,
        Metric_MetricSource_Yarn,
        Metric_MetricSource_SPARKHISTORYSERVER,
        Metric_MetricSource_HIVESERVER2,
        Metric_MetricSource_Hivemetastore,
        ..
      ),

    -- * NodeGroup_RolesItem
    NodeGroup_RolesItem
      ( NodeGroup_RolesItem_ROLEUNSPECIFIED,
        NodeGroup_RolesItem_Driver,
        ..
      ),

    -- * NodeGroupOperationMetadata_OperationType
    NodeGroupOperationMetadata_OperationType
      ( NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED,
        NodeGroupOperationMetadata_OperationType_Create,
        NodeGroupOperationMetadata_OperationType_Update,
        NodeGroupOperationMetadata_OperationType_Delete',
        NodeGroupOperationMetadata_OperationType_Resize,
        ..
      ),

    -- * NodePool_RepairAction
    NodePool_RepairAction
      ( NodePool_RepairAction_REPAIRACTIONUNSPECIFIED,
        NodePool_RepairAction_Delete',
        ..
      ),

    -- * ReservationAffinity_ConsumeReservationType
    ReservationAffinity_ConsumeReservationType
      ( ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED,
        ReservationAffinity_ConsumeReservationType_NORESERVATION,
        ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
        ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
        ..
      ),

    -- * SessionOperationMetadata_OperationType
    SessionOperationMetadata_OperationType
      ( SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED,
        SessionOperationMetadata_OperationType_Create,
        SessionOperationMetadata_OperationType_Terminate,
        SessionOperationMetadata_OperationType_Delete',
        ..
      ),

    -- * SoftwareConfig_OptionalComponentsItem
    SoftwareConfig_OptionalComponentsItem
      ( SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED,
        SoftwareConfig_OptionalComponentsItem_Anaconda,
        SoftwareConfig_OptionalComponentsItem_Docker,
        SoftwareConfig_OptionalComponentsItem_Druid,
        SoftwareConfig_OptionalComponentsItem_Flink,
        SoftwareConfig_OptionalComponentsItem_Hbase,
        SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT,
        SoftwareConfig_OptionalComponentsItem_Hudi,
        SoftwareConfig_OptionalComponentsItem_Jupyter,
        SoftwareConfig_OptionalComponentsItem_Presto,
        SoftwareConfig_OptionalComponentsItem_Trino,
        SoftwareConfig_OptionalComponentsItem_Ranger,
        SoftwareConfig_OptionalComponentsItem_Solr,
        SoftwareConfig_OptionalComponentsItem_Zeppelin,
        SoftwareConfig_OptionalComponentsItem_Zookeeper,
        ..
      ),

    -- * StateHistory_State
    StateHistory_State
      ( StateHistory_State_STATEUNSPECIFIED,
        StateHistory_State_Pending,
        StateHistory_State_Running,
        StateHistory_State_Cancelling,
        StateHistory_State_Cancelled,
        StateHistory_State_Succeeded,
        StateHistory_State_Failed,
        ..
      ),

    -- * WorkflowMetadata_State
    WorkflowMetadata_State
      ( WorkflowMetadata_State_Unknown,
        WorkflowMetadata_State_Pending,
        WorkflowMetadata_State_Running,
        WorkflowMetadata_State_Done,
        ..
      ),

    -- * WorkflowNode_State
    WorkflowNode_State
      ( WorkflowNode_State_NODESTATEUNSPECIFIED,
        WorkflowNode_State_Blocked,
        WorkflowNode_State_Runnable,
        WorkflowNode_State_Running,
        WorkflowNode_State_Completed,
        WorkflowNode_State_Failed,
        ..
      ),

    -- * YarnApplication_State
    YarnApplication_State
      ( YarnApplication_State_STATEUNSPECIFIED,
        YarnApplication_State_New,
        YarnApplication_State_NEWSAVING,
        YarnApplication_State_Submitted,
        YarnApplication_State_Accepted,
        YarnApplication_State_Running,
        YarnApplication_State_Finished,
        YarnApplication_State_Failed,
        YarnApplication_State_Killed,
        ..
      ),

    -- * ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
    ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
      ( ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED,
        ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION,
        ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete',
        ..
      ),

    -- * ProjectsRegionsJobsListJobStateMatcher
    ProjectsRegionsJobsListJobStateMatcher
      ( ProjectsRegionsJobsListJobStateMatcher_All,
        ProjectsRegionsJobsListJobStateMatcher_Active,
        ProjectsRegionsJobsListJobStateMatcher_NONACTIVE,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

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

-- | Output only. The state of the batch.
newtype Batch_State = Batch_State {fromBatch_State :: Core.Text}
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

-- | The batch state is unknown.
pattern Batch_State_STATEUNSPECIFIED :: Batch_State
pattern Batch_State_STATEUNSPECIFIED = Batch_State "STATE_UNSPECIFIED"

-- | The batch is created before running.
pattern Batch_State_Pending :: Batch_State
pattern Batch_State_Pending = Batch_State "PENDING"

-- | The batch is running.
pattern Batch_State_Running :: Batch_State
pattern Batch_State_Running = Batch_State "RUNNING"

-- | The batch is cancelling.
pattern Batch_State_Cancelling :: Batch_State
pattern Batch_State_Cancelling = Batch_State "CANCELLING"

-- | The batch cancellation was successful.
pattern Batch_State_Cancelled :: Batch_State
pattern Batch_State_Cancelled = Batch_State "CANCELLED"

-- | The batch completed successfully.
pattern Batch_State_Succeeded :: Batch_State
pattern Batch_State_Succeeded = Batch_State "SUCCEEDED"

-- | The batch is no longer running due to an error.
pattern Batch_State_Failed :: Batch_State
pattern Batch_State_Failed = Batch_State "FAILED"

{-# COMPLETE
  Batch_State_STATEUNSPECIFIED,
  Batch_State_Pending,
  Batch_State_Running,
  Batch_State_Cancelling,
  Batch_State_Cancelled,
  Batch_State_Succeeded,
  Batch_State_Failed,
  Batch_State
  #-}

-- | The operation type.
newtype BatchOperationMetadata_OperationType = BatchOperationMetadata_OperationType {fromBatchOperationMetadata_OperationType :: Core.Text}
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

-- | Batch operation type is unknown.
pattern BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED :: BatchOperationMetadata_OperationType
pattern BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED = BatchOperationMetadata_OperationType "BATCH_OPERATION_TYPE_UNSPECIFIED"

-- | Batch operation type.
pattern BatchOperationMetadata_OperationType_Batch :: BatchOperationMetadata_OperationType
pattern BatchOperationMetadata_OperationType_Batch = BatchOperationMetadata_OperationType "BATCH"

{-# COMPLETE
  BatchOperationMetadata_OperationType_BATCHOPERATIONTYPEUNSPECIFIED,
  BatchOperationMetadata_OperationType_Batch,
  BatchOperationMetadata_OperationType
  #-}

-- | Output only. A message containing the operation state.
newtype ClusterOperationStatus_State = ClusterOperationStatus_State {fromClusterOperationStatus_State :: Core.Text}
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
pattern ClusterOperationStatus_State_Unknown :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Unknown = ClusterOperationStatus_State "UNKNOWN"

-- | The operation has been created.
pattern ClusterOperationStatus_State_Pending :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Pending = ClusterOperationStatus_State "PENDING"

-- | The operation is running.
pattern ClusterOperationStatus_State_Running :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Running = ClusterOperationStatus_State "RUNNING"

-- | The operation is done; either cancelled or completed.
pattern ClusterOperationStatus_State_Done :: ClusterOperationStatus_State
pattern ClusterOperationStatus_State_Done = ClusterOperationStatus_State "DONE"

{-# COMPLETE
  ClusterOperationStatus_State_Unknown,
  ClusterOperationStatus_State_Pending,
  ClusterOperationStatus_State_Running,
  ClusterOperationStatus_State_Done,
  ClusterOperationStatus_State
  #-}

-- | Output only. The cluster\'s state.
newtype ClusterStatus_State = ClusterStatus_State {fromClusterStatus_State :: Core.Text}
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

-- | The cluster state is unknown.
pattern ClusterStatus_State_Unknown :: ClusterStatus_State
pattern ClusterStatus_State_Unknown = ClusterStatus_State "UNKNOWN"

-- | The cluster is being created and set up. It is not ready for use.
pattern ClusterStatus_State_Creating :: ClusterStatus_State
pattern ClusterStatus_State_Creating = ClusterStatus_State "CREATING"

-- | The cluster is currently running and healthy. It is ready for use.Note: The cluster state changes from \"creating\" to \"running\" status after the master node(s), first two primary worker nodes (and the last primary worker node if primary workers > 2) are running.
pattern ClusterStatus_State_Running :: ClusterStatus_State
pattern ClusterStatus_State_Running = ClusterStatus_State "RUNNING"

-- | The cluster encountered an error. It is not ready for use.
pattern ClusterStatus_State_Error' :: ClusterStatus_State
pattern ClusterStatus_State_Error' = ClusterStatus_State "ERROR"

-- | The cluster has encountered an error while being updated. Jobs can be submitted to the cluster, but the cluster cannot be updated.
pattern ClusterStatus_State_ERRORDUETOUPDATE :: ClusterStatus_State
pattern ClusterStatus_State_ERRORDUETOUPDATE = ClusterStatus_State "ERROR_DUE_TO_UPDATE"

-- | The cluster is being deleted. It cannot be used.
pattern ClusterStatus_State_Deleting :: ClusterStatus_State
pattern ClusterStatus_State_Deleting = ClusterStatus_State "DELETING"

-- | The cluster is being updated. It continues to accept and process jobs.
pattern ClusterStatus_State_Updating :: ClusterStatus_State
pattern ClusterStatus_State_Updating = ClusterStatus_State "UPDATING"

-- | The cluster is being stopped. It cannot be used.
pattern ClusterStatus_State_Stopping :: ClusterStatus_State
pattern ClusterStatus_State_Stopping = ClusterStatus_State "STOPPING"

-- | The cluster is currently stopped. It is not ready for use.
pattern ClusterStatus_State_Stopped :: ClusterStatus_State
pattern ClusterStatus_State_Stopped = ClusterStatus_State "STOPPED"

-- | The cluster is being started. It is not ready for use.
pattern ClusterStatus_State_Starting :: ClusterStatus_State
pattern ClusterStatus_State_Starting = ClusterStatus_State "STARTING"

-- | The cluster is being repaired. It is not ready for use.
pattern ClusterStatus_State_Repairing :: ClusterStatus_State
pattern ClusterStatus_State_Repairing = ClusterStatus_State "REPAIRING"

{-# COMPLETE
  ClusterStatus_State_Unknown,
  ClusterStatus_State_Creating,
  ClusterStatus_State_Running,
  ClusterStatus_State_Error',
  ClusterStatus_State_ERRORDUETOUPDATE,
  ClusterStatus_State_Deleting,
  ClusterStatus_State_Updating,
  ClusterStatus_State_Stopping,
  ClusterStatus_State_Stopped,
  ClusterStatus_State_Starting,
  ClusterStatus_State_Repairing,
  ClusterStatus_State
  #-}

-- | Output only. Additional state information that includes status reported by the agent.
newtype ClusterStatus_Substate = ClusterStatus_Substate {fromClusterStatus_Substate :: Core.Text}
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

-- | The cluster substate is unknown.
pattern ClusterStatus_Substate_Unspecified :: ClusterStatus_Substate
pattern ClusterStatus_Substate_Unspecified = ClusterStatus_Substate "UNSPECIFIED"

-- | The cluster is known to be in an unhealthy state (for example, critical daemons are not running or HDFS capacity is exhausted).Applies to RUNNING state.
pattern ClusterStatus_Substate_Unhealthy :: ClusterStatus_Substate
pattern ClusterStatus_Substate_Unhealthy = ClusterStatus_Substate "UNHEALTHY"

-- | The agent-reported status is out of date (may occur if Dataproc loses communication with Agent).Applies to RUNNING state.
pattern ClusterStatus_Substate_STALESTATUS :: ClusterStatus_Substate
pattern ClusterStatus_Substate_STALESTATUS = ClusterStatus_Substate "STALE_STATUS"

{-# COMPLETE
  ClusterStatus_Substate_Unspecified,
  ClusterStatus_Substate_Unhealthy,
  ClusterStatus_Substate_STALESTATUS,
  ClusterStatus_Substate
  #-}

-- | Optional. The type of IPv6 access for a cluster.
newtype GceClusterConfig_PrivateIpv6GoogleAccess = GceClusterConfig_PrivateIpv6GoogleAccess {fromGceClusterConfig_PrivateIpv6GoogleAccess :: Core.Text}
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

-- | If unspecified, Compute Engine default behavior will apply, which is the same as INHERIT/FROM/SUBNETWORK.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED = GceClusterConfig_PrivateIpv6GoogleAccess "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"

-- | Private access to and from Google Services configuration inherited from the subnetwork configuration. This is the default Compute Engine behavior.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK = GceClusterConfig_PrivateIpv6GoogleAccess "INHERIT_FROM_SUBNETWORK"

-- | Enables outbound private IPv6 access to Google Services from the Dataproc cluster.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Outbound :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Outbound = GceClusterConfig_PrivateIpv6GoogleAccess "OUTBOUND"

-- | Enables bidirectional private IPv6 access between Google Services and the Dataproc cluster.
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional :: GceClusterConfig_PrivateIpv6GoogleAccess
pattern GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional = GceClusterConfig_PrivateIpv6GoogleAccess "BIDIRECTIONAL"

{-# COMPLETE
  GceClusterConfig_PrivateIpv6GoogleAccess_PRIVATEIPV6GOOGLEACCESSUNSPECIFIED,
  GceClusterConfig_PrivateIpv6GoogleAccess_INHERITFROMSUBNETWORK,
  GceClusterConfig_PrivateIpv6GoogleAccess_Outbound,
  GceClusterConfig_PrivateIpv6GoogleAccess_Bidirectional,
  GceClusterConfig_PrivateIpv6GoogleAccess
  #-}

newtype GkeNodePoolTarget_RolesItem = GkeNodePoolTarget_RolesItem {fromGkeNodePoolTarget_RolesItem :: Core.Text}
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

-- | Role is unspecified.
pattern GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED = GkeNodePoolTarget_RolesItem "ROLE_UNSPECIFIED"

-- | At least one node pool must have the DEFAULT role. Work assigned to a role that is not associated with a node pool is assigned to the node pool with the DEFAULT role. For example, work assigned to the CONTROLLER role will be assigned to the node pool with the DEFAULT role if no node pool has the CONTROLLER role.
pattern GkeNodePoolTarget_RolesItem_Default :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_Default = GkeNodePoolTarget_RolesItem "DEFAULT"

-- | Run work associated with the Dataproc control plane (for example, controllers and webhooks). Very low resource requirements.
pattern GkeNodePoolTarget_RolesItem_Controller :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_Controller = GkeNodePoolTarget_RolesItem "CONTROLLER"

-- | Run work associated with a Spark driver of a job.
pattern GkeNodePoolTarget_RolesItem_SPARKDRIVER :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_SPARKDRIVER = GkeNodePoolTarget_RolesItem "SPARK_DRIVER"

-- | Run work associated with a Spark executor of a job.
pattern GkeNodePoolTarget_RolesItem_SPARKEXECUTOR :: GkeNodePoolTarget_RolesItem
pattern GkeNodePoolTarget_RolesItem_SPARKEXECUTOR = GkeNodePoolTarget_RolesItem "SPARK_EXECUTOR"

{-# COMPLETE
  GkeNodePoolTarget_RolesItem_ROLEUNSPECIFIED,
  GkeNodePoolTarget_RolesItem_Default,
  GkeNodePoolTarget_RolesItem_Controller,
  GkeNodePoolTarget_RolesItem_SPARKDRIVER,
  GkeNodePoolTarget_RolesItem_SPARKEXECUTOR,
  GkeNodePoolTarget_RolesItem
  #-}

-- | Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
newtype InstanceGroupConfig_Preemptibility = InstanceGroupConfig_Preemptibility {fromInstanceGroupConfig_Preemptibility :: Core.Text}
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

-- | Preemptibility is unspecified, the system will choose the appropriate setting for each instance group.
pattern InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED = InstanceGroupConfig_Preemptibility "PREEMPTIBILITY_UNSPECIFIED"

-- | Instances are non-preemptible.This option is allowed for all instance groups and is the only valid value for Master and Worker instance groups.
pattern InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE = InstanceGroupConfig_Preemptibility "NON_PREEMPTIBLE"

-- | Instances are preemptible (https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible).This option is allowed only for secondary worker (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/secondary-vms) groups.
pattern InstanceGroupConfig_Preemptibility_Preemptible :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_Preemptible = InstanceGroupConfig_Preemptibility "PREEMPTIBLE"

-- | Instances are Spot VMs (https:\/\/cloud.google.com\/compute\/docs\/instances\/spot).This option is allowed only for secondary worker (https:\/\/cloud.google.com\/dataproc\/docs\/concepts\/compute\/secondary-vms) groups. Spot VMs are the latest version of preemptible VMs (https:\/\/cloud.google.com\/compute\/docs\/instances\/preemptible), and provide additional features.
pattern InstanceGroupConfig_Preemptibility_Spot :: InstanceGroupConfig_Preemptibility
pattern InstanceGroupConfig_Preemptibility_Spot = InstanceGroupConfig_Preemptibility "SPOT"

{-# COMPLETE
  InstanceGroupConfig_Preemptibility_PREEMPTIBILITYUNSPECIFIED,
  InstanceGroupConfig_Preemptibility_NONPREEMPTIBLE,
  InstanceGroupConfig_Preemptibility_Preemptible,
  InstanceGroupConfig_Preemptibility_Spot,
  InstanceGroupConfig_Preemptibility
  #-}

-- | Output only. A state message specifying the overall job state.
newtype JobStatus_State = JobStatus_State {fromJobStatus_State :: Core.Text}
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

-- | The job state is unknown.
pattern JobStatus_State_STATEUNSPECIFIED :: JobStatus_State
pattern JobStatus_State_STATEUNSPECIFIED = JobStatus_State "STATE_UNSPECIFIED"

-- | The job is pending; it has been submitted, but is not yet running.
pattern JobStatus_State_Pending :: JobStatus_State
pattern JobStatus_State_Pending = JobStatus_State "PENDING"

-- | Job has been received by the service and completed initial setup; it will soon be submitted to the cluster.
pattern JobStatus_State_SETUPDONE :: JobStatus_State
pattern JobStatus_State_SETUPDONE = JobStatus_State "SETUP_DONE"

-- | The job is running on the cluster.
pattern JobStatus_State_Running :: JobStatus_State
pattern JobStatus_State_Running = JobStatus_State "RUNNING"

-- | A CancelJob request has been received, but is pending.
pattern JobStatus_State_CANCELPENDING :: JobStatus_State
pattern JobStatus_State_CANCELPENDING = JobStatus_State "CANCEL_PENDING"

-- | Transient in-flight resources have been canceled, and the request to cancel the running job has been issued to the cluster.
pattern JobStatus_State_CANCELSTARTED :: JobStatus_State
pattern JobStatus_State_CANCELSTARTED = JobStatus_State "CANCEL_STARTED"

-- | The job cancellation was successful.
pattern JobStatus_State_Cancelled :: JobStatus_State
pattern JobStatus_State_Cancelled = JobStatus_State "CANCELLED"

-- | The job has completed successfully.
pattern JobStatus_State_Done :: JobStatus_State
pattern JobStatus_State_Done = JobStatus_State "DONE"

-- | The job has completed, but encountered an error.
pattern JobStatus_State_Error' :: JobStatus_State
pattern JobStatus_State_Error' = JobStatus_State "ERROR"

-- | Job attempt has failed. The detail field contains failure details for this attempt.Applies to restartable jobs only.
pattern JobStatus_State_ATTEMPTFAILURE :: JobStatus_State
pattern JobStatus_State_ATTEMPTFAILURE = JobStatus_State "ATTEMPT_FAILURE"

{-# COMPLETE
  JobStatus_State_STATEUNSPECIFIED,
  JobStatus_State_Pending,
  JobStatus_State_SETUPDONE,
  JobStatus_State_Running,
  JobStatus_State_CANCELPENDING,
  JobStatus_State_CANCELSTARTED,
  JobStatus_State_Cancelled,
  JobStatus_State_Done,
  JobStatus_State_Error',
  JobStatus_State_ATTEMPTFAILURE,
  JobStatus_State
  #-}

-- | Output only. Additional state information, which includes status reported by the agent.
newtype JobStatus_Substate = JobStatus_Substate {fromJobStatus_Substate :: Core.Text}
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

-- | The job substate is unknown.
pattern JobStatus_Substate_Unspecified :: JobStatus_Substate
pattern JobStatus_Substate_Unspecified = JobStatus_Substate "UNSPECIFIED"

-- | The Job is submitted to the agent.Applies to RUNNING state.
pattern JobStatus_Substate_Submitted :: JobStatus_Substate
pattern JobStatus_Substate_Submitted = JobStatus_Substate "SUBMITTED"

-- | The Job has been received and is awaiting execution (it may be waiting for a condition to be met). See the \"details\" field for the reason for the delay.Applies to RUNNING state.
pattern JobStatus_Substate_Queued :: JobStatus_Substate
pattern JobStatus_Substate_Queued = JobStatus_Substate "QUEUED"

-- | The agent-reported status is out of date, which may be caused by a loss of communication between the agent and Dataproc. If the agent does not send a timely update, the job will fail.Applies to RUNNING state.
pattern JobStatus_Substate_STALESTATUS :: JobStatus_Substate
pattern JobStatus_Substate_STALESTATUS = JobStatus_Substate "STALE_STATUS"

{-# COMPLETE
  JobStatus_Substate_Unspecified,
  JobStatus_Substate_Submitted,
  JobStatus_Substate_Queued,
  JobStatus_Substate_STALESTATUS,
  JobStatus_Substate
  #-}

newtype LoggingConfig_DriverLogLevelsAdditional = LoggingConfig_DriverLogLevelsAdditional {fromLoggingConfig_DriverLogLevelsAdditional :: Core.Text}
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

-- | Level is unspecified. Use default level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED = LoggingConfig_DriverLogLevelsAdditional "LEVEL_UNSPECIFIED"

-- | Use ALL level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_All :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_All = LoggingConfig_DriverLogLevelsAdditional "ALL"

-- | Use TRACE level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Trace :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Trace = LoggingConfig_DriverLogLevelsAdditional "TRACE"

-- | Use DEBUG level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Debug :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Debug = LoggingConfig_DriverLogLevelsAdditional "DEBUG"

-- | Use INFO level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Info :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Info = LoggingConfig_DriverLogLevelsAdditional "INFO"

-- | Use WARN level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Warn :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Warn = LoggingConfig_DriverLogLevelsAdditional "WARN"

-- | Use ERROR level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Error' :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Error' = LoggingConfig_DriverLogLevelsAdditional "ERROR"

-- | Use FATAL level for log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Fatal :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Fatal = LoggingConfig_DriverLogLevelsAdditional "FATAL"

-- | Turn off log4j.
pattern LoggingConfig_DriverLogLevelsAdditional_Off :: LoggingConfig_DriverLogLevelsAdditional
pattern LoggingConfig_DriverLogLevelsAdditional_Off = LoggingConfig_DriverLogLevelsAdditional "OFF"

{-# COMPLETE
  LoggingConfig_DriverLogLevelsAdditional_LEVELUNSPECIFIED,
  LoggingConfig_DriverLogLevelsAdditional_All,
  LoggingConfig_DriverLogLevelsAdditional_Trace,
  LoggingConfig_DriverLogLevelsAdditional_Debug,
  LoggingConfig_DriverLogLevelsAdditional_Info,
  LoggingConfig_DriverLogLevelsAdditional_Warn,
  LoggingConfig_DriverLogLevelsAdditional_Error',
  LoggingConfig_DriverLogLevelsAdditional_Fatal,
  LoggingConfig_DriverLogLevelsAdditional_Off,
  LoggingConfig_DriverLogLevelsAdditional
  #-}

-- | Required. Default metrics are collected unless metricOverrides are specified for the metric source (see Available OSS metrics (https:\/\/cloud.google.com\/dataproc\/docs\/guides\/monitoring#available/oss/metrics) for more information).
newtype Metric_MetricSource = Metric_MetricSource {fromMetric_MetricSource :: Core.Text}
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

-- | Required unspecified metric source.
pattern Metric_MetricSource_METRICSOURCEUNSPECIFIED :: Metric_MetricSource
pattern Metric_MetricSource_METRICSOURCEUNSPECIFIED = Metric_MetricSource "METRIC_SOURCE_UNSPECIFIED"

-- | Default monitoring agent metrics. If this source is enabled, Dataproc enables the monitoring agent in Compute Engine, and collects default monitoring agent metrics, which are published with an agent.googleapis.com prefix.
pattern Metric_MetricSource_MONITORINGAGENTDEFAULTS :: Metric_MetricSource
pattern Metric_MetricSource_MONITORINGAGENTDEFAULTS = Metric_MetricSource "MONITORING_AGENT_DEFAULTS"

-- | HDFS metric source.
pattern Metric_MetricSource_Hdfs :: Metric_MetricSource
pattern Metric_MetricSource_Hdfs = Metric_MetricSource "HDFS"

-- | Spark metric source.
pattern Metric_MetricSource_Spark :: Metric_MetricSource
pattern Metric_MetricSource_Spark = Metric_MetricSource "SPARK"

-- | YARN metric source.
pattern Metric_MetricSource_Yarn :: Metric_MetricSource
pattern Metric_MetricSource_Yarn = Metric_MetricSource "YARN"

-- | Spark History Server metric source.
pattern Metric_MetricSource_SPARKHISTORYSERVER :: Metric_MetricSource
pattern Metric_MetricSource_SPARKHISTORYSERVER = Metric_MetricSource "SPARK_HISTORY_SERVER"

-- | Hiveserver2 metric source.
pattern Metric_MetricSource_HIVESERVER2 :: Metric_MetricSource
pattern Metric_MetricSource_HIVESERVER2 = Metric_MetricSource "HIVESERVER2"

-- | hivemetastore metric source
pattern Metric_MetricSource_Hivemetastore :: Metric_MetricSource
pattern Metric_MetricSource_Hivemetastore = Metric_MetricSource "HIVEMETASTORE"

{-# COMPLETE
  Metric_MetricSource_METRICSOURCEUNSPECIFIED,
  Metric_MetricSource_MONITORINGAGENTDEFAULTS,
  Metric_MetricSource_Hdfs,
  Metric_MetricSource_Spark,
  Metric_MetricSource_Yarn,
  Metric_MetricSource_SPARKHISTORYSERVER,
  Metric_MetricSource_HIVESERVER2,
  Metric_MetricSource_Hivemetastore,
  Metric_MetricSource
  #-}

newtype NodeGroup_RolesItem = NodeGroup_RolesItem {fromNodeGroup_RolesItem :: Core.Text}
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

-- | Required unspecified role.
pattern NodeGroup_RolesItem_ROLEUNSPECIFIED :: NodeGroup_RolesItem
pattern NodeGroup_RolesItem_ROLEUNSPECIFIED = NodeGroup_RolesItem "ROLE_UNSPECIFIED"

-- | Job drivers run on the node pool.
pattern NodeGroup_RolesItem_Driver :: NodeGroup_RolesItem
pattern NodeGroup_RolesItem_Driver = NodeGroup_RolesItem "DRIVER"

{-# COMPLETE
  NodeGroup_RolesItem_ROLEUNSPECIFIED,
  NodeGroup_RolesItem_Driver,
  NodeGroup_RolesItem
  #-}

-- | The operation type.
newtype NodeGroupOperationMetadata_OperationType = NodeGroupOperationMetadata_OperationType {fromNodeGroupOperationMetadata_OperationType :: Core.Text}
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

-- | Node group operation type is unknown.
pattern NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED = NodeGroupOperationMetadata_OperationType "NODE_GROUP_OPERATION_TYPE_UNSPECIFIED"

-- | Create node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Create :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Create = NodeGroupOperationMetadata_OperationType "CREATE"

-- | Update node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Update :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Update = NodeGroupOperationMetadata_OperationType "UPDATE"

-- | Delete node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Delete' :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Delete' = NodeGroupOperationMetadata_OperationType "DELETE"

-- | Resize node group operation type.
pattern NodeGroupOperationMetadata_OperationType_Resize :: NodeGroupOperationMetadata_OperationType
pattern NodeGroupOperationMetadata_OperationType_Resize = NodeGroupOperationMetadata_OperationType "RESIZE"

{-# COMPLETE
  NodeGroupOperationMetadata_OperationType_NODEGROUPOPERATIONTYPEUNSPECIFIED,
  NodeGroupOperationMetadata_OperationType_Create,
  NodeGroupOperationMetadata_OperationType_Update,
  NodeGroupOperationMetadata_OperationType_Delete',
  NodeGroupOperationMetadata_OperationType_Resize,
  NodeGroupOperationMetadata_OperationType
  #-}

-- | Required. Repair action to take on specified resources of the node pool.
newtype NodePool_RepairAction = NodePool_RepairAction {fromNodePool_RepairAction :: Core.Text}
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

-- | No action will be taken by default.
pattern NodePool_RepairAction_REPAIRACTIONUNSPECIFIED :: NodePool_RepairAction
pattern NodePool_RepairAction_REPAIRACTIONUNSPECIFIED = NodePool_RepairAction "REPAIR_ACTION_UNSPECIFIED"

-- | delete the specified list of nodes.
pattern NodePool_RepairAction_Delete' :: NodePool_RepairAction
pattern NodePool_RepairAction_Delete' = NodePool_RepairAction "DELETE"

{-# COMPLETE
  NodePool_RepairAction_REPAIRACTIONUNSPECIFIED,
  NodePool_RepairAction_Delete',
  NodePool_RepairAction
  #-}

-- | Optional. Type of reservation to consume
newtype ReservationAffinity_ConsumeReservationType = ReservationAffinity_ConsumeReservationType {fromReservationAffinity_ConsumeReservationType :: Core.Text}
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

-- |
pattern ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED = ReservationAffinity_ConsumeReservationType "TYPE_UNSPECIFIED"

-- | Do not consume from any allocated capacity.
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_NORESERVATION = ReservationAffinity_ConsumeReservationType "NO_RESERVATION"

-- | Consume any reservation available.
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_ANYRESERVATION = ReservationAffinity_ConsumeReservationType "ANY_RESERVATION"

-- | Must consume from a specific reservation. Must specify key value fields for specifying the reservations.
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION :: ReservationAffinity_ConsumeReservationType
pattern ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION = ReservationAffinity_ConsumeReservationType "SPECIFIC_RESERVATION"

{-# COMPLETE
  ReservationAffinity_ConsumeReservationType_TYPEUNSPECIFIED,
  ReservationAffinity_ConsumeReservationType_NORESERVATION,
  ReservationAffinity_ConsumeReservationType_ANYRESERVATION,
  ReservationAffinity_ConsumeReservationType_SPECIFICRESERVATION,
  ReservationAffinity_ConsumeReservationType
  #-}

-- | The operation type.
newtype SessionOperationMetadata_OperationType = SessionOperationMetadata_OperationType {fromSessionOperationMetadata_OperationType :: Core.Text}
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

-- | Session operation type is unknown.
pattern SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED = SessionOperationMetadata_OperationType "SESSION_OPERATION_TYPE_UNSPECIFIED"

-- | Create Session operation type.
pattern SessionOperationMetadata_OperationType_Create :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Create = SessionOperationMetadata_OperationType "CREATE"

-- | Terminate Session operation type.
pattern SessionOperationMetadata_OperationType_Terminate :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Terminate = SessionOperationMetadata_OperationType "TERMINATE"

-- | Delete Session operation type.
pattern SessionOperationMetadata_OperationType_Delete' :: SessionOperationMetadata_OperationType
pattern SessionOperationMetadata_OperationType_Delete' = SessionOperationMetadata_OperationType "DELETE"

{-# COMPLETE
  SessionOperationMetadata_OperationType_SESSIONOPERATIONTYPEUNSPECIFIED,
  SessionOperationMetadata_OperationType_Create,
  SessionOperationMetadata_OperationType_Terminate,
  SessionOperationMetadata_OperationType_Delete',
  SessionOperationMetadata_OperationType
  #-}

newtype SoftwareConfig_OptionalComponentsItem = SoftwareConfig_OptionalComponentsItem {fromSoftwareConfig_OptionalComponentsItem :: Core.Text}
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

-- | Unspecified component. Specifying this will cause Cluster creation to fail.
pattern SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED = SoftwareConfig_OptionalComponentsItem "COMPONENT_UNSPECIFIED"

-- | The Anaconda python distribution. The Anaconda component is not supported in the Dataproc 2.0 image. The 2.0 image is pre-installed with Miniconda.
pattern SoftwareConfig_OptionalComponentsItem_Anaconda :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Anaconda = SoftwareConfig_OptionalComponentsItem "ANACONDA"

-- | Docker
pattern SoftwareConfig_OptionalComponentsItem_Docker :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Docker = SoftwareConfig_OptionalComponentsItem "DOCKER"

-- | The Druid query engine. (alpha)
pattern SoftwareConfig_OptionalComponentsItem_Druid :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Druid = SoftwareConfig_OptionalComponentsItem "DRUID"

-- | Flink
pattern SoftwareConfig_OptionalComponentsItem_Flink :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Flink = SoftwareConfig_OptionalComponentsItem "FLINK"

-- | HBase. (beta)
pattern SoftwareConfig_OptionalComponentsItem_Hbase :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Hbase = SoftwareConfig_OptionalComponentsItem "HBASE"

-- | The Hive Web HCatalog (the REST service for accessing HCatalog).
pattern SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT = SoftwareConfig_OptionalComponentsItem "HIVE_WEBHCAT"

-- | Hudi.
pattern SoftwareConfig_OptionalComponentsItem_Hudi :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Hudi = SoftwareConfig_OptionalComponentsItem "HUDI"

-- | The Jupyter Notebook.
pattern SoftwareConfig_OptionalComponentsItem_Jupyter :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Jupyter = SoftwareConfig_OptionalComponentsItem "JUPYTER"

-- | The Presto query engine.
pattern SoftwareConfig_OptionalComponentsItem_Presto :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Presto = SoftwareConfig_OptionalComponentsItem "PRESTO"

-- | The Trino query engine.
pattern SoftwareConfig_OptionalComponentsItem_Trino :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Trino = SoftwareConfig_OptionalComponentsItem "TRINO"

-- | The Ranger service.
pattern SoftwareConfig_OptionalComponentsItem_Ranger :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Ranger = SoftwareConfig_OptionalComponentsItem "RANGER"

-- | The Solr service.
pattern SoftwareConfig_OptionalComponentsItem_Solr :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Solr = SoftwareConfig_OptionalComponentsItem "SOLR"

-- | The Zeppelin notebook.
pattern SoftwareConfig_OptionalComponentsItem_Zeppelin :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Zeppelin = SoftwareConfig_OptionalComponentsItem "ZEPPELIN"

-- | The Zookeeper service.
pattern SoftwareConfig_OptionalComponentsItem_Zookeeper :: SoftwareConfig_OptionalComponentsItem
pattern SoftwareConfig_OptionalComponentsItem_Zookeeper = SoftwareConfig_OptionalComponentsItem "ZOOKEEPER"

{-# COMPLETE
  SoftwareConfig_OptionalComponentsItem_COMPONENTUNSPECIFIED,
  SoftwareConfig_OptionalComponentsItem_Anaconda,
  SoftwareConfig_OptionalComponentsItem_Docker,
  SoftwareConfig_OptionalComponentsItem_Druid,
  SoftwareConfig_OptionalComponentsItem_Flink,
  SoftwareConfig_OptionalComponentsItem_Hbase,
  SoftwareConfig_OptionalComponentsItem_HIVEWEBHCAT,
  SoftwareConfig_OptionalComponentsItem_Hudi,
  SoftwareConfig_OptionalComponentsItem_Jupyter,
  SoftwareConfig_OptionalComponentsItem_Presto,
  SoftwareConfig_OptionalComponentsItem_Trino,
  SoftwareConfig_OptionalComponentsItem_Ranger,
  SoftwareConfig_OptionalComponentsItem_Solr,
  SoftwareConfig_OptionalComponentsItem_Zeppelin,
  SoftwareConfig_OptionalComponentsItem_Zookeeper,
  SoftwareConfig_OptionalComponentsItem
  #-}

-- | Output only. The state of the batch at this point in history.
newtype StateHistory_State = StateHistory_State {fromStateHistory_State :: Core.Text}
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

-- | The batch state is unknown.
pattern StateHistory_State_STATEUNSPECIFIED :: StateHistory_State
pattern StateHistory_State_STATEUNSPECIFIED = StateHistory_State "STATE_UNSPECIFIED"

-- | The batch is created before running.
pattern StateHistory_State_Pending :: StateHistory_State
pattern StateHistory_State_Pending = StateHistory_State "PENDING"

-- | The batch is running.
pattern StateHistory_State_Running :: StateHistory_State
pattern StateHistory_State_Running = StateHistory_State "RUNNING"

-- | The batch is cancelling.
pattern StateHistory_State_Cancelling :: StateHistory_State
pattern StateHistory_State_Cancelling = StateHistory_State "CANCELLING"

-- | The batch cancellation was successful.
pattern StateHistory_State_Cancelled :: StateHistory_State
pattern StateHistory_State_Cancelled = StateHistory_State "CANCELLED"

-- | The batch completed successfully.
pattern StateHistory_State_Succeeded :: StateHistory_State
pattern StateHistory_State_Succeeded = StateHistory_State "SUCCEEDED"

-- | The batch is no longer running due to an error.
pattern StateHistory_State_Failed :: StateHistory_State
pattern StateHistory_State_Failed = StateHistory_State "FAILED"

{-# COMPLETE
  StateHistory_State_STATEUNSPECIFIED,
  StateHistory_State_Pending,
  StateHistory_State_Running,
  StateHistory_State_Cancelling,
  StateHistory_State_Cancelled,
  StateHistory_State_Succeeded,
  StateHistory_State_Failed,
  StateHistory_State
  #-}

-- | Output only. The workflow state.
newtype WorkflowMetadata_State = WorkflowMetadata_State {fromWorkflowMetadata_State :: Core.Text}
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
pattern WorkflowMetadata_State_Unknown :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Unknown = WorkflowMetadata_State "UNKNOWN"

-- | The operation has been created.
pattern WorkflowMetadata_State_Pending :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Pending = WorkflowMetadata_State "PENDING"

-- | The operation is running.
pattern WorkflowMetadata_State_Running :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Running = WorkflowMetadata_State "RUNNING"

-- | The operation is done; either cancelled or completed.
pattern WorkflowMetadata_State_Done :: WorkflowMetadata_State
pattern WorkflowMetadata_State_Done = WorkflowMetadata_State "DONE"

{-# COMPLETE
  WorkflowMetadata_State_Unknown,
  WorkflowMetadata_State_Pending,
  WorkflowMetadata_State_Running,
  WorkflowMetadata_State_Done,
  WorkflowMetadata_State
  #-}

-- | Output only. The node state.
newtype WorkflowNode_State = WorkflowNode_State {fromWorkflowNode_State :: Core.Text}
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

-- | State is unspecified.
pattern WorkflowNode_State_NODESTATEUNSPECIFIED :: WorkflowNode_State
pattern WorkflowNode_State_NODESTATEUNSPECIFIED = WorkflowNode_State "NODE_STATE_UNSPECIFIED"

-- | The node is awaiting prerequisite node to finish.
pattern WorkflowNode_State_Blocked :: WorkflowNode_State
pattern WorkflowNode_State_Blocked = WorkflowNode_State "BLOCKED"

-- | The node is runnable but not running.
pattern WorkflowNode_State_Runnable :: WorkflowNode_State
pattern WorkflowNode_State_Runnable = WorkflowNode_State "RUNNABLE"

-- | The node is running.
pattern WorkflowNode_State_Running :: WorkflowNode_State
pattern WorkflowNode_State_Running = WorkflowNode_State "RUNNING"

-- | The node completed successfully.
pattern WorkflowNode_State_Completed :: WorkflowNode_State
pattern WorkflowNode_State_Completed = WorkflowNode_State "COMPLETED"

-- | The node failed. A node can be marked FAILED because its ancestor or peer failed.
pattern WorkflowNode_State_Failed :: WorkflowNode_State
pattern WorkflowNode_State_Failed = WorkflowNode_State "FAILED"

{-# COMPLETE
  WorkflowNode_State_NODESTATEUNSPECIFIED,
  WorkflowNode_State_Blocked,
  WorkflowNode_State_Runnable,
  WorkflowNode_State_Running,
  WorkflowNode_State_Completed,
  WorkflowNode_State_Failed,
  WorkflowNode_State
  #-}

-- | Required. The application state.
newtype YarnApplication_State = YarnApplication_State {fromYarnApplication_State :: Core.Text}
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

-- | Status is unspecified.
pattern YarnApplication_State_STATEUNSPECIFIED :: YarnApplication_State
pattern YarnApplication_State_STATEUNSPECIFIED = YarnApplication_State "STATE_UNSPECIFIED"

-- | Status is NEW.
pattern YarnApplication_State_New :: YarnApplication_State
pattern YarnApplication_State_New = YarnApplication_State "NEW"

-- | Status is NEW_SAVING.
pattern YarnApplication_State_NEWSAVING :: YarnApplication_State
pattern YarnApplication_State_NEWSAVING = YarnApplication_State "NEW_SAVING"

-- | Status is SUBMITTED.
pattern YarnApplication_State_Submitted :: YarnApplication_State
pattern YarnApplication_State_Submitted = YarnApplication_State "SUBMITTED"

-- | Status is ACCEPTED.
pattern YarnApplication_State_Accepted :: YarnApplication_State
pattern YarnApplication_State_Accepted = YarnApplication_State "ACCEPTED"

-- | Status is RUNNING.
pattern YarnApplication_State_Running :: YarnApplication_State
pattern YarnApplication_State_Running = YarnApplication_State "RUNNING"

-- | Status is FINISHED.
pattern YarnApplication_State_Finished :: YarnApplication_State
pattern YarnApplication_State_Finished = YarnApplication_State "FINISHED"

-- | Status is FAILED.
pattern YarnApplication_State_Failed :: YarnApplication_State
pattern YarnApplication_State_Failed = YarnApplication_State "FAILED"

-- | Status is KILLED.
pattern YarnApplication_State_Killed :: YarnApplication_State
pattern YarnApplication_State_Killed = YarnApplication_State "KILLED"

{-# COMPLETE
  YarnApplication_State_STATEUNSPECIFIED,
  YarnApplication_State_New,
  YarnApplication_State_NEWSAVING,
  YarnApplication_State_Submitted,
  YarnApplication_State_Accepted,
  YarnApplication_State_Running,
  YarnApplication_State_Finished,
  YarnApplication_State_Failed,
  YarnApplication_State_Killed,
  YarnApplication_State
  #-}

-- | Optional. Failure action when primary worker creation fails.
newtype ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers {fromProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers :: Core.Text}
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

-- | When FailureAction is unspecified, failure action defaults to NO_ACTION.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "FAILURE_ACTION_UNSPECIFIED"

-- | Take no action on failure to create a cluster resource. NO_ACTION is the default.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "NO_ACTION"

-- | Delete the failed cluster resource.
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete' :: ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
pattern ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete' = ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers "DELETE"

{-# COMPLETE
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_FAILUREACTIONUNSPECIFIED,
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_NOACTION,
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers_Delete',
  ProjectsRegionsClustersCreateActionOnFailedPrimaryWorkers
  #-}

-- | Optional. Specifies enumerated categories of jobs to list. (default = match ALL jobs).If filter is provided, jobStateMatcher will be ignored.
newtype ProjectsRegionsJobsListJobStateMatcher = ProjectsRegionsJobsListJobStateMatcher {fromProjectsRegionsJobsListJobStateMatcher :: Core.Text}
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

-- | Match all jobs, regardless of state.
pattern ProjectsRegionsJobsListJobStateMatcher_All :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_All = ProjectsRegionsJobsListJobStateMatcher "ALL"

-- | Only match jobs in non-terminal states: PENDING, RUNNING, or CANCEL_PENDING.
pattern ProjectsRegionsJobsListJobStateMatcher_Active :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_Active = ProjectsRegionsJobsListJobStateMatcher "ACTIVE"

-- | Only match jobs in terminal states: CANCELLED, DONE, or ERROR.
pattern ProjectsRegionsJobsListJobStateMatcher_NONACTIVE :: ProjectsRegionsJobsListJobStateMatcher
pattern ProjectsRegionsJobsListJobStateMatcher_NONACTIVE = ProjectsRegionsJobsListJobStateMatcher "NON_ACTIVE"

{-# COMPLETE
  ProjectsRegionsJobsListJobStateMatcher_All,
  ProjectsRegionsJobsListJobStateMatcher_Active,
  ProjectsRegionsJobsListJobStateMatcher_NONACTIVE,
  ProjectsRegionsJobsListJobStateMatcher
  #-}

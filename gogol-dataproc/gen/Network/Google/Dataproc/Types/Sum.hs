{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Dataproc.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Dataproc.Types.Sum where

import Network.Google.Prelude hiding (Bytes)

-- | Output only. A state message specifying the overall job state.
data JobStatusState
    = StateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- The job state is unknown.
    | Pending
      -- ^ @PENDING@
      -- The job is pending; it has been submitted, but is not yet running.
    | SetupDone
      -- ^ @SETUP_DONE@
      -- Job has been received by the service and completed initial setup; it
      -- will soon be submitted to the cluster.
    | Running
      -- ^ @RUNNING@
      -- The job is running on the cluster.
    | CancelPending
      -- ^ @CANCEL_PENDING@
      -- A CancelJob request has been received, but is pending.
    | CancelStarted
      -- ^ @CANCEL_STARTED@
      -- Transient in-flight resources have been canceled, and the request to
      -- cancel the running job has been issued to the cluster.
    | Cancelled
      -- ^ @CANCELLED@
      -- The job cancellation was successful.
    | Done
      -- ^ @DONE@
      -- The job has completed successfully.
    | Error'
      -- ^ @ERROR@
      -- The job has completed, but encountered an error.
    | AttemptFailure
      -- ^ @ATTEMPT_FAILURE@
      -- Job attempt has failed. The detail field contains failure details for
      -- this attempt.Applies to restartable jobs only.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobStatusState

instance FromHttpApiData JobStatusState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right StateUnspecified
        "PENDING" -> Right Pending
        "SETUP_DONE" -> Right SetupDone
        "RUNNING" -> Right Running
        "CANCEL_PENDING" -> Right CancelPending
        "CANCEL_STARTED" -> Right CancelStarted
        "CANCELLED" -> Right Cancelled
        "DONE" -> Right Done
        "ERROR" -> Right Error'
        "ATTEMPT_FAILURE" -> Right AttemptFailure
        x -> Left ("Unable to parse JobStatusState from: " <> x)

instance ToHttpApiData JobStatusState where
    toQueryParam = \case
        StateUnspecified -> "STATE_UNSPECIFIED"
        Pending -> "PENDING"
        SetupDone -> "SETUP_DONE"
        Running -> "RUNNING"
        CancelPending -> "CANCEL_PENDING"
        CancelStarted -> "CANCEL_STARTED"
        Cancelled -> "CANCELLED"
        Done -> "DONE"
        Error' -> "ERROR"
        AttemptFailure -> "ATTEMPT_FAILURE"

instance FromJSON JobStatusState where
    parseJSON = parseJSONText "JobStatusState"

instance ToJSON JobStatusState where
    toJSON = toJSONText

-- | Output only. The node state.
data WorkflowNodeState
    = WNSNodeStateUnspecified
      -- ^ @NODE_STATE_UNSPECIFIED@
      -- State is unspecified.
    | WNSBlocked
      -- ^ @BLOCKED@
      -- The node is awaiting prerequisite node to finish.
    | WNSRunnable
      -- ^ @RUNNABLE@
      -- The node is runnable but not running.
    | WNSRunning
      -- ^ @RUNNING@
      -- The node is running.
    | WNSCompleted
      -- ^ @COMPLETED@
      -- The node completed successfully.
    | WNSFailed
      -- ^ @FAILED@
      -- The node failed. A node can be marked FAILED because its ancestor or
      -- peer failed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkflowNodeState

instance FromHttpApiData WorkflowNodeState where
    parseQueryParam = \case
        "NODE_STATE_UNSPECIFIED" -> Right WNSNodeStateUnspecified
        "BLOCKED" -> Right WNSBlocked
        "RUNNABLE" -> Right WNSRunnable
        "RUNNING" -> Right WNSRunning
        "COMPLETED" -> Right WNSCompleted
        "FAILED" -> Right WNSFailed
        x -> Left ("Unable to parse WorkflowNodeState from: " <> x)

instance ToHttpApiData WorkflowNodeState where
    toQueryParam = \case
        WNSNodeStateUnspecified -> "NODE_STATE_UNSPECIFIED"
        WNSBlocked -> "BLOCKED"
        WNSRunnable -> "RUNNABLE"
        WNSRunning -> "RUNNING"
        WNSCompleted -> "COMPLETED"
        WNSFailed -> "FAILED"

instance FromJSON WorkflowNodeState where
    parseJSON = parseJSONText "WorkflowNodeState"

instance ToJSON WorkflowNodeState where
    toJSON = toJSONText

-- | Optional. Specifies enumerated categories of jobs to list. (default =
-- match ALL jobs).If filter is provided, jobStateMatcher will be ignored.
data ProjectsRegionsJobsListJobStateMatcher
    = All
      -- ^ @ALL@
      -- Match all jobs, regardless of state.
    | Active
      -- ^ @ACTIVE@
      -- Only match jobs in non-terminal states: PENDING, RUNNING, or
      -- CANCEL_PENDING.
    | NonActive
      -- ^ @NON_ACTIVE@
      -- Only match jobs in terminal states: CANCELLED, DONE, or ERROR.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ProjectsRegionsJobsListJobStateMatcher

instance FromHttpApiData ProjectsRegionsJobsListJobStateMatcher where
    parseQueryParam = \case
        "ALL" -> Right All
        "ACTIVE" -> Right Active
        "NON_ACTIVE" -> Right NonActive
        x -> Left ("Unable to parse ProjectsRegionsJobsListJobStateMatcher from: " <> x)

instance ToHttpApiData ProjectsRegionsJobsListJobStateMatcher where
    toQueryParam = \case
        All -> "ALL"
        Active -> "ACTIVE"
        NonActive -> "NON_ACTIVE"

instance FromJSON ProjectsRegionsJobsListJobStateMatcher where
    parseJSON = parseJSONText "ProjectsRegionsJobsListJobStateMatcher"

instance ToJSON ProjectsRegionsJobsListJobStateMatcher where
    toJSON = toJSONText

data LoggingConfigDriverLogLevelsAdditional
    = LCDLLALevelUnspecified
      -- ^ @LEVEL_UNSPECIFIED@
      -- Level is unspecified. Use default level for log4j.
    | LCDLLAAll
      -- ^ @ALL@
      -- Use ALL level for log4j.
    | LCDLLATrace
      -- ^ @TRACE@
      -- Use TRACE level for log4j.
    | LCDLLADebug
      -- ^ @DEBUG@
      -- Use DEBUG level for log4j.
    | LCDLLAInfo
      -- ^ @INFO@
      -- Use INFO level for log4j.
    | LCDLLAWarn
      -- ^ @WARN@
      -- Use WARN level for log4j.
    | LCDLLAError'
      -- ^ @ERROR@
      -- Use ERROR level for log4j.
    | LCDLLAFatal
      -- ^ @FATAL@
      -- Use FATAL level for log4j.
    | LCDLLAOff
      -- ^ @OFF@
      -- Turn off log4j.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable LoggingConfigDriverLogLevelsAdditional

instance FromHttpApiData LoggingConfigDriverLogLevelsAdditional where
    parseQueryParam = \case
        "LEVEL_UNSPECIFIED" -> Right LCDLLALevelUnspecified
        "ALL" -> Right LCDLLAAll
        "TRACE" -> Right LCDLLATrace
        "DEBUG" -> Right LCDLLADebug
        "INFO" -> Right LCDLLAInfo
        "WARN" -> Right LCDLLAWarn
        "ERROR" -> Right LCDLLAError'
        "FATAL" -> Right LCDLLAFatal
        "OFF" -> Right LCDLLAOff
        x -> Left ("Unable to parse LoggingConfigDriverLogLevelsAdditional from: " <> x)

instance ToHttpApiData LoggingConfigDriverLogLevelsAdditional where
    toQueryParam = \case
        LCDLLALevelUnspecified -> "LEVEL_UNSPECIFIED"
        LCDLLAAll -> "ALL"
        LCDLLATrace -> "TRACE"
        LCDLLADebug -> "DEBUG"
        LCDLLAInfo -> "INFO"
        LCDLLAWarn -> "WARN"
        LCDLLAError' -> "ERROR"
        LCDLLAFatal -> "FATAL"
        LCDLLAOff -> "OFF"

instance FromJSON LoggingConfigDriverLogLevelsAdditional where
    parseJSON = parseJSONText "LoggingConfigDriverLogLevelsAdditional"

instance ToJSON LoggingConfigDriverLogLevelsAdditional where
    toJSON = toJSONText

data SoftwareConfigOptionalComponentsItem
    = ComponentUnspecified
      -- ^ @COMPONENT_UNSPECIFIED@
      -- Unspecified component. Specifying this will cause Cluster creation to
      -- fail.
    | Anaconda
      -- ^ @ANACONDA@
      -- The Anaconda python distribution. The Anaconda component is not
      -- supported in the Dataproc 2.0 image. The 2.0 image is pre-installed with
      -- Miniconda.
    | Docker
      -- ^ @DOCKER@
      -- Docker
    | Druid
      -- ^ @DRUID@
      -- The Druid query engine. (alpha)
    | Flink
      -- ^ @FLINK@
      -- Flink
    | Hbase
      -- ^ @HBASE@
      -- HBase. (beta)
    | HiveWebhcat
      -- ^ @HIVE_WEBHCAT@
      -- The Hive Web HCatalog (the REST service for accessing HCatalog).
    | Jupyter
      -- ^ @JUPYTER@
      -- The Jupyter Notebook.
    | Presto
      -- ^ @PRESTO@
      -- The Presto query engine.
    | Ranger
      -- ^ @RANGER@
      -- The Ranger service.
    | Solr
      -- ^ @SOLR@
      -- The Solr service.
    | Zeppelin
      -- ^ @ZEPPELIN@
      -- The Zeppelin notebook.
    | Zookeeper
      -- ^ @ZOOKEEPER@
      -- The Zookeeper service.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable SoftwareConfigOptionalComponentsItem

instance FromHttpApiData SoftwareConfigOptionalComponentsItem where
    parseQueryParam = \case
        "COMPONENT_UNSPECIFIED" -> Right ComponentUnspecified
        "ANACONDA" -> Right Anaconda
        "DOCKER" -> Right Docker
        "DRUID" -> Right Druid
        "FLINK" -> Right Flink
        "HBASE" -> Right Hbase
        "HIVE_WEBHCAT" -> Right HiveWebhcat
        "JUPYTER" -> Right Jupyter
        "PRESTO" -> Right Presto
        "RANGER" -> Right Ranger
        "SOLR" -> Right Solr
        "ZEPPELIN" -> Right Zeppelin
        "ZOOKEEPER" -> Right Zookeeper
        x -> Left ("Unable to parse SoftwareConfigOptionalComponentsItem from: " <> x)

instance ToHttpApiData SoftwareConfigOptionalComponentsItem where
    toQueryParam = \case
        ComponentUnspecified -> "COMPONENT_UNSPECIFIED"
        Anaconda -> "ANACONDA"
        Docker -> "DOCKER"
        Druid -> "DRUID"
        Flink -> "FLINK"
        Hbase -> "HBASE"
        HiveWebhcat -> "HIVE_WEBHCAT"
        Jupyter -> "JUPYTER"
        Presto -> "PRESTO"
        Ranger -> "RANGER"
        Solr -> "SOLR"
        Zeppelin -> "ZEPPELIN"
        Zookeeper -> "ZOOKEEPER"

instance FromJSON SoftwareConfigOptionalComponentsItem where
    parseJSON = parseJSONText "SoftwareConfigOptionalComponentsItem"

instance ToJSON SoftwareConfigOptionalComponentsItem where
    toJSON = toJSONText

-- | Output only. Additional state information that includes status reported
-- by the agent.
data ClusterStatusSubState
    = Unspecified
      -- ^ @UNSPECIFIED@
      -- The cluster substate is unknown.
    | Unhealthy
      -- ^ @UNHEALTHY@
      -- The cluster is known to be in an unhealthy state (for example, critical
      -- daemons are not running or HDFS capacity is exhausted).Applies to
      -- RUNNING state.
    | StaleStatus
      -- ^ @STALE_STATUS@
      -- The agent-reported status is out of date (may occur if Dataproc loses
      -- communication with Agent).Applies to RUNNING state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStatusSubState

instance FromHttpApiData ClusterStatusSubState where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right Unspecified
        "UNHEALTHY" -> Right Unhealthy
        "STALE_STATUS" -> Right StaleStatus
        x -> Left ("Unable to parse ClusterStatusSubState from: " <> x)

instance ToHttpApiData ClusterStatusSubState where
    toQueryParam = \case
        Unspecified -> "UNSPECIFIED"
        Unhealthy -> "UNHEALTHY"
        StaleStatus -> "STALE_STATUS"

instance FromJSON ClusterStatusSubState where
    parseJSON = parseJSONText "ClusterStatusSubState"

instance ToJSON ClusterStatusSubState where
    toJSON = toJSONText

-- | Optional. Specifies the preemptibility of the instance group.The default
-- value for master and worker groups is NON_PREEMPTIBLE. This default
-- cannot be changed.The default value for secondary instances is
-- PREEMPTIBLE.
data InstanceGroupConfigPreemptibility
    = PreemptibilityUnspecified
      -- ^ @PREEMPTIBILITY_UNSPECIFIED@
      -- Preemptibility is unspecified, the system will choose the appropriate
      -- setting for each instance group.
    | NonPreemptible
      -- ^ @NON_PREEMPTIBLE@
      -- Instances are non-preemptible.This option is allowed for all instance
      -- groups and is the only valid value for Master and Worker instance
      -- groups.
    | Preemptible
      -- ^ @PREEMPTIBLE@
      -- Instances are preemptible.This option is allowed only for secondary
      -- worker groups.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable InstanceGroupConfigPreemptibility

instance FromHttpApiData InstanceGroupConfigPreemptibility where
    parseQueryParam = \case
        "PREEMPTIBILITY_UNSPECIFIED" -> Right PreemptibilityUnspecified
        "NON_PREEMPTIBLE" -> Right NonPreemptible
        "PREEMPTIBLE" -> Right Preemptible
        x -> Left ("Unable to parse InstanceGroupConfigPreemptibility from: " <> x)

instance ToHttpApiData InstanceGroupConfigPreemptibility where
    toQueryParam = \case
        PreemptibilityUnspecified -> "PREEMPTIBILITY_UNSPECIFIED"
        NonPreemptible -> "NON_PREEMPTIBLE"
        Preemptible -> "PREEMPTIBLE"

instance FromJSON InstanceGroupConfigPreemptibility where
    parseJSON = parseJSONText "InstanceGroupConfigPreemptibility"

instance ToJSON InstanceGroupConfigPreemptibility where
    toJSON = toJSONText

-- | Optional. The type of IPv6 access for a cluster.
data GceClusterConfigPrivateIPv6GoogleAccess
    = PrivateIPV6GoogleAccessUnspecified
      -- ^ @PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED@
      -- If unspecified, Compute Engine default behavior will apply, which is the
      -- same as INHERIT_FROM_SUBNETWORK.
    | InheritFromSubnetwork
      -- ^ @INHERIT_FROM_SUBNETWORK@
      -- Private access to and from Google Services configuration inherited from
      -- the subnetwork configuration. This is the default Compute Engine
      -- behavior.
    | Outbound
      -- ^ @OUTBOUND@
      -- Enables outbound private IPv6 access to Google Services from the
      -- Dataproc cluster.
    | Bidirectional
      -- ^ @BIDIRECTIONAL@
      -- Enables bidirectional private IPv6 access between Google Services and
      -- the Dataproc cluster.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable GceClusterConfigPrivateIPv6GoogleAccess

instance FromHttpApiData GceClusterConfigPrivateIPv6GoogleAccess where
    parseQueryParam = \case
        "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" -> Right PrivateIPV6GoogleAccessUnspecified
        "INHERIT_FROM_SUBNETWORK" -> Right InheritFromSubnetwork
        "OUTBOUND" -> Right Outbound
        "BIDIRECTIONAL" -> Right Bidirectional
        x -> Left ("Unable to parse GceClusterConfigPrivateIPv6GoogleAccess from: " <> x)

instance ToHttpApiData GceClusterConfigPrivateIPv6GoogleAccess where
    toQueryParam = \case
        PrivateIPV6GoogleAccessUnspecified -> "PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"
        InheritFromSubnetwork -> "INHERIT_FROM_SUBNETWORK"
        Outbound -> "OUTBOUND"
        Bidirectional -> "BIDIRECTIONAL"

instance FromJSON GceClusterConfigPrivateIPv6GoogleAccess where
    parseJSON = parseJSONText "GceClusterConfigPrivateIPv6GoogleAccess"

instance ToJSON GceClusterConfigPrivateIPv6GoogleAccess where
    toJSON = toJSONText

-- | The operation type.
data BatchOperationMetadataOperationType
    = BatchOperationTypeUnspecified
      -- ^ @BATCH_OPERATION_TYPE_UNSPECIFIED@
      -- Batch operation type is unknown.
    | Batch
      -- ^ @BATCH@
      -- Batch operation type.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BatchOperationMetadataOperationType

instance FromHttpApiData BatchOperationMetadataOperationType where
    parseQueryParam = \case
        "BATCH_OPERATION_TYPE_UNSPECIFIED" -> Right BatchOperationTypeUnspecified
        "BATCH" -> Right Batch
        x -> Left ("Unable to parse BatchOperationMetadataOperationType from: " <> x)

instance ToHttpApiData BatchOperationMetadataOperationType where
    toQueryParam = \case
        BatchOperationTypeUnspecified -> "BATCH_OPERATION_TYPE_UNSPECIFIED"
        Batch -> "BATCH"

instance FromJSON BatchOperationMetadataOperationType where
    parseJSON = parseJSONText "BatchOperationMetadataOperationType"

instance ToJSON BatchOperationMetadataOperationType where
    toJSON = toJSONText

-- | Output only. The workflow state.
data WorkflowMetadataState
    = WMSUnknown
      -- ^ @UNKNOWN@
      -- Unused.
    | WMSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | WMSRunning
      -- ^ @RUNNING@
      -- The operation is running.
    | WMSDone
      -- ^ @DONE@
      -- The operation is done; either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable WorkflowMetadataState

instance FromHttpApiData WorkflowMetadataState where
    parseQueryParam = \case
        "UNKNOWN" -> Right WMSUnknown
        "PENDING" -> Right WMSPending
        "RUNNING" -> Right WMSRunning
        "DONE" -> Right WMSDone
        x -> Left ("Unable to parse WorkflowMetadataState from: " <> x)

instance ToHttpApiData WorkflowMetadataState where
    toQueryParam = \case
        WMSUnknown -> "UNKNOWN"
        WMSPending -> "PENDING"
        WMSRunning -> "RUNNING"
        WMSDone -> "DONE"

instance FromJSON WorkflowMetadataState where
    parseJSON = parseJSONText "WorkflowMetadataState"

instance ToJSON WorkflowMetadataState where
    toJSON = toJSONText

-- | Required. The application state.
data YarnApplicationState
    = YASStateUnspecified
      -- ^ @STATE_UNSPECIFIED@
      -- Status is unspecified.
    | YASNew
      -- ^ @NEW@
      -- Status is NEW.
    | YASNewSaving
      -- ^ @NEW_SAVING@
      -- Status is NEW_SAVING.
    | YASSubmitted
      -- ^ @SUBMITTED@
      -- Status is SUBMITTED.
    | YASAccepted
      -- ^ @ACCEPTED@
      -- Status is ACCEPTED.
    | YASRunning
      -- ^ @RUNNING@
      -- Status is RUNNING.
    | YASFinished
      -- ^ @FINISHED@
      -- Status is FINISHED.
    | YASFailed
      -- ^ @FAILED@
      -- Status is FAILED.
    | YASKilled
      -- ^ @KILLED@
      -- Status is KILLED.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable YarnApplicationState

instance FromHttpApiData YarnApplicationState where
    parseQueryParam = \case
        "STATE_UNSPECIFIED" -> Right YASStateUnspecified
        "NEW" -> Right YASNew
        "NEW_SAVING" -> Right YASNewSaving
        "SUBMITTED" -> Right YASSubmitted
        "ACCEPTED" -> Right YASAccepted
        "RUNNING" -> Right YASRunning
        "FINISHED" -> Right YASFinished
        "FAILED" -> Right YASFailed
        "KILLED" -> Right YASKilled
        x -> Left ("Unable to parse YarnApplicationState from: " <> x)

instance ToHttpApiData YarnApplicationState where
    toQueryParam = \case
        YASStateUnspecified -> "STATE_UNSPECIFIED"
        YASNew -> "NEW"
        YASNewSaving -> "NEW_SAVING"
        YASSubmitted -> "SUBMITTED"
        YASAccepted -> "ACCEPTED"
        YASRunning -> "RUNNING"
        YASFinished -> "FINISHED"
        YASFailed -> "FAILED"
        YASKilled -> "KILLED"

instance FromJSON YarnApplicationState where
    parseJSON = parseJSONText "YarnApplicationState"

instance ToJSON YarnApplicationState where
    toJSON = toJSONText

-- | Output only. The cluster\'s state.
data ClusterStatusState
    = CSSUnknown
      -- ^ @UNKNOWN@
      -- The cluster state is unknown.
    | CSSCreating
      -- ^ @CREATING@
      -- The cluster is being created and set up. It is not ready for use.
    | CSSRunning
      -- ^ @RUNNING@
      -- The cluster is currently running and healthy. It is ready for use.
    | CSSError'
      -- ^ @ERROR@
      -- The cluster encountered an error. It is not ready for use.
    | CSSErrorDueToUpdate
      -- ^ @ERROR_DUE_TO_UPDATE@
      -- The cluster has encountered an error while being updated. Jobs can be
      -- submitted to the cluster, but the cluster cannot be updated.
    | CSSDeleting
      -- ^ @DELETING@
      -- The cluster is being deleted. It cannot be used.
    | CSSUpdating
      -- ^ @UPDATING@
      -- The cluster is being updated. It continues to accept and process jobs.
    | CSSStopping
      -- ^ @STOPPING@
      -- The cluster is being stopped. It cannot be used.
    | CSSStopped
      -- ^ @STOPPED@
      -- The cluster is currently stopped. It is not ready for use.
    | CSSStarting
      -- ^ @STARTING@
      -- The cluster is being started. It is not ready for use.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStatusState

instance FromHttpApiData ClusterStatusState where
    parseQueryParam = \case
        "UNKNOWN" -> Right CSSUnknown
        "CREATING" -> Right CSSCreating
        "RUNNING" -> Right CSSRunning
        "ERROR" -> Right CSSError'
        "ERROR_DUE_TO_UPDATE" -> Right CSSErrorDueToUpdate
        "DELETING" -> Right CSSDeleting
        "UPDATING" -> Right CSSUpdating
        "STOPPING" -> Right CSSStopping
        "STOPPED" -> Right CSSStopped
        "STARTING" -> Right CSSStarting
        x -> Left ("Unable to parse ClusterStatusState from: " <> x)

instance ToHttpApiData ClusterStatusState where
    toQueryParam = \case
        CSSUnknown -> "UNKNOWN"
        CSSCreating -> "CREATING"
        CSSRunning -> "RUNNING"
        CSSError' -> "ERROR"
        CSSErrorDueToUpdate -> "ERROR_DUE_TO_UPDATE"
        CSSDeleting -> "DELETING"
        CSSUpdating -> "UPDATING"
        CSSStopping -> "STOPPING"
        CSSStopped -> "STOPPED"
        CSSStarting -> "STARTING"

instance FromJSON ClusterStatusState where
    parseJSON = parseJSONText "ClusterStatusState"

instance ToJSON ClusterStatusState where
    toJSON = toJSONText

-- | Output only. A message containing the operation state.
data ClusterOperationStatusState
    = COSSUnknown
      -- ^ @UNKNOWN@
      -- Unused.
    | COSSPending
      -- ^ @PENDING@
      -- The operation has been created.
    | COSSRunning
      -- ^ @RUNNING@
      -- The operation is running.
    | COSSDone
      -- ^ @DONE@
      -- The operation is done; either cancelled or completed.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterOperationStatusState

instance FromHttpApiData ClusterOperationStatusState where
    parseQueryParam = \case
        "UNKNOWN" -> Right COSSUnknown
        "PENDING" -> Right COSSPending
        "RUNNING" -> Right COSSRunning
        "DONE" -> Right COSSDone
        x -> Left ("Unable to parse ClusterOperationStatusState from: " <> x)

instance ToHttpApiData ClusterOperationStatusState where
    toQueryParam = \case
        COSSUnknown -> "UNKNOWN"
        COSSPending -> "PENDING"
        COSSRunning -> "RUNNING"
        COSSDone -> "DONE"

instance FromJSON ClusterOperationStatusState where
    parseJSON = parseJSONText "ClusterOperationStatusState"

instance ToJSON ClusterOperationStatusState where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Output only. Additional state information, which includes status
-- reported by the agent.
data JobStatusSubState
    = JSSSUnspecified
      -- ^ @UNSPECIFIED@
      -- The job substate is unknown.
    | JSSSSubmitted
      -- ^ @SUBMITTED@
      -- The Job is submitted to the agent.Applies to RUNNING state.
    | JSSSQueued
      -- ^ @QUEUED@
      -- The Job has been received and is awaiting execution (it may be waiting
      -- for a condition to be met). See the \"details\" field for the reason for
      -- the delay.Applies to RUNNING state.
    | JSSSStaleStatus
      -- ^ @STALE_STATUS@
      -- The agent-reported status is out of date, which may be caused by a loss
      -- of communication between the agent and Dataproc. If the agent does not
      -- send a timely update, the job will fail.Applies to RUNNING state.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable JobStatusSubState

instance FromHttpApiData JobStatusSubState where
    parseQueryParam = \case
        "UNSPECIFIED" -> Right JSSSUnspecified
        "SUBMITTED" -> Right JSSSSubmitted
        "QUEUED" -> Right JSSSQueued
        "STALE_STATUS" -> Right JSSSStaleStatus
        x -> Left ("Unable to parse JobStatusSubState from: " <> x)

instance ToHttpApiData JobStatusSubState where
    toQueryParam = \case
        JSSSUnspecified -> "UNSPECIFIED"
        JSSSSubmitted -> "SUBMITTED"
        JSSSQueued -> "QUEUED"
        JSSSStaleStatus -> "STALE_STATUS"

instance FromJSON JobStatusSubState where
    parseJSON = parseJSONText "JobStatusSubState"

instance ToJSON JobStatusSubState where
    toJSON = toJSONText

-- | Optional. Type of reservation to consume
data ReservationAffinityConsumeReservationType
    = TypeUnspecified
      -- ^ @TYPE_UNSPECIFIED@
    | NoReservation
      -- ^ @NO_RESERVATION@
      -- Do not consume from any allocated capacity.
    | AnyReservation
      -- ^ @ANY_RESERVATION@
      -- Consume any reservation available.
    | SpecificReservation
      -- ^ @SPECIFIC_RESERVATION@
      -- Must consume from a specific reservation. Must specify key value fields
      -- for specifying the reservations.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ReservationAffinityConsumeReservationType

instance FromHttpApiData ReservationAffinityConsumeReservationType where
    parseQueryParam = \case
        "TYPE_UNSPECIFIED" -> Right TypeUnspecified
        "NO_RESERVATION" -> Right NoReservation
        "ANY_RESERVATION" -> Right AnyReservation
        "SPECIFIC_RESERVATION" -> Right SpecificReservation
        x -> Left ("Unable to parse ReservationAffinityConsumeReservationType from: " <> x)

instance ToHttpApiData ReservationAffinityConsumeReservationType where
    toQueryParam = \case
        TypeUnspecified -> "TYPE_UNSPECIFIED"
        NoReservation -> "NO_RESERVATION"
        AnyReservation -> "ANY_RESERVATION"
        SpecificReservation -> "SPECIFIC_RESERVATION"

instance FromJSON ReservationAffinityConsumeReservationType where
    parseJSON = parseJSONText "ReservationAffinityConsumeReservationType"

instance ToJSON ReservationAffinityConsumeReservationType where
    toJSON = toJSONText

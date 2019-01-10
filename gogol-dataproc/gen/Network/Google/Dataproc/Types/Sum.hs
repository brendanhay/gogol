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

import           Network.Google.Prelude hiding (Bytes)

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
      -- The agent-reported status is out of date (may occur if Cloud Dataproc
      -- loses communication with Agent).Applies to RUNNING state.
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
    | CSSDeleting
      -- ^ @DELETING@
      -- The cluster is being deleted. It cannot be used.
    | CSSUpdating
      -- ^ @UPDATING@
      -- The cluster is being updated. It continues to accept and process jobs.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable ClusterStatusState

instance FromHttpApiData ClusterStatusState where
    parseQueryParam = \case
        "UNKNOWN" -> Right CSSUnknown
        "CREATING" -> Right CSSCreating
        "RUNNING" -> Right CSSRunning
        "ERROR" -> Right CSSError'
        "DELETING" -> Right CSSDeleting
        "UPDATING" -> Right CSSUpdating
        x -> Left ("Unable to parse ClusterStatusState from: " <> x)

instance ToHttpApiData ClusterStatusState where
    toQueryParam = \case
        CSSUnknown -> "UNKNOWN"
        CSSCreating -> "CREATING"
        CSSRunning -> "RUNNING"
        CSSError' -> "ERROR"
        CSSDeleting -> "DELETING"
        CSSUpdating -> "UPDATING"

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
      -- of communication between the agent and Cloud Dataproc. If the agent does
      -- not send a timely update, the job will fail.Applies to RUNNING state.
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

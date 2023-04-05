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
-- Module      : Gogol.Logging.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Logging.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * BucketMetadata_State
    BucketMetadata_State
      ( BucketMetadata_State_OPERATIONSTATEUNSPECIFIED,
        BucketMetadata_State_OPERATIONSTATESCHEDULED,
        BucketMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
        BucketMetadata_State_OPERATIONSTATERUNNING,
        BucketMetadata_State_OPERATIONSTATESUCCEEDED,
        BucketMetadata_State_OPERATIONSTATEFAILED,
        BucketMetadata_State_OPERATIONSTATECANCELLED,
        ..
      ),

    -- * CopyLogEntriesMetadata_State
    CopyLogEntriesMetadata_State
      ( CopyLogEntriesMetadata_State_OPERATIONSTATEUNSPECIFIED,
        CopyLogEntriesMetadata_State_OPERATIONSTATESCHEDULED,
        CopyLogEntriesMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
        CopyLogEntriesMetadata_State_OPERATIONSTATERUNNING,
        CopyLogEntriesMetadata_State_OPERATIONSTATESUCCEEDED,
        CopyLogEntriesMetadata_State_OPERATIONSTATEFAILED,
        CopyLogEntriesMetadata_State_OPERATIONSTATECANCELLED,
        ..
      ),

    -- * IndexConfig_Type
    IndexConfig_Type
      ( IndexConfig_Type_INDEXTYPEUNSPECIFIED,
        IndexConfig_Type_INDEXTYPESTRING,
        IndexConfig_Type_INDEXTYPEINTEGER,
        ..
      ),

    -- * LabelDescriptor_ValueType
    LabelDescriptor_ValueType
      ( LabelDescriptor_ValueType_String,
        LabelDescriptor_ValueType_Bool,
        LabelDescriptor_ValueType_INT64,
        ..
      ),

    -- * Link_LifecycleState
    Link_LifecycleState
      ( Link_LifecycleState_LIFECYCLESTATEUNSPECIFIED,
        Link_LifecycleState_Active,
        Link_LifecycleState_DELETEREQUESTED,
        Link_LifecycleState_Updating,
        Link_LifecycleState_Creating,
        Link_LifecycleState_Failed,
        ..
      ),

    -- * LinkMetadata_State
    LinkMetadata_State
      ( LinkMetadata_State_OPERATIONSTATEUNSPECIFIED,
        LinkMetadata_State_OPERATIONSTATESCHEDULED,
        LinkMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
        LinkMetadata_State_OPERATIONSTATERUNNING,
        LinkMetadata_State_OPERATIONSTATESUCCEEDED,
        LinkMetadata_State_OPERATIONSTATEFAILED,
        LinkMetadata_State_OPERATIONSTATECANCELLED,
        ..
      ),

    -- * LogBucket_LifecycleState
    LogBucket_LifecycleState
      ( LogBucket_LifecycleState_LIFECYCLESTATEUNSPECIFIED,
        LogBucket_LifecycleState_Active,
        LogBucket_LifecycleState_DELETEREQUESTED,
        LogBucket_LifecycleState_Updating,
        LogBucket_LifecycleState_Creating,
        LogBucket_LifecycleState_Failed,
        ..
      ),

    -- * LogEntry_Severity
    LogEntry_Severity
      ( LogEntry_Severity_Default,
        LogEntry_Severity_Debug,
        LogEntry_Severity_Info,
        LogEntry_Severity_Notice,
        LogEntry_Severity_Warning,
        LogEntry_Severity_Error',
        LogEntry_Severity_Critical,
        LogEntry_Severity_Alert,
        LogEntry_Severity_Emergency,
        ..
      ),

    -- * LogLine_Severity
    LogLine_Severity
      ( LogLine_Severity_Default,
        LogLine_Severity_Debug,
        LogLine_Severity_Info,
        LogLine_Severity_Notice,
        LogLine_Severity_Warning,
        LogLine_Severity_Error',
        LogLine_Severity_Critical,
        LogLine_Severity_Alert,
        LogLine_Severity_Emergency,
        ..
      ),

    -- * LogMetric_Version
    LogMetric_Version
      ( LogMetric_Version_V2,
        LogMetric_Version_V1,
        ..
      ),

    -- * LogSink_OutputVersionFormat
    LogSink_OutputVersionFormat
      ( LogSink_OutputVersionFormat_VERSIONFORMATUNSPECIFIED,
        LogSink_OutputVersionFormat_V2,
        LogSink_OutputVersionFormat_V1,
        ..
      ),

    -- * MetricDescriptor_LaunchStage
    MetricDescriptor_LaunchStage
      ( MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptor_LaunchStage_Unimplemented,
        MetricDescriptor_LaunchStage_Prelaunch,
        MetricDescriptor_LaunchStage_EARLYACCESS,
        MetricDescriptor_LaunchStage_Alpha,
        MetricDescriptor_LaunchStage_Beta,
        MetricDescriptor_LaunchStage_GA,
        MetricDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * MetricDescriptor_MetricKind
    MetricDescriptor_MetricKind
      ( MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
        MetricDescriptor_MetricKind_Gauge,
        MetricDescriptor_MetricKind_Delta,
        MetricDescriptor_MetricKind_Cumulative,
        ..
      ),

    -- * MetricDescriptor_ValueType
    MetricDescriptor_ValueType
      ( MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
        MetricDescriptor_ValueType_Bool,
        MetricDescriptor_ValueType_INT64,
        MetricDescriptor_ValueType_Double,
        MetricDescriptor_ValueType_String,
        MetricDescriptor_ValueType_Distribution,
        MetricDescriptor_ValueType_Money,
        ..
      ),

    -- * MetricDescriptorMetadata_LaunchStage
    MetricDescriptorMetadata_LaunchStage
      ( MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MetricDescriptorMetadata_LaunchStage_Unimplemented,
        MetricDescriptorMetadata_LaunchStage_Prelaunch,
        MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
        MetricDescriptorMetadata_LaunchStage_Alpha,
        MetricDescriptorMetadata_LaunchStage_Beta,
        MetricDescriptorMetadata_LaunchStage_GA,
        MetricDescriptorMetadata_LaunchStage_Deprecated,
        ..
      ),

    -- * MonitoredResourceDescriptor_LaunchStage
    MonitoredResourceDescriptor_LaunchStage
      ( MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        MonitoredResourceDescriptor_LaunchStage_Unimplemented,
        MonitoredResourceDescriptor_LaunchStage_Prelaunch,
        MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
        MonitoredResourceDescriptor_LaunchStage_Alpha,
        MonitoredResourceDescriptor_LaunchStage_Beta,
        MonitoredResourceDescriptor_LaunchStage_GA,
        MonitoredResourceDescriptor_LaunchStage_Deprecated,
        ..
      ),

    -- * SuppressionInfo_Reason
    SuppressionInfo_Reason
      ( SuppressionInfo_Reason_REASONUNSPECIFIED,
        SuppressionInfo_Reason_RATELIMIT,
        SuppressionInfo_Reason_NOTCONSUMED,
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

-- | State of an operation.
newtype BucketMetadata_State = BucketMetadata_State {fromBucketMetadata_State :: Core.Text}
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

-- | Should not be used.
pattern BucketMetadata_State_OPERATIONSTATEUNSPECIFIED :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATEUNSPECIFIED = BucketMetadata_State "OPERATION_STATE_UNSPECIFIED"

-- | The operation is scheduled.
pattern BucketMetadata_State_OPERATIONSTATESCHEDULED :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATESCHEDULED = BucketMetadata_State "OPERATION_STATE_SCHEDULED"

-- | Waiting for necessary permissions.
pattern BucketMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS = BucketMetadata_State "OPERATION_STATE_WAITING_FOR_PERMISSIONS"

-- | The operation is running.
pattern BucketMetadata_State_OPERATIONSTATERUNNING :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATERUNNING = BucketMetadata_State "OPERATION_STATE_RUNNING"

-- | The operation was completed successfully.
pattern BucketMetadata_State_OPERATIONSTATESUCCEEDED :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATESUCCEEDED = BucketMetadata_State "OPERATION_STATE_SUCCEEDED"

-- | The operation failed.
pattern BucketMetadata_State_OPERATIONSTATEFAILED :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATEFAILED = BucketMetadata_State "OPERATION_STATE_FAILED"

-- | The operation was cancelled by the user.
pattern BucketMetadata_State_OPERATIONSTATECANCELLED :: BucketMetadata_State
pattern BucketMetadata_State_OPERATIONSTATECANCELLED = BucketMetadata_State "OPERATION_STATE_CANCELLED"

{-# COMPLETE
  BucketMetadata_State_OPERATIONSTATEUNSPECIFIED,
  BucketMetadata_State_OPERATIONSTATESCHEDULED,
  BucketMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
  BucketMetadata_State_OPERATIONSTATERUNNING,
  BucketMetadata_State_OPERATIONSTATESUCCEEDED,
  BucketMetadata_State_OPERATIONSTATEFAILED,
  BucketMetadata_State_OPERATIONSTATECANCELLED,
  BucketMetadata_State
  #-}

-- | State of an operation.
newtype CopyLogEntriesMetadata_State = CopyLogEntriesMetadata_State {fromCopyLogEntriesMetadata_State :: Core.Text}
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

-- | Should not be used.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEUNSPECIFIED :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEUNSPECIFIED = CopyLogEntriesMetadata_State "OPERATION_STATE_UNSPECIFIED"

-- | The operation is scheduled.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATESCHEDULED :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATESCHEDULED = CopyLogEntriesMetadata_State "OPERATION_STATE_SCHEDULED"

-- | Waiting for necessary permissions.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS = CopyLogEntriesMetadata_State "OPERATION_STATE_WAITING_FOR_PERMISSIONS"

-- | The operation is running.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATERUNNING :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATERUNNING = CopyLogEntriesMetadata_State "OPERATION_STATE_RUNNING"

-- | The operation was completed successfully.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATESUCCEEDED :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATESUCCEEDED = CopyLogEntriesMetadata_State "OPERATION_STATE_SUCCEEDED"

-- | The operation failed.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEFAILED :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATEFAILED = CopyLogEntriesMetadata_State "OPERATION_STATE_FAILED"

-- | The operation was cancelled by the user.
pattern CopyLogEntriesMetadata_State_OPERATIONSTATECANCELLED :: CopyLogEntriesMetadata_State
pattern CopyLogEntriesMetadata_State_OPERATIONSTATECANCELLED = CopyLogEntriesMetadata_State "OPERATION_STATE_CANCELLED"

{-# COMPLETE
  CopyLogEntriesMetadata_State_OPERATIONSTATEUNSPECIFIED,
  CopyLogEntriesMetadata_State_OPERATIONSTATESCHEDULED,
  CopyLogEntriesMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
  CopyLogEntriesMetadata_State_OPERATIONSTATERUNNING,
  CopyLogEntriesMetadata_State_OPERATIONSTATESUCCEEDED,
  CopyLogEntriesMetadata_State_OPERATIONSTATEFAILED,
  CopyLogEntriesMetadata_State_OPERATIONSTATECANCELLED,
  CopyLogEntriesMetadata_State
  #-}

-- | Required. The type of data in this index.
newtype IndexConfig_Type = IndexConfig_Type {fromIndexConfig_Type :: Core.Text}
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

-- | The index\'s type is unspecified.
pattern IndexConfig_Type_INDEXTYPEUNSPECIFIED :: IndexConfig_Type
pattern IndexConfig_Type_INDEXTYPEUNSPECIFIED = IndexConfig_Type "INDEX_TYPE_UNSPECIFIED"

-- | The index is a string-type index.
pattern IndexConfig_Type_INDEXTYPESTRING :: IndexConfig_Type
pattern IndexConfig_Type_INDEXTYPESTRING = IndexConfig_Type "INDEX_TYPE_STRING"

-- | The index is a integer-type index.
pattern IndexConfig_Type_INDEXTYPEINTEGER :: IndexConfig_Type
pattern IndexConfig_Type_INDEXTYPEINTEGER = IndexConfig_Type "INDEX_TYPE_INTEGER"

{-# COMPLETE
  IndexConfig_Type_INDEXTYPEUNSPECIFIED,
  IndexConfig_Type_INDEXTYPESTRING,
  IndexConfig_Type_INDEXTYPEINTEGER,
  IndexConfig_Type
  #-}

-- | The type of data that can be assigned to the label.
newtype LabelDescriptor_ValueType = LabelDescriptor_ValueType {fromLabelDescriptor_ValueType :: Core.Text}
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

-- | A variable-length string. This is the default.
pattern LabelDescriptor_ValueType_String :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_String = LabelDescriptor_ValueType "STRING"

-- | Boolean; true or false.
pattern LabelDescriptor_ValueType_Bool :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_Bool = LabelDescriptor_ValueType "BOOL"

-- | A 64-bit signed integer.
pattern LabelDescriptor_ValueType_INT64 :: LabelDescriptor_ValueType
pattern LabelDescriptor_ValueType_INT64 = LabelDescriptor_ValueType "INT64"

{-# COMPLETE
  LabelDescriptor_ValueType_String,
  LabelDescriptor_ValueType_Bool,
  LabelDescriptor_ValueType_INT64,
  LabelDescriptor_ValueType
  #-}

-- | Output only. The resource lifecycle state.
newtype Link_LifecycleState = Link_LifecycleState {fromLink_LifecycleState :: Core.Text}
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

-- | Unspecified state. This is only used\/useful for distinguishing unset values.
pattern Link_LifecycleState_LIFECYCLESTATEUNSPECIFIED :: Link_LifecycleState
pattern Link_LifecycleState_LIFECYCLESTATEUNSPECIFIED = Link_LifecycleState "LIFECYCLE_STATE_UNSPECIFIED"

-- | The normal and active state.
pattern Link_LifecycleState_Active :: Link_LifecycleState
pattern Link_LifecycleState_Active = Link_LifecycleState "ACTIVE"

-- | The resource has been marked for deletion by the user. For some resources (e.g. buckets), this can be reversed by an un-delete operation.
pattern Link_LifecycleState_DELETEREQUESTED :: Link_LifecycleState
pattern Link_LifecycleState_DELETEREQUESTED = Link_LifecycleState "DELETE_REQUESTED"

-- | The resource has been marked for an update by the user. It will remain in this state until the update is complete.
pattern Link_LifecycleState_Updating :: Link_LifecycleState
pattern Link_LifecycleState_Updating = Link_LifecycleState "UPDATING"

-- | The resource has been marked for creation by the user. It will remain in this state until the creation is complete.
pattern Link_LifecycleState_Creating :: Link_LifecycleState
pattern Link_LifecycleState_Creating = Link_LifecycleState "CREATING"

-- | The resource is in an INTERNAL error state.
pattern Link_LifecycleState_Failed :: Link_LifecycleState
pattern Link_LifecycleState_Failed = Link_LifecycleState "FAILED"

{-# COMPLETE
  Link_LifecycleState_LIFECYCLESTATEUNSPECIFIED,
  Link_LifecycleState_Active,
  Link_LifecycleState_DELETEREQUESTED,
  Link_LifecycleState_Updating,
  Link_LifecycleState_Creating,
  Link_LifecycleState_Failed,
  Link_LifecycleState
  #-}

-- | State of an operation.
newtype LinkMetadata_State = LinkMetadata_State {fromLinkMetadata_State :: Core.Text}
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

-- | Should not be used.
pattern LinkMetadata_State_OPERATIONSTATEUNSPECIFIED :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATEUNSPECIFIED = LinkMetadata_State "OPERATION_STATE_UNSPECIFIED"

-- | The operation is scheduled.
pattern LinkMetadata_State_OPERATIONSTATESCHEDULED :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATESCHEDULED = LinkMetadata_State "OPERATION_STATE_SCHEDULED"

-- | Waiting for necessary permissions.
pattern LinkMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS = LinkMetadata_State "OPERATION_STATE_WAITING_FOR_PERMISSIONS"

-- | The operation is running.
pattern LinkMetadata_State_OPERATIONSTATERUNNING :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATERUNNING = LinkMetadata_State "OPERATION_STATE_RUNNING"

-- | The operation was completed successfully.
pattern LinkMetadata_State_OPERATIONSTATESUCCEEDED :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATESUCCEEDED = LinkMetadata_State "OPERATION_STATE_SUCCEEDED"

-- | The operation failed.
pattern LinkMetadata_State_OPERATIONSTATEFAILED :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATEFAILED = LinkMetadata_State "OPERATION_STATE_FAILED"

-- | The operation was cancelled by the user.
pattern LinkMetadata_State_OPERATIONSTATECANCELLED :: LinkMetadata_State
pattern LinkMetadata_State_OPERATIONSTATECANCELLED = LinkMetadata_State "OPERATION_STATE_CANCELLED"

{-# COMPLETE
  LinkMetadata_State_OPERATIONSTATEUNSPECIFIED,
  LinkMetadata_State_OPERATIONSTATESCHEDULED,
  LinkMetadata_State_OPERATIONSTATEWAITINGFORPERMISSIONS,
  LinkMetadata_State_OPERATIONSTATERUNNING,
  LinkMetadata_State_OPERATIONSTATESUCCEEDED,
  LinkMetadata_State_OPERATIONSTATEFAILED,
  LinkMetadata_State_OPERATIONSTATECANCELLED,
  LinkMetadata_State
  #-}

-- | Output only. The bucket lifecycle state.
newtype LogBucket_LifecycleState = LogBucket_LifecycleState {fromLogBucket_LifecycleState :: Core.Text}
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

-- | Unspecified state. This is only used\/useful for distinguishing unset values.
pattern LogBucket_LifecycleState_LIFECYCLESTATEUNSPECIFIED :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_LIFECYCLESTATEUNSPECIFIED = LogBucket_LifecycleState "LIFECYCLE_STATE_UNSPECIFIED"

-- | The normal and active state.
pattern LogBucket_LifecycleState_Active :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_Active = LogBucket_LifecycleState "ACTIVE"

-- | The resource has been marked for deletion by the user. For some resources (e.g. buckets), this can be reversed by an un-delete operation.
pattern LogBucket_LifecycleState_DELETEREQUESTED :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_DELETEREQUESTED = LogBucket_LifecycleState "DELETE_REQUESTED"

-- | The resource has been marked for an update by the user. It will remain in this state until the update is complete.
pattern LogBucket_LifecycleState_Updating :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_Updating = LogBucket_LifecycleState "UPDATING"

-- | The resource has been marked for creation by the user. It will remain in this state until the creation is complete.
pattern LogBucket_LifecycleState_Creating :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_Creating = LogBucket_LifecycleState "CREATING"

-- | The resource is in an INTERNAL error state.
pattern LogBucket_LifecycleState_Failed :: LogBucket_LifecycleState
pattern LogBucket_LifecycleState_Failed = LogBucket_LifecycleState "FAILED"

{-# COMPLETE
  LogBucket_LifecycleState_LIFECYCLESTATEUNSPECIFIED,
  LogBucket_LifecycleState_Active,
  LogBucket_LifecycleState_DELETEREQUESTED,
  LogBucket_LifecycleState_Updating,
  LogBucket_LifecycleState_Creating,
  LogBucket_LifecycleState_Failed,
  LogBucket_LifecycleState
  #-}

-- | Optional. The severity of the log entry. The default value is LogSeverity.DEFAULT.
newtype LogEntry_Severity = LogEntry_Severity {fromLogEntry_Severity :: Core.Text}
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

-- | (0) The log entry has no assigned severity level.
pattern LogEntry_Severity_Default :: LogEntry_Severity
pattern LogEntry_Severity_Default = LogEntry_Severity "DEFAULT"

-- | (100) Debug or trace information.
pattern LogEntry_Severity_Debug :: LogEntry_Severity
pattern LogEntry_Severity_Debug = LogEntry_Severity "DEBUG"

-- | (200) Routine information, such as ongoing status or performance.
pattern LogEntry_Severity_Info :: LogEntry_Severity
pattern LogEntry_Severity_Info = LogEntry_Severity "INFO"

-- | (300) Normal but significant events, such as start up, shut down, or a configuration change.
pattern LogEntry_Severity_Notice :: LogEntry_Severity
pattern LogEntry_Severity_Notice = LogEntry_Severity "NOTICE"

-- | (400) Warning events might cause problems.
pattern LogEntry_Severity_Warning :: LogEntry_Severity
pattern LogEntry_Severity_Warning = LogEntry_Severity "WARNING"

-- | (500) Error events are likely to cause problems.
pattern LogEntry_Severity_Error' :: LogEntry_Severity
pattern LogEntry_Severity_Error' = LogEntry_Severity "ERROR"

-- | (600) Critical events cause more severe problems or outages.
pattern LogEntry_Severity_Critical :: LogEntry_Severity
pattern LogEntry_Severity_Critical = LogEntry_Severity "CRITICAL"

-- | (700) A person must take an action immediately.
pattern LogEntry_Severity_Alert :: LogEntry_Severity
pattern LogEntry_Severity_Alert = LogEntry_Severity "ALERT"

-- | (800) One or more systems are unusable.
pattern LogEntry_Severity_Emergency :: LogEntry_Severity
pattern LogEntry_Severity_Emergency = LogEntry_Severity "EMERGENCY"

{-# COMPLETE
  LogEntry_Severity_Default,
  LogEntry_Severity_Debug,
  LogEntry_Severity_Info,
  LogEntry_Severity_Notice,
  LogEntry_Severity_Warning,
  LogEntry_Severity_Error',
  LogEntry_Severity_Critical,
  LogEntry_Severity_Alert,
  LogEntry_Severity_Emergency,
  LogEntry_Severity
  #-}

-- | Severity of this log entry.
newtype LogLine_Severity = LogLine_Severity {fromLogLine_Severity :: Core.Text}
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

-- | (0) The log entry has no assigned severity level.
pattern LogLine_Severity_Default :: LogLine_Severity
pattern LogLine_Severity_Default = LogLine_Severity "DEFAULT"

-- | (100) Debug or trace information.
pattern LogLine_Severity_Debug :: LogLine_Severity
pattern LogLine_Severity_Debug = LogLine_Severity "DEBUG"

-- | (200) Routine information, such as ongoing status or performance.
pattern LogLine_Severity_Info :: LogLine_Severity
pattern LogLine_Severity_Info = LogLine_Severity "INFO"

-- | (300) Normal but significant events, such as start up, shut down, or a configuration change.
pattern LogLine_Severity_Notice :: LogLine_Severity
pattern LogLine_Severity_Notice = LogLine_Severity "NOTICE"

-- | (400) Warning events might cause problems.
pattern LogLine_Severity_Warning :: LogLine_Severity
pattern LogLine_Severity_Warning = LogLine_Severity "WARNING"

-- | (500) Error events are likely to cause problems.
pattern LogLine_Severity_Error' :: LogLine_Severity
pattern LogLine_Severity_Error' = LogLine_Severity "ERROR"

-- | (600) Critical events cause more severe problems or outages.
pattern LogLine_Severity_Critical :: LogLine_Severity
pattern LogLine_Severity_Critical = LogLine_Severity "CRITICAL"

-- | (700) A person must take an action immediately.
pattern LogLine_Severity_Alert :: LogLine_Severity
pattern LogLine_Severity_Alert = LogLine_Severity "ALERT"

-- | (800) One or more systems are unusable.
pattern LogLine_Severity_Emergency :: LogLine_Severity
pattern LogLine_Severity_Emergency = LogLine_Severity "EMERGENCY"

{-# COMPLETE
  LogLine_Severity_Default,
  LogLine_Severity_Debug,
  LogLine_Severity_Info,
  LogLine_Severity_Notice,
  LogLine_Severity_Warning,
  LogLine_Severity_Error',
  LogLine_Severity_Critical,
  LogLine_Severity_Alert,
  LogLine_Severity_Emergency,
  LogLine_Severity
  #-}

-- | Deprecated. The API version that created or updated this metric. The v2 format is used by default and cannot be changed.
newtype LogMetric_Version = LogMetric_Version {fromLogMetric_Version :: Core.Text}
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

-- | Logging API v2.
pattern LogMetric_Version_V2 :: LogMetric_Version
pattern LogMetric_Version_V2 = LogMetric_Version "V2"

-- | Logging API v1.
pattern LogMetric_Version_V1 :: LogMetric_Version
pattern LogMetric_Version_V1 = LogMetric_Version "V1"

{-# COMPLETE
  LogMetric_Version_V2,
  LogMetric_Version_V1,
  LogMetric_Version
  #-}

-- | Deprecated. This field is unused.
newtype LogSink_OutputVersionFormat = LogSink_OutputVersionFormat {fromLogSink_OutputVersionFormat :: Core.Text}
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

-- | An unspecified format version that will default to V2.
pattern LogSink_OutputVersionFormat_VERSIONFORMATUNSPECIFIED :: LogSink_OutputVersionFormat
pattern LogSink_OutputVersionFormat_VERSIONFORMATUNSPECIFIED = LogSink_OutputVersionFormat "VERSION_FORMAT_UNSPECIFIED"

-- | LogEntry version 2 format.
pattern LogSink_OutputVersionFormat_V2 :: LogSink_OutputVersionFormat
pattern LogSink_OutputVersionFormat_V2 = LogSink_OutputVersionFormat "V2"

-- | LogEntry version 1 format.
pattern LogSink_OutputVersionFormat_V1 :: LogSink_OutputVersionFormat
pattern LogSink_OutputVersionFormat_V1 = LogSink_OutputVersionFormat "V1"

{-# COMPLETE
  LogSink_OutputVersionFormat_VERSIONFORMATUNSPECIFIED,
  LogSink_OutputVersionFormat_V2,
  LogSink_OutputVersionFormat_V1,
  LogSink_OutputVersionFormat
  #-}

-- | Optional. The launch stage of the metric definition.
newtype MetricDescriptor_LaunchStage = MetricDescriptor_LaunchStage {fromMetricDescriptor_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptor_LaunchStage_Unimplemented :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Unimplemented = MetricDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptor_LaunchStage_Prelaunch :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Prelaunch = MetricDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptor_LaunchStage_EARLYACCESS :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_EARLYACCESS = MetricDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptor_LaunchStage_Alpha :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Alpha = MetricDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptor_LaunchStage_Beta :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Beta = MetricDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptor_LaunchStage_GA :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_GA = MetricDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MetricDescriptor_LaunchStage_Deprecated :: MetricDescriptor_LaunchStage
pattern MetricDescriptor_LaunchStage_Deprecated = MetricDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptor_LaunchStage_Unimplemented,
  MetricDescriptor_LaunchStage_Prelaunch,
  MetricDescriptor_LaunchStage_EARLYACCESS,
  MetricDescriptor_LaunchStage_Alpha,
  MetricDescriptor_LaunchStage_Beta,
  MetricDescriptor_LaunchStage_GA,
  MetricDescriptor_LaunchStage_Deprecated,
  MetricDescriptor_LaunchStage
  #-}

-- | Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metric/kind and value/type might not be supported.
newtype MetricDescriptor_MetricKind = MetricDescriptor_MetricKind {fromMetricDescriptor_MetricKind :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED = MetricDescriptor_MetricKind "METRIC_KIND_UNSPECIFIED"

-- | An instantaneous measurement of a value.
pattern MetricDescriptor_MetricKind_Gauge :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Gauge = MetricDescriptor_MetricKind "GAUGE"

-- | The change in a value during a time interval.
pattern MetricDescriptor_MetricKind_Delta :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Delta = MetricDescriptor_MetricKind "DELTA"

-- | A value accumulated over a time interval. Cumulative measurements in a time series should have the same start time and increasing end times, until an event resets the cumulative value to zero and sets a new start time for the following points.
pattern MetricDescriptor_MetricKind_Cumulative :: MetricDescriptor_MetricKind
pattern MetricDescriptor_MetricKind_Cumulative = MetricDescriptor_MetricKind "CUMULATIVE"

{-# COMPLETE
  MetricDescriptor_MetricKind_METRICKINDUNSPECIFIED,
  MetricDescriptor_MetricKind_Gauge,
  MetricDescriptor_MetricKind_Delta,
  MetricDescriptor_MetricKind_Cumulative,
  MetricDescriptor_MetricKind
  #-}

-- | Whether the measurement is an integer, a floating-point number, etc. Some combinations of metric/kind and value/type might not be supported.
newtype MetricDescriptor_ValueType = MetricDescriptor_ValueType {fromMetricDescriptor_ValueType :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED = MetricDescriptor_ValueType "VALUE_TYPE_UNSPECIFIED"

-- | The value is a boolean. This value type can be used only if the metric kind is GAUGE.
pattern MetricDescriptor_ValueType_Bool :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Bool = MetricDescriptor_ValueType "BOOL"

-- | The value is a signed 64-bit integer.
pattern MetricDescriptor_ValueType_INT64 :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_INT64 = MetricDescriptor_ValueType "INT64"

-- | The value is a double precision floating point number.
pattern MetricDescriptor_ValueType_Double :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Double = MetricDescriptor_ValueType "DOUBLE"

-- | The value is a text string. This value type can be used only if the metric kind is GAUGE.
pattern MetricDescriptor_ValueType_String :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_String = MetricDescriptor_ValueType "STRING"

-- | The value is a Distribution.
pattern MetricDescriptor_ValueType_Distribution :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Distribution = MetricDescriptor_ValueType "DISTRIBUTION"

-- | The value is money.
pattern MetricDescriptor_ValueType_Money :: MetricDescriptor_ValueType
pattern MetricDescriptor_ValueType_Money = MetricDescriptor_ValueType "MONEY"

{-# COMPLETE
  MetricDescriptor_ValueType_VALUETYPEUNSPECIFIED,
  MetricDescriptor_ValueType_Bool,
  MetricDescriptor_ValueType_INT64,
  MetricDescriptor_ValueType_Double,
  MetricDescriptor_ValueType_String,
  MetricDescriptor_ValueType_Distribution,
  MetricDescriptor_ValueType_Money,
  MetricDescriptor_ValueType
  #-}

-- | Deprecated. Must use the MetricDescriptor.launch_stage instead.
newtype MetricDescriptorMetadata_LaunchStage = MetricDescriptorMetadata_LaunchStage {fromMetricDescriptorMetadata_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MetricDescriptorMetadata_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Unimplemented = MetricDescriptorMetadata_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Prelaunch = MetricDescriptorMetadata_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_EARLYACCESS = MetricDescriptorMetadata_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MetricDescriptorMetadata_LaunchStage_Alpha :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Alpha = MetricDescriptorMetadata_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MetricDescriptorMetadata_LaunchStage_Beta :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Beta = MetricDescriptorMetadata_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MetricDescriptorMetadata_LaunchStage_GA :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_GA = MetricDescriptorMetadata_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MetricDescriptorMetadata_LaunchStage_Deprecated :: MetricDescriptorMetadata_LaunchStage
pattern MetricDescriptorMetadata_LaunchStage_Deprecated = MetricDescriptorMetadata_LaunchStage "DEPRECATED"

{-# COMPLETE
  MetricDescriptorMetadata_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MetricDescriptorMetadata_LaunchStage_Unimplemented,
  MetricDescriptorMetadata_LaunchStage_Prelaunch,
  MetricDescriptorMetadata_LaunchStage_EARLYACCESS,
  MetricDescriptorMetadata_LaunchStage_Alpha,
  MetricDescriptorMetadata_LaunchStage_Beta,
  MetricDescriptorMetadata_LaunchStage_GA,
  MetricDescriptorMetadata_LaunchStage_Deprecated,
  MetricDescriptorMetadata_LaunchStage
  #-}

-- | Optional. The launch stage of the monitored resource definition.
newtype MonitoredResourceDescriptor_LaunchStage = MonitoredResourceDescriptor_LaunchStage {fromMonitoredResourceDescriptor_LaunchStage :: Core.Text}
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

-- | Do not use this default value.
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED = MonitoredResourceDescriptor_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Unimplemented = MonitoredResourceDescriptor_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Prelaunch = MonitoredResourceDescriptor_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_EARLYACCESS = MonitoredResourceDescriptor_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern MonitoredResourceDescriptor_LaunchStage_Alpha :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Alpha = MonitoredResourceDescriptor_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern MonitoredResourceDescriptor_LaunchStage_Beta :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Beta = MonitoredResourceDescriptor_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern MonitoredResourceDescriptor_LaunchStage_GA :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_GA = MonitoredResourceDescriptor_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our Terms of Service (https:\/\/cloud.google.com\/terms\/) and the Google Cloud Platform Subject to the Deprecation Policy (https:\/\/cloud.google.com\/terms\/deprecation) documentation.
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated :: MonitoredResourceDescriptor_LaunchStage
pattern MonitoredResourceDescriptor_LaunchStage_Deprecated = MonitoredResourceDescriptor_LaunchStage "DEPRECATED"

{-# COMPLETE
  MonitoredResourceDescriptor_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  MonitoredResourceDescriptor_LaunchStage_Unimplemented,
  MonitoredResourceDescriptor_LaunchStage_Prelaunch,
  MonitoredResourceDescriptor_LaunchStage_EARLYACCESS,
  MonitoredResourceDescriptor_LaunchStage_Alpha,
  MonitoredResourceDescriptor_LaunchStage_Beta,
  MonitoredResourceDescriptor_LaunchStage_GA,
  MonitoredResourceDescriptor_LaunchStage_Deprecated,
  MonitoredResourceDescriptor_LaunchStage
  #-}

-- | The reason that entries were omitted from the session.
newtype SuppressionInfo_Reason = SuppressionInfo_Reason {fromSuppressionInfo_Reason :: Core.Text}
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

-- | Unexpected default.
pattern SuppressionInfo_Reason_REASONUNSPECIFIED :: SuppressionInfo_Reason
pattern SuppressionInfo_Reason_REASONUNSPECIFIED = SuppressionInfo_Reason "REASON_UNSPECIFIED"

-- | Indicates suppression occurred due to relevant entries being received in excess of rate limits. For quotas and limits, see Logging API quotas and limits (https:\/\/cloud.google.com\/logging\/quotas#api-limits).
pattern SuppressionInfo_Reason_RATELIMIT :: SuppressionInfo_Reason
pattern SuppressionInfo_Reason_RATELIMIT = SuppressionInfo_Reason "RATE_LIMIT"

-- | Indicates suppression occurred due to the client not consuming responses quickly enough.
pattern SuppressionInfo_Reason_NOTCONSUMED :: SuppressionInfo_Reason
pattern SuppressionInfo_Reason_NOTCONSUMED = SuppressionInfo_Reason "NOT_CONSUMED"

{-# COMPLETE
  SuppressionInfo_Reason_REASONUNSPECIFIED,
  SuppressionInfo_Reason_RATELIMIT,
  SuppressionInfo_Reason_NOTCONSUMED,
  SuppressionInfo_Reason
  #-}

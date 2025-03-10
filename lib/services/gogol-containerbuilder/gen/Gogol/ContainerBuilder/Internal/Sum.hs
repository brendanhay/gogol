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
-- Module      : Gogol.ContainerBuilder.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ContainerBuilder.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * AuditLogConfig_LogType
    AuditLogConfig_LogType
      ( AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        AuditLogConfig_LogType_ADMINREAD,
        AuditLogConfig_LogType_DATAWRITE,
        AuditLogConfig_LogType_DATAREAD,
        ..
      ),

    -- * ChildStatusReference_Type
    ChildStatusReference_Type
      ( ChildStatusReference_Type_TYPEUNSPECIFIED,
        ChildStatusReference_Type_TASKRUN,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV2Condition_Severity
    GoogleDevtoolsCloudbuildV2Condition_Severity
      ( GoogleDevtoolsCloudbuildV2Condition_Severity_SEVERITYUNSPECIFIED,
        GoogleDevtoolsCloudbuildV2Condition_Severity_Warning,
        GoogleDevtoolsCloudbuildV2Condition_Severity_Info,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV2Condition_Status
    GoogleDevtoolsCloudbuildV2Condition_Status
      ( GoogleDevtoolsCloudbuildV2Condition_Status_Unknown,
        GoogleDevtoolsCloudbuildV2Condition_Status_True',
        GoogleDevtoolsCloudbuildV2Condition_Status_False',
        ..
      ),

    -- * InstallationState_Stage
    InstallationState_Stage
      ( InstallationState_Stage_STAGEUNSPECIFIED,
        InstallationState_Stage_PENDINGCREATEAPP,
        InstallationState_Stage_PENDINGUSEROAUTH,
        InstallationState_Stage_PENDINGINSTALLAPP,
        InstallationState_Stage_Complete,
        ..
      ),

    -- * ParamSpec_Type
    ParamSpec_Type
      ( ParamSpec_Type_TYPEUNSPECIFIED,
        ParamSpec_Type_String,
        ParamSpec_Type_Array,
        ParamSpec_Type_Object,
        ..
      ),

    -- * ParamValue_Type
    ParamValue_Type
      ( ParamValue_Type_TYPEUNSPECIFIED,
        ParamValue_Type_String,
        ParamValue_Type_Array,
        ParamValue_Type_Object,
        ..
      ),

    -- * PipelineRef_Resolver
    PipelineRef_Resolver
      ( PipelineRef_Resolver_RESOLVERNAMEUNSPECIFIED,
        PipelineRef_Resolver_Bundles,
        PipelineRef_Resolver_GCBREPO,
        PipelineRef_Resolver_Git,
        PipelineRef_Resolver_DEVELOPERCONNECT,
        PipelineRef_Resolver_Default,
        ..
      ),

    -- * PipelineResult_Type
    PipelineResult_Type
      ( PipelineResult_Type_TYPEUNSPECIFIED,
        PipelineResult_Type_String,
        PipelineResult_Type_Array,
        PipelineResult_Type_Object,
        ..
      ),

    -- * PipelineRun_PipelineRunStatus
    PipelineRun_PipelineRunStatus
      ( PipelineRun_PipelineRunStatus_PIPELINERUNSTATUSUNSPECIFIED,
        PipelineRun_PipelineRunStatus_PIPELINERUNCANCELLED,
        ..
      ),

    -- * PropertySpec_Type
    PropertySpec_Type
      ( PropertySpec_Type_TYPEUNSPECIFIED,
        PropertySpec_Type_String,
        ..
      ),

    -- * Provenance_Enabled
    Provenance_Enabled
      ( Provenance_Enabled_ENABLEDUNSPECIFIED,
        Provenance_Enabled_Required,
        Provenance_Enabled_Optimistic,
        Provenance_Enabled_Disabled,
        ..
      ),

    -- * Provenance_Region
    Provenance_Region
      ( Provenance_Region_REGIONUNSPECIFIED,
        Provenance_Region_Global,
        ..
      ),

    -- * Provenance_Storage
    Provenance_Storage
      ( Provenance_Storage_STORAGEUNSPECIFIED,
        Provenance_Storage_PREFERARTIFACTPROJECT,
        Provenance_Storage_ARTIFACTPROJECTONLY,
        Provenance_Storage_BUILDPROJECTONLY,
        ..
      ),

    -- * ResultValue_Type
    ResultValue_Type
      ( ResultValue_Type_TYPEUNSPECIFIED,
        ResultValue_Type_String,
        ResultValue_Type_Array,
        ResultValue_Type_Object,
        ..
      ),

    -- * Security_PrivilegeMode
    Security_PrivilegeMode
      ( Security_PrivilegeMode_PRIVILEGEMODEUNSPECIFIED,
        Security_PrivilegeMode_Privileged,
        Security_PrivilegeMode_Unprivileged,
        ..
      ),

    -- * Step_OnError
    Step_OnError
      ( Step_OnError_ONERRORTYPEUNSPECIFIED,
        Step_OnError_STOPANDFAIL,
        Step_OnError_Continue,
        ..
      ),

    -- * StepRef_Resolver
    StepRef_Resolver
      ( StepRef_Resolver_RESOLVERNAMEUNSPECIFIED,
        StepRef_Resolver_Bundles,
        StepRef_Resolver_GCBREPO,
        StepRef_Resolver_Git,
        StepRef_Resolver_DEVELOPERCONNECT,
        StepRef_Resolver_Default,
        ..
      ),

    -- * TaskRef_Resolver
    TaskRef_Resolver
      ( TaskRef_Resolver_RESOLVERNAMEUNSPECIFIED,
        TaskRef_Resolver_Bundles,
        TaskRef_Resolver_GCBREPO,
        TaskRef_Resolver_Git,
        TaskRef_Resolver_DEVELOPERCONNECT,
        TaskRef_Resolver_Default,
        ..
      ),

    -- * TaskResult_Type
    TaskResult_Type
      ( TaskResult_Type_TYPEUNSPECIFIED,
        TaskResult_Type_String,
        TaskResult_Type_Array,
        TaskResult_Type_Object,
        ..
      ),

    -- * TaskSpec_ManagedSidecarsItem
    TaskSpec_ManagedSidecarsItem
      ( TaskSpec_ManagedSidecarsItem_MANAGEDSIDECARUNSPECIFIED,
        TaskSpec_ManagedSidecarsItem_PRIVILEGEDDOCKERDAEMON,
        ..
      ),

    -- * WhenExpression_ExpressionOperator
    WhenExpression_ExpressionOperator
      ( WhenExpression_ExpressionOperator_EXPRESSIONOPERATORUNSPECIFIED,
        WhenExpression_ExpressionOperator_IN,
        WhenExpression_ExpressionOperator_NOTIN,
        ..
      ),

    -- * ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
    ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
      ( ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_REFTYPEUNSPECIFIED,
        ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Tag,
        ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Branch,
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

-- | The log type that this config enables.
newtype AuditLogConfig_LogType = AuditLogConfig_LogType {fromAuditLogConfig_LogType :: Core.Text}
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

-- | Default case. Should never be this.
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern AuditLogConfig_LogType_ADMINREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_ADMINREAD = AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern AuditLogConfig_LogType_DATAWRITE :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAWRITE = AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern AuditLogConfig_LogType_DATAREAD :: AuditLogConfig_LogType
pattern AuditLogConfig_LogType_DATAREAD = AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  AuditLogConfig_LogType_ADMINREAD,
  AuditLogConfig_LogType_DATAWRITE,
  AuditLogConfig_LogType_DATAREAD,
  AuditLogConfig_LogType
  #-}

-- | Output only. Type of the child reference.
newtype ChildStatusReference_Type = ChildStatusReference_Type {fromChildStatusReference_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern ChildStatusReference_Type_TYPEUNSPECIFIED :: ChildStatusReference_Type
pattern ChildStatusReference_Type_TYPEUNSPECIFIED = ChildStatusReference_Type "TYPE_UNSPECIFIED"

-- | TaskRun.
pattern ChildStatusReference_Type_TASKRUN :: ChildStatusReference_Type
pattern ChildStatusReference_Type_TASKRUN = ChildStatusReference_Type "TASK_RUN"

{-# COMPLETE
  ChildStatusReference_Type_TYPEUNSPECIFIED,
  ChildStatusReference_Type_TASKRUN,
  ChildStatusReference_Type
  #-}

-- | Severity with which to treat failures of this type of condition.
newtype GoogleDevtoolsCloudbuildV2Condition_Severity = GoogleDevtoolsCloudbuildV2Condition_Severity {fromGoogleDevtoolsCloudbuildV2Condition_Severity :: Core.Text}
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

-- | Default enum type; should not be used.
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_SEVERITYUNSPECIFIED :: GoogleDevtoolsCloudbuildV2Condition_Severity
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_SEVERITYUNSPECIFIED = GoogleDevtoolsCloudbuildV2Condition_Severity "SEVERITY_UNSPECIFIED"

-- | Severity is warning.
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_Warning :: GoogleDevtoolsCloudbuildV2Condition_Severity
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_Warning = GoogleDevtoolsCloudbuildV2Condition_Severity "WARNING"

-- | Severity is informational only.
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_Info :: GoogleDevtoolsCloudbuildV2Condition_Severity
pattern GoogleDevtoolsCloudbuildV2Condition_Severity_Info = GoogleDevtoolsCloudbuildV2Condition_Severity "INFO"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV2Condition_Severity_SEVERITYUNSPECIFIED,
  GoogleDevtoolsCloudbuildV2Condition_Severity_Warning,
  GoogleDevtoolsCloudbuildV2Condition_Severity_Info,
  GoogleDevtoolsCloudbuildV2Condition_Severity
  #-}

-- | Status of the condition.
newtype GoogleDevtoolsCloudbuildV2Condition_Status = GoogleDevtoolsCloudbuildV2Condition_Status {fromGoogleDevtoolsCloudbuildV2Condition_Status :: Core.Text}
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

-- | Default enum type indicating execution is still ongoing.
pattern GoogleDevtoolsCloudbuildV2Condition_Status_Unknown :: GoogleDevtoolsCloudbuildV2Condition_Status
pattern GoogleDevtoolsCloudbuildV2Condition_Status_Unknown = GoogleDevtoolsCloudbuildV2Condition_Status "UNKNOWN"

-- | Success
pattern GoogleDevtoolsCloudbuildV2Condition_Status_True' :: GoogleDevtoolsCloudbuildV2Condition_Status
pattern GoogleDevtoolsCloudbuildV2Condition_Status_True' = GoogleDevtoolsCloudbuildV2Condition_Status "TRUE"

-- | Failure
pattern GoogleDevtoolsCloudbuildV2Condition_Status_False' :: GoogleDevtoolsCloudbuildV2Condition_Status
pattern GoogleDevtoolsCloudbuildV2Condition_Status_False' = GoogleDevtoolsCloudbuildV2Condition_Status "FALSE"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV2Condition_Status_Unknown,
  GoogleDevtoolsCloudbuildV2Condition_Status_True',
  GoogleDevtoolsCloudbuildV2Condition_Status_False',
  GoogleDevtoolsCloudbuildV2Condition_Status
  #-}

-- | Output only. Current step of the installation process.
newtype InstallationState_Stage = InstallationState_Stage {fromInstallationState_Stage :: Core.Text}
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

-- | No stage specified.
pattern InstallationState_Stage_STAGEUNSPECIFIED :: InstallationState_Stage
pattern InstallationState_Stage_STAGEUNSPECIFIED = InstallationState_Stage "STAGE_UNSPECIFIED"

-- | Only for GitHub Enterprise. An App creation has been requested. The user needs to confirm the creation in their GitHub enterprise host.
pattern InstallationState_Stage_PENDINGCREATEAPP :: InstallationState_Stage
pattern InstallationState_Stage_PENDINGCREATEAPP = InstallationState_Stage "PENDING_CREATE_APP"

-- | User needs to authorize the GitHub (or Enterprise) App via OAuth.
pattern InstallationState_Stage_PENDINGUSEROAUTH :: InstallationState_Stage
pattern InstallationState_Stage_PENDINGUSEROAUTH = InstallationState_Stage "PENDING_USER_OAUTH"

-- | User needs to follow the link to install the GitHub (or Enterprise) App.
pattern InstallationState_Stage_PENDINGINSTALLAPP :: InstallationState_Stage
pattern InstallationState_Stage_PENDINGINSTALLAPP = InstallationState_Stage "PENDING_INSTALL_APP"

-- | Installation process has been completed.
pattern InstallationState_Stage_Complete :: InstallationState_Stage
pattern InstallationState_Stage_Complete = InstallationState_Stage "COMPLETE"

{-# COMPLETE
  InstallationState_Stage_STAGEUNSPECIFIED,
  InstallationState_Stage_PENDINGCREATEAPP,
  InstallationState_Stage_PENDINGUSEROAUTH,
  InstallationState_Stage_PENDINGINSTALLAPP,
  InstallationState_Stage_Complete,
  InstallationState_Stage
  #-}

-- | Type of ParamSpec
newtype ParamSpec_Type = ParamSpec_Type {fromParamSpec_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern ParamSpec_Type_TYPEUNSPECIFIED :: ParamSpec_Type
pattern ParamSpec_Type_TYPEUNSPECIFIED = ParamSpec_Type "TYPE_UNSPECIFIED"

-- | Default
pattern ParamSpec_Type_String :: ParamSpec_Type
pattern ParamSpec_Type_String = ParamSpec_Type "STRING"

-- | Array type.
pattern ParamSpec_Type_Array :: ParamSpec_Type
pattern ParamSpec_Type_Array = ParamSpec_Type "ARRAY"

-- | Object type.
pattern ParamSpec_Type_Object :: ParamSpec_Type
pattern ParamSpec_Type_Object = ParamSpec_Type "OBJECT"

{-# COMPLETE
  ParamSpec_Type_TYPEUNSPECIFIED,
  ParamSpec_Type_String,
  ParamSpec_Type_Array,
  ParamSpec_Type_Object,
  ParamSpec_Type
  #-}

-- | Type of parameter.
newtype ParamValue_Type = ParamValue_Type {fromParamValue_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern ParamValue_Type_TYPEUNSPECIFIED :: ParamValue_Type
pattern ParamValue_Type_TYPEUNSPECIFIED = ParamValue_Type "TYPE_UNSPECIFIED"

-- | Default
pattern ParamValue_Type_String :: ParamValue_Type
pattern ParamValue_Type_String = ParamValue_Type "STRING"

-- | Array type
pattern ParamValue_Type_Array :: ParamValue_Type
pattern ParamValue_Type_Array = ParamValue_Type "ARRAY"

-- | Object type
pattern ParamValue_Type_Object :: ParamValue_Type
pattern ParamValue_Type_Object = ParamValue_Type "OBJECT"

{-# COMPLETE
  ParamValue_Type_TYPEUNSPECIFIED,
  ParamValue_Type_String,
  ParamValue_Type_Array,
  ParamValue_Type_Object,
  ParamValue_Type
  #-}

-- | Resolver is the name of the resolver that should perform resolution of the referenced Tekton resource.
newtype PipelineRef_Resolver = PipelineRef_Resolver {fromPipelineRef_Resolver :: Core.Text}
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

-- | Default enum type; should not be used.
pattern PipelineRef_Resolver_RESOLVERNAMEUNSPECIFIED :: PipelineRef_Resolver
pattern PipelineRef_Resolver_RESOLVERNAMEUNSPECIFIED = PipelineRef_Resolver "RESOLVER_NAME_UNSPECIFIED"

-- | Bundles resolver. https:\/\/tekton.dev\/docs\/pipelines\/bundle-resolver\/
pattern PipelineRef_Resolver_Bundles :: PipelineRef_Resolver
pattern PipelineRef_Resolver_Bundles = PipelineRef_Resolver "BUNDLES"

-- | GCB repo resolver.
pattern PipelineRef_Resolver_GCBREPO :: PipelineRef_Resolver
pattern PipelineRef_Resolver_GCBREPO = PipelineRef_Resolver "GCB_REPO"

-- | Simple Git resolver. https:\/\/tekton.dev\/docs\/pipelines\/git-resolver\/
pattern PipelineRef_Resolver_Git :: PipelineRef_Resolver
pattern PipelineRef_Resolver_Git = PipelineRef_Resolver "GIT"

-- | Developer Connect resolver.
pattern PipelineRef_Resolver_DEVELOPERCONNECT :: PipelineRef_Resolver
pattern PipelineRef_Resolver_DEVELOPERCONNECT = PipelineRef_Resolver "DEVELOPER_CONNECT"

-- | Default resolver.
pattern PipelineRef_Resolver_Default :: PipelineRef_Resolver
pattern PipelineRef_Resolver_Default = PipelineRef_Resolver "DEFAULT"

{-# COMPLETE
  PipelineRef_Resolver_RESOLVERNAMEUNSPECIFIED,
  PipelineRef_Resolver_Bundles,
  PipelineRef_Resolver_GCBREPO,
  PipelineRef_Resolver_Git,
  PipelineRef_Resolver_DEVELOPERCONNECT,
  PipelineRef_Resolver_Default,
  PipelineRef_Resolver
  #-}

-- | Output only. The type of data that the result holds.
newtype PipelineResult_Type = PipelineResult_Type {fromPipelineResult_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern PipelineResult_Type_TYPEUNSPECIFIED :: PipelineResult_Type
pattern PipelineResult_Type_TYPEUNSPECIFIED = PipelineResult_Type "TYPE_UNSPECIFIED"

-- | Default
pattern PipelineResult_Type_String :: PipelineResult_Type
pattern PipelineResult_Type_String = PipelineResult_Type "STRING"

-- | Array type
pattern PipelineResult_Type_Array :: PipelineResult_Type
pattern PipelineResult_Type_Array = PipelineResult_Type "ARRAY"

-- | Object type
pattern PipelineResult_Type_Object :: PipelineResult_Type
pattern PipelineResult_Type_Object = PipelineResult_Type "OBJECT"

{-# COMPLETE
  PipelineResult_Type_TYPEUNSPECIFIED,
  PipelineResult_Type_String,
  PipelineResult_Type_Array,
  PipelineResult_Type_Object,
  PipelineResult_Type
  #-}

-- | Pipelinerun status the user can provide. Used for cancellation.
newtype PipelineRun_PipelineRunStatus = PipelineRun_PipelineRunStatus {fromPipelineRun_PipelineRunStatus :: Core.Text}
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

-- | Default enum type; should not be used.
pattern PipelineRun_PipelineRunStatus_PIPELINERUNSTATUSUNSPECIFIED :: PipelineRun_PipelineRunStatus
pattern PipelineRun_PipelineRunStatus_PIPELINERUNSTATUSUNSPECIFIED = PipelineRun_PipelineRunStatus "PIPELINE_RUN_STATUS_UNSPECIFIED"

-- | Cancelled status.
pattern PipelineRun_PipelineRunStatus_PIPELINERUNCANCELLED :: PipelineRun_PipelineRunStatus
pattern PipelineRun_PipelineRunStatus_PIPELINERUNCANCELLED = PipelineRun_PipelineRunStatus "PIPELINE_RUN_CANCELLED"

{-# COMPLETE
  PipelineRun_PipelineRunStatus_PIPELINERUNSTATUSUNSPECIFIED,
  PipelineRun_PipelineRunStatus_PIPELINERUNCANCELLED,
  PipelineRun_PipelineRunStatus
  #-}

-- | A type for the object.
newtype PropertySpec_Type = PropertySpec_Type {fromPropertySpec_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern PropertySpec_Type_TYPEUNSPECIFIED :: PropertySpec_Type
pattern PropertySpec_Type_TYPEUNSPECIFIED = PropertySpec_Type "TYPE_UNSPECIFIED"

-- | Default
pattern PropertySpec_Type_String :: PropertySpec_Type
pattern PropertySpec_Type_String = PropertySpec_Type "STRING"

{-# COMPLETE
  PropertySpec_Type_TYPEUNSPECIFIED,
  PropertySpec_Type_String,
  PropertySpec_Type
  #-}

-- | Optional. Provenance push mode.
newtype Provenance_Enabled = Provenance_Enabled {fromProvenance_Enabled :: Core.Text}
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

-- | Default to disabled (before AA regionalization), optimistic after
pattern Provenance_Enabled_ENABLEDUNSPECIFIED :: Provenance_Enabled
pattern Provenance_Enabled_ENABLEDUNSPECIFIED = Provenance_Enabled "ENABLED_UNSPECIFIED"

-- | Provenance failures would fail the run
pattern Provenance_Enabled_Required :: Provenance_Enabled
pattern Provenance_Enabled_Required = Provenance_Enabled "REQUIRED"

-- | GCB will attempt to push to artifact analaysis and build state would not be impacted by the push failures.
pattern Provenance_Enabled_Optimistic :: Provenance_Enabled
pattern Provenance_Enabled_Optimistic = Provenance_Enabled "OPTIMISTIC"

-- | Disable the provenance push entirely.
pattern Provenance_Enabled_Disabled :: Provenance_Enabled
pattern Provenance_Enabled_Disabled = Provenance_Enabled "DISABLED"

{-# COMPLETE
  Provenance_Enabled_ENABLEDUNSPECIFIED,
  Provenance_Enabled_Required,
  Provenance_Enabled_Optimistic,
  Provenance_Enabled_Disabled,
  Provenance_Enabled
  #-}

-- | Optional. Provenance region.
newtype Provenance_Region = Provenance_Region {fromProvenance_Region :: Core.Text}
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

-- | The PipelineRun\/TaskRun\/Workflow will be rejected. Update this comment to push to the same region as the run in Artifact Analysis when it\'s regionalized.
pattern Provenance_Region_REGIONUNSPECIFIED :: Provenance_Region
pattern Provenance_Region_REGIONUNSPECIFIED = Provenance_Region "REGION_UNSPECIFIED"

-- | Push provenance to Artifact Analysis in global region.
pattern Provenance_Region_Global :: Provenance_Region
pattern Provenance_Region_Global = Provenance_Region "GLOBAL"

{-# COMPLETE
  Provenance_Region_REGIONUNSPECIFIED,
  Provenance_Region_Global,
  Provenance_Region
  #-}

-- | Optional. Where provenance is stored.
newtype Provenance_Storage = Provenance_Storage {fromProvenance_Storage :: Core.Text}
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

-- | Default PREFER/ARTIFACT/PROJECT.
pattern Provenance_Storage_STORAGEUNSPECIFIED :: Provenance_Storage
pattern Provenance_Storage_STORAGEUNSPECIFIED = Provenance_Storage "STORAGE_UNSPECIFIED"

-- | GCB will attempt to push provenance to the artifact project. If it is not available, fallback to build project.
pattern Provenance_Storage_PREFERARTIFACTPROJECT :: Provenance_Storage
pattern Provenance_Storage_PREFERARTIFACTPROJECT = Provenance_Storage "PREFER_ARTIFACT_PROJECT"

-- | Only push to artifact project.
pattern Provenance_Storage_ARTIFACTPROJECTONLY :: Provenance_Storage
pattern Provenance_Storage_ARTIFACTPROJECTONLY = Provenance_Storage "ARTIFACT_PROJECT_ONLY"

-- | Only push to build project.
pattern Provenance_Storage_BUILDPROJECTONLY :: Provenance_Storage
pattern Provenance_Storage_BUILDPROJECTONLY = Provenance_Storage "BUILD_PROJECT_ONLY"

{-# COMPLETE
  Provenance_Storage_STORAGEUNSPECIFIED,
  Provenance_Storage_PREFERARTIFACTPROJECT,
  Provenance_Storage_ARTIFACTPROJECTONLY,
  Provenance_Storage_BUILDPROJECTONLY,
  Provenance_Storage
  #-}

-- | Output only. The type of data that the result holds.
newtype ResultValue_Type = ResultValue_Type {fromResultValue_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern ResultValue_Type_TYPEUNSPECIFIED :: ResultValue_Type
pattern ResultValue_Type_TYPEUNSPECIFIED = ResultValue_Type "TYPE_UNSPECIFIED"

-- | Default
pattern ResultValue_Type_String :: ResultValue_Type
pattern ResultValue_Type_String = ResultValue_Type "STRING"

-- | Array type
pattern ResultValue_Type_Array :: ResultValue_Type
pattern ResultValue_Type_Array = ResultValue_Type "ARRAY"

-- | Object type
pattern ResultValue_Type_Object :: ResultValue_Type
pattern ResultValue_Type_Object = ResultValue_Type "OBJECT"

{-# COMPLETE
  ResultValue_Type_TYPEUNSPECIFIED,
  ResultValue_Type_String,
  ResultValue_Type_Array,
  ResultValue_Type_Object,
  ResultValue_Type
  #-}

-- | Optional. Privilege mode.
newtype Security_PrivilegeMode = Security_PrivilegeMode {fromSecurity_PrivilegeMode :: Core.Text}
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

-- | Default to PRIVILEGED.
pattern Security_PrivilegeMode_PRIVILEGEMODEUNSPECIFIED :: Security_PrivilegeMode
pattern Security_PrivilegeMode_PRIVILEGEMODEUNSPECIFIED = Security_PrivilegeMode "PRIVILEGE_MODE_UNSPECIFIED"

-- | Privileged mode.
pattern Security_PrivilegeMode_Privileged :: Security_PrivilegeMode
pattern Security_PrivilegeMode_Privileged = Security_PrivilegeMode "PRIVILEGED"

-- | Unprivileged mode.
pattern Security_PrivilegeMode_Unprivileged :: Security_PrivilegeMode
pattern Security_PrivilegeMode_Unprivileged = Security_PrivilegeMode "UNPRIVILEGED"

{-# COMPLETE
  Security_PrivilegeMode_PRIVILEGEMODEUNSPECIFIED,
  Security_PrivilegeMode_Privileged,
  Security_PrivilegeMode_Unprivileged,
  Security_PrivilegeMode
  #-}

-- | Optional. OnError defines the exiting behavior on error can be set to [ continue | stopAndFail ]
newtype Step_OnError = Step_OnError {fromStep_OnError :: Core.Text}
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

-- | Default enum type; should not be used.
pattern Step_OnError_ONERRORTYPEUNSPECIFIED :: Step_OnError
pattern Step_OnError_ONERRORTYPEUNSPECIFIED = Step_OnError "ON_ERROR_TYPE_UNSPECIFIED"

-- | StopAndFail indicates exit if the step\/task exits with non-zero exit code
pattern Step_OnError_STOPANDFAIL :: Step_OnError
pattern Step_OnError_STOPANDFAIL = Step_OnError "STOP_AND_FAIL"

-- | Continue indicates continue executing the rest of the steps\/tasks irrespective of the exit code
pattern Step_OnError_Continue :: Step_OnError
pattern Step_OnError_Continue = Step_OnError "CONTINUE"

{-# COMPLETE
  Step_OnError_ONERRORTYPEUNSPECIFIED,
  Step_OnError_STOPANDFAIL,
  Step_OnError_Continue,
  Step_OnError
  #-}

-- | Optional. Type of the resolver.
newtype StepRef_Resolver = StepRef_Resolver {fromStepRef_Resolver :: Core.Text}
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

-- | Default enum type; should not be used.
pattern StepRef_Resolver_RESOLVERNAMEUNSPECIFIED :: StepRef_Resolver
pattern StepRef_Resolver_RESOLVERNAMEUNSPECIFIED = StepRef_Resolver "RESOLVER_NAME_UNSPECIFIED"

-- | Bundles resolver. https:\/\/tekton.dev\/docs\/pipelines\/bundle-resolver\/
pattern StepRef_Resolver_Bundles :: StepRef_Resolver
pattern StepRef_Resolver_Bundles = StepRef_Resolver "BUNDLES"

-- | GCB repo resolver.
pattern StepRef_Resolver_GCBREPO :: StepRef_Resolver
pattern StepRef_Resolver_GCBREPO = StepRef_Resolver "GCB_REPO"

-- | Simple Git resolver. https:\/\/tekton.dev\/docs\/pipelines\/git-resolver\/
pattern StepRef_Resolver_Git :: StepRef_Resolver
pattern StepRef_Resolver_Git = StepRef_Resolver "GIT"

-- | Developer Connect resolver.
pattern StepRef_Resolver_DEVELOPERCONNECT :: StepRef_Resolver
pattern StepRef_Resolver_DEVELOPERCONNECT = StepRef_Resolver "DEVELOPER_CONNECT"

-- | Default resolver.
pattern StepRef_Resolver_Default :: StepRef_Resolver
pattern StepRef_Resolver_Default = StepRef_Resolver "DEFAULT"

{-# COMPLETE
  StepRef_Resolver_RESOLVERNAMEUNSPECIFIED,
  StepRef_Resolver_Bundles,
  StepRef_Resolver_GCBREPO,
  StepRef_Resolver_Git,
  StepRef_Resolver_DEVELOPERCONNECT,
  StepRef_Resolver_Default,
  StepRef_Resolver
  #-}

-- | Resolver is the name of the resolver that should perform resolution of the referenced Tekton resource.
newtype TaskRef_Resolver = TaskRef_Resolver {fromTaskRef_Resolver :: Core.Text}
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

-- | Default enum type; should not be used.
pattern TaskRef_Resolver_RESOLVERNAMEUNSPECIFIED :: TaskRef_Resolver
pattern TaskRef_Resolver_RESOLVERNAMEUNSPECIFIED = TaskRef_Resolver "RESOLVER_NAME_UNSPECIFIED"

-- | Bundles resolver. https:\/\/tekton.dev\/docs\/pipelines\/bundle-resolver\/
pattern TaskRef_Resolver_Bundles :: TaskRef_Resolver
pattern TaskRef_Resolver_Bundles = TaskRef_Resolver "BUNDLES"

-- | GCB repo resolver.
pattern TaskRef_Resolver_GCBREPO :: TaskRef_Resolver
pattern TaskRef_Resolver_GCBREPO = TaskRef_Resolver "GCB_REPO"

-- | Simple Git resolver. https:\/\/tekton.dev\/docs\/pipelines\/git-resolver\/
pattern TaskRef_Resolver_Git :: TaskRef_Resolver
pattern TaskRef_Resolver_Git = TaskRef_Resolver "GIT"

-- | Developer Connect resolver.
pattern TaskRef_Resolver_DEVELOPERCONNECT :: TaskRef_Resolver
pattern TaskRef_Resolver_DEVELOPERCONNECT = TaskRef_Resolver "DEVELOPER_CONNECT"

-- | Default resolver.
pattern TaskRef_Resolver_Default :: TaskRef_Resolver
pattern TaskRef_Resolver_Default = TaskRef_Resolver "DEFAULT"

{-# COMPLETE
  TaskRef_Resolver_RESOLVERNAMEUNSPECIFIED,
  TaskRef_Resolver_Bundles,
  TaskRef_Resolver_GCBREPO,
  TaskRef_Resolver_Git,
  TaskRef_Resolver_DEVELOPERCONNECT,
  TaskRef_Resolver_Default,
  TaskRef_Resolver
  #-}

-- | The type of data that the result holds.
newtype TaskResult_Type = TaskResult_Type {fromTaskResult_Type :: Core.Text}
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

-- | Default enum type; should not be used.
pattern TaskResult_Type_TYPEUNSPECIFIED :: TaskResult_Type
pattern TaskResult_Type_TYPEUNSPECIFIED = TaskResult_Type "TYPE_UNSPECIFIED"

-- | Default
pattern TaskResult_Type_String :: TaskResult_Type
pattern TaskResult_Type_String = TaskResult_Type "STRING"

-- | Array type
pattern TaskResult_Type_Array :: TaskResult_Type
pattern TaskResult_Type_Array = TaskResult_Type "ARRAY"

-- | Object type
pattern TaskResult_Type_Object :: TaskResult_Type
pattern TaskResult_Type_Object = TaskResult_Type "OBJECT"

{-# COMPLETE
  TaskResult_Type_TYPEUNSPECIFIED,
  TaskResult_Type_String,
  TaskResult_Type_Array,
  TaskResult_Type_Object,
  TaskResult_Type
  #-}

newtype TaskSpec_ManagedSidecarsItem = TaskSpec_ManagedSidecarsItem {fromTaskSpec_ManagedSidecarsItem :: Core.Text}
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

-- | Default enum type; should not be used.
pattern TaskSpec_ManagedSidecarsItem_MANAGEDSIDECARUNSPECIFIED :: TaskSpec_ManagedSidecarsItem
pattern TaskSpec_ManagedSidecarsItem_MANAGEDSIDECARUNSPECIFIED = TaskSpec_ManagedSidecarsItem "MANAGED_SIDECAR_UNSPECIFIED"

-- | Sidecar for a privileged docker daemon.
pattern TaskSpec_ManagedSidecarsItem_PRIVILEGEDDOCKERDAEMON :: TaskSpec_ManagedSidecarsItem
pattern TaskSpec_ManagedSidecarsItem_PRIVILEGEDDOCKERDAEMON = TaskSpec_ManagedSidecarsItem "PRIVILEGED_DOCKER_DAEMON"

{-# COMPLETE
  TaskSpec_ManagedSidecarsItem_MANAGEDSIDECARUNSPECIFIED,
  TaskSpec_ManagedSidecarsItem_PRIVILEGEDDOCKERDAEMON,
  TaskSpec_ManagedSidecarsItem
  #-}

-- | Operator that represents an Input\'s relationship to the values
newtype WhenExpression_ExpressionOperator = WhenExpression_ExpressionOperator {fromWhenExpression_ExpressionOperator :: Core.Text}
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

-- | Default enum type; should not be used.
pattern WhenExpression_ExpressionOperator_EXPRESSIONOPERATORUNSPECIFIED :: WhenExpression_ExpressionOperator
pattern WhenExpression_ExpressionOperator_EXPRESSIONOPERATORUNSPECIFIED = WhenExpression_ExpressionOperator "EXPRESSION_OPERATOR_UNSPECIFIED"

-- | Input is in values.
pattern WhenExpression_ExpressionOperator_IN :: WhenExpression_ExpressionOperator
pattern WhenExpression_ExpressionOperator_IN = WhenExpression_ExpressionOperator "IN"

-- | Input is not in values.
pattern WhenExpression_ExpressionOperator_NOTIN :: WhenExpression_ExpressionOperator
pattern WhenExpression_ExpressionOperator_NOTIN = WhenExpression_ExpressionOperator "NOT_IN"

{-# COMPLETE
  WhenExpression_ExpressionOperator_EXPRESSIONOPERATORUNSPECIFIED,
  WhenExpression_ExpressionOperator_IN,
  WhenExpression_ExpressionOperator_NOTIN,
  WhenExpression_ExpressionOperator
  #-}

-- | Type of refs to fetch
newtype ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType = ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType {fromProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType :: Core.Text}
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

-- | No type specified.
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_REFTYPEUNSPECIFIED :: ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_REFTYPEUNSPECIFIED = ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType "REF_TYPE_UNSPECIFIED"

-- | To fetch tags.
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Tag :: ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Tag = ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType "TAG"

-- | To fetch branches.
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Branch :: ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
pattern ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Branch = ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType "BRANCH"

{-# COMPLETE
  ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_REFTYPEUNSPECIFIED,
  ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Tag,
  ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType_Branch,
  ProjectsLocationsConnectionsRepositoriesFetchGitRefsRefType
  #-}

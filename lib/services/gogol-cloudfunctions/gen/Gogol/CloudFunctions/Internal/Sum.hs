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
-- Module      : Gogol.CloudFunctions.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudFunctions.Internal.Sum
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

    -- * BuildConfig_DockerRegistry
    BuildConfig_DockerRegistry
      ( BuildConfig_DockerRegistry_DOCKERREGISTRYUNSPECIFIED,
        BuildConfig_DockerRegistry_CONTAINERREGISTRY,
        BuildConfig_DockerRegistry_ARTIFACTREGISTRY,
        ..
      ),

    -- * EventTrigger_RetryPolicy
    EventTrigger_RetryPolicy
      ( EventTrigger_RetryPolicy_RETRYPOLICYUNSPECIFIED,
        EventTrigger_RetryPolicy_RETRYPOLICYDONOTRETRY,
        EventTrigger_RetryPolicy_RETRYPOLICYRETRY,
        ..
      ),

    -- * Function_Environment
    Function_Environment
      ( Function_Environment_ENVIRONMENTUNSPECIFIED,
        Function_Environment_GEN_1,
        Function_Environment_GEN_2,
        ..
      ),

    -- * Function_State
    Function_State
      ( Function_State_STATEUNSPECIFIED,
        Function_State_Active,
        Function_State_Failed,
        Function_State_Deploying,
        Function_State_Deleting,
        Function_State_Unknown,
        ..
      ),

    -- * GoogleCloudFunctionsV2Stage_Name
    GoogleCloudFunctionsV2Stage_Name
      ( GoogleCloudFunctionsV2Stage_Name_NAMEUNSPECIFIED,
        GoogleCloudFunctionsV2Stage_Name_ARTIFACTREGISTRY,
        GoogleCloudFunctionsV2Stage_Name_Build,
        GoogleCloudFunctionsV2Stage_Name_Service,
        GoogleCloudFunctionsV2Stage_Name_Trigger,
        GoogleCloudFunctionsV2Stage_Name_SERVICEROLLBACK,
        GoogleCloudFunctionsV2Stage_Name_TRIGGERROLLBACK,
        ..
      ),

    -- * GoogleCloudFunctionsV2Stage_State
    GoogleCloudFunctionsV2Stage_State
      ( GoogleCloudFunctionsV2Stage_State_STATEUNSPECIFIED,
        GoogleCloudFunctionsV2Stage_State_NOTSTARTED,
        GoogleCloudFunctionsV2Stage_State_INPROGRESS,
        GoogleCloudFunctionsV2Stage_State_Complete,
        ..
      ),

    -- * GoogleCloudFunctionsV2StateMessage_Severity
    GoogleCloudFunctionsV2StateMessage_Severity
      ( GoogleCloudFunctionsV2StateMessage_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudFunctionsV2StateMessage_Severity_Error',
        GoogleCloudFunctionsV2StateMessage_Severity_Warning,
        GoogleCloudFunctionsV2StateMessage_Severity_Info,
        ..
      ),

    -- * GoogleCloudFunctionsV2alphaStage_Name
    GoogleCloudFunctionsV2alphaStage_Name
      ( GoogleCloudFunctionsV2alphaStage_Name_NAMEUNSPECIFIED,
        GoogleCloudFunctionsV2alphaStage_Name_ARTIFACTREGISTRY,
        GoogleCloudFunctionsV2alphaStage_Name_Build,
        GoogleCloudFunctionsV2alphaStage_Name_Service,
        GoogleCloudFunctionsV2alphaStage_Name_Trigger,
        GoogleCloudFunctionsV2alphaStage_Name_SERVICEROLLBACK,
        GoogleCloudFunctionsV2alphaStage_Name_TRIGGERROLLBACK,
        ..
      ),

    -- * GoogleCloudFunctionsV2alphaStage_State
    GoogleCloudFunctionsV2alphaStage_State
      ( GoogleCloudFunctionsV2alphaStage_State_STATEUNSPECIFIED,
        GoogleCloudFunctionsV2alphaStage_State_NOTSTARTED,
        GoogleCloudFunctionsV2alphaStage_State_INPROGRESS,
        GoogleCloudFunctionsV2alphaStage_State_Complete,
        ..
      ),

    -- * GoogleCloudFunctionsV2alphaStateMessage_Severity
    GoogleCloudFunctionsV2alphaStateMessage_Severity
      ( GoogleCloudFunctionsV2alphaStateMessage_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudFunctionsV2alphaStateMessage_Severity_Error',
        GoogleCloudFunctionsV2alphaStateMessage_Severity_Warning,
        GoogleCloudFunctionsV2alphaStateMessage_Severity_Info,
        ..
      ),

    -- * GoogleCloudFunctionsV2betaStage_Name
    GoogleCloudFunctionsV2betaStage_Name
      ( GoogleCloudFunctionsV2betaStage_Name_NAMEUNSPECIFIED,
        GoogleCloudFunctionsV2betaStage_Name_ARTIFACTREGISTRY,
        GoogleCloudFunctionsV2betaStage_Name_Build,
        GoogleCloudFunctionsV2betaStage_Name_Service,
        GoogleCloudFunctionsV2betaStage_Name_Trigger,
        GoogleCloudFunctionsV2betaStage_Name_SERVICEROLLBACK,
        GoogleCloudFunctionsV2betaStage_Name_TRIGGERROLLBACK,
        ..
      ),

    -- * GoogleCloudFunctionsV2betaStage_State
    GoogleCloudFunctionsV2betaStage_State
      ( GoogleCloudFunctionsV2betaStage_State_STATEUNSPECIFIED,
        GoogleCloudFunctionsV2betaStage_State_NOTSTARTED,
        GoogleCloudFunctionsV2betaStage_State_INPROGRESS,
        GoogleCloudFunctionsV2betaStage_State_Complete,
        ..
      ),

    -- * GoogleCloudFunctionsV2betaStateMessage_Severity
    GoogleCloudFunctionsV2betaStateMessage_Severity
      ( GoogleCloudFunctionsV2betaStateMessage_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudFunctionsV2betaStateMessage_Severity_Error',
        GoogleCloudFunctionsV2betaStateMessage_Severity_Warning,
        GoogleCloudFunctionsV2betaStateMessage_Severity_Info,
        ..
      ),

    -- * OperationMetadataV1_Type
    OperationMetadataV1_Type
      ( OperationMetadataV1_Type_OPERATIONUNSPECIFIED,
        OperationMetadataV1_Type_CREATEFUNCTION,
        OperationMetadataV1_Type_UPDATEFUNCTION,
        OperationMetadataV1_Type_DELETEFUNCTION,
        ..
      ),

    -- * Runtime_Environment
    Runtime_Environment
      ( Runtime_Environment_ENVIRONMENTUNSPECIFIED,
        Runtime_Environment_GEN_1,
        Runtime_Environment_GEN_2,
        ..
      ),

    -- * Runtime_Stage
    Runtime_Stage
      ( Runtime_Stage_RUNTIMESTAGEUNSPECIFIED,
        Runtime_Stage_Development,
        Runtime_Stage_Alpha,
        Runtime_Stage_Beta,
        Runtime_Stage_GA,
        Runtime_Stage_Deprecated,
        Runtime_Stage_Decommissioned,
        ..
      ),

    -- * ServiceConfig_IngressSettings
    ServiceConfig_IngressSettings
      ( ServiceConfig_IngressSettings_INGRESSSETTINGSUNSPECIFIED,
        ServiceConfig_IngressSettings_ALLOWALL,
        ServiceConfig_IngressSettings_ALLOWINTERNALONLY,
        ServiceConfig_IngressSettings_ALLOWINTERNALANDGCLB,
        ..
      ),

    -- * ServiceConfig_SecurityLevel
    ServiceConfig_SecurityLevel
      ( ServiceConfig_SecurityLevel_SECURITYLEVELUNSPECIFIED,
        ServiceConfig_SecurityLevel_SECUREALWAYS,
        ServiceConfig_SecurityLevel_SECUREOPTIONAL,
        ..
      ),

    -- * ServiceConfig_VpcConnectorEgressSettings
    ServiceConfig_VpcConnectorEgressSettings
      ( ServiceConfig_VpcConnectorEgressSettings_VPCCONNECTOREGRESSSETTINGSUNSPECIFIED,
        ServiceConfig_VpcConnectorEgressSettings_PRIVATERANGESONLY,
        ServiceConfig_VpcConnectorEgressSettings_ALLTRAFFIC,
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

-- | Optional. Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. If @docker_repository@ field is specified, this field will be automatically set as @ARTIFACT_REGISTRY@. If unspecified, it currently defaults to @CONTAINER_REGISTRY@. This field may be overridden by the backend for eligible deployments.
newtype BuildConfig_DockerRegistry = BuildConfig_DockerRegistry {fromBuildConfig_DockerRegistry :: Core.Text}
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

-- | Unspecified.
pattern BuildConfig_DockerRegistry_DOCKERREGISTRYUNSPECIFIED :: BuildConfig_DockerRegistry
pattern BuildConfig_DockerRegistry_DOCKERREGISTRYUNSPECIFIED = BuildConfig_DockerRegistry "DOCKER_REGISTRY_UNSPECIFIED"

-- | Docker images will be stored in multi-regional Container Registry repositories named @gcf@.
pattern BuildConfig_DockerRegistry_CONTAINERREGISTRY :: BuildConfig_DockerRegistry
pattern BuildConfig_DockerRegistry_CONTAINERREGISTRY = BuildConfig_DockerRegistry "CONTAINER_REGISTRY"

-- | Docker images will be stored in regional Artifact Registry repositories. By default, GCF will create and use repositories named @gcf-artifacts@ in every region in which a function is deployed. But the repository to use can also be specified by the user using the @docker_repository@ field.
pattern BuildConfig_DockerRegistry_ARTIFACTREGISTRY :: BuildConfig_DockerRegistry
pattern BuildConfig_DockerRegistry_ARTIFACTREGISTRY = BuildConfig_DockerRegistry "ARTIFACT_REGISTRY"

{-# COMPLETE
  BuildConfig_DockerRegistry_DOCKERREGISTRYUNSPECIFIED,
  BuildConfig_DockerRegistry_CONTAINERREGISTRY,
  BuildConfig_DockerRegistry_ARTIFACTREGISTRY,
  BuildConfig_DockerRegistry
  #-}

-- | Optional. If unset, then defaults to ignoring failures (i.e. not retrying them).
newtype EventTrigger_RetryPolicy = EventTrigger_RetryPolicy {fromEventTrigger_RetryPolicy :: Core.Text}
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

-- | Not specified.
pattern EventTrigger_RetryPolicy_RETRYPOLICYUNSPECIFIED :: EventTrigger_RetryPolicy
pattern EventTrigger_RetryPolicy_RETRYPOLICYUNSPECIFIED = EventTrigger_RetryPolicy "RETRY_POLICY_UNSPECIFIED"

-- | Do not retry.
pattern EventTrigger_RetryPolicy_RETRYPOLICYDONOTRETRY :: EventTrigger_RetryPolicy
pattern EventTrigger_RetryPolicy_RETRYPOLICYDONOTRETRY = EventTrigger_RetryPolicy "RETRY_POLICY_DO_NOT_RETRY"

-- | Retry on any failure, retry up to 7 days with an exponential backoff (capped at 10 seconds).
pattern EventTrigger_RetryPolicy_RETRYPOLICYRETRY :: EventTrigger_RetryPolicy
pattern EventTrigger_RetryPolicy_RETRYPOLICYRETRY = EventTrigger_RetryPolicy "RETRY_POLICY_RETRY"

{-# COMPLETE
  EventTrigger_RetryPolicy_RETRYPOLICYUNSPECIFIED,
  EventTrigger_RetryPolicy_RETRYPOLICYDONOTRETRY,
  EventTrigger_RetryPolicy_RETRYPOLICYRETRY,
  EventTrigger_RetryPolicy
  #-}

-- | Describe whether the function is 1st Gen or 2nd Gen.
newtype Function_Environment = Function_Environment {fromFunction_Environment :: Core.Text}
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

-- | Unspecified
pattern Function_Environment_ENVIRONMENTUNSPECIFIED :: Function_Environment
pattern Function_Environment_ENVIRONMENTUNSPECIFIED = Function_Environment "ENVIRONMENT_UNSPECIFIED"

-- | Gen 1
pattern Function_Environment_GEN_1 :: Function_Environment
pattern Function_Environment_GEN_1 = Function_Environment "GEN_1"

-- | Gen 2
pattern Function_Environment_GEN_2 :: Function_Environment
pattern Function_Environment_GEN_2 = Function_Environment "GEN_2"

{-# COMPLETE
  Function_Environment_ENVIRONMENTUNSPECIFIED,
  Function_Environment_GEN_1,
  Function_Environment_GEN_2,
  Function_Environment
  #-}

-- | Output only. State of the function.
newtype Function_State = Function_State {fromFunction_State :: Core.Text}
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

-- | Not specified. Invalid state.
pattern Function_State_STATEUNSPECIFIED :: Function_State
pattern Function_State_STATEUNSPECIFIED = Function_State "STATE_UNSPECIFIED"

-- | Function has been successfully deployed and is serving.
pattern Function_State_Active :: Function_State
pattern Function_State_Active = Function_State "ACTIVE"

-- | Function deployment failed and the function is not serving.
pattern Function_State_Failed :: Function_State
pattern Function_State_Failed = Function_State "FAILED"

-- | Function is being created or updated.
pattern Function_State_Deploying :: Function_State
pattern Function_State_Deploying = Function_State "DEPLOYING"

-- | Function is being deleted.
pattern Function_State_Deleting :: Function_State
pattern Function_State_Deleting = Function_State "DELETING"

-- | Function deployment failed and the function serving state is undefined. The function should be updated or deleted to move it out of this state.
pattern Function_State_Unknown :: Function_State
pattern Function_State_Unknown = Function_State "UNKNOWN"

{-# COMPLETE
  Function_State_STATEUNSPECIFIED,
  Function_State_Active,
  Function_State_Failed,
  Function_State_Deploying,
  Function_State_Deleting,
  Function_State_Unknown,
  Function_State
  #-}

-- | Name of the Stage. This will be unique for each Stage.
newtype GoogleCloudFunctionsV2Stage_Name = GoogleCloudFunctionsV2Stage_Name {fromGoogleCloudFunctionsV2Stage_Name :: Core.Text}
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

-- | Not specified. Invalid name.
pattern GoogleCloudFunctionsV2Stage_Name_NAMEUNSPECIFIED :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_NAMEUNSPECIFIED = GoogleCloudFunctionsV2Stage_Name "NAME_UNSPECIFIED"

-- | Artifact Regsitry Stage
pattern GoogleCloudFunctionsV2Stage_Name_ARTIFACTREGISTRY :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_ARTIFACTREGISTRY = GoogleCloudFunctionsV2Stage_Name "ARTIFACT_REGISTRY"

-- | Build Stage
pattern GoogleCloudFunctionsV2Stage_Name_Build :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_Build = GoogleCloudFunctionsV2Stage_Name "BUILD"

-- | Service Stage
pattern GoogleCloudFunctionsV2Stage_Name_Service :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_Service = GoogleCloudFunctionsV2Stage_Name "SERVICE"

-- | Trigger Stage
pattern GoogleCloudFunctionsV2Stage_Name_Trigger :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_Trigger = GoogleCloudFunctionsV2Stage_Name "TRIGGER"

-- | Service Rollback Stage
pattern GoogleCloudFunctionsV2Stage_Name_SERVICEROLLBACK :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_SERVICEROLLBACK = GoogleCloudFunctionsV2Stage_Name "SERVICE_ROLLBACK"

-- | Trigger Rollback Stage
pattern GoogleCloudFunctionsV2Stage_Name_TRIGGERROLLBACK :: GoogleCloudFunctionsV2Stage_Name
pattern GoogleCloudFunctionsV2Stage_Name_TRIGGERROLLBACK = GoogleCloudFunctionsV2Stage_Name "TRIGGER_ROLLBACK"

{-# COMPLETE
  GoogleCloudFunctionsV2Stage_Name_NAMEUNSPECIFIED,
  GoogleCloudFunctionsV2Stage_Name_ARTIFACTREGISTRY,
  GoogleCloudFunctionsV2Stage_Name_Build,
  GoogleCloudFunctionsV2Stage_Name_Service,
  GoogleCloudFunctionsV2Stage_Name_Trigger,
  GoogleCloudFunctionsV2Stage_Name_SERVICEROLLBACK,
  GoogleCloudFunctionsV2Stage_Name_TRIGGERROLLBACK,
  GoogleCloudFunctionsV2Stage_Name
  #-}

-- | Current state of the Stage
newtype GoogleCloudFunctionsV2Stage_State = GoogleCloudFunctionsV2Stage_State {fromGoogleCloudFunctionsV2Stage_State :: Core.Text}
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

-- | Not specified. Invalid state.
pattern GoogleCloudFunctionsV2Stage_State_STATEUNSPECIFIED :: GoogleCloudFunctionsV2Stage_State
pattern GoogleCloudFunctionsV2Stage_State_STATEUNSPECIFIED = GoogleCloudFunctionsV2Stage_State "STATE_UNSPECIFIED"

-- | Stage has not started.
pattern GoogleCloudFunctionsV2Stage_State_NOTSTARTED :: GoogleCloudFunctionsV2Stage_State
pattern GoogleCloudFunctionsV2Stage_State_NOTSTARTED = GoogleCloudFunctionsV2Stage_State "NOT_STARTED"

-- | Stage is in progress.
pattern GoogleCloudFunctionsV2Stage_State_INPROGRESS :: GoogleCloudFunctionsV2Stage_State
pattern GoogleCloudFunctionsV2Stage_State_INPROGRESS = GoogleCloudFunctionsV2Stage_State "IN_PROGRESS"

-- | Stage has completed.
pattern GoogleCloudFunctionsV2Stage_State_Complete :: GoogleCloudFunctionsV2Stage_State
pattern GoogleCloudFunctionsV2Stage_State_Complete = GoogleCloudFunctionsV2Stage_State "COMPLETE"

{-# COMPLETE
  GoogleCloudFunctionsV2Stage_State_STATEUNSPECIFIED,
  GoogleCloudFunctionsV2Stage_State_NOTSTARTED,
  GoogleCloudFunctionsV2Stage_State_INPROGRESS,
  GoogleCloudFunctionsV2Stage_State_Complete,
  GoogleCloudFunctionsV2Stage_State
  #-}

-- | Severity of the state message.
newtype GoogleCloudFunctionsV2StateMessage_Severity = GoogleCloudFunctionsV2StateMessage_Severity {fromGoogleCloudFunctionsV2StateMessage_Severity :: Core.Text}
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

-- | Not specified. Invalid severity.
pattern GoogleCloudFunctionsV2StateMessage_Severity_SEVERITYUNSPECIFIED :: GoogleCloudFunctionsV2StateMessage_Severity
pattern GoogleCloudFunctionsV2StateMessage_Severity_SEVERITYUNSPECIFIED = GoogleCloudFunctionsV2StateMessage_Severity "SEVERITY_UNSPECIFIED"

-- | ERROR-level severity.
pattern GoogleCloudFunctionsV2StateMessage_Severity_Error' :: GoogleCloudFunctionsV2StateMessage_Severity
pattern GoogleCloudFunctionsV2StateMessage_Severity_Error' = GoogleCloudFunctionsV2StateMessage_Severity "ERROR"

-- | WARNING-level severity.
pattern GoogleCloudFunctionsV2StateMessage_Severity_Warning :: GoogleCloudFunctionsV2StateMessage_Severity
pattern GoogleCloudFunctionsV2StateMessage_Severity_Warning = GoogleCloudFunctionsV2StateMessage_Severity "WARNING"

-- | INFO-level severity.
pattern GoogleCloudFunctionsV2StateMessage_Severity_Info :: GoogleCloudFunctionsV2StateMessage_Severity
pattern GoogleCloudFunctionsV2StateMessage_Severity_Info = GoogleCloudFunctionsV2StateMessage_Severity "INFO"

{-# COMPLETE
  GoogleCloudFunctionsV2StateMessage_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudFunctionsV2StateMessage_Severity_Error',
  GoogleCloudFunctionsV2StateMessage_Severity_Warning,
  GoogleCloudFunctionsV2StateMessage_Severity_Info,
  GoogleCloudFunctionsV2StateMessage_Severity
  #-}

-- | Name of the Stage. This will be unique for each Stage.
newtype GoogleCloudFunctionsV2alphaStage_Name = GoogleCloudFunctionsV2alphaStage_Name {fromGoogleCloudFunctionsV2alphaStage_Name :: Core.Text}
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

-- | Not specified. Invalid name.
pattern GoogleCloudFunctionsV2alphaStage_Name_NAMEUNSPECIFIED :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_NAMEUNSPECIFIED = GoogleCloudFunctionsV2alphaStage_Name "NAME_UNSPECIFIED"

-- | Artifact Regsitry Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_ARTIFACTREGISTRY :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_ARTIFACTREGISTRY = GoogleCloudFunctionsV2alphaStage_Name "ARTIFACT_REGISTRY"

-- | Build Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_Build :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_Build = GoogleCloudFunctionsV2alphaStage_Name "BUILD"

-- | Service Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_Service :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_Service = GoogleCloudFunctionsV2alphaStage_Name "SERVICE"

-- | Trigger Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_Trigger :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_Trigger = GoogleCloudFunctionsV2alphaStage_Name "TRIGGER"

-- | Service Rollback Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_SERVICEROLLBACK :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_SERVICEROLLBACK = GoogleCloudFunctionsV2alphaStage_Name "SERVICE_ROLLBACK"

-- | Trigger Rollback Stage
pattern GoogleCloudFunctionsV2alphaStage_Name_TRIGGERROLLBACK :: GoogleCloudFunctionsV2alphaStage_Name
pattern GoogleCloudFunctionsV2alphaStage_Name_TRIGGERROLLBACK = GoogleCloudFunctionsV2alphaStage_Name "TRIGGER_ROLLBACK"

{-# COMPLETE
  GoogleCloudFunctionsV2alphaStage_Name_NAMEUNSPECIFIED,
  GoogleCloudFunctionsV2alphaStage_Name_ARTIFACTREGISTRY,
  GoogleCloudFunctionsV2alphaStage_Name_Build,
  GoogleCloudFunctionsV2alphaStage_Name_Service,
  GoogleCloudFunctionsV2alphaStage_Name_Trigger,
  GoogleCloudFunctionsV2alphaStage_Name_SERVICEROLLBACK,
  GoogleCloudFunctionsV2alphaStage_Name_TRIGGERROLLBACK,
  GoogleCloudFunctionsV2alphaStage_Name
  #-}

-- | Current state of the Stage
newtype GoogleCloudFunctionsV2alphaStage_State = GoogleCloudFunctionsV2alphaStage_State {fromGoogleCloudFunctionsV2alphaStage_State :: Core.Text}
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

-- | Not specified. Invalid state.
pattern GoogleCloudFunctionsV2alphaStage_State_STATEUNSPECIFIED :: GoogleCloudFunctionsV2alphaStage_State
pattern GoogleCloudFunctionsV2alphaStage_State_STATEUNSPECIFIED = GoogleCloudFunctionsV2alphaStage_State "STATE_UNSPECIFIED"

-- | Stage has not started.
pattern GoogleCloudFunctionsV2alphaStage_State_NOTSTARTED :: GoogleCloudFunctionsV2alphaStage_State
pattern GoogleCloudFunctionsV2alphaStage_State_NOTSTARTED = GoogleCloudFunctionsV2alphaStage_State "NOT_STARTED"

-- | Stage is in progress.
pattern GoogleCloudFunctionsV2alphaStage_State_INPROGRESS :: GoogleCloudFunctionsV2alphaStage_State
pattern GoogleCloudFunctionsV2alphaStage_State_INPROGRESS = GoogleCloudFunctionsV2alphaStage_State "IN_PROGRESS"

-- | Stage has completed.
pattern GoogleCloudFunctionsV2alphaStage_State_Complete :: GoogleCloudFunctionsV2alphaStage_State
pattern GoogleCloudFunctionsV2alphaStage_State_Complete = GoogleCloudFunctionsV2alphaStage_State "COMPLETE"

{-# COMPLETE
  GoogleCloudFunctionsV2alphaStage_State_STATEUNSPECIFIED,
  GoogleCloudFunctionsV2alphaStage_State_NOTSTARTED,
  GoogleCloudFunctionsV2alphaStage_State_INPROGRESS,
  GoogleCloudFunctionsV2alphaStage_State_Complete,
  GoogleCloudFunctionsV2alphaStage_State
  #-}

-- | Severity of the state message.
newtype GoogleCloudFunctionsV2alphaStateMessage_Severity = GoogleCloudFunctionsV2alphaStateMessage_Severity {fromGoogleCloudFunctionsV2alphaStateMessage_Severity :: Core.Text}
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

-- | Not specified. Invalid severity.
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_SEVERITYUNSPECIFIED :: GoogleCloudFunctionsV2alphaStateMessage_Severity
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_SEVERITYUNSPECIFIED = GoogleCloudFunctionsV2alphaStateMessage_Severity "SEVERITY_UNSPECIFIED"

-- | ERROR-level severity.
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Error' :: GoogleCloudFunctionsV2alphaStateMessage_Severity
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Error' = GoogleCloudFunctionsV2alphaStateMessage_Severity "ERROR"

-- | WARNING-level severity.
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Warning :: GoogleCloudFunctionsV2alphaStateMessage_Severity
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Warning = GoogleCloudFunctionsV2alphaStateMessage_Severity "WARNING"

-- | INFO-level severity.
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Info :: GoogleCloudFunctionsV2alphaStateMessage_Severity
pattern GoogleCloudFunctionsV2alphaStateMessage_Severity_Info = GoogleCloudFunctionsV2alphaStateMessage_Severity "INFO"

{-# COMPLETE
  GoogleCloudFunctionsV2alphaStateMessage_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudFunctionsV2alphaStateMessage_Severity_Error',
  GoogleCloudFunctionsV2alphaStateMessage_Severity_Warning,
  GoogleCloudFunctionsV2alphaStateMessage_Severity_Info,
  GoogleCloudFunctionsV2alphaStateMessage_Severity
  #-}

-- | Name of the Stage. This will be unique for each Stage.
newtype GoogleCloudFunctionsV2betaStage_Name = GoogleCloudFunctionsV2betaStage_Name {fromGoogleCloudFunctionsV2betaStage_Name :: Core.Text}
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

-- | Not specified. Invalid name.
pattern GoogleCloudFunctionsV2betaStage_Name_NAMEUNSPECIFIED :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_NAMEUNSPECIFIED = GoogleCloudFunctionsV2betaStage_Name "NAME_UNSPECIFIED"

-- | Artifact Regsitry Stage
pattern GoogleCloudFunctionsV2betaStage_Name_ARTIFACTREGISTRY :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_ARTIFACTREGISTRY = GoogleCloudFunctionsV2betaStage_Name "ARTIFACT_REGISTRY"

-- | Build Stage
pattern GoogleCloudFunctionsV2betaStage_Name_Build :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_Build = GoogleCloudFunctionsV2betaStage_Name "BUILD"

-- | Service Stage
pattern GoogleCloudFunctionsV2betaStage_Name_Service :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_Service = GoogleCloudFunctionsV2betaStage_Name "SERVICE"

-- | Trigger Stage
pattern GoogleCloudFunctionsV2betaStage_Name_Trigger :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_Trigger = GoogleCloudFunctionsV2betaStage_Name "TRIGGER"

-- | Service Rollback Stage
pattern GoogleCloudFunctionsV2betaStage_Name_SERVICEROLLBACK :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_SERVICEROLLBACK = GoogleCloudFunctionsV2betaStage_Name "SERVICE_ROLLBACK"

-- | Trigger Rollback Stage
pattern GoogleCloudFunctionsV2betaStage_Name_TRIGGERROLLBACK :: GoogleCloudFunctionsV2betaStage_Name
pattern GoogleCloudFunctionsV2betaStage_Name_TRIGGERROLLBACK = GoogleCloudFunctionsV2betaStage_Name "TRIGGER_ROLLBACK"

{-# COMPLETE
  GoogleCloudFunctionsV2betaStage_Name_NAMEUNSPECIFIED,
  GoogleCloudFunctionsV2betaStage_Name_ARTIFACTREGISTRY,
  GoogleCloudFunctionsV2betaStage_Name_Build,
  GoogleCloudFunctionsV2betaStage_Name_Service,
  GoogleCloudFunctionsV2betaStage_Name_Trigger,
  GoogleCloudFunctionsV2betaStage_Name_SERVICEROLLBACK,
  GoogleCloudFunctionsV2betaStage_Name_TRIGGERROLLBACK,
  GoogleCloudFunctionsV2betaStage_Name
  #-}

-- | Current state of the Stage
newtype GoogleCloudFunctionsV2betaStage_State = GoogleCloudFunctionsV2betaStage_State {fromGoogleCloudFunctionsV2betaStage_State :: Core.Text}
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

-- | Not specified. Invalid state.
pattern GoogleCloudFunctionsV2betaStage_State_STATEUNSPECIFIED :: GoogleCloudFunctionsV2betaStage_State
pattern GoogleCloudFunctionsV2betaStage_State_STATEUNSPECIFIED = GoogleCloudFunctionsV2betaStage_State "STATE_UNSPECIFIED"

-- | Stage has not started.
pattern GoogleCloudFunctionsV2betaStage_State_NOTSTARTED :: GoogleCloudFunctionsV2betaStage_State
pattern GoogleCloudFunctionsV2betaStage_State_NOTSTARTED = GoogleCloudFunctionsV2betaStage_State "NOT_STARTED"

-- | Stage is in progress.
pattern GoogleCloudFunctionsV2betaStage_State_INPROGRESS :: GoogleCloudFunctionsV2betaStage_State
pattern GoogleCloudFunctionsV2betaStage_State_INPROGRESS = GoogleCloudFunctionsV2betaStage_State "IN_PROGRESS"

-- | Stage has completed.
pattern GoogleCloudFunctionsV2betaStage_State_Complete :: GoogleCloudFunctionsV2betaStage_State
pattern GoogleCloudFunctionsV2betaStage_State_Complete = GoogleCloudFunctionsV2betaStage_State "COMPLETE"

{-# COMPLETE
  GoogleCloudFunctionsV2betaStage_State_STATEUNSPECIFIED,
  GoogleCloudFunctionsV2betaStage_State_NOTSTARTED,
  GoogleCloudFunctionsV2betaStage_State_INPROGRESS,
  GoogleCloudFunctionsV2betaStage_State_Complete,
  GoogleCloudFunctionsV2betaStage_State
  #-}

-- | Severity of the state message.
newtype GoogleCloudFunctionsV2betaStateMessage_Severity = GoogleCloudFunctionsV2betaStateMessage_Severity {fromGoogleCloudFunctionsV2betaStateMessage_Severity :: Core.Text}
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

-- | Not specified. Invalid severity.
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_SEVERITYUNSPECIFIED :: GoogleCloudFunctionsV2betaStateMessage_Severity
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_SEVERITYUNSPECIFIED = GoogleCloudFunctionsV2betaStateMessage_Severity "SEVERITY_UNSPECIFIED"

-- | ERROR-level severity.
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Error' :: GoogleCloudFunctionsV2betaStateMessage_Severity
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Error' = GoogleCloudFunctionsV2betaStateMessage_Severity "ERROR"

-- | WARNING-level severity.
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Warning :: GoogleCloudFunctionsV2betaStateMessage_Severity
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Warning = GoogleCloudFunctionsV2betaStateMessage_Severity "WARNING"

-- | INFO-level severity.
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Info :: GoogleCloudFunctionsV2betaStateMessage_Severity
pattern GoogleCloudFunctionsV2betaStateMessage_Severity_Info = GoogleCloudFunctionsV2betaStateMessage_Severity "INFO"

{-# COMPLETE
  GoogleCloudFunctionsV2betaStateMessage_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudFunctionsV2betaStateMessage_Severity_Error',
  GoogleCloudFunctionsV2betaStateMessage_Severity_Warning,
  GoogleCloudFunctionsV2betaStateMessage_Severity_Info,
  GoogleCloudFunctionsV2betaStateMessage_Severity
  #-}

-- | Type of operation.
newtype OperationMetadataV1_Type = OperationMetadataV1_Type {fromOperationMetadataV1_Type :: Core.Text}
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

-- | Unknown operation type.
pattern OperationMetadataV1_Type_OPERATIONUNSPECIFIED :: OperationMetadataV1_Type
pattern OperationMetadataV1_Type_OPERATIONUNSPECIFIED = OperationMetadataV1_Type "OPERATION_UNSPECIFIED"

-- | Triggered by CreateFunction call
pattern OperationMetadataV1_Type_CREATEFUNCTION :: OperationMetadataV1_Type
pattern OperationMetadataV1_Type_CREATEFUNCTION = OperationMetadataV1_Type "CREATE_FUNCTION"

-- | Triggered by UpdateFunction call
pattern OperationMetadataV1_Type_UPDATEFUNCTION :: OperationMetadataV1_Type
pattern OperationMetadataV1_Type_UPDATEFUNCTION = OperationMetadataV1_Type "UPDATE_FUNCTION"

-- | Triggered by DeleteFunction call.
pattern OperationMetadataV1_Type_DELETEFUNCTION :: OperationMetadataV1_Type
pattern OperationMetadataV1_Type_DELETEFUNCTION = OperationMetadataV1_Type "DELETE_FUNCTION"

{-# COMPLETE
  OperationMetadataV1_Type_OPERATIONUNSPECIFIED,
  OperationMetadataV1_Type_CREATEFUNCTION,
  OperationMetadataV1_Type_UPDATEFUNCTION,
  OperationMetadataV1_Type_DELETEFUNCTION,
  OperationMetadataV1_Type
  #-}

-- | The environment for the runtime.
newtype Runtime_Environment = Runtime_Environment {fromRuntime_Environment :: Core.Text}
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

-- | Unspecified
pattern Runtime_Environment_ENVIRONMENTUNSPECIFIED :: Runtime_Environment
pattern Runtime_Environment_ENVIRONMENTUNSPECIFIED = Runtime_Environment "ENVIRONMENT_UNSPECIFIED"

-- | Gen 1
pattern Runtime_Environment_GEN_1 :: Runtime_Environment
pattern Runtime_Environment_GEN_1 = Runtime_Environment "GEN_1"

-- | Gen 2
pattern Runtime_Environment_GEN_2 :: Runtime_Environment
pattern Runtime_Environment_GEN_2 = Runtime_Environment "GEN_2"

{-# COMPLETE
  Runtime_Environment_ENVIRONMENTUNSPECIFIED,
  Runtime_Environment_GEN_1,
  Runtime_Environment_GEN_2,
  Runtime_Environment
  #-}

-- | The stage of life this runtime is in, e.g., BETA, GA, etc.
newtype Runtime_Stage = Runtime_Stage {fromRuntime_Stage :: Core.Text}
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

-- | Not specified.
pattern Runtime_Stage_RUNTIMESTAGEUNSPECIFIED :: Runtime_Stage
pattern Runtime_Stage_RUNTIMESTAGEUNSPECIFIED = Runtime_Stage "RUNTIME_STAGE_UNSPECIFIED"

-- | The runtime is in development.
pattern Runtime_Stage_Development :: Runtime_Stage
pattern Runtime_Stage_Development = Runtime_Stage "DEVELOPMENT"

-- | The runtime is in the Alpha stage.
pattern Runtime_Stage_Alpha :: Runtime_Stage
pattern Runtime_Stage_Alpha = Runtime_Stage "ALPHA"

-- | The runtime is in the Beta stage.
pattern Runtime_Stage_Beta :: Runtime_Stage
pattern Runtime_Stage_Beta = Runtime_Stage "BETA"

-- | The runtime is generally available.
pattern Runtime_Stage_GA :: Runtime_Stage
pattern Runtime_Stage_GA = Runtime_Stage "GA"

-- | The runtime is deprecated.
pattern Runtime_Stage_Deprecated :: Runtime_Stage
pattern Runtime_Stage_Deprecated = Runtime_Stage "DEPRECATED"

-- | The runtime is no longer supported.
pattern Runtime_Stage_Decommissioned :: Runtime_Stage
pattern Runtime_Stage_Decommissioned = Runtime_Stage "DECOMMISSIONED"

{-# COMPLETE
  Runtime_Stage_RUNTIMESTAGEUNSPECIFIED,
  Runtime_Stage_Development,
  Runtime_Stage_Alpha,
  Runtime_Stage_Beta,
  Runtime_Stage_GA,
  Runtime_Stage_Deprecated,
  Runtime_Stage_Decommissioned,
  Runtime_Stage
  #-}

-- | The ingress settings for the function, controlling what traffic can reach it.
newtype ServiceConfig_IngressSettings = ServiceConfig_IngressSettings {fromServiceConfig_IngressSettings :: Core.Text}
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

-- | Unspecified.
pattern ServiceConfig_IngressSettings_INGRESSSETTINGSUNSPECIFIED :: ServiceConfig_IngressSettings
pattern ServiceConfig_IngressSettings_INGRESSSETTINGSUNSPECIFIED = ServiceConfig_IngressSettings "INGRESS_SETTINGS_UNSPECIFIED"

-- | Allow HTTP traffic from public and private sources.
pattern ServiceConfig_IngressSettings_ALLOWALL :: ServiceConfig_IngressSettings
pattern ServiceConfig_IngressSettings_ALLOWALL = ServiceConfig_IngressSettings "ALLOW_ALL"

-- | Allow HTTP traffic from only private VPC sources.
pattern ServiceConfig_IngressSettings_ALLOWINTERNALONLY :: ServiceConfig_IngressSettings
pattern ServiceConfig_IngressSettings_ALLOWINTERNALONLY = ServiceConfig_IngressSettings "ALLOW_INTERNAL_ONLY"

-- | Allow HTTP traffic from private VPC sources and through GCLB.
pattern ServiceConfig_IngressSettings_ALLOWINTERNALANDGCLB :: ServiceConfig_IngressSettings
pattern ServiceConfig_IngressSettings_ALLOWINTERNALANDGCLB = ServiceConfig_IngressSettings "ALLOW_INTERNAL_AND_GCLB"

{-# COMPLETE
  ServiceConfig_IngressSettings_INGRESSSETTINGSUNSPECIFIED,
  ServiceConfig_IngressSettings_ALLOWALL,
  ServiceConfig_IngressSettings_ALLOWINTERNALONLY,
  ServiceConfig_IngressSettings_ALLOWINTERNALANDGCLB,
  ServiceConfig_IngressSettings
  #-}

-- | Security level configure whether the function only accepts https. This configuration is only applicable to 1st Gen functions with Http trigger. By default https is optional for 1st Gen functions; 2nd Gen functions are https ONLY.
newtype ServiceConfig_SecurityLevel = ServiceConfig_SecurityLevel {fromServiceConfig_SecurityLevel :: Core.Text}
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

-- | Unspecified.
pattern ServiceConfig_SecurityLevel_SECURITYLEVELUNSPECIFIED :: ServiceConfig_SecurityLevel
pattern ServiceConfig_SecurityLevel_SECURITYLEVELUNSPECIFIED = ServiceConfig_SecurityLevel "SECURITY_LEVEL_UNSPECIFIED"

-- | Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.
pattern ServiceConfig_SecurityLevel_SECUREALWAYS :: ServiceConfig_SecurityLevel
pattern ServiceConfig_SecurityLevel_SECUREALWAYS = ServiceConfig_SecurityLevel "SECURE_ALWAYS"

-- | Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.
pattern ServiceConfig_SecurityLevel_SECUREOPTIONAL :: ServiceConfig_SecurityLevel
pattern ServiceConfig_SecurityLevel_SECUREOPTIONAL = ServiceConfig_SecurityLevel "SECURE_OPTIONAL"

{-# COMPLETE
  ServiceConfig_SecurityLevel_SECURITYLEVELUNSPECIFIED,
  ServiceConfig_SecurityLevel_SECUREALWAYS,
  ServiceConfig_SecurityLevel_SECUREOPTIONAL,
  ServiceConfig_SecurityLevel
  #-}

-- | The egress settings for the connector, controlling what traffic is diverted through it.
newtype ServiceConfig_VpcConnectorEgressSettings = ServiceConfig_VpcConnectorEgressSettings {fromServiceConfig_VpcConnectorEgressSettings :: Core.Text}
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

-- | Unspecified.
pattern ServiceConfig_VpcConnectorEgressSettings_VPCCONNECTOREGRESSSETTINGSUNSPECIFIED :: ServiceConfig_VpcConnectorEgressSettings
pattern ServiceConfig_VpcConnectorEgressSettings_VPCCONNECTOREGRESSSETTINGSUNSPECIFIED = ServiceConfig_VpcConnectorEgressSettings "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"

-- | Use the VPC Access Connector only for private IP space from RFC1918.
pattern ServiceConfig_VpcConnectorEgressSettings_PRIVATERANGESONLY :: ServiceConfig_VpcConnectorEgressSettings
pattern ServiceConfig_VpcConnectorEgressSettings_PRIVATERANGESONLY = ServiceConfig_VpcConnectorEgressSettings "PRIVATE_RANGES_ONLY"

-- | Force the use of VPC Access Connector for all egress traffic from the function.
pattern ServiceConfig_VpcConnectorEgressSettings_ALLTRAFFIC :: ServiceConfig_VpcConnectorEgressSettings
pattern ServiceConfig_VpcConnectorEgressSettings_ALLTRAFFIC = ServiceConfig_VpcConnectorEgressSettings "ALL_TRAFFIC"

{-# COMPLETE
  ServiceConfig_VpcConnectorEgressSettings_VPCCONNECTOREGRESSSETTINGSUNSPECIFIED,
  ServiceConfig_VpcConnectorEgressSettings_PRIVATERANGESONLY,
  ServiceConfig_VpcConnectorEgressSettings_ALLTRAFFIC,
  ServiceConfig_VpcConnectorEgressSettings
  #-}

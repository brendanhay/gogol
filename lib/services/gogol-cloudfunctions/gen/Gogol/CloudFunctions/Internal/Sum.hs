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
-- Module      : Gogol.CloudFunctions.Internal.Sum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
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
        Function_State_Detaching,
        Function_State_DETACHFAILED,
        ..
      ),

    -- * GenerateUploadUrlRequest_Environment
    GenerateUploadUrlRequest_Environment
      ( GenerateUploadUrlRequest_Environment_ENVIRONMENTUNSPECIFIED,
        GenerateUploadUrlRequest_Environment_GEN_1,
        GenerateUploadUrlRequest_Environment_GEN_2,
        ..
      ),

    -- * GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
    GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
      ( GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_ENVIRONMENTUNSPECIFIED,
        GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_1,
        GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_2,
        ..
      ),

    -- * GoogleCloudFunctionsV2OperationMetadata_OperationType
    GoogleCloudFunctionsV2OperationMetadata_OperationType
      ( GoogleCloudFunctionsV2OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_CREATEFUNCTION,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_UPDATEFUNCTION,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_DELETEFUNCTION,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_REDIRECTFUNCTIONUPGRADETRAFFIC,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_ROLLBACKFUNCTIONUPGRADETRAFFIC,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_SETUPFUNCTIONUPGRADECONFIG,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_ABORTFUNCTIONUPGRADE,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_COMMITFUNCTIONUPGRADE,
        GoogleCloudFunctionsV2OperationMetadata_OperationType_DETACHFUNCTION,
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

    -- * UpgradeInfo_UpgradeState
    UpgradeInfo_UpgradeState
      ( UpgradeInfo_UpgradeState_UPGRADESTATEUNSPECIFIED,
        UpgradeInfo_UpgradeState_ELIGIBLEFOR2NDGENUPGRADE,
        UpgradeInfo_UpgradeState_UPGRADEOPERATIONINPROGRESS,
        UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGSUCCESSFUL,
        UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGERROR,
        UpgradeInfo_UpgradeState_ABORTFUNCTIONUPGRADEERROR,
        UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICSUCCESSFUL,
        UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICERROR,
        UpgradeInfo_UpgradeState_ROLLBACKFUNCTIONUPGRADETRAFFICERROR,
        UpgradeInfo_UpgradeState_COMMITFUNCTIONUPGRADEERROR,
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

-- | Docker Registry to use for this deployment. This configuration is only applicable to 1st Gen functions, 2nd Gen functions can only use Artifact Registry. Deprecated: Container Registry option will no longer be available after March 2025: https:\/\/cloud.google.com\/artifact-registry\/docs\/transition\/transition-from-gcr Please use Artifact Registry instead, which is the default choice. If unspecified, it defaults to @ARTIFACT_REGISTRY@. If @docker_repository@ field is specified, this field should either be left unspecified or set to @ARTIFACT_REGISTRY@.
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

-- | Function is being detached.
pattern Function_State_Detaching :: Function_State
pattern Function_State_Detaching = Function_State "DETACHING"

-- | Function detach failed and the function is still serving.
pattern Function_State_DETACHFAILED :: Function_State
pattern Function_State_DETACHFAILED = Function_State "DETACH_FAILED"

{-# COMPLETE
  Function_State_STATEUNSPECIFIED,
  Function_State_Active,
  Function_State_Failed,
  Function_State_Deploying,
  Function_State_Deleting,
  Function_State_Unknown,
  Function_State_Detaching,
  Function_State_DETACHFAILED,
  Function_State
  #-}

-- | The function environment the generated upload url will be used for. The upload url for 2nd Gen functions can also be used for 1st gen functions, but not vice versa. If not specified, 2nd generation-style upload URLs are generated.
newtype GenerateUploadUrlRequest_Environment = GenerateUploadUrlRequest_Environment {fromGenerateUploadUrlRequest_Environment :: Core.Text}
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
pattern GenerateUploadUrlRequest_Environment_ENVIRONMENTUNSPECIFIED :: GenerateUploadUrlRequest_Environment
pattern GenerateUploadUrlRequest_Environment_ENVIRONMENTUNSPECIFIED = GenerateUploadUrlRequest_Environment "ENVIRONMENT_UNSPECIFIED"

-- | Gen 1
pattern GenerateUploadUrlRequest_Environment_GEN_1 :: GenerateUploadUrlRequest_Environment
pattern GenerateUploadUrlRequest_Environment_GEN_1 = GenerateUploadUrlRequest_Environment "GEN_1"

-- | Gen 2
pattern GenerateUploadUrlRequest_Environment_GEN_2 :: GenerateUploadUrlRequest_Environment
pattern GenerateUploadUrlRequest_Environment_GEN_2 = GenerateUploadUrlRequest_Environment "GEN_2"

{-# COMPLETE
  GenerateUploadUrlRequest_Environment_ENVIRONMENTUNSPECIFIED,
  GenerateUploadUrlRequest_Environment_GEN_1,
  GenerateUploadUrlRequest_Environment_GEN_2,
  GenerateUploadUrlRequest_Environment
  #-}

newtype GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem = GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem {fromGoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem :: Core.Text}
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
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_ENVIRONMENTUNSPECIFIED :: GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_ENVIRONMENTUNSPECIFIED = GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem "ENVIRONMENT_UNSPECIFIED"

-- | Gen 1
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_1 :: GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_1 = GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem "GEN_1"

-- | Gen 2
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_2 :: GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
pattern GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_2 = GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem "GEN_2"

{-# COMPLETE
  GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_ENVIRONMENTUNSPECIFIED,
  GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_1,
  GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem_GEN_2,
  GoogleCloudFunctionsV2LocationMetadata_EnvironmentsItem
  #-}

-- | The operation type.
newtype GoogleCloudFunctionsV2OperationMetadata_OperationType = GoogleCloudFunctionsV2OperationMetadata_OperationType {fromGoogleCloudFunctionsV2OperationMetadata_OperationType :: Core.Text}
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
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED = GoogleCloudFunctionsV2OperationMetadata_OperationType "OPERATIONTYPE_UNSPECIFIED"

-- | CreateFunction
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_CREATEFUNCTION :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_CREATEFUNCTION = GoogleCloudFunctionsV2OperationMetadata_OperationType "CREATE_FUNCTION"

-- | UpdateFunction
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_UPDATEFUNCTION :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_UPDATEFUNCTION = GoogleCloudFunctionsV2OperationMetadata_OperationType "UPDATE_FUNCTION"

-- | DeleteFunction
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_DELETEFUNCTION :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_DELETEFUNCTION = GoogleCloudFunctionsV2OperationMetadata_OperationType "DELETE_FUNCTION"

-- | RedirectFunctionUpgradeTraffic
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_REDIRECTFUNCTIONUPGRADETRAFFIC :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_REDIRECTFUNCTIONUPGRADETRAFFIC = GoogleCloudFunctionsV2OperationMetadata_OperationType "REDIRECT_FUNCTION_UPGRADE_TRAFFIC"

-- | RollbackFunctionUpgradeTraffic
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_ROLLBACKFUNCTIONUPGRADETRAFFIC :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_ROLLBACKFUNCTIONUPGRADETRAFFIC = GoogleCloudFunctionsV2OperationMetadata_OperationType "ROLLBACK_FUNCTION_UPGRADE_TRAFFIC"

-- | SetupFunctionUpgradeConfig
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_SETUPFUNCTIONUPGRADECONFIG :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_SETUPFUNCTIONUPGRADECONFIG = GoogleCloudFunctionsV2OperationMetadata_OperationType "SETUP_FUNCTION_UPGRADE_CONFIG"

-- | AbortFunctionUpgrade
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_ABORTFUNCTIONUPGRADE :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_ABORTFUNCTIONUPGRADE = GoogleCloudFunctionsV2OperationMetadata_OperationType "ABORT_FUNCTION_UPGRADE"

-- | CommitFunctionUpgrade
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_COMMITFUNCTIONUPGRADE :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_COMMITFUNCTIONUPGRADE = GoogleCloudFunctionsV2OperationMetadata_OperationType "COMMIT_FUNCTION_UPGRADE"

-- | DetachFunction
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_DETACHFUNCTION :: GoogleCloudFunctionsV2OperationMetadata_OperationType
pattern GoogleCloudFunctionsV2OperationMetadata_OperationType_DETACHFUNCTION = GoogleCloudFunctionsV2OperationMetadata_OperationType "DETACH_FUNCTION"

{-# COMPLETE
  GoogleCloudFunctionsV2OperationMetadata_OperationType_OPERATIONTYPEUNSPECIFIED,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_CREATEFUNCTION,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_UPDATEFUNCTION,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_DELETEFUNCTION,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_REDIRECTFUNCTIONUPGRADETRAFFIC,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_ROLLBACKFUNCTIONUPGRADETRAFFIC,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_SETUPFUNCTIONUPGRADECONFIG,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_ABORTFUNCTIONUPGRADE,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_COMMITFUNCTIONUPGRADE,
  GoogleCloudFunctionsV2OperationMetadata_OperationType_DETACHFUNCTION,
  GoogleCloudFunctionsV2OperationMetadata_OperationType
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

-- | Artifact Registry Stage
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

-- | UpgradeState of the function
newtype UpgradeInfo_UpgradeState = UpgradeInfo_UpgradeState {fromUpgradeInfo_UpgradeState :: Core.Text}
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

-- | Unspecified state. Most functions are in this upgrade state.
pattern UpgradeInfo_UpgradeState_UPGRADESTATEUNSPECIFIED :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_UPGRADESTATEUNSPECIFIED = UpgradeInfo_UpgradeState "UPGRADE_STATE_UNSPECIFIED"

-- | Functions in this state are eligible for 1st Gen -> 2nd Gen upgrade.
pattern UpgradeInfo_UpgradeState_ELIGIBLEFOR2NDGENUPGRADE :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_ELIGIBLEFOR2NDGENUPGRADE = UpgradeInfo_UpgradeState "ELIGIBLE_FOR_2ND_GEN_UPGRADE"

-- | An upgrade related operation is in progress.
pattern UpgradeInfo_UpgradeState_UPGRADEOPERATIONINPROGRESS :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_UPGRADEOPERATIONINPROGRESS = UpgradeInfo_UpgradeState "UPGRADE_OPERATION_IN_PROGRESS"

-- | SetupFunctionUpgradeConfig API was successful and a 2nd Gen function has been created based on 1st Gen function instance.
pattern UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGSUCCESSFUL :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGSUCCESSFUL = UpgradeInfo_UpgradeState "SETUP_FUNCTION_UPGRADE_CONFIG_SUCCESSFUL"

-- | SetupFunctionUpgradeConfig API was un-successful.
pattern UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGERROR :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGERROR = UpgradeInfo_UpgradeState "SETUP_FUNCTION_UPGRADE_CONFIG_ERROR"

-- | AbortFunctionUpgrade API was un-successful.
pattern UpgradeInfo_UpgradeState_ABORTFUNCTIONUPGRADEERROR :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_ABORTFUNCTIONUPGRADEERROR = UpgradeInfo_UpgradeState "ABORT_FUNCTION_UPGRADE_ERROR"

-- | RedirectFunctionUpgradeTraffic API was successful and traffic is served by 2nd Gen function stack.
pattern UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICSUCCESSFUL :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICSUCCESSFUL = UpgradeInfo_UpgradeState "REDIRECT_FUNCTION_UPGRADE_TRAFFIC_SUCCESSFUL"

-- | RedirectFunctionUpgradeTraffic API was un-successful.
pattern UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICERROR :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICERROR = UpgradeInfo_UpgradeState "REDIRECT_FUNCTION_UPGRADE_TRAFFIC_ERROR"

-- | RollbackFunctionUpgradeTraffic API was un-successful.
pattern UpgradeInfo_UpgradeState_ROLLBACKFUNCTIONUPGRADETRAFFICERROR :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_ROLLBACKFUNCTIONUPGRADETRAFFICERROR = UpgradeInfo_UpgradeState "ROLLBACK_FUNCTION_UPGRADE_TRAFFIC_ERROR"

-- | CommitFunctionUpgrade API was un-successful.
pattern UpgradeInfo_UpgradeState_COMMITFUNCTIONUPGRADEERROR :: UpgradeInfo_UpgradeState
pattern UpgradeInfo_UpgradeState_COMMITFUNCTIONUPGRADEERROR = UpgradeInfo_UpgradeState "COMMIT_FUNCTION_UPGRADE_ERROR"

{-# COMPLETE
  UpgradeInfo_UpgradeState_UPGRADESTATEUNSPECIFIED,
  UpgradeInfo_UpgradeState_ELIGIBLEFOR2NDGENUPGRADE,
  UpgradeInfo_UpgradeState_UPGRADEOPERATIONINPROGRESS,
  UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGSUCCESSFUL,
  UpgradeInfo_UpgradeState_SETUPFUNCTIONUPGRADECONFIGERROR,
  UpgradeInfo_UpgradeState_ABORTFUNCTIONUPGRADEERROR,
  UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICSUCCESSFUL,
  UpgradeInfo_UpgradeState_REDIRECTFUNCTIONUPGRADETRAFFICERROR,
  UpgradeInfo_UpgradeState_ROLLBACKFUNCTIONUPGRADETRAFFICERROR,
  UpgradeInfo_UpgradeState_COMMITFUNCTIONUPGRADEERROR,
  UpgradeInfo_UpgradeState
  #-}

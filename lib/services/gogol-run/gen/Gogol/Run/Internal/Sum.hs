{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Run.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudRunV2Condition_ExecutionReason
    GoogleCloudRunV2Condition_ExecutionReason
      (
        GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED,
        GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR,
        GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE,
        GoogleCloudRunV2Condition_ExecutionReason_Cancelled,
        GoogleCloudRunV2Condition_ExecutionReason_Cancelling,
        GoogleCloudRunV2Condition_ExecutionReason_Deleted,
        ..
      ),

    -- * GoogleCloudRunV2Condition_Reason
    GoogleCloudRunV2Condition_Reason
      (
        GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED,
        GoogleCloudRunV2Condition_Reason_Unknown,
        GoogleCloudRunV2Condition_Reason_REVISIONFAILED,
        GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED,
        GoogleCloudRunV2Condition_Reason_CONTAINERMISSING,
        GoogleCloudRunV2Condition_Reason_CONTAINERPERMISSIONDENIED,
        GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEUNAUTHORIZED,
        GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEAUTHORIZATIONCHECKFAILED,
        GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYPERMISSIONDENIED,
        GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYCHECKFAILED,
        GoogleCloudRunV2Condition_Reason_SECRETSACCESSCHECKFAILED,
        GoogleCloudRunV2Condition_Reason_WAITINGFOROPERATION,
        GoogleCloudRunV2Condition_Reason_IMMEDIATERETRY,
        GoogleCloudRunV2Condition_Reason_POSTPONEDRETRY,
        GoogleCloudRunV2Condition_Reason_Internal,
        ..
      ),

    -- * GoogleCloudRunV2Condition_RevisionReason
    GoogleCloudRunV2Condition_RevisionReason
      (
        GoogleCloudRunV2Condition_RevisionReason_REVISIONREASONUNDEFINED,
        GoogleCloudRunV2Condition_RevisionReason_Pending,
        GoogleCloudRunV2Condition_RevisionReason_Reserve,
        GoogleCloudRunV2Condition_RevisionReason_Retired,
        GoogleCloudRunV2Condition_RevisionReason_Retiring,
        GoogleCloudRunV2Condition_RevisionReason_Recreating,
        GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKCONTAINERERROR,
        GoogleCloudRunV2Condition_RevisionReason_CUSTOMIZEDPATHRESPONSEPENDING,
        GoogleCloudRunV2Condition_RevisionReason_MININSTANCESNOTPROVISIONED,
        GoogleCloudRunV2Condition_RevisionReason_ACTIVEREVISIONLIMITREACHED,
        GoogleCloudRunV2Condition_RevisionReason_NODEPLOYMENT,
        GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKSKIPPED,
        GoogleCloudRunV2Condition_RevisionReason_MININSTANCESWARMING,
        ..
      ),

    -- * GoogleCloudRunV2Condition_Severity
    GoogleCloudRunV2Condition_Severity
      (
        GoogleCloudRunV2Condition_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudRunV2Condition_Severity_Error',
        GoogleCloudRunV2Condition_Severity_Warning,
        GoogleCloudRunV2Condition_Severity_Info,
        ..
      ),

    -- * GoogleCloudRunV2Condition_State
    GoogleCloudRunV2Condition_State
      (
        GoogleCloudRunV2Condition_State_STATEUNSPECIFIED,
        GoogleCloudRunV2Condition_State_CONDITIONPENDING,
        GoogleCloudRunV2Condition_State_CONDITIONRECONCILING,
        GoogleCloudRunV2Condition_State_CONDITIONFAILED,
        GoogleCloudRunV2Condition_State_CONDITIONSUCCEEDED,
        ..
      ),

    -- * GoogleCloudRunV2EmptyDirVolumeSource_Medium
    GoogleCloudRunV2EmptyDirVolumeSource_Medium
      (
        GoogleCloudRunV2EmptyDirVolumeSource_Medium_MEDIUMUNSPECIFIED,
        GoogleCloudRunV2EmptyDirVolumeSource_Medium_Memory,
        ..
      ),

    -- * GoogleCloudRunV2Execution_LaunchStage
    GoogleCloudRunV2Execution_LaunchStage
      (
        GoogleCloudRunV2Execution_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Execution_LaunchStage_Unimplemented,
        GoogleCloudRunV2Execution_LaunchStage_Prelaunch,
        GoogleCloudRunV2Execution_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Execution_LaunchStage_Alpha,
        GoogleCloudRunV2Execution_LaunchStage_Beta,
        GoogleCloudRunV2Execution_LaunchStage_GA,
        GoogleCloudRunV2Execution_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2ExecutionReference_CompletionStatus
    GoogleCloudRunV2ExecutionReference_CompletionStatus
      (
        GoogleCloudRunV2ExecutionReference_CompletionStatus_COMPLETIONSTATUSUNSPECIFIED,
        GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONSUCCEEDED,
        GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONFAILED,
        GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONRUNNING,
        GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONPENDING,
        GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONCANCELLED,
        ..
      ),

    -- * GoogleCloudRunV2ExportStatusResponse_OperationState
    GoogleCloudRunV2ExportStatusResponse_OperationState
      (
        GoogleCloudRunV2ExportStatusResponse_OperationState_OPERATIONSTATEUNSPECIFIED,
        GoogleCloudRunV2ExportStatusResponse_OperationState_INPROGRESS,
        GoogleCloudRunV2ExportStatusResponse_OperationState_Finished,
        ..
      ),

    -- * GoogleCloudRunV2ImageExportStatus_ExportJobState
    GoogleCloudRunV2ImageExportStatus_ExportJobState
      (
        GoogleCloudRunV2ImageExportStatus_ExportJobState_EXPORTJOBSTATEUNSPECIFIED,
        GoogleCloudRunV2ImageExportStatus_ExportJobState_INPROGRESS,
        GoogleCloudRunV2ImageExportStatus_ExportJobState_Finished,
        ..
      ),

    -- * GoogleCloudRunV2Job_LaunchStage
    GoogleCloudRunV2Job_LaunchStage
      (
        GoogleCloudRunV2Job_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Job_LaunchStage_Unimplemented,
        GoogleCloudRunV2Job_LaunchStage_Prelaunch,
        GoogleCloudRunV2Job_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Job_LaunchStage_Alpha,
        GoogleCloudRunV2Job_LaunchStage_Beta,
        GoogleCloudRunV2Job_LaunchStage_GA,
        GoogleCloudRunV2Job_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
    GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
      (
        GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED,
        GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_PREVENTNEW,
        GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_Shutdown,
        ..
      ),

    -- * GoogleCloudRunV2Revision_ExecutionEnvironment
    GoogleCloudRunV2Revision_ExecutionEnvironment
      (
        GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
        GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2Revision_LaunchStage
    GoogleCloudRunV2Revision_LaunchStage
      (
        GoogleCloudRunV2Revision_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Revision_LaunchStage_Unimplemented,
        GoogleCloudRunV2Revision_LaunchStage_Prelaunch,
        GoogleCloudRunV2Revision_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Revision_LaunchStage_Alpha,
        GoogleCloudRunV2Revision_LaunchStage_Beta,
        GoogleCloudRunV2Revision_LaunchStage_GA,
        GoogleCloudRunV2Revision_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
    GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
      (
        GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED,
        GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_PREVENTNEW,
        GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_Shutdown,
        ..
      ),

    -- * GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
    GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
      (
        GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
        GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2Service_Ingress
    GoogleCloudRunV2Service_Ingress
      (
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICNONE,
        ..
      ),

    -- * GoogleCloudRunV2Service_LaunchStage
    GoogleCloudRunV2Service_LaunchStage
      (
        GoogleCloudRunV2Service_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Service_LaunchStage_Unimplemented,
        GoogleCloudRunV2Service_LaunchStage_Prelaunch,
        GoogleCloudRunV2Service_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Service_LaunchStage_Alpha,
        GoogleCloudRunV2Service_LaunchStage_Beta,
        GoogleCloudRunV2Service_LaunchStage_GA,
        GoogleCloudRunV2Service_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2ServiceScaling_ScalingMode
    GoogleCloudRunV2ServiceScaling_ScalingMode
      (
        GoogleCloudRunV2ServiceScaling_ScalingMode_SCALINGMODEUNSPECIFIED,
        GoogleCloudRunV2ServiceScaling_ScalingMode_Automatic,
        GoogleCloudRunV2ServiceScaling_ScalingMode_Manual,
        ..
      ),

    -- * GoogleCloudRunV2Task_ExecutionEnvironment
    GoogleCloudRunV2Task_ExecutionEnvironment
      (
        GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
        GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
    GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
      (
        GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
        GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2TrafficTarget_Type
    GoogleCloudRunV2TrafficTarget_Type
      (
        GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
        GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
        GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
        ..
      ),

    -- * GoogleCloudRunV2TrafficTargetStatus_Type
    GoogleCloudRunV2TrafficTargetStatus_Type
      (
        GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
        GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
        GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
        ..
      ),

    -- * GoogleCloudRunV2VpcAccess_Egress
    GoogleCloudRunV2VpcAccess_Egress
      (
        GoogleCloudRunV2VpcAccess_Egress_VPCEGRESSUNSPECIFIED,
        GoogleCloudRunV2VpcAccess_Egress_ALLTRAFFIC,
        GoogleCloudRunV2VpcAccess_Egress_PRIVATERANGESONLY,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
    GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
      (
        GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved,
        GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1Build_Status
    GoogleDevtoolsCloudbuildV1Build_Status
      (
        GoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN,
        GoogleDevtoolsCloudbuildV1Build_Status_Pending,
        GoogleDevtoolsCloudbuildV1Build_Status_Queued,
        GoogleDevtoolsCloudbuildV1Build_Status_Working,
        GoogleDevtoolsCloudbuildV1Build_Status_Success,
        GoogleDevtoolsCloudbuildV1Build_Status_Failure,
        GoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR,
        GoogleDevtoolsCloudbuildV1Build_Status_Timeout,
        GoogleDevtoolsCloudbuildV1Build_Status_Cancelled,
        GoogleDevtoolsCloudbuildV1Build_Status_Expired,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildApproval_State
    GoogleDevtoolsCloudbuildV1BuildApproval_State
      (
        GoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1BuildApproval_State_Pending,
        GoogleDevtoolsCloudbuildV1BuildApproval_State_Approved,
        GoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected,
        GoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
    GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET,
        GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
    GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT,
        GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON,
        GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_Logging
    GoogleDevtoolsCloudbuildV1BuildOptions_Logging
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy,
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY,
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY,
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY,
        GoogleDevtoolsCloudbuildV1BuildOptions_Logging_None,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
    GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified,
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8,
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32,
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8,
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32,
        GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
    GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED,
        GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
    GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None,
        GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256,
        GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5,
        GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
    GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
      (
        GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH,
        GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1BuildStep_Status
    GoogleDevtoolsCloudbuildV1BuildStep_Status
      (
        GoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Pending,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Queued,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Working,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Success,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Failure,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled,
        GoogleDevtoolsCloudbuildV1BuildStep_Status_Expired,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1FailureInfo_Type
    GoogleDevtoolsCloudbuildV1FailureInfo_Type
      (
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_FAILURETYPEUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHFAILED,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHIMAGENOTFOUND,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHNOTAUTHORIZED,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_LOGGINGFAILURE,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_USERBUILDSTEP,
        GoogleDevtoolsCloudbuildV1FailureInfo_Type_FETCHSOURCEFAILED,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1Hash_Type
    GoogleDevtoolsCloudbuildV1Hash_Type
      (
        GoogleDevtoolsCloudbuildV1Hash_Type_None,
        GoogleDevtoolsCloudbuildV1Hash_Type_SHA256,
        GoogleDevtoolsCloudbuildV1Hash_Type_MD5,
        GoogleDevtoolsCloudbuildV1Hash_Type_SHA512,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
    GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
      (
        GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil,
        GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER,
        ..
      ),

    -- * GoogleDevtoolsCloudbuildV1Warning_Priority
    GoogleDevtoolsCloudbuildV1Warning_Priority
      (
        GoogleDevtoolsCloudbuildV1Warning_Priority_PRIORITYUNSPECIFIED,
        GoogleDevtoolsCloudbuildV1Warning_Priority_Info,
        GoogleDevtoolsCloudbuildV1Warning_Priority_Warning,
        GoogleDevtoolsCloudbuildV1Warning_Priority_Alert,
        ..
      ),

    -- * GoogleIamV1AuditLogConfig_LogType
    GoogleIamV1AuditLogConfig_LogType
      (
        GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        GoogleIamV1AuditLogConfig_LogType_ADMINREAD,
        GoogleIamV1AuditLogConfig_LogType_DATAWRITE,
        GoogleIamV1AuditLogConfig_LogType_DATAREAD,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
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
  Xgafv #-}

-- | Output only. A reason for the execution condition.
newtype GoogleCloudRunV2Condition_ExecutionReason = GoogleCloudRunV2Condition_ExecutionReason { fromGoogleCloudRunV2Condition_ExecutionReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value.
pattern GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED = GoogleCloudRunV2Condition_ExecutionReason "EXECUTION_REASON_UNDEFINED"

-- | Internal system error getting execution status. System will retry.
pattern GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR = GoogleCloudRunV2Condition_ExecutionReason "JOB_STATUS_SERVICE_POLLING_ERROR"

-- | A task reached its retry limit and the last attempt failed due to the user container exiting with a non-zero exit code.
pattern GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE = GoogleCloudRunV2Condition_ExecutionReason "NON_ZERO_EXIT_CODE"

-- | The execution was cancelled by users.
pattern GoogleCloudRunV2Condition_ExecutionReason_Cancelled :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_Cancelled = GoogleCloudRunV2Condition_ExecutionReason "CANCELLED"

-- | The execution is in the process of being cancelled.
pattern GoogleCloudRunV2Condition_ExecutionReason_Cancelling :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_Cancelling = GoogleCloudRunV2Condition_ExecutionReason "CANCELLING"

-- | The execution was deleted.
pattern GoogleCloudRunV2Condition_ExecutionReason_Deleted :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_Deleted = GoogleCloudRunV2Condition_ExecutionReason "DELETED"

{-# COMPLETE
  GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED,
  GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR,
  GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE,
  GoogleCloudRunV2Condition_ExecutionReason_Cancelled,
  GoogleCloudRunV2Condition_ExecutionReason_Cancelling,
  GoogleCloudRunV2Condition_ExecutionReason_Deleted,
  GoogleCloudRunV2Condition_ExecutionReason #-}

-- | Output only. A common (service-level) reason for this condition.
newtype GoogleCloudRunV2Condition_Reason = GoogleCloudRunV2Condition_Reason { fromGoogleCloudRunV2Condition_Reason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value.
pattern GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED = GoogleCloudRunV2Condition_Reason "COMMON_REASON_UNDEFINED"

-- | Reason unknown. Further details will be in message.
pattern GoogleCloudRunV2Condition_Reason_Unknown :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_Unknown = GoogleCloudRunV2Condition_Reason "UNKNOWN"

-- | Revision creation process failed.
pattern GoogleCloudRunV2Condition_Reason_REVISIONFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_REVISIONFAILED = GoogleCloudRunV2Condition_Reason "REVISION_FAILED"

-- | Timed out waiting for completion.
pattern GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED = GoogleCloudRunV2Condition_Reason "PROGRESS_DEADLINE_EXCEEDED"

-- | The container image path is incorrect.
pattern GoogleCloudRunV2Condition_Reason_CONTAINERMISSING :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_CONTAINERMISSING = GoogleCloudRunV2Condition_Reason "CONTAINER_MISSING"

-- | Insufficient permissions on the container image.
pattern GoogleCloudRunV2Condition_Reason_CONTAINERPERMISSIONDENIED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_CONTAINERPERMISSIONDENIED = GoogleCloudRunV2Condition_Reason "CONTAINER_PERMISSION_DENIED"

-- | Container image is not authorized by policy.
pattern GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEUNAUTHORIZED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEUNAUTHORIZED = GoogleCloudRunV2Condition_Reason "CONTAINER_IMAGE_UNAUTHORIZED"

-- | Container image policy authorization check failed.
pattern GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEAUTHORIZATIONCHECKFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEAUTHORIZATIONCHECKFAILED = GoogleCloudRunV2Condition_Reason "CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED"

-- | Insufficient permissions on encryption key.
pattern GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYPERMISSIONDENIED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYPERMISSIONDENIED = GoogleCloudRunV2Condition_Reason "ENCRYPTION_KEY_PERMISSION_DENIED"

-- | Permission check on encryption key failed.
pattern GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYCHECKFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYCHECKFAILED = GoogleCloudRunV2Condition_Reason "ENCRYPTION_KEY_CHECK_FAILED"

-- | At least one Access check on secrets failed.
pattern GoogleCloudRunV2Condition_Reason_SECRETSACCESSCHECKFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_SECRETSACCESSCHECKFAILED = GoogleCloudRunV2Condition_Reason "SECRETS_ACCESS_CHECK_FAILED"

-- | Waiting for operation to complete.
pattern GoogleCloudRunV2Condition_Reason_WAITINGFOROPERATION :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_WAITINGFOROPERATION = GoogleCloudRunV2Condition_Reason "WAITING_FOR_OPERATION"

-- | System will retry immediately.
pattern GoogleCloudRunV2Condition_Reason_IMMEDIATERETRY :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_IMMEDIATERETRY = GoogleCloudRunV2Condition_Reason "IMMEDIATE_RETRY"

-- | System will retry later; current attempt failed.
pattern GoogleCloudRunV2Condition_Reason_POSTPONEDRETRY :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_POSTPONEDRETRY = GoogleCloudRunV2Condition_Reason "POSTPONED_RETRY"

-- | An internal error occurred. Further information may be in the message.
pattern GoogleCloudRunV2Condition_Reason_Internal :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_Internal = GoogleCloudRunV2Condition_Reason "INTERNAL"

{-# COMPLETE
  GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED,
  GoogleCloudRunV2Condition_Reason_Unknown,
  GoogleCloudRunV2Condition_Reason_REVISIONFAILED,
  GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED,
  GoogleCloudRunV2Condition_Reason_CONTAINERMISSING,
  GoogleCloudRunV2Condition_Reason_CONTAINERPERMISSIONDENIED,
  GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEUNAUTHORIZED,
  GoogleCloudRunV2Condition_Reason_CONTAINERIMAGEAUTHORIZATIONCHECKFAILED,
  GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYPERMISSIONDENIED,
  GoogleCloudRunV2Condition_Reason_ENCRYPTIONKEYCHECKFAILED,
  GoogleCloudRunV2Condition_Reason_SECRETSACCESSCHECKFAILED,
  GoogleCloudRunV2Condition_Reason_WAITINGFOROPERATION,
  GoogleCloudRunV2Condition_Reason_IMMEDIATERETRY,
  GoogleCloudRunV2Condition_Reason_POSTPONEDRETRY,
  GoogleCloudRunV2Condition_Reason_Internal,
  GoogleCloudRunV2Condition_Reason #-}

-- | Output only. A reason for the revision condition.
newtype GoogleCloudRunV2Condition_RevisionReason = GoogleCloudRunV2Condition_RevisionReason { fromGoogleCloudRunV2Condition_RevisionReason :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default value.
pattern GoogleCloudRunV2Condition_RevisionReason_REVISIONREASONUNDEFINED :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_REVISIONREASONUNDEFINED = GoogleCloudRunV2Condition_RevisionReason "REVISION_REASON_UNDEFINED"

-- | Revision in Pending state.
pattern GoogleCloudRunV2Condition_RevisionReason_Pending :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_Pending = GoogleCloudRunV2Condition_RevisionReason "PENDING"

-- | Revision is in Reserve state.
pattern GoogleCloudRunV2Condition_RevisionReason_Reserve :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_Reserve = GoogleCloudRunV2Condition_RevisionReason "RESERVE"

-- | Revision is Retired.
pattern GoogleCloudRunV2Condition_RevisionReason_Retired :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_Retired = GoogleCloudRunV2Condition_RevisionReason "RETIRED"

-- | Revision is being retired.
pattern GoogleCloudRunV2Condition_RevisionReason_Retiring :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_Retiring = GoogleCloudRunV2Condition_RevisionReason "RETIRING"

-- | Revision is being recreated.
pattern GoogleCloudRunV2Condition_RevisionReason_Recreating :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_Recreating = GoogleCloudRunV2Condition_RevisionReason "RECREATING"

-- | There was a health check error.
pattern GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKCONTAINERERROR :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKCONTAINERERROR = GoogleCloudRunV2Condition_RevisionReason "HEALTH_CHECK_CONTAINER_ERROR"

-- | Health check failed due to user error from customized path of the container. System will retry.
pattern GoogleCloudRunV2Condition_RevisionReason_CUSTOMIZEDPATHRESPONSEPENDING :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_CUSTOMIZEDPATHRESPONSEPENDING = GoogleCloudRunV2Condition_RevisionReason "CUSTOMIZED_PATH_RESPONSE_PENDING"

-- | A revision with min/instance/count > 0 was created and is reserved, but it was not configured to serve traffic, so it\'s not live. This can also happen momentarily during traffic migration.
pattern GoogleCloudRunV2Condition_RevisionReason_MININSTANCESNOTPROVISIONED :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_MININSTANCESNOTPROVISIONED = GoogleCloudRunV2Condition_RevisionReason "MIN_INSTANCES_NOT_PROVISIONED"

-- | The maximum allowed number of active revisions has been reached.
pattern GoogleCloudRunV2Condition_RevisionReason_ACTIVEREVISIONLIMITREACHED :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_ACTIVEREVISIONLIMITREACHED = GoogleCloudRunV2Condition_RevisionReason "ACTIVE_REVISION_LIMIT_REACHED"

-- | There was no deployment defined. This value is no longer used, but Services created in older versions of the API might contain this value.
pattern GoogleCloudRunV2Condition_RevisionReason_NODEPLOYMENT :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_NODEPLOYMENT = GoogleCloudRunV2Condition_RevisionReason "NO_DEPLOYMENT"

-- | A revision\'s container has no port specified since the revision is of a manually scaled service with 0 instance count
pattern GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKSKIPPED :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKSKIPPED = GoogleCloudRunV2Condition_RevisionReason "HEALTH_CHECK_SKIPPED"

-- | A revision with min/instance/count > 0 was created and is waiting for enough instances to begin a traffic migration.
pattern GoogleCloudRunV2Condition_RevisionReason_MININSTANCESWARMING :: GoogleCloudRunV2Condition_RevisionReason
pattern GoogleCloudRunV2Condition_RevisionReason_MININSTANCESWARMING = GoogleCloudRunV2Condition_RevisionReason "MIN_INSTANCES_WARMING"

{-# COMPLETE
  GoogleCloudRunV2Condition_RevisionReason_REVISIONREASONUNDEFINED,
  GoogleCloudRunV2Condition_RevisionReason_Pending,
  GoogleCloudRunV2Condition_RevisionReason_Reserve,
  GoogleCloudRunV2Condition_RevisionReason_Retired,
  GoogleCloudRunV2Condition_RevisionReason_Retiring,
  GoogleCloudRunV2Condition_RevisionReason_Recreating,
  GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKCONTAINERERROR,
  GoogleCloudRunV2Condition_RevisionReason_CUSTOMIZEDPATHRESPONSEPENDING,
  GoogleCloudRunV2Condition_RevisionReason_MININSTANCESNOTPROVISIONED,
  GoogleCloudRunV2Condition_RevisionReason_ACTIVEREVISIONLIMITREACHED,
  GoogleCloudRunV2Condition_RevisionReason_NODEPLOYMENT,
  GoogleCloudRunV2Condition_RevisionReason_HEALTHCHECKSKIPPED,
  GoogleCloudRunV2Condition_RevisionReason_MININSTANCESWARMING,
  GoogleCloudRunV2Condition_RevisionReason #-}

-- | How to interpret failures of this condition, one of Error, Warning, Info
newtype GoogleCloudRunV2Condition_Severity = GoogleCloudRunV2Condition_Severity { fromGoogleCloudRunV2Condition_Severity :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified severity
pattern GoogleCloudRunV2Condition_Severity_SEVERITYUNSPECIFIED :: GoogleCloudRunV2Condition_Severity
pattern GoogleCloudRunV2Condition_Severity_SEVERITYUNSPECIFIED = GoogleCloudRunV2Condition_Severity "SEVERITY_UNSPECIFIED"

-- | Error severity.
pattern GoogleCloudRunV2Condition_Severity_Error' :: GoogleCloudRunV2Condition_Severity
pattern GoogleCloudRunV2Condition_Severity_Error' = GoogleCloudRunV2Condition_Severity "ERROR"

-- | Warning severity.
pattern GoogleCloudRunV2Condition_Severity_Warning :: GoogleCloudRunV2Condition_Severity
pattern GoogleCloudRunV2Condition_Severity_Warning = GoogleCloudRunV2Condition_Severity "WARNING"

-- | Info severity.
pattern GoogleCloudRunV2Condition_Severity_Info :: GoogleCloudRunV2Condition_Severity
pattern GoogleCloudRunV2Condition_Severity_Info = GoogleCloudRunV2Condition_Severity "INFO"

{-# COMPLETE
  GoogleCloudRunV2Condition_Severity_SEVERITYUNSPECIFIED,
  GoogleCloudRunV2Condition_Severity_Error',
  GoogleCloudRunV2Condition_Severity_Warning,
  GoogleCloudRunV2Condition_Severity_Info,
  GoogleCloudRunV2Condition_Severity #-}

-- | State of the condition.
newtype GoogleCloudRunV2Condition_State = GoogleCloudRunV2Condition_State { fromGoogleCloudRunV2Condition_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The default value. This value is used if the state is omitted.
pattern GoogleCloudRunV2Condition_State_STATEUNSPECIFIED :: GoogleCloudRunV2Condition_State
pattern GoogleCloudRunV2Condition_State_STATEUNSPECIFIED = GoogleCloudRunV2Condition_State "STATE_UNSPECIFIED"

-- | Transient state: Reconciliation has not started yet.
pattern GoogleCloudRunV2Condition_State_CONDITIONPENDING :: GoogleCloudRunV2Condition_State
pattern GoogleCloudRunV2Condition_State_CONDITIONPENDING = GoogleCloudRunV2Condition_State "CONDITION_PENDING"

-- | Transient state: reconciliation is still in progress.
pattern GoogleCloudRunV2Condition_State_CONDITIONRECONCILING :: GoogleCloudRunV2Condition_State
pattern GoogleCloudRunV2Condition_State_CONDITIONRECONCILING = GoogleCloudRunV2Condition_State "CONDITION_RECONCILING"

-- | Terminal state: Reconciliation did not succeed.
pattern GoogleCloudRunV2Condition_State_CONDITIONFAILED :: GoogleCloudRunV2Condition_State
pattern GoogleCloudRunV2Condition_State_CONDITIONFAILED = GoogleCloudRunV2Condition_State "CONDITION_FAILED"

-- | Terminal state: Reconciliation completed successfully.
pattern GoogleCloudRunV2Condition_State_CONDITIONSUCCEEDED :: GoogleCloudRunV2Condition_State
pattern GoogleCloudRunV2Condition_State_CONDITIONSUCCEEDED = GoogleCloudRunV2Condition_State "CONDITION_SUCCEEDED"

{-# COMPLETE
  GoogleCloudRunV2Condition_State_STATEUNSPECIFIED,
  GoogleCloudRunV2Condition_State_CONDITIONPENDING,
  GoogleCloudRunV2Condition_State_CONDITIONRECONCILING,
  GoogleCloudRunV2Condition_State_CONDITIONFAILED,
  GoogleCloudRunV2Condition_State_CONDITIONSUCCEEDED,
  GoogleCloudRunV2Condition_State #-}

-- | The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
newtype GoogleCloudRunV2EmptyDirVolumeSource_Medium = GoogleCloudRunV2EmptyDirVolumeSource_Medium { fromGoogleCloudRunV2EmptyDirVolumeSource_Medium :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | When not specified, falls back to the default implementation which is currently in memory (this may change over time).
pattern GoogleCloudRunV2EmptyDirVolumeSource_Medium_MEDIUMUNSPECIFIED :: GoogleCloudRunV2EmptyDirVolumeSource_Medium
pattern GoogleCloudRunV2EmptyDirVolumeSource_Medium_MEDIUMUNSPECIFIED = GoogleCloudRunV2EmptyDirVolumeSource_Medium "MEDIUM_UNSPECIFIED"

-- | Explicitly set the EmptyDir to be in memory. Uses tmpfs.
pattern GoogleCloudRunV2EmptyDirVolumeSource_Medium_Memory :: GoogleCloudRunV2EmptyDirVolumeSource_Medium
pattern GoogleCloudRunV2EmptyDirVolumeSource_Medium_Memory = GoogleCloudRunV2EmptyDirVolumeSource_Medium "MEMORY"

{-# COMPLETE
  GoogleCloudRunV2EmptyDirVolumeSource_Medium_MEDIUMUNSPECIFIED,
  GoogleCloudRunV2EmptyDirVolumeSource_Medium_Memory,
  GoogleCloudRunV2EmptyDirVolumeSource_Medium #-}

-- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
newtype GoogleCloudRunV2Execution_LaunchStage = GoogleCloudRunV2Execution_LaunchStage { fromGoogleCloudRunV2Execution_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern GoogleCloudRunV2Execution_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_LAUNCHSTAGEUNSPECIFIED = GoogleCloudRunV2Execution_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern GoogleCloudRunV2Execution_LaunchStage_Unimplemented :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_Unimplemented = GoogleCloudRunV2Execution_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern GoogleCloudRunV2Execution_LaunchStage_Prelaunch :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_Prelaunch = GoogleCloudRunV2Execution_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern GoogleCloudRunV2Execution_LaunchStage_EARLYACCESS :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_EARLYACCESS = GoogleCloudRunV2Execution_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern GoogleCloudRunV2Execution_LaunchStage_Alpha :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_Alpha = GoogleCloudRunV2Execution_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern GoogleCloudRunV2Execution_LaunchStage_Beta :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_Beta = GoogleCloudRunV2Execution_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern GoogleCloudRunV2Execution_LaunchStage_GA :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_GA = GoogleCloudRunV2Execution_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern GoogleCloudRunV2Execution_LaunchStage_Deprecated :: GoogleCloudRunV2Execution_LaunchStage
pattern GoogleCloudRunV2Execution_LaunchStage_Deprecated = GoogleCloudRunV2Execution_LaunchStage "DEPRECATED"

{-# COMPLETE
  GoogleCloudRunV2Execution_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  GoogleCloudRunV2Execution_LaunchStage_Unimplemented,
  GoogleCloudRunV2Execution_LaunchStage_Prelaunch,
  GoogleCloudRunV2Execution_LaunchStage_EARLYACCESS,
  GoogleCloudRunV2Execution_LaunchStage_Alpha,
  GoogleCloudRunV2Execution_LaunchStage_Beta,
  GoogleCloudRunV2Execution_LaunchStage_GA,
  GoogleCloudRunV2Execution_LaunchStage_Deprecated,
  GoogleCloudRunV2Execution_LaunchStage #-}

-- | Status for the execution completion.
newtype GoogleCloudRunV2ExecutionReference_CompletionStatus = GoogleCloudRunV2ExecutionReference_CompletionStatus { fromGoogleCloudRunV2ExecutionReference_CompletionStatus :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The default value. This value is used if the state is omitted.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_COMPLETIONSTATUSUNSPECIFIED :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_COMPLETIONSTATUSUNSPECIFIED = GoogleCloudRunV2ExecutionReference_CompletionStatus "COMPLETION_STATUS_UNSPECIFIED"

-- | Job execution has succeeded.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONSUCCEEDED :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONSUCCEEDED = GoogleCloudRunV2ExecutionReference_CompletionStatus "EXECUTION_SUCCEEDED"

-- | Job execution has failed.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONFAILED :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONFAILED = GoogleCloudRunV2ExecutionReference_CompletionStatus "EXECUTION_FAILED"

-- | Job execution is running normally.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONRUNNING :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONRUNNING = GoogleCloudRunV2ExecutionReference_CompletionStatus "EXECUTION_RUNNING"

-- | Waiting for backing resources to be provisioned.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONPENDING :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONPENDING = GoogleCloudRunV2ExecutionReference_CompletionStatus "EXECUTION_PENDING"

-- | Job execution has been cancelled by the user.
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONCANCELLED :: GoogleCloudRunV2ExecutionReference_CompletionStatus
pattern GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONCANCELLED = GoogleCloudRunV2ExecutionReference_CompletionStatus "EXECUTION_CANCELLED"

{-# COMPLETE
  GoogleCloudRunV2ExecutionReference_CompletionStatus_COMPLETIONSTATUSUNSPECIFIED,
  GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONSUCCEEDED,
  GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONFAILED,
  GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONRUNNING,
  GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONPENDING,
  GoogleCloudRunV2ExecutionReference_CompletionStatus_EXECUTIONCANCELLED,
  GoogleCloudRunV2ExecutionReference_CompletionStatus #-}

-- | Output only. The state of the overall export operation.
newtype GoogleCloudRunV2ExportStatusResponse_OperationState = GoogleCloudRunV2ExportStatusResponse_OperationState { fromGoogleCloudRunV2ExportStatusResponse_OperationState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | State unspecified.
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_OPERATIONSTATEUNSPECIFIED :: GoogleCloudRunV2ExportStatusResponse_OperationState
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_OPERATIONSTATEUNSPECIFIED = GoogleCloudRunV2ExportStatusResponse_OperationState "OPERATION_STATE_UNSPECIFIED"

-- | Operation still in progress.
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_INPROGRESS :: GoogleCloudRunV2ExportStatusResponse_OperationState
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_INPROGRESS = GoogleCloudRunV2ExportStatusResponse_OperationState "IN_PROGRESS"

-- | Operation finished.
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_Finished :: GoogleCloudRunV2ExportStatusResponse_OperationState
pattern GoogleCloudRunV2ExportStatusResponse_OperationState_Finished = GoogleCloudRunV2ExportStatusResponse_OperationState "FINISHED"

{-# COMPLETE
  GoogleCloudRunV2ExportStatusResponse_OperationState_OPERATIONSTATEUNSPECIFIED,
  GoogleCloudRunV2ExportStatusResponse_OperationState_INPROGRESS,
  GoogleCloudRunV2ExportStatusResponse_OperationState_Finished,
  GoogleCloudRunV2ExportStatusResponse_OperationState #-}

-- | Output only. Has the image export job finished (regardless of successful or failure).
newtype GoogleCloudRunV2ImageExportStatus_ExportJobState = GoogleCloudRunV2ImageExportStatus_ExportJobState { fromGoogleCloudRunV2ImageExportStatus_ExportJobState :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | State unspecified.
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_EXPORTJOBSTATEUNSPECIFIED :: GoogleCloudRunV2ImageExportStatus_ExportJobState
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_EXPORTJOBSTATEUNSPECIFIED = GoogleCloudRunV2ImageExportStatus_ExportJobState "EXPORT_JOB_STATE_UNSPECIFIED"

-- | Job still in progress.
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_INPROGRESS :: GoogleCloudRunV2ImageExportStatus_ExportJobState
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_INPROGRESS = GoogleCloudRunV2ImageExportStatus_ExportJobState "IN_PROGRESS"

-- | Job finished.
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_Finished :: GoogleCloudRunV2ImageExportStatus_ExportJobState
pattern GoogleCloudRunV2ImageExportStatus_ExportJobState_Finished = GoogleCloudRunV2ImageExportStatus_ExportJobState "FINISHED"

{-# COMPLETE
  GoogleCloudRunV2ImageExportStatus_ExportJobState_EXPORTJOBSTATEUNSPECIFIED,
  GoogleCloudRunV2ImageExportStatus_ExportJobState_INPROGRESS,
  GoogleCloudRunV2ImageExportStatus_ExportJobState_Finished,
  GoogleCloudRunV2ImageExportStatus_ExportJobState #-}

-- | The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
newtype GoogleCloudRunV2Job_LaunchStage = GoogleCloudRunV2Job_LaunchStage { fromGoogleCloudRunV2Job_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern GoogleCloudRunV2Job_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_LAUNCHSTAGEUNSPECIFIED = GoogleCloudRunV2Job_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern GoogleCloudRunV2Job_LaunchStage_Unimplemented :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_Unimplemented = GoogleCloudRunV2Job_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern GoogleCloudRunV2Job_LaunchStage_Prelaunch :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_Prelaunch = GoogleCloudRunV2Job_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern GoogleCloudRunV2Job_LaunchStage_EARLYACCESS :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_EARLYACCESS = GoogleCloudRunV2Job_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern GoogleCloudRunV2Job_LaunchStage_Alpha :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_Alpha = GoogleCloudRunV2Job_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern GoogleCloudRunV2Job_LaunchStage_Beta :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_Beta = GoogleCloudRunV2Job_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern GoogleCloudRunV2Job_LaunchStage_GA :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_GA = GoogleCloudRunV2Job_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern GoogleCloudRunV2Job_LaunchStage_Deprecated :: GoogleCloudRunV2Job_LaunchStage
pattern GoogleCloudRunV2Job_LaunchStage_Deprecated = GoogleCloudRunV2Job_LaunchStage "DEPRECATED"

{-# COMPLETE
  GoogleCloudRunV2Job_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  GoogleCloudRunV2Job_LaunchStage_Unimplemented,
  GoogleCloudRunV2Job_LaunchStage_Prelaunch,
  GoogleCloudRunV2Job_LaunchStage_EARLYACCESS,
  GoogleCloudRunV2Job_LaunchStage_Alpha,
  GoogleCloudRunV2Job_LaunchStage_Beta,
  GoogleCloudRunV2Job_LaunchStage_GA,
  GoogleCloudRunV2Job_LaunchStage_Deprecated,
  GoogleCloudRunV2Job_LaunchStage #-}

-- | The action to take if the encryption key is revoked.
newtype GoogleCloudRunV2Revision_EncryptionKeyRevocationAction = GoogleCloudRunV2Revision_EncryptionKeyRevocationAction { fromGoogleCloudRunV2Revision_EncryptionKeyRevocationAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED :: GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED = GoogleCloudRunV2Revision_EncryptionKeyRevocationAction "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED"

-- | Prevents the creation of new instances.
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_PREVENTNEW :: GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_PREVENTNEW = GoogleCloudRunV2Revision_EncryptionKeyRevocationAction "PREVENT_NEW"

-- | Shuts down existing instances, and prevents creation of new ones.
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_Shutdown :: GoogleCloudRunV2Revision_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_Shutdown = GoogleCloudRunV2Revision_EncryptionKeyRevocationAction "SHUTDOWN"

{-# COMPLETE
  GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED,
  GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_PREVENTNEW,
  GoogleCloudRunV2Revision_EncryptionKeyRevocationAction_Shutdown,
  GoogleCloudRunV2Revision_EncryptionKeyRevocationAction #-}

-- | The execution environment being used to host this Revision.
newtype GoogleCloudRunV2Revision_ExecutionEnvironment = GoogleCloudRunV2Revision_ExecutionEnvironment { fromGoogleCloudRunV2Revision_ExecutionEnvironment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the First Generation environment.
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN1"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2Revision_ExecutionEnvironment #-}

-- | The least stable launch stage needed to create this resource, as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. Note that this value might not be what was used as input. For example, if ALPHA was provided as input in the parent resource, but only BETA and GA-level features are were, this field will be BETA.
newtype GoogleCloudRunV2Revision_LaunchStage = GoogleCloudRunV2Revision_LaunchStage { fromGoogleCloudRunV2Revision_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern GoogleCloudRunV2Revision_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_LAUNCHSTAGEUNSPECIFIED = GoogleCloudRunV2Revision_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern GoogleCloudRunV2Revision_LaunchStage_Unimplemented :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_Unimplemented = GoogleCloudRunV2Revision_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern GoogleCloudRunV2Revision_LaunchStage_Prelaunch :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_Prelaunch = GoogleCloudRunV2Revision_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern GoogleCloudRunV2Revision_LaunchStage_EARLYACCESS :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_EARLYACCESS = GoogleCloudRunV2Revision_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern GoogleCloudRunV2Revision_LaunchStage_Alpha :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_Alpha = GoogleCloudRunV2Revision_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern GoogleCloudRunV2Revision_LaunchStage_Beta :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_Beta = GoogleCloudRunV2Revision_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern GoogleCloudRunV2Revision_LaunchStage_GA :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_GA = GoogleCloudRunV2Revision_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern GoogleCloudRunV2Revision_LaunchStage_Deprecated :: GoogleCloudRunV2Revision_LaunchStage
pattern GoogleCloudRunV2Revision_LaunchStage_Deprecated = GoogleCloudRunV2Revision_LaunchStage "DEPRECATED"

{-# COMPLETE
  GoogleCloudRunV2Revision_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  GoogleCloudRunV2Revision_LaunchStage_Unimplemented,
  GoogleCloudRunV2Revision_LaunchStage_Prelaunch,
  GoogleCloudRunV2Revision_LaunchStage_EARLYACCESS,
  GoogleCloudRunV2Revision_LaunchStage_Alpha,
  GoogleCloudRunV2Revision_LaunchStage_Beta,
  GoogleCloudRunV2Revision_LaunchStage_GA,
  GoogleCloudRunV2Revision_LaunchStage_Deprecated,
  GoogleCloudRunV2Revision_LaunchStage #-}

-- | Optional. The action to take if the encryption key is revoked.
newtype GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction = GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction { fromGoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED :: GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED = GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction "ENCRYPTION_KEY_REVOCATION_ACTION_UNSPECIFIED"

-- | Prevents the creation of new instances.
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_PREVENTNEW :: GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_PREVENTNEW = GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction "PREVENT_NEW"

-- | Shuts down existing instances, and prevents creation of new ones.
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_Shutdown :: GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction
pattern GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_Shutdown = GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction "SHUTDOWN"

{-# COMPLETE
  GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_ENCRYPTIONKEYREVOCATIONACTIONUNSPECIFIED,
  GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_PREVENTNEW,
  GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction_Shutdown,
  GoogleCloudRunV2RevisionTemplate_EncryptionKeyRevocationAction #-}

-- | Optional. The sandbox environment to host this Revision.
newtype GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment { fromGoogleCloudRunV2RevisionTemplate_ExecutionEnvironment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the First Generation environment.
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN1"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment #-}

-- | Optional. Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS/TRAFFIC/UNSPECIFIED if no revision is active.
newtype GoogleCloudRunV2Service_Ingress = GoogleCloudRunV2Service_Ingress { fromGoogleCloudRunV2Service_Ingress :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED :: GoogleCloudRunV2Service_Ingress
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED = GoogleCloudRunV2Service_Ingress "INGRESS_TRAFFIC_UNSPECIFIED"

-- | All inbound traffic is allowed.
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL :: GoogleCloudRunV2Service_Ingress
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL = GoogleCloudRunV2Service_Ingress "INGRESS_TRAFFIC_ALL"

-- | Only internal traffic is allowed.
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY :: GoogleCloudRunV2Service_Ingress
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY = GoogleCloudRunV2Service_Ingress "INGRESS_TRAFFIC_INTERNAL_ONLY"

-- | Both internal and Google Cloud Load Balancer traffic is allowed.
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER :: GoogleCloudRunV2Service_Ingress
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER = GoogleCloudRunV2Service_Ingress "INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER"

-- | No ingress traffic is allowed.
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICNONE :: GoogleCloudRunV2Service_Ingress
pattern GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICNONE = GoogleCloudRunV2Service_Ingress "INGRESS_TRAFFIC_NONE"

{-# COMPLETE
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICNONE,
  GoogleCloudRunV2Service_Ingress #-}

-- | Optional. The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features. For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
newtype GoogleCloudRunV2Service_LaunchStage = GoogleCloudRunV2Service_LaunchStage { fromGoogleCloudRunV2Service_LaunchStage :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Do not use this default value.
pattern GoogleCloudRunV2Service_LaunchStage_LAUNCHSTAGEUNSPECIFIED :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_LAUNCHSTAGEUNSPECIFIED = GoogleCloudRunV2Service_LaunchStage "LAUNCH_STAGE_UNSPECIFIED"

-- | The feature is not yet implemented. Users can not use it.
pattern GoogleCloudRunV2Service_LaunchStage_Unimplemented :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_Unimplemented = GoogleCloudRunV2Service_LaunchStage "UNIMPLEMENTED"

-- | Prelaunch features are hidden from users and are only visible internally.
pattern GoogleCloudRunV2Service_LaunchStage_Prelaunch :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_Prelaunch = GoogleCloudRunV2Service_LaunchStage "PRELAUNCH"

-- | Early Access features are limited to a closed group of testers. To use these features, you must sign up in advance and sign a Trusted Tester agreement (which includes confidentiality provisions). These features may be unstable, changed in backward-incompatible ways, and are not guaranteed to be released.
pattern GoogleCloudRunV2Service_LaunchStage_EARLYACCESS :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_EARLYACCESS = GoogleCloudRunV2Service_LaunchStage "EARLY_ACCESS"

-- | Alpha is a limited availability test for releases before they are cleared for widespread use. By Alpha, all significant design issues are resolved and we are in the process of verifying functionality. Alpha customers need to apply for access, agree to applicable terms, and have their projects allowlisted. Alpha releases don\'t have to be feature complete, no SLAs are provided, and there are no technical support obligations, but they will be far enough along that customers can actually use them in test environments or for limited-use tests -- just like they would in normal production cases.
pattern GoogleCloudRunV2Service_LaunchStage_Alpha :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_Alpha = GoogleCloudRunV2Service_LaunchStage "ALPHA"

-- | Beta is the point at which we are ready to open a release for any customer to use. There are no SLA or technical support obligations in a Beta release. Products will be complete from a feature perspective, but may have some open outstanding issues. Beta releases are suitable for limited production use cases.
pattern GoogleCloudRunV2Service_LaunchStage_Beta :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_Beta = GoogleCloudRunV2Service_LaunchStage "BETA"

-- | GA features are open to all developers and are considered stable and fully qualified for production use.
pattern GoogleCloudRunV2Service_LaunchStage_GA :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_GA = GoogleCloudRunV2Service_LaunchStage "GA"

-- | Deprecated features are scheduled to be shut down and removed. For more information, see the \"Deprecation Policy\" section of our <https://cloud.google.com/terms/ Terms of Service> and the <https://cloud.google.com/terms/deprecation Google Cloud Platform Subject to the Deprecation Policy> documentation.
pattern GoogleCloudRunV2Service_LaunchStage_Deprecated :: GoogleCloudRunV2Service_LaunchStage
pattern GoogleCloudRunV2Service_LaunchStage_Deprecated = GoogleCloudRunV2Service_LaunchStage "DEPRECATED"

{-# COMPLETE
  GoogleCloudRunV2Service_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
  GoogleCloudRunV2Service_LaunchStage_Unimplemented,
  GoogleCloudRunV2Service_LaunchStage_Prelaunch,
  GoogleCloudRunV2Service_LaunchStage_EARLYACCESS,
  GoogleCloudRunV2Service_LaunchStage_Alpha,
  GoogleCloudRunV2Service_LaunchStage_Beta,
  GoogleCloudRunV2Service_LaunchStage_GA,
  GoogleCloudRunV2Service_LaunchStage_Deprecated,
  GoogleCloudRunV2Service_LaunchStage #-}

-- | Optional. The scaling mode for the service.
newtype GoogleCloudRunV2ServiceScaling_ScalingMode = GoogleCloudRunV2ServiceScaling_ScalingMode { fromGoogleCloudRunV2ServiceScaling_ScalingMode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_SCALINGMODEUNSPECIFIED :: GoogleCloudRunV2ServiceScaling_ScalingMode
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_SCALINGMODEUNSPECIFIED = GoogleCloudRunV2ServiceScaling_ScalingMode "SCALING_MODE_UNSPECIFIED"

-- | Scale based on traffic between min and max instances.
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_Automatic :: GoogleCloudRunV2ServiceScaling_ScalingMode
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_Automatic = GoogleCloudRunV2ServiceScaling_ScalingMode "AUTOMATIC"

-- | Scale to exactly min instances and ignore max instances.
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_Manual :: GoogleCloudRunV2ServiceScaling_ScalingMode
pattern GoogleCloudRunV2ServiceScaling_ScalingMode_Manual = GoogleCloudRunV2ServiceScaling_ScalingMode "MANUAL"

{-# COMPLETE
  GoogleCloudRunV2ServiceScaling_ScalingMode_SCALINGMODEUNSPECIFIED,
  GoogleCloudRunV2ServiceScaling_ScalingMode_Automatic,
  GoogleCloudRunV2ServiceScaling_ScalingMode_Manual,
  GoogleCloudRunV2ServiceScaling_ScalingMode #-}

-- | The execution environment being used to host this Task.
newtype GoogleCloudRunV2Task_ExecutionEnvironment = GoogleCloudRunV2Task_ExecutionEnvironment { fromGoogleCloudRunV2Task_ExecutionEnvironment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2Task_ExecutionEnvironment
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2Task_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the First Generation environment.
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 :: GoogleCloudRunV2Task_ExecutionEnvironment
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 = GoogleCloudRunV2Task_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN1"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2Task_ExecutionEnvironment
pattern GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2Task_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
  GoogleCloudRunV2Task_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2Task_ExecutionEnvironment #-}

-- | Optional. The execution environment being used to host this Task.
newtype GoogleCloudRunV2TaskTemplate_ExecutionEnvironment = GoogleCloudRunV2TaskTemplate_ExecutionEnvironment { fromGoogleCloudRunV2TaskTemplate_ExecutionEnvironment :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2TaskTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the First Generation environment.
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 :: GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1 = GoogleCloudRunV2TaskTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN1"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2TaskTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2TaskTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN1,
  GoogleCloudRunV2TaskTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2TaskTemplate_ExecutionEnvironment #-}

-- | The allocation type for this traffic target.
newtype GoogleCloudRunV2TrafficTarget_Type = GoogleCloudRunV2TrafficTarget_Type { fromGoogleCloudRunV2TrafficTarget_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified instance allocation type.
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED :: GoogleCloudRunV2TrafficTarget_Type
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED = GoogleCloudRunV2TrafficTarget_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED"

-- | Allocates instances to the Service\'s latest ready Revision.
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPELATEST :: GoogleCloudRunV2TrafficTarget_Type
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPELATEST = GoogleCloudRunV2TrafficTarget_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"

-- | Allocates instances to a Revision by name.
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEREVISION :: GoogleCloudRunV2TrafficTarget_Type
pattern GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEREVISION = GoogleCloudRunV2TrafficTarget_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"

{-# COMPLETE
  GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
  GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
  GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
  GoogleCloudRunV2TrafficTarget_Type #-}

-- | The allocation type for this traffic target.
newtype GoogleCloudRunV2TrafficTargetStatus_Type = GoogleCloudRunV2TrafficTargetStatus_Type { fromGoogleCloudRunV2TrafficTargetStatus_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified instance allocation type.
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED :: GoogleCloudRunV2TrafficTargetStatus_Type
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED = GoogleCloudRunV2TrafficTargetStatus_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED"

-- | Allocates instances to the Service\'s latest ready Revision.
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPELATEST :: GoogleCloudRunV2TrafficTargetStatus_Type
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPELATEST = GoogleCloudRunV2TrafficTargetStatus_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"

-- | Allocates instances to a Revision by name.
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEREVISION :: GoogleCloudRunV2TrafficTargetStatus_Type
pattern GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEREVISION = GoogleCloudRunV2TrafficTargetStatus_Type "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"

{-# COMPLETE
  GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
  GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
  GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
  GoogleCloudRunV2TrafficTargetStatus_Type #-}

-- | Optional. Traffic VPC egress settings. If not provided, it defaults to PRIVATE/RANGES/ONLY.
newtype GoogleCloudRunV2VpcAccess_Egress = GoogleCloudRunV2VpcAccess_Egress { fromGoogleCloudRunV2VpcAccess_Egress :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified
pattern GoogleCloudRunV2VpcAccess_Egress_VPCEGRESSUNSPECIFIED :: GoogleCloudRunV2VpcAccess_Egress
pattern GoogleCloudRunV2VpcAccess_Egress_VPCEGRESSUNSPECIFIED = GoogleCloudRunV2VpcAccess_Egress "VPC_EGRESS_UNSPECIFIED"

-- | All outbound traffic is routed through the VPC connector.
pattern GoogleCloudRunV2VpcAccess_Egress_ALLTRAFFIC :: GoogleCloudRunV2VpcAccess_Egress
pattern GoogleCloudRunV2VpcAccess_Egress_ALLTRAFFIC = GoogleCloudRunV2VpcAccess_Egress "ALL_TRAFFIC"

-- | Only private IP ranges are routed through the VPC connector.
pattern GoogleCloudRunV2VpcAccess_Egress_PRIVATERANGESONLY :: GoogleCloudRunV2VpcAccess_Egress
pattern GoogleCloudRunV2VpcAccess_Egress_PRIVATERANGESONLY = GoogleCloudRunV2VpcAccess_Egress "PRIVATE_RANGES_ONLY"

{-# COMPLETE
  GoogleCloudRunV2VpcAccess_Egress_VPCEGRESSUNSPECIFIED,
  GoogleCloudRunV2VpcAccess_Egress_ALLTRAFFIC,
  GoogleCloudRunV2VpcAccess_Egress_PRIVATERANGESONLY,
  GoogleCloudRunV2VpcAccess_Egress #-}

-- | Required. The decision of this manual approval.
newtype GoogleDevtoolsCloudbuildV1ApprovalResult_Decision = GoogleDevtoolsCloudbuildV1ApprovalResult_Decision { fromGoogleDevtoolsCloudbuildV1ApprovalResult_Decision :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default enum type. This should not be used.
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED :: GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED = GoogleDevtoolsCloudbuildV1ApprovalResult_Decision "DECISION_UNSPECIFIED"

-- | Build is approved.
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved :: GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved = GoogleDevtoolsCloudbuildV1ApprovalResult_Decision "APPROVED"

-- | Build is rejected.
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected :: GoogleDevtoolsCloudbuildV1ApprovalResult_Decision
pattern GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected = GoogleDevtoolsCloudbuildV1ApprovalResult_Decision "REJECTED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_DECISIONUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Approved,
  GoogleDevtoolsCloudbuildV1ApprovalResult_Decision_Rejected,
  GoogleDevtoolsCloudbuildV1ApprovalResult_Decision #-}

-- | Output only. Status of the build.
newtype GoogleDevtoolsCloudbuildV1Build_Status = GoogleDevtoolsCloudbuildV1Build_Status { fromGoogleDevtoolsCloudbuildV1Build_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Status of the build is unknown.
pattern GoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN = GoogleDevtoolsCloudbuildV1Build_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Pending :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Pending = GoogleDevtoolsCloudbuildV1Build_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Queued :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Queued = GoogleDevtoolsCloudbuildV1Build_Status "QUEUED"

-- | Build or step is being executed.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Working :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Working = GoogleDevtoolsCloudbuildV1Build_Status "WORKING"

-- | Build or step finished successfully.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Success :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Success = GoogleDevtoolsCloudbuildV1Build_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Failure :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Failure = GoogleDevtoolsCloudbuildV1Build_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern GoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR = GoogleDevtoolsCloudbuildV1Build_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Timeout :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Timeout = GoogleDevtoolsCloudbuildV1Build_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Cancelled :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Cancelled = GoogleDevtoolsCloudbuildV1Build_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern GoogleDevtoolsCloudbuildV1Build_Status_Expired :: GoogleDevtoolsCloudbuildV1Build_Status
pattern GoogleDevtoolsCloudbuildV1Build_Status_Expired = GoogleDevtoolsCloudbuildV1Build_Status "EXPIRED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1Build_Status_STATUSUNKNOWN,
  GoogleDevtoolsCloudbuildV1Build_Status_Pending,
  GoogleDevtoolsCloudbuildV1Build_Status_Queued,
  GoogleDevtoolsCloudbuildV1Build_Status_Working,
  GoogleDevtoolsCloudbuildV1Build_Status_Success,
  GoogleDevtoolsCloudbuildV1Build_Status_Failure,
  GoogleDevtoolsCloudbuildV1Build_Status_INTERNALERROR,
  GoogleDevtoolsCloudbuildV1Build_Status_Timeout,
  GoogleDevtoolsCloudbuildV1Build_Status_Cancelled,
  GoogleDevtoolsCloudbuildV1Build_Status_Expired,
  GoogleDevtoolsCloudbuildV1Build_Status #-}

-- | Output only. The state of this build\'s approval.
newtype GoogleDevtoolsCloudbuildV1BuildApproval_State = GoogleDevtoolsCloudbuildV1BuildApproval_State { fromGoogleDevtoolsCloudbuildV1BuildApproval_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default enum type. This should not be used.
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED :: GoogleDevtoolsCloudbuildV1BuildApproval_State
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED = GoogleDevtoolsCloudbuildV1BuildApproval_State "STATE_UNSPECIFIED"

-- | Build approval is pending.
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Pending :: GoogleDevtoolsCloudbuildV1BuildApproval_State
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Pending = GoogleDevtoolsCloudbuildV1BuildApproval_State "PENDING"

-- | Build approval has been approved.
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Approved :: GoogleDevtoolsCloudbuildV1BuildApproval_State
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Approved = GoogleDevtoolsCloudbuildV1BuildApproval_State "APPROVED"

-- | Build approval has been rejected.
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected :: GoogleDevtoolsCloudbuildV1BuildApproval_State
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected = GoogleDevtoolsCloudbuildV1BuildApproval_State "REJECTED"

-- | Build was cancelled while it was still pending approval.
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled :: GoogleDevtoolsCloudbuildV1BuildApproval_State
pattern GoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled = GoogleDevtoolsCloudbuildV1BuildApproval_State "CANCELLED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildApproval_State_STATEUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1BuildApproval_State_Pending,
  GoogleDevtoolsCloudbuildV1BuildApproval_State_Approved,
  GoogleDevtoolsCloudbuildV1BuildApproval_State_Rejected,
  GoogleDevtoolsCloudbuildV1BuildApproval_State_Cancelled,
  GoogleDevtoolsCloudbuildV1BuildApproval_State #-}

-- | Optional. Option to specify how default logs buckets are setup.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior = GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior { fromGoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED :: GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED = GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED"

-- | Bucket is located in user-owned project in the same region as the build. The builder service account must have access to create and write to Cloud Storage buckets in the build project.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET :: GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET = GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "REGIONAL_USER_OWNED_BUCKET"

-- | Bucket is located in a Google-owned project and is not regionalized.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET :: GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior
pattern GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET = GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior "LEGACY_BUCKET"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_DEFAULTLOGSBUCKETBEHAVIORUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_REGIONALUSEROWNEDBUCKET,
  GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior_LEGACYBUCKET,
  GoogleDevtoolsCloudbuildV1BuildOptions_DefaultLogsBucketBehavior #-}

-- | Option to define build log streaming behavior to Cloud Storage.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption = GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption { fromGoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Service may automatically determine build log streaming behavior.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT :: GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT = GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_DEFAULT"

-- | Build logs should be streamed to Cloud Storage.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON :: GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON = GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_ON"

-- | Build logs should not be streamed to Cloud Storage; they will be written when the build is completed.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF :: GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF = GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption "STREAM_OFF"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMDEFAULT,
  GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMON,
  GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption_STREAMOFF,
  GoogleDevtoolsCloudbuildV1BuildOptions_LogStreamingOption #-}

-- | Option to specify the logging mode, which determines if and where build logs are stored.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_Logging = GoogleDevtoolsCloudbuildV1BuildOptions_Logging { fromGoogleDevtoolsCloudbuildV1BuildOptions_Logging :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | The service determines the logging mode. The default is @LEGACY@. Do not rely on the default logging behavior as it may change in the future.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "LOGGING_UNSPECIFIED"

-- | Build logs are stored in Cloud Logging and Cloud Storage.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "LEGACY"

-- | Build logs are stored in Cloud Storage.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "GCS_ONLY"

-- | This option is the same as CLOUD/LOGGING/ONLY.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "STACKDRIVER_ONLY"

-- | Build logs are stored in Cloud Logging. Selecting this option will not allow <https://cloud.google.com/sdk/gcloud/reference/builds/log logs streaming>.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "CLOUD_LOGGING_ONLY"

-- | Turn off all logging. No build logs will be captured.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_None :: GoogleDevtoolsCloudbuildV1BuildOptions_Logging
pattern GoogleDevtoolsCloudbuildV1BuildOptions_Logging_None = GoogleDevtoolsCloudbuildV1BuildOptions_Logging "NONE"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_LOGGINGUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_Legacy,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_GCSONLY,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_STACKDRIVERONLY,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_CLOUDLOGGINGONLY,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging_None,
  GoogleDevtoolsCloudbuildV1BuildOptions_Logging #-}

-- | Compute Engine machine type on which to run the build.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_MachineType = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType { fromGoogleDevtoolsCloudbuildV1BuildOptions_MachineType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Standard machine type.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "UNSPECIFIED"

-- | Highcpu machine with 8 CPUs.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8 :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8 = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "N1_HIGHCPU_8"

-- | Highcpu machine with 32 CPUs.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32 :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32 = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "N1_HIGHCPU_32"

-- | Highcpu e2 machine with 8 CPUs.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8 :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8 = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_HIGHCPU_8"

-- | Highcpu e2 machine with 32 CPUs.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32 :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32 = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_HIGHCPU_32"

-- | E2 machine with 1 CPU.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM :: GoogleDevtoolsCloudbuildV1BuildOptions_MachineType
pattern GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM = GoogleDevtoolsCloudbuildV1BuildOptions_MachineType "E2_MEDIUM"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_Unspecified,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_8,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_N1_HIGHCPU_32,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_8,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2_HIGHCPU_32,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType_E2MEDIUM,
  GoogleDevtoolsCloudbuildV1BuildOptions_MachineType #-}

-- | Requested verifiability options.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption = GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption { fromGoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Not a verifiable build (the default).
pattern GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED :: GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED = GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption "NOT_VERIFIED"

-- | Build must be verified.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified :: GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified = GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption "VERIFIED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_NOTVERIFIED,
  GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption_Verified,
  GoogleDevtoolsCloudbuildV1BuildOptions_RequestedVerifyOption #-}

newtype GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem = GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem { fromGoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No hash requested.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None :: GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None = GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "NONE"

-- | Use a sha256 hash.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256 :: GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256 = GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "SHA256"

-- | Use a md5 hash.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5 :: GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5 = GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "MD5"

-- | Use a sha512 hash.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512 :: GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512 = GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem "SHA512"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_None,
  GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA256,
  GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_MD5,
  GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem_SHA512,
  GoogleDevtoolsCloudbuildV1BuildOptions_SourceProvenanceHashItem #-}

-- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
newtype GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption = GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption { fromGoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Fails the build if error in substitutions checks, like missing a substitution in the template or in the map.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH :: GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH = GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption "MUST_MATCH"

-- | Do not fail the build if error in substitutions checks.
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE :: GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption
pattern GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE = GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption "ALLOW_LOOSE"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_MUSTMATCH,
  GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption_ALLOWLOOSE,
  GoogleDevtoolsCloudbuildV1BuildOptions_SubstitutionOption #-}

-- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
newtype GoogleDevtoolsCloudbuildV1BuildStep_Status = GoogleDevtoolsCloudbuildV1BuildStep_Status { fromGoogleDevtoolsCloudbuildV1BuildStep_Status :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Status of the build is unknown.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN = GoogleDevtoolsCloudbuildV1BuildStep_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Pending :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Pending = GoogleDevtoolsCloudbuildV1BuildStep_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Queued :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Queued = GoogleDevtoolsCloudbuildV1BuildStep_Status "QUEUED"

-- | Build or step is being executed.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Working :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Working = GoogleDevtoolsCloudbuildV1BuildStep_Status "WORKING"

-- | Build or step finished successfully.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Success :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Success = GoogleDevtoolsCloudbuildV1BuildStep_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Failure :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Failure = GoogleDevtoolsCloudbuildV1BuildStep_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR = GoogleDevtoolsCloudbuildV1BuildStep_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout = GoogleDevtoolsCloudbuildV1BuildStep_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled = GoogleDevtoolsCloudbuildV1BuildStep_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Expired :: GoogleDevtoolsCloudbuildV1BuildStep_Status
pattern GoogleDevtoolsCloudbuildV1BuildStep_Status_Expired = GoogleDevtoolsCloudbuildV1BuildStep_Status "EXPIRED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1BuildStep_Status_STATUSUNKNOWN,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Pending,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Queued,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Working,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Success,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Failure,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_INTERNALERROR,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Timeout,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Cancelled,
  GoogleDevtoolsCloudbuildV1BuildStep_Status_Expired,
  GoogleDevtoolsCloudbuildV1BuildStep_Status #-}

-- | The name of the failure.
newtype GoogleDevtoolsCloudbuildV1FailureInfo_Type = GoogleDevtoolsCloudbuildV1FailureInfo_Type { fromGoogleDevtoolsCloudbuildV1FailureInfo_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Type unspecified
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_FAILURETYPEUNSPECIFIED :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_FAILURETYPEUNSPECIFIED = GoogleDevtoolsCloudbuildV1FailureInfo_Type "FAILURE_TYPE_UNSPECIFIED"

-- | Unable to push the image to the repository.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHFAILED :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHFAILED = GoogleDevtoolsCloudbuildV1FailureInfo_Type "PUSH_FAILED"

-- | Final image not found.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHIMAGENOTFOUND :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHIMAGENOTFOUND = GoogleDevtoolsCloudbuildV1FailureInfo_Type "PUSH_IMAGE_NOT_FOUND"

-- | Unauthorized push of the final image.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHNOTAUTHORIZED :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHNOTAUTHORIZED = GoogleDevtoolsCloudbuildV1FailureInfo_Type "PUSH_NOT_AUTHORIZED"

-- | Backend logging failures. Should retry.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_LOGGINGFAILURE :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_LOGGINGFAILURE = GoogleDevtoolsCloudbuildV1FailureInfo_Type "LOGGING_FAILURE"

-- | A build step has failed.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_USERBUILDSTEP :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_USERBUILDSTEP = GoogleDevtoolsCloudbuildV1FailureInfo_Type "USER_BUILD_STEP"

-- | The source fetching has failed.
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_FETCHSOURCEFAILED :: GoogleDevtoolsCloudbuildV1FailureInfo_Type
pattern GoogleDevtoolsCloudbuildV1FailureInfo_Type_FETCHSOURCEFAILED = GoogleDevtoolsCloudbuildV1FailureInfo_Type "FETCH_SOURCE_FAILED"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_FAILURETYPEUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHFAILED,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHIMAGENOTFOUND,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_PUSHNOTAUTHORIZED,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_LOGGINGFAILURE,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_USERBUILDSTEP,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type_FETCHSOURCEFAILED,
  GoogleDevtoolsCloudbuildV1FailureInfo_Type #-}

-- | The type of hash that was performed.
newtype GoogleDevtoolsCloudbuildV1Hash_Type = GoogleDevtoolsCloudbuildV1Hash_Type { fromGoogleDevtoolsCloudbuildV1Hash_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | No hash requested.
pattern GoogleDevtoolsCloudbuildV1Hash_Type_None :: GoogleDevtoolsCloudbuildV1Hash_Type
pattern GoogleDevtoolsCloudbuildV1Hash_Type_None = GoogleDevtoolsCloudbuildV1Hash_Type "NONE"

-- | Use a sha256 hash.
pattern GoogleDevtoolsCloudbuildV1Hash_Type_SHA256 :: GoogleDevtoolsCloudbuildV1Hash_Type
pattern GoogleDevtoolsCloudbuildV1Hash_Type_SHA256 = GoogleDevtoolsCloudbuildV1Hash_Type "SHA256"

-- | Use a md5 hash.
pattern GoogleDevtoolsCloudbuildV1Hash_Type_MD5 :: GoogleDevtoolsCloudbuildV1Hash_Type
pattern GoogleDevtoolsCloudbuildV1Hash_Type_MD5 = GoogleDevtoolsCloudbuildV1Hash_Type "MD5"

-- | Use a sha512 hash.
pattern GoogleDevtoolsCloudbuildV1Hash_Type_SHA512 :: GoogleDevtoolsCloudbuildV1Hash_Type
pattern GoogleDevtoolsCloudbuildV1Hash_Type_SHA512 = GoogleDevtoolsCloudbuildV1Hash_Type "SHA512"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1Hash_Type_None,
  GoogleDevtoolsCloudbuildV1Hash_Type_SHA256,
  GoogleDevtoolsCloudbuildV1Hash_Type_MD5,
  GoogleDevtoolsCloudbuildV1Hash_Type_SHA512,
  GoogleDevtoolsCloudbuildV1Hash_Type #-}

-- | Optional. Option to specify the tool to fetch the source file for the build.
newtype GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher = GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher { fromGoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Unspecified defaults to GSUTIL.
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED :: GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED = GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "SOURCE_FETCHER_UNSPECIFIED"

-- | Use the \"gsutil\" tool to download the source file.
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil :: GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil = GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "GSUTIL"

-- | Use the Cloud Storage Fetcher tool to download the source file.
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER :: GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher
pattern GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER = GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher "GCS_FETCHER"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_SOURCEFETCHERUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_Gsutil,
  GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher_GCSFETCHER,
  GoogleDevtoolsCloudbuildV1StorageSource_SourceFetcher #-}

-- | The priority for this warning.
newtype GoogleDevtoolsCloudbuildV1Warning_Priority = GoogleDevtoolsCloudbuildV1Warning_Priority { fromGoogleDevtoolsCloudbuildV1Warning_Priority :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Should not be used.
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_PRIORITYUNSPECIFIED :: GoogleDevtoolsCloudbuildV1Warning_Priority
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_PRIORITYUNSPECIFIED = GoogleDevtoolsCloudbuildV1Warning_Priority "PRIORITY_UNSPECIFIED"

-- | e.g. deprecation warnings and alternative feature highlights.
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Info :: GoogleDevtoolsCloudbuildV1Warning_Priority
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Info = GoogleDevtoolsCloudbuildV1Warning_Priority "INFO"

-- | e.g. automated detection of possible issues with the build.
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Warning :: GoogleDevtoolsCloudbuildV1Warning_Priority
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Warning = GoogleDevtoolsCloudbuildV1Warning_Priority "WARNING"

-- | e.g. alerts that a feature used in the build is pending removal
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Alert :: GoogleDevtoolsCloudbuildV1Warning_Priority
pattern GoogleDevtoolsCloudbuildV1Warning_Priority_Alert = GoogleDevtoolsCloudbuildV1Warning_Priority "ALERT"

{-# COMPLETE
  GoogleDevtoolsCloudbuildV1Warning_Priority_PRIORITYUNSPECIFIED,
  GoogleDevtoolsCloudbuildV1Warning_Priority_Info,
  GoogleDevtoolsCloudbuildV1Warning_Priority_Warning,
  GoogleDevtoolsCloudbuildV1Warning_Priority_Alert,
  GoogleDevtoolsCloudbuildV1Warning_Priority #-}

-- | The log type that this config enables.
newtype GoogleIamV1AuditLogConfig_LogType = GoogleIamV1AuditLogConfig_LogType { fromGoogleIamV1AuditLogConfig_LogType :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | Default case. Should never be this.
pattern GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED = GoogleIamV1AuditLogConfig_LogType "LOG_TYPE_UNSPECIFIED"

-- | Admin reads. Example: CloudIAM getIamPolicy
pattern GoogleIamV1AuditLogConfig_LogType_ADMINREAD :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_ADMINREAD = GoogleIamV1AuditLogConfig_LogType "ADMIN_READ"

-- | Data writes. Example: CloudSQL Users create
pattern GoogleIamV1AuditLogConfig_LogType_DATAWRITE :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_DATAWRITE = GoogleIamV1AuditLogConfig_LogType "DATA_WRITE"

-- | Data reads. Example: CloudSQL Users list
pattern GoogleIamV1AuditLogConfig_LogType_DATAREAD :: GoogleIamV1AuditLogConfig_LogType
pattern GoogleIamV1AuditLogConfig_LogType_DATAREAD = GoogleIamV1AuditLogConfig_LogType "DATA_READ"

{-# COMPLETE
  GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
  GoogleIamV1AuditLogConfig_LogType_ADMINREAD,
  GoogleIamV1AuditLogConfig_LogType_DATAWRITE,
  GoogleIamV1AuditLogConfig_LogType_DATAREAD,
  GoogleIamV1AuditLogConfig_LogType #-}

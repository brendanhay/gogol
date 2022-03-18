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
-- Module      : Network.Google.Run.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Run.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * GoogleCloudRunV2Condition_DomainMappingReason
    GoogleCloudRunV2Condition_DomainMappingReason
      ( GoogleCloudRunV2Condition_DomainMappingReason_DOMAINMAPPINGREASONUNDEFINED,
        GoogleCloudRunV2Condition_DomainMappingReason_ROUTENOTREADY,
        GoogleCloudRunV2Condition_DomainMappingReason_PERMISSIONDENIED,
        GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEALREADYEXISTS,
        GoogleCloudRunV2Condition_DomainMappingReason_MAPPINGALREADYEXISTS,
        GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEPENDING,
        GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEFAILED,
        ..
      ),

    -- * GoogleCloudRunV2Condition_ExecutionReason
    GoogleCloudRunV2Condition_ExecutionReason
      ( GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED,
        GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR,
        GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE,
        ..
      ),

    -- * GoogleCloudRunV2Condition_InternalReason
    GoogleCloudRunV2Condition_InternalReason
      ( GoogleCloudRunV2Condition_InternalReason_INTERNALREASONUNDEFINED,
        GoogleCloudRunV2Condition_InternalReason_CONFLICTINGREVISIONNAME,
        GoogleCloudRunV2Condition_InternalReason_REVISIONMISSING,
        GoogleCloudRunV2Condition_InternalReason_CONFIGURATIONMISSING,
        GoogleCloudRunV2Condition_InternalReason_ASSIGNINGTRAFFIC,
        GoogleCloudRunV2Condition_InternalReason_UPDATINGINGRESSTRAFFICALLOWED,
        GoogleCloudRunV2Condition_InternalReason_REVISIONORGPOLICYVIOLATION,
        GoogleCloudRunV2Condition_InternalReason_ENABLINGGCFV2URISUPPORT,
        ..
      ),

    -- * GoogleCloudRunV2Condition_Reason
    GoogleCloudRunV2Condition_Reason
      ( GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED,
        GoogleCloudRunV2Condition_Reason_Unknown,
        GoogleCloudRunV2Condition_Reason_ROUTEMISSING,
        GoogleCloudRunV2Condition_Reason_REVISIONFAILED,
        GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED,
        GoogleCloudRunV2Condition_Reason_BUILDSTEPFAILED,
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
        ..
      ),

    -- * GoogleCloudRunV2Condition_RevisionReason
    GoogleCloudRunV2Condition_RevisionReason
      ( GoogleCloudRunV2Condition_RevisionReason_REVISIONREASONUNDEFINED,
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
        ..
      ),

    -- * GoogleCloudRunV2Condition_Severity
    GoogleCloudRunV2Condition_Severity
      ( GoogleCloudRunV2Condition_Severity_SEVERITYUNSPECIFIED,
        GoogleCloudRunV2Condition_Severity_Error',
        GoogleCloudRunV2Condition_Severity_Warning,
        GoogleCloudRunV2Condition_Severity_Info,
        ..
      ),

    -- * GoogleCloudRunV2Condition_State
    GoogleCloudRunV2Condition_State
      ( GoogleCloudRunV2Condition_State_STATEUNSPECIFIED,
        GoogleCloudRunV2Condition_State_CONDITIONPENDING,
        GoogleCloudRunV2Condition_State_CONDITIONRECONCILING,
        GoogleCloudRunV2Condition_State_CONDITIONFAILED,
        GoogleCloudRunV2Condition_State_CONDITIONSUCCEEDED,
        ..
      ),

    -- * GoogleCloudRunV2Revision_ExecutionEnvironment
    GoogleCloudRunV2Revision_ExecutionEnvironment
      ( GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT,
        GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2Revision_LaunchStage
    GoogleCloudRunV2Revision_LaunchStage
      ( GoogleCloudRunV2Revision_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Revision_LaunchStage_Unimplemented,
        GoogleCloudRunV2Revision_LaunchStage_Prelaunch,
        GoogleCloudRunV2Revision_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Revision_LaunchStage_Alpha,
        GoogleCloudRunV2Revision_LaunchStage_Beta,
        GoogleCloudRunV2Revision_LaunchStage_GA,
        GoogleCloudRunV2Revision_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
    GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
      ( GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
        GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT,
        GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
        ..
      ),

    -- * GoogleCloudRunV2Service_Ingress
    GoogleCloudRunV2Service_Ingress
      ( GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY,
        GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER,
        ..
      ),

    -- * GoogleCloudRunV2Service_LaunchStage
    GoogleCloudRunV2Service_LaunchStage
      ( GoogleCloudRunV2Service_LaunchStage_LAUNCHSTAGEUNSPECIFIED,
        GoogleCloudRunV2Service_LaunchStage_Unimplemented,
        GoogleCloudRunV2Service_LaunchStage_Prelaunch,
        GoogleCloudRunV2Service_LaunchStage_EARLYACCESS,
        GoogleCloudRunV2Service_LaunchStage_Alpha,
        GoogleCloudRunV2Service_LaunchStage_Beta,
        GoogleCloudRunV2Service_LaunchStage_GA,
        GoogleCloudRunV2Service_LaunchStage_Deprecated,
        ..
      ),

    -- * GoogleCloudRunV2TrafficTarget_Type
    GoogleCloudRunV2TrafficTarget_Type
      ( GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
        GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
        GoogleCloudRunV2TrafficTarget_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
        ..
      ),

    -- * GoogleCloudRunV2TrafficTargetStatus_Type
    GoogleCloudRunV2TrafficTargetStatus_Type
      ( GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEUNSPECIFIED,
        GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPELATEST,
        GoogleCloudRunV2TrafficTargetStatus_Type_TRAFFICTARGETALLOCATIONTYPEREVISION,
        ..
      ),

    -- * GoogleCloudRunV2VpcAccess_Egress
    GoogleCloudRunV2VpcAccess_Egress
      ( GoogleCloudRunV2VpcAccess_Egress_VPCEGRESSUNSPECIFIED,
        GoogleCloudRunV2VpcAccess_Egress_ALLTRAFFIC,
        GoogleCloudRunV2VpcAccess_Egress_PRIVATERANGESONLY,
        ..
      ),

    -- * GoogleIamV1AuditLogConfig_LogType
    GoogleIamV1AuditLogConfig_LogType
      ( GoogleIamV1AuditLogConfig_LogType_LOGTYPEUNSPECIFIED,
        GoogleIamV1AuditLogConfig_LogType_ADMINREAD,
        GoogleIamV1AuditLogConfig_LogType_DATAWRITE,
        GoogleIamV1AuditLogConfig_LogType_DATAREAD,
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

-- | A reason for the domain mapping condition.
newtype GoogleCloudRunV2Condition_DomainMappingReason = GoogleCloudRunV2Condition_DomainMappingReason {fromGoogleCloudRunV2Condition_DomainMappingReason :: Core.Text}
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

-- | Default value.
pattern GoogleCloudRunV2Condition_DomainMappingReason_DOMAINMAPPINGREASONUNDEFINED :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_DOMAINMAPPINGREASONUNDEFINED = GoogleCloudRunV2Condition_DomainMappingReason "DOMAIN_MAPPING_REASON_UNDEFINED"

-- | Internal route is not yet ready.
pattern GoogleCloudRunV2Condition_DomainMappingReason_ROUTENOTREADY :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_ROUTENOTREADY = GoogleCloudRunV2Condition_DomainMappingReason "ROUTE_NOT_READY"

-- | Insufficient permissions.
pattern GoogleCloudRunV2Condition_DomainMappingReason_PERMISSIONDENIED :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_PERMISSIONDENIED = GoogleCloudRunV2Condition_DomainMappingReason "PERMISSION_DENIED"

-- | Certificate already exists.
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEALREADYEXISTS :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEALREADYEXISTS = GoogleCloudRunV2Condition_DomainMappingReason "CERTIFICATE_ALREADY_EXISTS"

-- | Mapping already exists.
pattern GoogleCloudRunV2Condition_DomainMappingReason_MAPPINGALREADYEXISTS :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_MAPPINGALREADYEXISTS = GoogleCloudRunV2Condition_DomainMappingReason "MAPPING_ALREADY_EXISTS"

-- | Certificate issuance pending.
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEPENDING :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEPENDING = GoogleCloudRunV2Condition_DomainMappingReason "CERTIFICATE_PENDING"

-- | Certificate issuance failed.
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEFAILED :: GoogleCloudRunV2Condition_DomainMappingReason
pattern GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEFAILED = GoogleCloudRunV2Condition_DomainMappingReason "CERTIFICATE_FAILED"

{-# COMPLETE
  GoogleCloudRunV2Condition_DomainMappingReason_DOMAINMAPPINGREASONUNDEFINED,
  GoogleCloudRunV2Condition_DomainMappingReason_ROUTENOTREADY,
  GoogleCloudRunV2Condition_DomainMappingReason_PERMISSIONDENIED,
  GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEALREADYEXISTS,
  GoogleCloudRunV2Condition_DomainMappingReason_MAPPINGALREADYEXISTS,
  GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEPENDING,
  GoogleCloudRunV2Condition_DomainMappingReason_CERTIFICATEFAILED,
  GoogleCloudRunV2Condition_DomainMappingReason
  #-}

-- | A reason for the execution condition.
newtype GoogleCloudRunV2Condition_ExecutionReason = GoogleCloudRunV2Condition_ExecutionReason {fromGoogleCloudRunV2Condition_ExecutionReason :: Core.Text}
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

-- | Default value.
pattern GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED = GoogleCloudRunV2Condition_ExecutionReason "EXECUTION_REASON_UNDEFINED"

-- | Internal system error getting execution status. System will retry.
pattern GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR = GoogleCloudRunV2Condition_ExecutionReason "JOB_STATUS_SERVICE_POLLING_ERROR"

-- | A task reached its retry limit and the last attempt failed due to the user container exiting with a non-zero exit code.
pattern GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE :: GoogleCloudRunV2Condition_ExecutionReason
pattern GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE = GoogleCloudRunV2Condition_ExecutionReason "NON_ZERO_EXIT_CODE"

{-# COMPLETE
  GoogleCloudRunV2Condition_ExecutionReason_EXECUTIONREASONUNDEFINED,
  GoogleCloudRunV2Condition_ExecutionReason_JOBSTATUSSERVICEPOLLINGERROR,
  GoogleCloudRunV2Condition_ExecutionReason_NONZEROEXITCODE,
  GoogleCloudRunV2Condition_ExecutionReason
  #-}

-- | A reason for the internal condition.
newtype GoogleCloudRunV2Condition_InternalReason = GoogleCloudRunV2Condition_InternalReason {fromGoogleCloudRunV2Condition_InternalReason :: Core.Text}
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

-- | Default value.
pattern GoogleCloudRunV2Condition_InternalReason_INTERNALREASONUNDEFINED :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_INTERNALREASONUNDEFINED = GoogleCloudRunV2Condition_InternalReason "INTERNAL_REASON_UNDEFINED"

-- | The revision name provided conflicts with an existing one.
pattern GoogleCloudRunV2Condition_InternalReason_CONFLICTINGREVISIONNAME :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_CONFLICTINGREVISIONNAME = GoogleCloudRunV2Condition_InternalReason "CONFLICTING_REVISION_NAME"

-- | Revision is missing; this is usually a transient reason.
pattern GoogleCloudRunV2Condition_InternalReason_REVISIONMISSING :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_REVISIONMISSING = GoogleCloudRunV2Condition_InternalReason "REVISION_MISSING"

-- | Internal configuration is missing; this is usually a transient reason.
pattern GoogleCloudRunV2Condition_InternalReason_CONFIGURATIONMISSING :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_CONFIGURATIONMISSING = GoogleCloudRunV2Condition_InternalReason "CONFIGURATION_MISSING"

-- | Assigning traffic; this is a transient reason.
pattern GoogleCloudRunV2Condition_InternalReason_ASSIGNINGTRAFFIC :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_ASSIGNINGTRAFFIC = GoogleCloudRunV2Condition_InternalReason "ASSIGNING_TRAFFIC"

-- | Updating ingress traffic settings; this is a transient reason.
pattern GoogleCloudRunV2Condition_InternalReason_UPDATINGINGRESSTRAFFICALLOWED :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_UPDATINGINGRESSTRAFFICALLOWED = GoogleCloudRunV2Condition_InternalReason "UPDATING_INGRESS_TRAFFIC_ALLOWED"

-- | The revision can\'t be created because it violates an org policy setting.
pattern GoogleCloudRunV2Condition_InternalReason_REVISIONORGPOLICYVIOLATION :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_REVISIONORGPOLICYVIOLATION = GoogleCloudRunV2Condition_InternalReason "REVISION_ORG_POLICY_VIOLATION"

-- | Enabling GCFv2 URI support; this is a transient reason.
pattern GoogleCloudRunV2Condition_InternalReason_ENABLINGGCFV2URISUPPORT :: GoogleCloudRunV2Condition_InternalReason
pattern GoogleCloudRunV2Condition_InternalReason_ENABLINGGCFV2URISUPPORT = GoogleCloudRunV2Condition_InternalReason "ENABLING_GCFV2_URI_SUPPORT"

{-# COMPLETE
  GoogleCloudRunV2Condition_InternalReason_INTERNALREASONUNDEFINED,
  GoogleCloudRunV2Condition_InternalReason_CONFLICTINGREVISIONNAME,
  GoogleCloudRunV2Condition_InternalReason_REVISIONMISSING,
  GoogleCloudRunV2Condition_InternalReason_CONFIGURATIONMISSING,
  GoogleCloudRunV2Condition_InternalReason_ASSIGNINGTRAFFIC,
  GoogleCloudRunV2Condition_InternalReason_UPDATINGINGRESSTRAFFICALLOWED,
  GoogleCloudRunV2Condition_InternalReason_REVISIONORGPOLICYVIOLATION,
  GoogleCloudRunV2Condition_InternalReason_ENABLINGGCFV2URISUPPORT,
  GoogleCloudRunV2Condition_InternalReason
  #-}

-- | A common (service-level) reason for this condition.
newtype GoogleCloudRunV2Condition_Reason = GoogleCloudRunV2Condition_Reason {fromGoogleCloudRunV2Condition_Reason :: Core.Text}
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

-- | Default value.
pattern GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED = GoogleCloudRunV2Condition_Reason "COMMON_REASON_UNDEFINED"

-- | Reason unknown. Further details will be in message.
pattern GoogleCloudRunV2Condition_Reason_Unknown :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_Unknown = GoogleCloudRunV2Condition_Reason "UNKNOWN"

-- | The internal route is missing.
pattern GoogleCloudRunV2Condition_Reason_ROUTEMISSING :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_ROUTEMISSING = GoogleCloudRunV2Condition_Reason "ROUTE_MISSING"

-- | Revision creation process failed.
pattern GoogleCloudRunV2Condition_Reason_REVISIONFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_REVISIONFAILED = GoogleCloudRunV2Condition_Reason "REVISION_FAILED"

-- | Timed out waiting for completion.
pattern GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED = GoogleCloudRunV2Condition_Reason "PROGRESS_DEADLINE_EXCEEDED"

-- | There was a build error.
pattern GoogleCloudRunV2Condition_Reason_BUILDSTEPFAILED :: GoogleCloudRunV2Condition_Reason
pattern GoogleCloudRunV2Condition_Reason_BUILDSTEPFAILED = GoogleCloudRunV2Condition_Reason "BUILD_STEP_FAILED"

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

{-# COMPLETE
  GoogleCloudRunV2Condition_Reason_COMMONREASONUNDEFINED,
  GoogleCloudRunV2Condition_Reason_Unknown,
  GoogleCloudRunV2Condition_Reason_ROUTEMISSING,
  GoogleCloudRunV2Condition_Reason_REVISIONFAILED,
  GoogleCloudRunV2Condition_Reason_PROGRESSDEADLINEEXCEEDED,
  GoogleCloudRunV2Condition_Reason_BUILDSTEPFAILED,
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
  GoogleCloudRunV2Condition_Reason
  #-}

-- | A reason for the revision condition.
newtype GoogleCloudRunV2Condition_RevisionReason = GoogleCloudRunV2Condition_RevisionReason {fromGoogleCloudRunV2Condition_RevisionReason :: Core.Text}
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
  GoogleCloudRunV2Condition_RevisionReason
  #-}

-- | How to interpret failures of this condition, one of Error, Warning, Info
newtype GoogleCloudRunV2Condition_Severity = GoogleCloudRunV2Condition_Severity {fromGoogleCloudRunV2Condition_Severity :: Core.Text}
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
  GoogleCloudRunV2Condition_Severity
  #-}

-- | State of the condition.
newtype GoogleCloudRunV2Condition_State = GoogleCloudRunV2Condition_State {fromGoogleCloudRunV2Condition_State :: Core.Text}
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
  GoogleCloudRunV2Condition_State
  #-}

-- | The execution environment being used to host this Revision.
newtype GoogleCloudRunV2Revision_ExecutionEnvironment = GoogleCloudRunV2Revision_ExecutionEnvironment {fromGoogleCloudRunV2Revision_ExecutionEnvironment :: Core.Text}
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
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the Google-default environment.
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_DEFAULT"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2Revision_ExecutionEnvironment
pattern GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2Revision_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT,
  GoogleCloudRunV2Revision_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2Revision_ExecutionEnvironment
  #-}

-- | Set the launch stage to a preview stage on write to allow use of preview features in that stage. On read, describes whether the resource uses preview features. Launch Stages are defined at <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>.
newtype GoogleCloudRunV2Revision_LaunchStage = GoogleCloudRunV2Revision_LaunchStage {fromGoogleCloudRunV2Revision_LaunchStage :: Core.Text}
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
  GoogleCloudRunV2Revision_LaunchStage
  #-}

-- | The sandbox environment to host this Revision.
newtype GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment {fromGoogleCloudRunV2RevisionTemplate_ExecutionEnvironment :: Core.Text}
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
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_UNSPECIFIED"

-- | Uses the Google-default environment.
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_DEFAULT"

-- | Uses Second Generation environment.
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 :: GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
pattern GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2 = GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment "EXECUTION_ENVIRONMENT_GEN2"

{-# COMPLETE
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTUNSPECIFIED,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTIONENVIRONMENTDEFAULT,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment_EXECUTION_ENVIRONMENT_GEN2,
  GoogleCloudRunV2RevisionTemplate_ExecutionEnvironment
  #-}

-- | Provides the ingress settings for this Service. On output, returns the currently observed ingress settings, or INGRESS/TRAFFIC/UNSPECIFIED if no revision is active.
newtype GoogleCloudRunV2Service_Ingress = GoogleCloudRunV2Service_Ingress {fromGoogleCloudRunV2Service_Ingress :: Core.Text}
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

{-# COMPLETE
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICUNSPECIFIED,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICALL,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALONLY,
  GoogleCloudRunV2Service_Ingress_INGRESSTRAFFICINTERNALLOADBALANCER,
  GoogleCloudRunV2Service_Ingress
  #-}

-- | The launch stage as defined by <https://cloud.google.com/terms/launch-stages Google Cloud Platform Launch Stages>. Cloud Run supports @ALPHA@, @BETA@, and @GA@. If no value is specified, GA is assumed.
newtype GoogleCloudRunV2Service_LaunchStage = GoogleCloudRunV2Service_LaunchStage {fromGoogleCloudRunV2Service_LaunchStage :: Core.Text}
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
  GoogleCloudRunV2Service_LaunchStage
  #-}

-- | The allocation type for this traffic target.
newtype GoogleCloudRunV2TrafficTarget_Type = GoogleCloudRunV2TrafficTarget_Type {fromGoogleCloudRunV2TrafficTarget_Type :: Core.Text}
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
  GoogleCloudRunV2TrafficTarget_Type
  #-}

-- | The allocation type for this traffic target.
newtype GoogleCloudRunV2TrafficTargetStatus_Type = GoogleCloudRunV2TrafficTargetStatus_Type {fromGoogleCloudRunV2TrafficTargetStatus_Type :: Core.Text}
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
  GoogleCloudRunV2TrafficTargetStatus_Type
  #-}

-- | Traffic VPC egress settings.
newtype GoogleCloudRunV2VpcAccess_Egress = GoogleCloudRunV2VpcAccess_Egress {fromGoogleCloudRunV2VpcAccess_Egress :: Core.Text}
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
  GoogleCloudRunV2VpcAccess_Egress
  #-}

-- | The log type that this config enables.
newtype GoogleIamV1AuditLogConfig_LogType = GoogleIamV1AuditLogConfig_LogType {fromGoogleIamV1AuditLogConfig_LogType :: Core.Text}
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
  GoogleIamV1AuditLogConfig_LogType
  #-}

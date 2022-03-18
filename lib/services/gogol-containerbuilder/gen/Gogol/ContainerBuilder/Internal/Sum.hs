{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.ContainerBuilder.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * ApprovalResult_Decision
    ApprovalResult_Decision
      (
        ApprovalResult_Decision_DECISIONUNSPECIFIED,
        ApprovalResult_Decision_Approved,
        ApprovalResult_Decision_Rejected,
        ..
      ),

    -- * Build_Status
    Build_Status
      (
        Build_Status_STATUSUNKNOWN,
        Build_Status_Pending,
        Build_Status_Queued,
        Build_Status_Working,
        Build_Status_Success,
        Build_Status_Failure,
        Build_Status_INTERNALERROR,
        Build_Status_Timeout,
        Build_Status_Cancelled,
        Build_Status_Expired,
        ..
      ),

    -- * BuildApproval_State
    BuildApproval_State
      (
        BuildApproval_State_STATEUNSPECIFIED,
        BuildApproval_State_Pending,
        BuildApproval_State_Approved,
        BuildApproval_State_Rejected,
        BuildApproval_State_Cancelled,
        ..
      ),

    -- * BuildOptions_LogStreamingOption
    BuildOptions_LogStreamingOption
      (
        BuildOptions_LogStreamingOption_STREAMDEFAULT,
        BuildOptions_LogStreamingOption_STREAMON,
        BuildOptions_LogStreamingOption_STREAMOFF,
        ..
      ),

    -- * BuildOptions_Logging
    BuildOptions_Logging
      (
        BuildOptions_Logging_LOGGINGUNSPECIFIED,
        BuildOptions_Logging_Legacy,
        BuildOptions_Logging_GCSONLY,
        BuildOptions_Logging_STACKDRIVERONLY,
        BuildOptions_Logging_CLOUDLOGGINGONLY,
        BuildOptions_Logging_None,
        ..
      ),

    -- * BuildOptions_MachineType
    BuildOptions_MachineType
      (
        BuildOptions_MachineType_Unspecified,
        BuildOptions_MachineType_N1_HIGHCPU_8,
        BuildOptions_MachineType_N1_HIGHCPU_32,
        BuildOptions_MachineType_E2_HIGHCPU_8,
        BuildOptions_MachineType_E2_HIGHCPU_32,
        ..
      ),

    -- * BuildOptions_RequestedVerifyOption
    BuildOptions_RequestedVerifyOption
      (
        BuildOptions_RequestedVerifyOption_NOTVERIFIED,
        BuildOptions_RequestedVerifyOption_Verified,
        ..
      ),

    -- * BuildOptions_SourceProvenanceHashItem
    BuildOptions_SourceProvenanceHashItem
      (
        BuildOptions_SourceProvenanceHashItem_None,
        BuildOptions_SourceProvenanceHashItem_SHA256,
        BuildOptions_SourceProvenanceHashItem_MD5,
        ..
      ),

    -- * BuildOptions_SubstitutionOption
    BuildOptions_SubstitutionOption
      (
        BuildOptions_SubstitutionOption_MUSTMATCH,
        BuildOptions_SubstitutionOption_ALLOWLOOSE,
        ..
      ),

    -- * BuildStep_Status
    BuildStep_Status
      (
        BuildStep_Status_STATUSUNKNOWN,
        BuildStep_Status_Pending,
        BuildStep_Status_Queued,
        BuildStep_Status_Working,
        BuildStep_Status_Success,
        BuildStep_Status_Failure,
        BuildStep_Status_INTERNALERROR,
        BuildStep_Status_Timeout,
        BuildStep_Status_Cancelled,
        BuildStep_Status_Expired,
        ..
      ),

    -- * BuildTrigger_EventType
    BuildTrigger_EventType
      (
        BuildTrigger_EventType_EVENTTYPEUNSPECIFIED,
        BuildTrigger_EventType_Repo,
        BuildTrigger_EventType_Webhook,
        BuildTrigger_EventType_Pubsub,
        BuildTrigger_EventType_Manual,
        ..
      ),

    -- * FailureInfo_Type
    FailureInfo_Type
      (
        FailureInfo_Type_FAILURETYPEUNSPECIFIED,
        FailureInfo_Type_PUSHFAILED,
        FailureInfo_Type_PUSHIMAGENOTFOUND,
        FailureInfo_Type_PUSHNOTAUTHORIZED,
        FailureInfo_Type_LOGGINGFAILURE,
        FailureInfo_Type_USERBUILDSTEP,
        FailureInfo_Type_FETCHSOURCEFAILED,
        ..
      ),

    -- * GitFileSource_RepoType
    GitFileSource_RepoType
      (
        GitFileSource_RepoType_Unknown,
        GitFileSource_RepoType_CLOUDSOURCEREPOSITORIES,
        GitFileSource_RepoType_Github,
        GitFileSource_RepoType_BITBUCKETSERVER,
        ..
      ),

    -- * GitRepoSource_RepoType
    GitRepoSource_RepoType
      (
        GitRepoSource_RepoType_Unknown,
        GitRepoSource_RepoType_CLOUDSOURCEREPOSITORIES,
        GitRepoSource_RepoType_Github,
        GitRepoSource_RepoType_BITBUCKETSERVER,
        ..
      ),

    -- * Hash_Type
    Hash_Type
      (
        Hash_Type_None,
        Hash_Type_SHA256,
        Hash_Type_MD5,
        ..
      ),

    -- * NetworkConfig_EgressOption
    NetworkConfig_EgressOption
      (
        NetworkConfig_EgressOption_EGRESSOPTIONUNSPECIFIED,
        NetworkConfig_EgressOption_NOPUBLICEGRESS,
        NetworkConfig_EgressOption_PUBLICEGRESS,
        ..
      ),

    -- * PubsubConfig_State
    PubsubConfig_State
      (
        PubsubConfig_State_STATEUNSPECIFIED,
        PubsubConfig_State_OK,
        PubsubConfig_State_SUBSCRIPTIONDELETED,
        PubsubConfig_State_TOPICDELETED,
        PubsubConfig_State_SUBSCRIPTIONMISCONFIGURED,
        ..
      ),

    -- * PullRequestFilter_CommentControl
    PullRequestFilter_CommentControl
      (
        PullRequestFilter_CommentControl_COMMENTSDISABLED,
        PullRequestFilter_CommentControl_COMMENTSENABLED,
        PullRequestFilter_CommentControl_COMMENTSENABLEDFOREXTERNALCONTRIBUTORSONLY,
        ..
      ),

    -- * Warning_Priority
    Warning_Priority
      (
        Warning_Priority_PRIORITYUNSPECIFIED,
        Warning_Priority_Info,
        Warning_Priority_Warning,
        Warning_Priority_Alert,
        ..
      ),

    -- * WebhookConfig_State
    WebhookConfig_State
      (
        WebhookConfig_State_STATEUNSPECIFIED,
        WebhookConfig_State_OK,
        WebhookConfig_State_SECRETDELETED,
        ..
      ),

    -- * WorkerPool_State
    WorkerPool_State
      (
        WorkerPool_State_STATEUNSPECIFIED,
        WorkerPool_State_Creating,
        WorkerPool_State_Running,
        WorkerPool_State_Deleting,
        WorkerPool_State_Deleted,
        WorkerPool_State_Updating,
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

-- | Required. The decision of this manual approval.
newtype ApprovalResult_Decision = ApprovalResult_Decision { fromApprovalResult_Decision :: Core.Text }
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
pattern ApprovalResult_Decision_DECISIONUNSPECIFIED :: ApprovalResult_Decision
pattern ApprovalResult_Decision_DECISIONUNSPECIFIED = ApprovalResult_Decision "DECISION_UNSPECIFIED"

-- | Build is approved.
pattern ApprovalResult_Decision_Approved :: ApprovalResult_Decision
pattern ApprovalResult_Decision_Approved = ApprovalResult_Decision "APPROVED"

-- | Build is rejected.
pattern ApprovalResult_Decision_Rejected :: ApprovalResult_Decision
pattern ApprovalResult_Decision_Rejected = ApprovalResult_Decision "REJECTED"

{-# COMPLETE
  ApprovalResult_Decision_DECISIONUNSPECIFIED,
  ApprovalResult_Decision_Approved,
  ApprovalResult_Decision_Rejected,
  ApprovalResult_Decision #-}

-- | Output only. Status of the build.
newtype Build_Status = Build_Status { fromBuild_Status :: Core.Text }
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
pattern Build_Status_STATUSUNKNOWN :: Build_Status
pattern Build_Status_STATUSUNKNOWN = Build_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern Build_Status_Pending :: Build_Status
pattern Build_Status_Pending = Build_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern Build_Status_Queued :: Build_Status
pattern Build_Status_Queued = Build_Status "QUEUED"

-- | Build or step is being executed.
pattern Build_Status_Working :: Build_Status
pattern Build_Status_Working = Build_Status "WORKING"

-- | Build or step finished successfully.
pattern Build_Status_Success :: Build_Status
pattern Build_Status_Success = Build_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern Build_Status_Failure :: Build_Status
pattern Build_Status_Failure = Build_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern Build_Status_INTERNALERROR :: Build_Status
pattern Build_Status_INTERNALERROR = Build_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern Build_Status_Timeout :: Build_Status
pattern Build_Status_Timeout = Build_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern Build_Status_Cancelled :: Build_Status
pattern Build_Status_Cancelled = Build_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern Build_Status_Expired :: Build_Status
pattern Build_Status_Expired = Build_Status "EXPIRED"

{-# COMPLETE
  Build_Status_STATUSUNKNOWN,
  Build_Status_Pending,
  Build_Status_Queued,
  Build_Status_Working,
  Build_Status_Success,
  Build_Status_Failure,
  Build_Status_INTERNALERROR,
  Build_Status_Timeout,
  Build_Status_Cancelled,
  Build_Status_Expired,
  Build_Status #-}

-- | Output only. The state of this build\'s approval.
newtype BuildApproval_State = BuildApproval_State { fromBuildApproval_State :: Core.Text }
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
pattern BuildApproval_State_STATEUNSPECIFIED :: BuildApproval_State
pattern BuildApproval_State_STATEUNSPECIFIED = BuildApproval_State "STATE_UNSPECIFIED"

-- | Build approval is pending.
pattern BuildApproval_State_Pending :: BuildApproval_State
pattern BuildApproval_State_Pending = BuildApproval_State "PENDING"

-- | Build approval has been approved.
pattern BuildApproval_State_Approved :: BuildApproval_State
pattern BuildApproval_State_Approved = BuildApproval_State "APPROVED"

-- | Build approval has been rejected.
pattern BuildApproval_State_Rejected :: BuildApproval_State
pattern BuildApproval_State_Rejected = BuildApproval_State "REJECTED"

-- | Build was cancelled while it was still pending approval.
pattern BuildApproval_State_Cancelled :: BuildApproval_State
pattern BuildApproval_State_Cancelled = BuildApproval_State "CANCELLED"

{-# COMPLETE
  BuildApproval_State_STATEUNSPECIFIED,
  BuildApproval_State_Pending,
  BuildApproval_State_Approved,
  BuildApproval_State_Rejected,
  BuildApproval_State_Cancelled,
  BuildApproval_State #-}

-- | Option to define build log streaming behavior to Google Cloud Storage.
newtype BuildOptions_LogStreamingOption = BuildOptions_LogStreamingOption { fromBuildOptions_LogStreamingOption :: Core.Text }
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
pattern BuildOptions_LogStreamingOption_STREAMDEFAULT :: BuildOptions_LogStreamingOption
pattern BuildOptions_LogStreamingOption_STREAMDEFAULT = BuildOptions_LogStreamingOption "STREAM_DEFAULT"

-- | Build logs should be streamed to Google Cloud Storage.
pattern BuildOptions_LogStreamingOption_STREAMON :: BuildOptions_LogStreamingOption
pattern BuildOptions_LogStreamingOption_STREAMON = BuildOptions_LogStreamingOption "STREAM_ON"

-- | Build logs should not be streamed to Google Cloud Storage; they will be written when the build is completed.
pattern BuildOptions_LogStreamingOption_STREAMOFF :: BuildOptions_LogStreamingOption
pattern BuildOptions_LogStreamingOption_STREAMOFF = BuildOptions_LogStreamingOption "STREAM_OFF"

{-# COMPLETE
  BuildOptions_LogStreamingOption_STREAMDEFAULT,
  BuildOptions_LogStreamingOption_STREAMON,
  BuildOptions_LogStreamingOption_STREAMOFF,
  BuildOptions_LogStreamingOption #-}

-- | Option to specify the logging mode, which determines if and where build logs are stored.
newtype BuildOptions_Logging = BuildOptions_Logging { fromBuildOptions_Logging :: Core.Text }
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
pattern BuildOptions_Logging_LOGGINGUNSPECIFIED :: BuildOptions_Logging
pattern BuildOptions_Logging_LOGGINGUNSPECIFIED = BuildOptions_Logging "LOGGING_UNSPECIFIED"

-- | Build logs are stored in Cloud Logging and Cloud Storage.
pattern BuildOptions_Logging_Legacy :: BuildOptions_Logging
pattern BuildOptions_Logging_Legacy = BuildOptions_Logging "LEGACY"

-- | Build logs are stored in Cloud Storage.
pattern BuildOptions_Logging_GCSONLY :: BuildOptions_Logging
pattern BuildOptions_Logging_GCSONLY = BuildOptions_Logging "GCS_ONLY"

-- | This option is the same as CLOUD/LOGGING/ONLY.
pattern BuildOptions_Logging_STACKDRIVERONLY :: BuildOptions_Logging
pattern BuildOptions_Logging_STACKDRIVERONLY = BuildOptions_Logging "STACKDRIVER_ONLY"

-- | Build logs are stored in Cloud Logging. Selecting this option will not allow <https://cloud.google.com/sdk/gcloud/reference/builds/log logs streaming>.
pattern BuildOptions_Logging_CLOUDLOGGINGONLY :: BuildOptions_Logging
pattern BuildOptions_Logging_CLOUDLOGGINGONLY = BuildOptions_Logging "CLOUD_LOGGING_ONLY"

-- | Turn off all logging. No build logs will be captured.
pattern BuildOptions_Logging_None :: BuildOptions_Logging
pattern BuildOptions_Logging_None = BuildOptions_Logging "NONE"

{-# COMPLETE
  BuildOptions_Logging_LOGGINGUNSPECIFIED,
  BuildOptions_Logging_Legacy,
  BuildOptions_Logging_GCSONLY,
  BuildOptions_Logging_STACKDRIVERONLY,
  BuildOptions_Logging_CLOUDLOGGINGONLY,
  BuildOptions_Logging_None,
  BuildOptions_Logging #-}

-- | Compute Engine machine type on which to run the build.
newtype BuildOptions_MachineType = BuildOptions_MachineType { fromBuildOptions_MachineType :: Core.Text }
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
pattern BuildOptions_MachineType_Unspecified :: BuildOptions_MachineType
pattern BuildOptions_MachineType_Unspecified = BuildOptions_MachineType "UNSPECIFIED"

-- | Highcpu machine with 8 CPUs.
pattern BuildOptions_MachineType_N1_HIGHCPU_8 :: BuildOptions_MachineType
pattern BuildOptions_MachineType_N1_HIGHCPU_8 = BuildOptions_MachineType "N1_HIGHCPU_8"

-- | Highcpu machine with 32 CPUs.
pattern BuildOptions_MachineType_N1_HIGHCPU_32 :: BuildOptions_MachineType
pattern BuildOptions_MachineType_N1_HIGHCPU_32 = BuildOptions_MachineType "N1_HIGHCPU_32"

-- | Highcpu e2 machine with 8 CPUs.
pattern BuildOptions_MachineType_E2_HIGHCPU_8 :: BuildOptions_MachineType
pattern BuildOptions_MachineType_E2_HIGHCPU_8 = BuildOptions_MachineType "E2_HIGHCPU_8"

-- | Highcpu e2 machine with 32 CPUs.
pattern BuildOptions_MachineType_E2_HIGHCPU_32 :: BuildOptions_MachineType
pattern BuildOptions_MachineType_E2_HIGHCPU_32 = BuildOptions_MachineType "E2_HIGHCPU_32"

{-# COMPLETE
  BuildOptions_MachineType_Unspecified,
  BuildOptions_MachineType_N1_HIGHCPU_8,
  BuildOptions_MachineType_N1_HIGHCPU_32,
  BuildOptions_MachineType_E2_HIGHCPU_8,
  BuildOptions_MachineType_E2_HIGHCPU_32,
  BuildOptions_MachineType #-}

-- | Requested verifiability options.
newtype BuildOptions_RequestedVerifyOption = BuildOptions_RequestedVerifyOption { fromBuildOptions_RequestedVerifyOption :: Core.Text }
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

-- | Not a verifiable build. (default)
pattern BuildOptions_RequestedVerifyOption_NOTVERIFIED :: BuildOptions_RequestedVerifyOption
pattern BuildOptions_RequestedVerifyOption_NOTVERIFIED = BuildOptions_RequestedVerifyOption "NOT_VERIFIED"

-- | Verified build.
pattern BuildOptions_RequestedVerifyOption_Verified :: BuildOptions_RequestedVerifyOption
pattern BuildOptions_RequestedVerifyOption_Verified = BuildOptions_RequestedVerifyOption "VERIFIED"

{-# COMPLETE
  BuildOptions_RequestedVerifyOption_NOTVERIFIED,
  BuildOptions_RequestedVerifyOption_Verified,
  BuildOptions_RequestedVerifyOption #-}

newtype BuildOptions_SourceProvenanceHashItem = BuildOptions_SourceProvenanceHashItem { fromBuildOptions_SourceProvenanceHashItem :: Core.Text }
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
pattern BuildOptions_SourceProvenanceHashItem_None :: BuildOptions_SourceProvenanceHashItem
pattern BuildOptions_SourceProvenanceHashItem_None = BuildOptions_SourceProvenanceHashItem "NONE"

-- | Use a sha256 hash.
pattern BuildOptions_SourceProvenanceHashItem_SHA256 :: BuildOptions_SourceProvenanceHashItem
pattern BuildOptions_SourceProvenanceHashItem_SHA256 = BuildOptions_SourceProvenanceHashItem "SHA256"

-- | Use a md5 hash.
pattern BuildOptions_SourceProvenanceHashItem_MD5 :: BuildOptions_SourceProvenanceHashItem
pattern BuildOptions_SourceProvenanceHashItem_MD5 = BuildOptions_SourceProvenanceHashItem "MD5"

{-# COMPLETE
  BuildOptions_SourceProvenanceHashItem_None,
  BuildOptions_SourceProvenanceHashItem_SHA256,
  BuildOptions_SourceProvenanceHashItem_MD5,
  BuildOptions_SourceProvenanceHashItem #-}

-- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
newtype BuildOptions_SubstitutionOption = BuildOptions_SubstitutionOption { fromBuildOptions_SubstitutionOption :: Core.Text }
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
pattern BuildOptions_SubstitutionOption_MUSTMATCH :: BuildOptions_SubstitutionOption
pattern BuildOptions_SubstitutionOption_MUSTMATCH = BuildOptions_SubstitutionOption "MUST_MATCH"

-- | Do not fail the build if error in substitutions checks.
pattern BuildOptions_SubstitutionOption_ALLOWLOOSE :: BuildOptions_SubstitutionOption
pattern BuildOptions_SubstitutionOption_ALLOWLOOSE = BuildOptions_SubstitutionOption "ALLOW_LOOSE"

{-# COMPLETE
  BuildOptions_SubstitutionOption_MUSTMATCH,
  BuildOptions_SubstitutionOption_ALLOWLOOSE,
  BuildOptions_SubstitutionOption #-}

-- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
newtype BuildStep_Status = BuildStep_Status { fromBuildStep_Status :: Core.Text }
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
pattern BuildStep_Status_STATUSUNKNOWN :: BuildStep_Status
pattern BuildStep_Status_STATUSUNKNOWN = BuildStep_Status "STATUS_UNKNOWN"

-- | Build has been created and is pending execution and queuing. It has not been queued.
pattern BuildStep_Status_Pending :: BuildStep_Status
pattern BuildStep_Status_Pending = BuildStep_Status "PENDING"

-- | Build or step is queued; work has not yet begun.
pattern BuildStep_Status_Queued :: BuildStep_Status
pattern BuildStep_Status_Queued = BuildStep_Status "QUEUED"

-- | Build or step is being executed.
pattern BuildStep_Status_Working :: BuildStep_Status
pattern BuildStep_Status_Working = BuildStep_Status "WORKING"

-- | Build or step finished successfully.
pattern BuildStep_Status_Success :: BuildStep_Status
pattern BuildStep_Status_Success = BuildStep_Status "SUCCESS"

-- | Build or step failed to complete successfully.
pattern BuildStep_Status_Failure :: BuildStep_Status
pattern BuildStep_Status_Failure = BuildStep_Status "FAILURE"

-- | Build or step failed due to an internal cause.
pattern BuildStep_Status_INTERNALERROR :: BuildStep_Status
pattern BuildStep_Status_INTERNALERROR = BuildStep_Status "INTERNAL_ERROR"

-- | Build or step took longer than was allowed.
pattern BuildStep_Status_Timeout :: BuildStep_Status
pattern BuildStep_Status_Timeout = BuildStep_Status "TIMEOUT"

-- | Build or step was canceled by a user.
pattern BuildStep_Status_Cancelled :: BuildStep_Status
pattern BuildStep_Status_Cancelled = BuildStep_Status "CANCELLED"

-- | Build was enqueued for longer than the value of @queue_ttl@.
pattern BuildStep_Status_Expired :: BuildStep_Status
pattern BuildStep_Status_Expired = BuildStep_Status "EXPIRED"

{-# COMPLETE
  BuildStep_Status_STATUSUNKNOWN,
  BuildStep_Status_Pending,
  BuildStep_Status_Queued,
  BuildStep_Status_Working,
  BuildStep_Status_Success,
  BuildStep_Status_Failure,
  BuildStep_Status_INTERNALERROR,
  BuildStep_Status_Timeout,
  BuildStep_Status_Cancelled,
  BuildStep_Status_Expired,
  BuildStep_Status #-}

-- | EventType allows the user to explicitly set the type of event to which this BuildTrigger should respond. This field will be validated against the rest of the configuration if it is set.
newtype BuildTrigger_EventType = BuildTrigger_EventType { fromBuildTrigger_EventType :: Core.Text }
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

-- | EVENT/TYPE/UNSPECIFIED event_types are ignored.
pattern BuildTrigger_EventType_EVENTTYPEUNSPECIFIED :: BuildTrigger_EventType
pattern BuildTrigger_EventType_EVENTTYPEUNSPECIFIED = BuildTrigger_EventType "EVENT_TYPE_UNSPECIFIED"

-- | REPO corresponds to the supported VCS integrations.
pattern BuildTrigger_EventType_Repo :: BuildTrigger_EventType
pattern BuildTrigger_EventType_Repo = BuildTrigger_EventType "REPO"

-- | WEBHOOK corresponds to webhook triggers.
pattern BuildTrigger_EventType_Webhook :: BuildTrigger_EventType
pattern BuildTrigger_EventType_Webhook = BuildTrigger_EventType "WEBHOOK"

-- | PUBSUB corresponds to pubsub triggers.
pattern BuildTrigger_EventType_Pubsub :: BuildTrigger_EventType
pattern BuildTrigger_EventType_Pubsub = BuildTrigger_EventType "PUBSUB"

-- | MANUAL corresponds to manual-only invoked triggers.
pattern BuildTrigger_EventType_Manual :: BuildTrigger_EventType
pattern BuildTrigger_EventType_Manual = BuildTrigger_EventType "MANUAL"

{-# COMPLETE
  BuildTrigger_EventType_EVENTTYPEUNSPECIFIED,
  BuildTrigger_EventType_Repo,
  BuildTrigger_EventType_Webhook,
  BuildTrigger_EventType_Pubsub,
  BuildTrigger_EventType_Manual,
  BuildTrigger_EventType #-}

-- | The name of the failure.
newtype FailureInfo_Type = FailureInfo_Type { fromFailureInfo_Type :: Core.Text }
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
pattern FailureInfo_Type_FAILURETYPEUNSPECIFIED :: FailureInfo_Type
pattern FailureInfo_Type_FAILURETYPEUNSPECIFIED = FailureInfo_Type "FAILURE_TYPE_UNSPECIFIED"

-- | Unable to push the image to the repository.
pattern FailureInfo_Type_PUSHFAILED :: FailureInfo_Type
pattern FailureInfo_Type_PUSHFAILED = FailureInfo_Type "PUSH_FAILED"

-- | Final image not found.
pattern FailureInfo_Type_PUSHIMAGENOTFOUND :: FailureInfo_Type
pattern FailureInfo_Type_PUSHIMAGENOTFOUND = FailureInfo_Type "PUSH_IMAGE_NOT_FOUND"

-- | Unauthorized push of the final image.
pattern FailureInfo_Type_PUSHNOTAUTHORIZED :: FailureInfo_Type
pattern FailureInfo_Type_PUSHNOTAUTHORIZED = FailureInfo_Type "PUSH_NOT_AUTHORIZED"

-- | Backend logging failures. Should retry.
pattern FailureInfo_Type_LOGGINGFAILURE :: FailureInfo_Type
pattern FailureInfo_Type_LOGGINGFAILURE = FailureInfo_Type "LOGGING_FAILURE"

-- | A build step has failed.
pattern FailureInfo_Type_USERBUILDSTEP :: FailureInfo_Type
pattern FailureInfo_Type_USERBUILDSTEP = FailureInfo_Type "USER_BUILD_STEP"

-- | The source fetching has failed.
pattern FailureInfo_Type_FETCHSOURCEFAILED :: FailureInfo_Type
pattern FailureInfo_Type_FETCHSOURCEFAILED = FailureInfo_Type "FETCH_SOURCE_FAILED"

{-# COMPLETE
  FailureInfo_Type_FAILURETYPEUNSPECIFIED,
  FailureInfo_Type_PUSHFAILED,
  FailureInfo_Type_PUSHIMAGENOTFOUND,
  FailureInfo_Type_PUSHNOTAUTHORIZED,
  FailureInfo_Type_LOGGINGFAILURE,
  FailureInfo_Type_USERBUILDSTEP,
  FailureInfo_Type_FETCHSOURCEFAILED,
  FailureInfo_Type #-}

-- | See RepoType above.
newtype GitFileSource_RepoType = GitFileSource_RepoType { fromGitFileSource_RepoType :: Core.Text }
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

-- | The default, unknown repo type.
pattern GitFileSource_RepoType_Unknown :: GitFileSource_RepoType
pattern GitFileSource_RepoType_Unknown = GitFileSource_RepoType "UNKNOWN"

-- | A Google Cloud Source Repositories-hosted repo.
pattern GitFileSource_RepoType_CLOUDSOURCEREPOSITORIES :: GitFileSource_RepoType
pattern GitFileSource_RepoType_CLOUDSOURCEREPOSITORIES = GitFileSource_RepoType "CLOUD_SOURCE_REPOSITORIES"

-- | A GitHub-hosted repo not necessarily on \"github.com\" (i.e. GitHub Enterprise).
pattern GitFileSource_RepoType_Github :: GitFileSource_RepoType
pattern GitFileSource_RepoType_Github = GitFileSource_RepoType "GITHUB"

-- | A Bitbucket Server-hosted repo.
pattern GitFileSource_RepoType_BITBUCKETSERVER :: GitFileSource_RepoType
pattern GitFileSource_RepoType_BITBUCKETSERVER = GitFileSource_RepoType "BITBUCKET_SERVER"

{-# COMPLETE
  GitFileSource_RepoType_Unknown,
  GitFileSource_RepoType_CLOUDSOURCEREPOSITORIES,
  GitFileSource_RepoType_Github,
  GitFileSource_RepoType_BITBUCKETSERVER,
  GitFileSource_RepoType #-}

-- | See RepoType below.
newtype GitRepoSource_RepoType = GitRepoSource_RepoType { fromGitRepoSource_RepoType :: Core.Text }
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

-- | The default, unknown repo type.
pattern GitRepoSource_RepoType_Unknown :: GitRepoSource_RepoType
pattern GitRepoSource_RepoType_Unknown = GitRepoSource_RepoType "UNKNOWN"

-- | A Google Cloud Source Repositories-hosted repo.
pattern GitRepoSource_RepoType_CLOUDSOURCEREPOSITORIES :: GitRepoSource_RepoType
pattern GitRepoSource_RepoType_CLOUDSOURCEREPOSITORIES = GitRepoSource_RepoType "CLOUD_SOURCE_REPOSITORIES"

-- | A GitHub-hosted repo not necessarily on \"github.com\" (i.e. GitHub Enterprise).
pattern GitRepoSource_RepoType_Github :: GitRepoSource_RepoType
pattern GitRepoSource_RepoType_Github = GitRepoSource_RepoType "GITHUB"

-- | A Bitbucket Server-hosted repo.
pattern GitRepoSource_RepoType_BITBUCKETSERVER :: GitRepoSource_RepoType
pattern GitRepoSource_RepoType_BITBUCKETSERVER = GitRepoSource_RepoType "BITBUCKET_SERVER"

{-# COMPLETE
  GitRepoSource_RepoType_Unknown,
  GitRepoSource_RepoType_CLOUDSOURCEREPOSITORIES,
  GitRepoSource_RepoType_Github,
  GitRepoSource_RepoType_BITBUCKETSERVER,
  GitRepoSource_RepoType #-}

-- | The type of hash that was performed.
newtype Hash_Type = Hash_Type { fromHash_Type :: Core.Text }
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
pattern Hash_Type_None :: Hash_Type
pattern Hash_Type_None = Hash_Type "NONE"

-- | Use a sha256 hash.
pattern Hash_Type_SHA256 :: Hash_Type
pattern Hash_Type_SHA256 = Hash_Type "SHA256"

-- | Use a md5 hash.
pattern Hash_Type_MD5 :: Hash_Type
pattern Hash_Type_MD5 = Hash_Type "MD5"

{-# COMPLETE
  Hash_Type_None,
  Hash_Type_SHA256,
  Hash_Type_MD5,
  Hash_Type #-}

-- | Option to configure network egress for the workers.
newtype NetworkConfig_EgressOption = NetworkConfig_EgressOption { fromNetworkConfig_EgressOption :: Core.Text }
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

-- | If set, defaults to PUBLIC_EGRESS.
pattern NetworkConfig_EgressOption_EGRESSOPTIONUNSPECIFIED :: NetworkConfig_EgressOption
pattern NetworkConfig_EgressOption_EGRESSOPTIONUNSPECIFIED = NetworkConfig_EgressOption "EGRESS_OPTION_UNSPECIFIED"

-- | If set, workers are created without any public address, which prevents network egress to public IPs unless a network proxy is configured.
pattern NetworkConfig_EgressOption_NOPUBLICEGRESS :: NetworkConfig_EgressOption
pattern NetworkConfig_EgressOption_NOPUBLICEGRESS = NetworkConfig_EgressOption "NO_PUBLIC_EGRESS"

-- | If set, workers are created with a public address which allows for public internet egress.
pattern NetworkConfig_EgressOption_PUBLICEGRESS :: NetworkConfig_EgressOption
pattern NetworkConfig_EgressOption_PUBLICEGRESS = NetworkConfig_EgressOption "PUBLIC_EGRESS"

{-# COMPLETE
  NetworkConfig_EgressOption_EGRESSOPTIONUNSPECIFIED,
  NetworkConfig_EgressOption_NOPUBLICEGRESS,
  NetworkConfig_EgressOption_PUBLICEGRESS,
  NetworkConfig_EgressOption #-}

-- | Potential issues with the underlying Pub\/Sub subscription configuration. Only populated on get requests.
newtype PubsubConfig_State = PubsubConfig_State { fromPubsubConfig_State :: Core.Text }
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

-- | The subscription configuration has not been checked.
pattern PubsubConfig_State_STATEUNSPECIFIED :: PubsubConfig_State
pattern PubsubConfig_State_STATEUNSPECIFIED = PubsubConfig_State "STATE_UNSPECIFIED"

-- | The Pub\/Sub subscription is properly configured.
pattern PubsubConfig_State_OK :: PubsubConfig_State
pattern PubsubConfig_State_OK = PubsubConfig_State "OK"

-- | The subscription has been deleted.
pattern PubsubConfig_State_SUBSCRIPTIONDELETED :: PubsubConfig_State
pattern PubsubConfig_State_SUBSCRIPTIONDELETED = PubsubConfig_State "SUBSCRIPTION_DELETED"

-- | The topic has been deleted.
pattern PubsubConfig_State_TOPICDELETED :: PubsubConfig_State
pattern PubsubConfig_State_TOPICDELETED = PubsubConfig_State "TOPIC_DELETED"

-- | Some of the subscription\'s field are misconfigured.
pattern PubsubConfig_State_SUBSCRIPTIONMISCONFIGURED :: PubsubConfig_State
pattern PubsubConfig_State_SUBSCRIPTIONMISCONFIGURED = PubsubConfig_State "SUBSCRIPTION_MISCONFIGURED"

{-# COMPLETE
  PubsubConfig_State_STATEUNSPECIFIED,
  PubsubConfig_State_OK,
  PubsubConfig_State_SUBSCRIPTIONDELETED,
  PubsubConfig_State_TOPICDELETED,
  PubsubConfig_State_SUBSCRIPTIONMISCONFIGURED,
  PubsubConfig_State #-}

-- | Configure builds to run whether a repository owner or collaborator need to comment @\/gcbrun@.
newtype PullRequestFilter_CommentControl = PullRequestFilter_CommentControl { fromPullRequestFilter_CommentControl :: Core.Text }
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

-- | Do not require comments on Pull Requests before builds are triggered.
pattern PullRequestFilter_CommentControl_COMMENTSDISABLED :: PullRequestFilter_CommentControl
pattern PullRequestFilter_CommentControl_COMMENTSDISABLED = PullRequestFilter_CommentControl "COMMENTS_DISABLED"

-- | Enforce that repository owners or collaborators must comment on Pull Requests before builds are triggered.
pattern PullRequestFilter_CommentControl_COMMENTSENABLED :: PullRequestFilter_CommentControl
pattern PullRequestFilter_CommentControl_COMMENTSENABLED = PullRequestFilter_CommentControl "COMMENTS_ENABLED"

-- | Enforce that repository owners or collaborators must comment on external contributors\' Pull Requests before builds are triggered.
pattern PullRequestFilter_CommentControl_COMMENTSENABLEDFOREXTERNALCONTRIBUTORSONLY :: PullRequestFilter_CommentControl
pattern PullRequestFilter_CommentControl_COMMENTSENABLEDFOREXTERNALCONTRIBUTORSONLY = PullRequestFilter_CommentControl "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"

{-# COMPLETE
  PullRequestFilter_CommentControl_COMMENTSDISABLED,
  PullRequestFilter_CommentControl_COMMENTSENABLED,
  PullRequestFilter_CommentControl_COMMENTSENABLEDFOREXTERNALCONTRIBUTORSONLY,
  PullRequestFilter_CommentControl #-}

-- | The priority for this warning.
newtype Warning_Priority = Warning_Priority { fromWarning_Priority :: Core.Text }
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
pattern Warning_Priority_PRIORITYUNSPECIFIED :: Warning_Priority
pattern Warning_Priority_PRIORITYUNSPECIFIED = Warning_Priority "PRIORITY_UNSPECIFIED"

-- | e.g. deprecation warnings and alternative feature highlights.
pattern Warning_Priority_Info :: Warning_Priority
pattern Warning_Priority_Info = Warning_Priority "INFO"

-- | e.g. automated detection of possible issues with the build.
pattern Warning_Priority_Warning :: Warning_Priority
pattern Warning_Priority_Warning = Warning_Priority "WARNING"

-- | e.g. alerts that a feature used in the build is pending removal
pattern Warning_Priority_Alert :: Warning_Priority
pattern Warning_Priority_Alert = Warning_Priority "ALERT"

{-# COMPLETE
  Warning_Priority_PRIORITYUNSPECIFIED,
  Warning_Priority_Info,
  Warning_Priority_Warning,
  Warning_Priority_Alert,
  Warning_Priority #-}

-- | Potential issues with the underlying Pub\/Sub subscription configuration. Only populated on get requests.
newtype WebhookConfig_State = WebhookConfig_State { fromWebhookConfig_State :: Core.Text }
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

-- | The webhook auth configuration not been checked.
pattern WebhookConfig_State_STATEUNSPECIFIED :: WebhookConfig_State
pattern WebhookConfig_State_STATEUNSPECIFIED = WebhookConfig_State "STATE_UNSPECIFIED"

-- | The auth configuration is properly setup.
pattern WebhookConfig_State_OK :: WebhookConfig_State
pattern WebhookConfig_State_OK = WebhookConfig_State "OK"

-- | The secret provided in auth_method has been deleted.
pattern WebhookConfig_State_SECRETDELETED :: WebhookConfig_State
pattern WebhookConfig_State_SECRETDELETED = WebhookConfig_State "SECRET_DELETED"

{-# COMPLETE
  WebhookConfig_State_STATEUNSPECIFIED,
  WebhookConfig_State_OK,
  WebhookConfig_State_SECRETDELETED,
  WebhookConfig_State #-}

-- | Output only. @WorkerPool@ state.
newtype WorkerPool_State = WorkerPool_State { fromWorkerPool_State :: Core.Text }
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

-- | State of the @WorkerPool@ is unknown.
pattern WorkerPool_State_STATEUNSPECIFIED :: WorkerPool_State
pattern WorkerPool_State_STATEUNSPECIFIED = WorkerPool_State "STATE_UNSPECIFIED"

-- | @WorkerPool@ is being created.
pattern WorkerPool_State_Creating :: WorkerPool_State
pattern WorkerPool_State_Creating = WorkerPool_State "CREATING"

-- | @WorkerPool@ is running.
pattern WorkerPool_State_Running :: WorkerPool_State
pattern WorkerPool_State_Running = WorkerPool_State "RUNNING"

-- | @WorkerPool@ is being deleted: cancelling builds and draining workers.
pattern WorkerPool_State_Deleting :: WorkerPool_State
pattern WorkerPool_State_Deleting = WorkerPool_State "DELETING"

-- | @WorkerPool@ is deleted.
pattern WorkerPool_State_Deleted :: WorkerPool_State
pattern WorkerPool_State_Deleted = WorkerPool_State "DELETED"

-- | @WorkerPool@ is being updated; new builds cannot be run.
pattern WorkerPool_State_Updating :: WorkerPool_State
pattern WorkerPool_State_Updating = WorkerPool_State "UPDATING"

{-# COMPLETE
  WorkerPool_State_STATEUNSPECIFIED,
  WorkerPool_State_Creating,
  WorkerPool_State_Running,
  WorkerPool_State_Deleting,
  WorkerPool_State_Deleted,
  WorkerPool_State_Updating,
  WorkerPool_State #-}

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
-- Module      : Network.Google.ContainerBuilder.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.ContainerBuilder.Types
  ( -- * Configuration
    containerBuilderService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AddBitbucketServerConnectedRepositoryRequest
    AddBitbucketServerConnectedRepositoryRequest (..),
    newAddBitbucketServerConnectedRepositoryRequest,

    -- ** AddBitbucketServerConnectedRepositoryResponse
    AddBitbucketServerConnectedRepositoryResponse (..),
    newAddBitbucketServerConnectedRepositoryResponse,

    -- ** ApprovalConfig
    ApprovalConfig (..),
    newApprovalConfig,

    -- ** ApprovalResult
    ApprovalResult (..),
    newApprovalResult,

    -- ** ApprovalResult_Decision
    ApprovalResult_Decision (..),

    -- ** ApproveBuildRequest
    ApproveBuildRequest (..),
    newApproveBuildRequest,

    -- ** ArtifactObjects
    ArtifactObjects (..),
    newArtifactObjects,

    -- ** ArtifactResult
    ArtifactResult (..),
    newArtifactResult,

    -- ** Artifacts
    Artifacts (..),
    newArtifacts,

    -- ** BatchCreateBitbucketServerConnectedRepositoriesRequest
    BatchCreateBitbucketServerConnectedRepositoriesRequest (..),
    newBatchCreateBitbucketServerConnectedRepositoriesRequest,

    -- ** BatchCreateBitbucketServerConnectedRepositoriesResponse
    BatchCreateBitbucketServerConnectedRepositoriesResponse (..),
    newBatchCreateBitbucketServerConnectedRepositoriesResponse,

    -- ** BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata (..),
    newBatchCreateBitbucketServerConnectedRepositoriesResponseMetadata,

    -- ** BitbucketServerConfig
    BitbucketServerConfig (..),
    newBitbucketServerConfig,

    -- ** BitbucketServerConnectedRepository
    BitbucketServerConnectedRepository (..),
    newBitbucketServerConnectedRepository,

    -- ** BitbucketServerRepository
    BitbucketServerRepository (..),
    newBitbucketServerRepository,

    -- ** BitbucketServerRepositoryId
    BitbucketServerRepositoryId (..),
    newBitbucketServerRepositoryId,

    -- ** BitbucketServerSecrets
    BitbucketServerSecrets (..),
    newBitbucketServerSecrets,

    -- ** BitbucketServerTriggerConfig
    BitbucketServerTriggerConfig (..),
    newBitbucketServerTriggerConfig,

    -- ** Build
    Build (..),
    newBuild,

    -- ** Build_Status
    Build_Status (..),

    -- ** Build_Substitutions
    Build_Substitutions (..),
    newBuild_Substitutions,

    -- ** Build_Timing
    Build_Timing (..),
    newBuild_Timing,

    -- ** BuildApproval
    BuildApproval (..),
    newBuildApproval,

    -- ** BuildApproval_State
    BuildApproval_State (..),

    -- ** BuildOperationMetadata
    BuildOperationMetadata (..),
    newBuildOperationMetadata,

    -- ** BuildOptions
    BuildOptions (..),
    newBuildOptions,

    -- ** BuildOptions_LogStreamingOption
    BuildOptions_LogStreamingOption (..),

    -- ** BuildOptions_Logging
    BuildOptions_Logging (..),

    -- ** BuildOptions_MachineType
    BuildOptions_MachineType (..),

    -- ** BuildOptions_RequestedVerifyOption
    BuildOptions_RequestedVerifyOption (..),

    -- ** BuildOptions_SourceProvenanceHashItem
    BuildOptions_SourceProvenanceHashItem (..),

    -- ** BuildOptions_SubstitutionOption
    BuildOptions_SubstitutionOption (..),

    -- ** BuildStep
    BuildStep (..),
    newBuildStep,

    -- ** BuildStep_Status
    BuildStep_Status (..),

    -- ** BuildTrigger
    BuildTrigger (..),
    newBuildTrigger,

    -- ** BuildTrigger_EventType
    BuildTrigger_EventType (..),

    -- ** BuildTrigger_Substitutions
    BuildTrigger_Substitutions (..),
    newBuildTrigger_Substitutions,

    -- ** BuiltImage
    BuiltImage (..),
    newBuiltImage,

    -- ** CancelBuildRequest
    CancelBuildRequest (..),
    newCancelBuildRequest,

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** CreateBitbucketServerConfigOperationMetadata
    CreateBitbucketServerConfigOperationMetadata (..),
    newCreateBitbucketServerConfigOperationMetadata,

    -- ** CreateBitbucketServerConnectedRepositoryRequest
    CreateBitbucketServerConnectedRepositoryRequest (..),
    newCreateBitbucketServerConnectedRepositoryRequest,

    -- ** CreateGitHubEnterpriseConfigOperationMetadata
    CreateGitHubEnterpriseConfigOperationMetadata (..),
    newCreateGitHubEnterpriseConfigOperationMetadata,

    -- ** CreateGitLabConfigOperationMetadata
    CreateGitLabConfigOperationMetadata (..),
    newCreateGitLabConfigOperationMetadata,

    -- ** CreateWorkerPoolOperationMetadata
    CreateWorkerPoolOperationMetadata (..),
    newCreateWorkerPoolOperationMetadata,

    -- ** DeleteBitbucketServerConfigOperationMetadata
    DeleteBitbucketServerConfigOperationMetadata (..),
    newDeleteBitbucketServerConfigOperationMetadata,

    -- ** DeleteGitHubEnterpriseConfigOperationMetadata
    DeleteGitHubEnterpriseConfigOperationMetadata (..),
    newDeleteGitHubEnterpriseConfigOperationMetadata,

    -- ** DeleteGitLabConfigOperationMetadata
    DeleteGitLabConfigOperationMetadata (..),
    newDeleteGitLabConfigOperationMetadata,

    -- ** DeleteWorkerPoolOperationMetadata
    DeleteWorkerPoolOperationMetadata (..),
    newDeleteWorkerPoolOperationMetadata,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FailureInfo
    FailureInfo (..),
    newFailureInfo,

    -- ** FailureInfo_Type
    FailureInfo_Type (..),

    -- ** FileHashes
    FileHashes (..),
    newFileHashes,

    -- ** GitFileSource
    GitFileSource (..),
    newGitFileSource,

    -- ** GitFileSource_RepoType
    GitFileSource_RepoType (..),

    -- ** GitHubEnterpriseConfig
    GitHubEnterpriseConfig (..),
    newGitHubEnterpriseConfig,

    -- ** GitHubEnterpriseSecrets
    GitHubEnterpriseSecrets (..),
    newGitHubEnterpriseSecrets,

    -- ** GitHubEventsConfig
    GitHubEventsConfig (..),
    newGitHubEventsConfig,

    -- ** GitRepoSource
    GitRepoSource (..),
    newGitRepoSource,

    -- ** GitRepoSource_RepoType
    GitRepoSource_RepoType (..),

    -- ** GoogleDevtoolsCloudbuildV2OperationMetadata
    GoogleDevtoolsCloudbuildV2OperationMetadata (..),
    newGoogleDevtoolsCloudbuildV2OperationMetadata,

    -- ** HTTPDelivery
    HTTPDelivery (..),
    newHTTPDelivery,

    -- ** Hash
    Hash (..),
    newHash,

    -- ** Hash_Type
    Hash_Type (..),

    -- ** HttpBody
    HttpBody (..),
    newHttpBody,

    -- ** HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- ** InlineSecret
    InlineSecret (..),
    newInlineSecret,

    -- ** InlineSecret_EnvMap
    InlineSecret_EnvMap (..),
    newInlineSecret_EnvMap,

    -- ** ListBitbucketServerConfigsResponse
    ListBitbucketServerConfigsResponse (..),
    newListBitbucketServerConfigsResponse,

    -- ** ListBitbucketServerRepositoriesResponse
    ListBitbucketServerRepositoriesResponse (..),
    newListBitbucketServerRepositoriesResponse,

    -- ** ListBuildTriggersResponse
    ListBuildTriggersResponse (..),
    newListBuildTriggersResponse,

    -- ** ListBuildsResponse
    ListBuildsResponse (..),
    newListBuildsResponse,

    -- ** ListGithubEnterpriseConfigsResponse
    ListGithubEnterpriseConfigsResponse (..),
    newListGithubEnterpriseConfigsResponse,

    -- ** ListWorkerPoolsResponse
    ListWorkerPoolsResponse (..),
    newListWorkerPoolsResponse,

    -- ** NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- ** NetworkConfig_EgressOption
    NetworkConfig_EgressOption (..),

    -- ** Notification
    Notification (..),
    newNotification,

    -- ** Notification_StructDelivery
    Notification_StructDelivery (..),
    newNotification_StructDelivery,

    -- ** NotifierConfig
    NotifierConfig (..),
    newNotifierConfig,

    -- ** NotifierMetadata
    NotifierMetadata (..),
    newNotifierMetadata,

    -- ** NotifierSecret
    NotifierSecret (..),
    newNotifierSecret,

    -- ** NotifierSecretRef
    NotifierSecretRef (..),
    newNotifierSecretRef,

    -- ** NotifierSpec
    NotifierSpec (..),
    newNotifierSpec,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- ** PoolOption
    PoolOption (..),
    newPoolOption,

    -- ** PrivatePoolV1Config
    PrivatePoolV1Config (..),
    newPrivatePoolV1Config,

    -- ** ProcessAppManifestCallbackOperationMetadata
    ProcessAppManifestCallbackOperationMetadata (..),
    newProcessAppManifestCallbackOperationMetadata,

    -- ** PubsubConfig
    PubsubConfig (..),
    newPubsubConfig,

    -- ** PubsubConfig_State
    PubsubConfig_State (..),

    -- ** PullRequestFilter
    PullRequestFilter (..),
    newPullRequestFilter,

    -- ** PullRequestFilter_CommentControl
    PullRequestFilter_CommentControl (..),

    -- ** PushFilter
    PushFilter (..),
    newPushFilter,

    -- ** ReceiveTriggerWebhookResponse
    ReceiveTriggerWebhookResponse (..),
    newReceiveTriggerWebhookResponse,

    -- ** RemoveBitbucketServerConnectedRepositoryRequest
    RemoveBitbucketServerConnectedRepositoryRequest (..),
    newRemoveBitbucketServerConnectedRepositoryRequest,

    -- ** RepoSource
    RepoSource (..),
    newRepoSource,

    -- ** RepoSource_Substitutions
    RepoSource_Substitutions (..),
    newRepoSource_Substitutions,

    -- ** Results
    Results (..),
    newResults,

    -- ** RetryBuildRequest
    RetryBuildRequest (..),
    newRetryBuildRequest,

    -- ** RunBuildTriggerRequest
    RunBuildTriggerRequest (..),
    newRunBuildTriggerRequest,

    -- ** RunWorkflowCustomOperationMetadata
    RunWorkflowCustomOperationMetadata (..),
    newRunWorkflowCustomOperationMetadata,

    -- ** SMTPDelivery
    SMTPDelivery (..),
    newSMTPDelivery,

    -- ** Secret
    Secret (..),
    newSecret,

    -- ** Secret_SecretEnv
    Secret_SecretEnv (..),
    newSecret_SecretEnv,

    -- ** SecretManagerSecret
    SecretManagerSecret (..),
    newSecretManagerSecret,

    -- ** Secrets
    Secrets (..),
    newSecrets,

    -- ** SlackDelivery
    SlackDelivery (..),
    newSlackDelivery,

    -- ** Source
    Source (..),
    newSource,

    -- ** SourceProvenance
    SourceProvenance (..),
    newSourceProvenance,

    -- ** SourceProvenance_FileHashes
    SourceProvenance_FileHashes (..),
    newSourceProvenance_FileHashes,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StorageSource
    StorageSource (..),
    newStorageSource,

    -- ** StorageSourceManifest
    StorageSourceManifest (..),
    newStorageSourceManifest,

    -- ** TimeSpan
    TimeSpan (..),
    newTimeSpan,

    -- ** UpdateBitbucketServerConfigOperationMetadata
    UpdateBitbucketServerConfigOperationMetadata (..),
    newUpdateBitbucketServerConfigOperationMetadata,

    -- ** UpdateGitHubEnterpriseConfigOperationMetadata
    UpdateGitHubEnterpriseConfigOperationMetadata (..),
    newUpdateGitHubEnterpriseConfigOperationMetadata,

    -- ** UpdateGitLabConfigOperationMetadata
    UpdateGitLabConfigOperationMetadata (..),
    newUpdateGitLabConfigOperationMetadata,

    -- ** UpdateWorkerPoolOperationMetadata
    UpdateWorkerPoolOperationMetadata (..),
    newUpdateWorkerPoolOperationMetadata,

    -- ** Volume
    Volume (..),
    newVolume,

    -- ** Warning
    Warning (..),
    newWarning,

    -- ** Warning_Priority
    Warning_Priority (..),

    -- ** WebhookConfig
    WebhookConfig (..),
    newWebhookConfig,

    -- ** WebhookConfig_State
    WebhookConfig_State (..),

    -- ** WorkerConfig
    WorkerConfig (..),
    newWorkerConfig,

    -- ** WorkerPool
    WorkerPool (..),
    newWorkerPool,

    -- ** WorkerPool_Annotations
    WorkerPool_Annotations (..),
    newWorkerPool_Annotations,

    -- ** WorkerPool_State
    WorkerPool_State (..),
  )
where

import Network.Google.ContainerBuilder.Internal.Product
import Network.Google.ContainerBuilder.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Build API. This contains the host and root path used as a starting point for constructing service requests.
containerBuilderService :: Core.ServiceConfig
containerBuilderService =
  Core.defaultService
    (Core.ServiceId "cloudbuild:v1")
    "cloudbuild.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy

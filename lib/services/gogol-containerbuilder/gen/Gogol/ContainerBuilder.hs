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
-- Module      : Gogol.ContainerBuilder
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages builds on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference>
module Gogol.ContainerBuilder
  ( -- * Configuration
    containerBuilderService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudbuild.locations.regionalWebhook
    CloudbuildLocationsRegionalWebhookResource,
    CloudbuildLocationsRegionalWebhook (..),
    newCloudbuildLocationsRegionalWebhook,

    -- ** cloudbuild.operations.cancel
    CloudbuildOperationsCancelResource,
    CloudbuildOperationsCancel (..),
    newCloudbuildOperationsCancel,

    -- ** cloudbuild.operations.get
    CloudbuildOperationsGetResource,
    CloudbuildOperationsGet (..),
    newCloudbuildOperationsGet,

    -- ** cloudbuild.projects.builds.approve
    CloudbuildProjectsBuildsApproveResource,
    CloudbuildProjectsBuildsApprove (..),
    newCloudbuildProjectsBuildsApprove,

    -- ** cloudbuild.projects.builds.cancel
    CloudbuildProjectsBuildsCancelResource,
    CloudbuildProjectsBuildsCancel (..),
    newCloudbuildProjectsBuildsCancel,

    -- ** cloudbuild.projects.builds.create
    CloudbuildProjectsBuildsCreateResource,
    CloudbuildProjectsBuildsCreate (..),
    newCloudbuildProjectsBuildsCreate,

    -- ** cloudbuild.projects.builds.get
    CloudbuildProjectsBuildsGetResource,
    CloudbuildProjectsBuildsGet (..),
    newCloudbuildProjectsBuildsGet,

    -- ** cloudbuild.projects.builds.list
    CloudbuildProjectsBuildsListResource,
    CloudbuildProjectsBuildsList (..),
    newCloudbuildProjectsBuildsList,

    -- ** cloudbuild.projects.builds.retry
    CloudbuildProjectsBuildsRetryResource,
    CloudbuildProjectsBuildsRetry (..),
    newCloudbuildProjectsBuildsRetry,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.create
    CloudbuildProjectsGithubEnterpriseConfigsCreateResource,
    CloudbuildProjectsGithubEnterpriseConfigsCreate (..),
    newCloudbuildProjectsGithubEnterpriseConfigsCreate,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.delete
    CloudbuildProjectsGithubEnterpriseConfigsDeleteResource,
    CloudbuildProjectsGithubEnterpriseConfigsDelete (..),
    newCloudbuildProjectsGithubEnterpriseConfigsDelete,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.get
    CloudbuildProjectsGithubEnterpriseConfigsGetResource,
    CloudbuildProjectsGithubEnterpriseConfigsGet (..),
    newCloudbuildProjectsGithubEnterpriseConfigsGet,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.list
    CloudbuildProjectsGithubEnterpriseConfigsListResource,
    CloudbuildProjectsGithubEnterpriseConfigsList (..),
    newCloudbuildProjectsGithubEnterpriseConfigsList,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.patch
    CloudbuildProjectsGithubEnterpriseConfigsPatchResource,
    CloudbuildProjectsGithubEnterpriseConfigsPatch (..),
    newCloudbuildProjectsGithubEnterpriseConfigsPatch,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.addBitbucketServerConnectedRepository
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepositoryResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.connectedRepositories.batchCreate
    CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreateResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.create
    CloudbuildProjectsLocationsBitbucketServerConfigsCreateResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsCreate (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsCreate,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.delete
    CloudbuildProjectsLocationsBitbucketServerConfigsDeleteResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsDelete (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsDelete,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.get
    CloudbuildProjectsLocationsBitbucketServerConfigsGetResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsGet (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsGet,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.list
    CloudbuildProjectsLocationsBitbucketServerConfigsListResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsList (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsList,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.patch
    CloudbuildProjectsLocationsBitbucketServerConfigsPatchResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsPatch (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsPatch,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.removeBitbucketServerConnectedRepository
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepositoryResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.repos.list
    CloudbuildProjectsLocationsBitbucketServerConfigsReposListResource,
    CloudbuildProjectsLocationsBitbucketServerConfigsReposList (..),
    newCloudbuildProjectsLocationsBitbucketServerConfigsReposList,

    -- ** cloudbuild.projects.locations.builds.approve
    CloudbuildProjectsLocationsBuildsApproveResource,
    CloudbuildProjectsLocationsBuildsApprove (..),
    newCloudbuildProjectsLocationsBuildsApprove,

    -- ** cloudbuild.projects.locations.builds.cancel
    CloudbuildProjectsLocationsBuildsCancelResource,
    CloudbuildProjectsLocationsBuildsCancel (..),
    newCloudbuildProjectsLocationsBuildsCancel,

    -- ** cloudbuild.projects.locations.builds.create
    CloudbuildProjectsLocationsBuildsCreateResource,
    CloudbuildProjectsLocationsBuildsCreate (..),
    newCloudbuildProjectsLocationsBuildsCreate,

    -- ** cloudbuild.projects.locations.builds.get
    CloudbuildProjectsLocationsBuildsGetResource,
    CloudbuildProjectsLocationsBuildsGet (..),
    newCloudbuildProjectsLocationsBuildsGet,

    -- ** cloudbuild.projects.locations.builds.list
    CloudbuildProjectsLocationsBuildsListResource,
    CloudbuildProjectsLocationsBuildsList (..),
    newCloudbuildProjectsLocationsBuildsList,

    -- ** cloudbuild.projects.locations.builds.retry
    CloudbuildProjectsLocationsBuildsRetryResource,
    CloudbuildProjectsLocationsBuildsRetry (..),
    newCloudbuildProjectsLocationsBuildsRetry,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.create
    CloudbuildProjectsLocationsGithubEnterpriseConfigsCreateResource,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate (..),
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.delete
    CloudbuildProjectsLocationsGithubEnterpriseConfigsDeleteResource,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete (..),
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.get
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGetResource,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGet (..),
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.list
    CloudbuildProjectsLocationsGithubEnterpriseConfigsListResource,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsList (..),
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsList,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.patch
    CloudbuildProjectsLocationsGithubEnterpriseConfigsPatchResource,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsPatch (..),
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsPatch,

    -- ** cloudbuild.projects.locations.operations.cancel
    CloudbuildProjectsLocationsOperationsCancelResource,
    CloudbuildProjectsLocationsOperationsCancel (..),
    newCloudbuildProjectsLocationsOperationsCancel,

    -- ** cloudbuild.projects.locations.operations.get
    CloudbuildProjectsLocationsOperationsGetResource,
    CloudbuildProjectsLocationsOperationsGet (..),
    newCloudbuildProjectsLocationsOperationsGet,

    -- ** cloudbuild.projects.locations.triggers.create
    CloudbuildProjectsLocationsTriggersCreateResource,
    CloudbuildProjectsLocationsTriggersCreate (..),
    newCloudbuildProjectsLocationsTriggersCreate,

    -- ** cloudbuild.projects.locations.triggers.delete
    CloudbuildProjectsLocationsTriggersDeleteResource,
    CloudbuildProjectsLocationsTriggersDelete (..),
    newCloudbuildProjectsLocationsTriggersDelete,

    -- ** cloudbuild.projects.locations.triggers.get
    CloudbuildProjectsLocationsTriggersGetResource,
    CloudbuildProjectsLocationsTriggersGet (..),
    newCloudbuildProjectsLocationsTriggersGet,

    -- ** cloudbuild.projects.locations.triggers.list
    CloudbuildProjectsLocationsTriggersListResource,
    CloudbuildProjectsLocationsTriggersList (..),
    newCloudbuildProjectsLocationsTriggersList,

    -- ** cloudbuild.projects.locations.triggers.patch
    CloudbuildProjectsLocationsTriggersPatchResource,
    CloudbuildProjectsLocationsTriggersPatch (..),
    newCloudbuildProjectsLocationsTriggersPatch,

    -- ** cloudbuild.projects.locations.triggers.run
    CloudbuildProjectsLocationsTriggersRunResource,
    CloudbuildProjectsLocationsTriggersRun (..),
    newCloudbuildProjectsLocationsTriggersRun,

    -- ** cloudbuild.projects.locations.triggers.webhook
    CloudbuildProjectsLocationsTriggersWebhookResource,
    CloudbuildProjectsLocationsTriggersWebhook (..),
    newCloudbuildProjectsLocationsTriggersWebhook,

    -- ** cloudbuild.projects.locations.workerPools.create
    CloudbuildProjectsLocationsWorkerPoolsCreateResource,
    CloudbuildProjectsLocationsWorkerPoolsCreate (..),
    newCloudbuildProjectsLocationsWorkerPoolsCreate,

    -- ** cloudbuild.projects.locations.workerPools.delete
    CloudbuildProjectsLocationsWorkerPoolsDeleteResource,
    CloudbuildProjectsLocationsWorkerPoolsDelete (..),
    newCloudbuildProjectsLocationsWorkerPoolsDelete,

    -- ** cloudbuild.projects.locations.workerPools.get
    CloudbuildProjectsLocationsWorkerPoolsGetResource,
    CloudbuildProjectsLocationsWorkerPoolsGet (..),
    newCloudbuildProjectsLocationsWorkerPoolsGet,

    -- ** cloudbuild.projects.locations.workerPools.list
    CloudbuildProjectsLocationsWorkerPoolsListResource,
    CloudbuildProjectsLocationsWorkerPoolsList (..),
    newCloudbuildProjectsLocationsWorkerPoolsList,

    -- ** cloudbuild.projects.locations.workerPools.patch
    CloudbuildProjectsLocationsWorkerPoolsPatchResource,
    CloudbuildProjectsLocationsWorkerPoolsPatch (..),
    newCloudbuildProjectsLocationsWorkerPoolsPatch,

    -- ** cloudbuild.projects.triggers.create
    CloudbuildProjectsTriggersCreateResource,
    CloudbuildProjectsTriggersCreate (..),
    newCloudbuildProjectsTriggersCreate,

    -- ** cloudbuild.projects.triggers.delete
    CloudbuildProjectsTriggersDeleteResource,
    CloudbuildProjectsTriggersDelete (..),
    newCloudbuildProjectsTriggersDelete,

    -- ** cloudbuild.projects.triggers.get
    CloudbuildProjectsTriggersGetResource,
    CloudbuildProjectsTriggersGet (..),
    newCloudbuildProjectsTriggersGet,

    -- ** cloudbuild.projects.triggers.list
    CloudbuildProjectsTriggersListResource,
    CloudbuildProjectsTriggersList (..),
    newCloudbuildProjectsTriggersList,

    -- ** cloudbuild.projects.triggers.patch
    CloudbuildProjectsTriggersPatchResource,
    CloudbuildProjectsTriggersPatch (..),
    newCloudbuildProjectsTriggersPatch,

    -- ** cloudbuild.projects.triggers.run
    CloudbuildProjectsTriggersRunResource,
    CloudbuildProjectsTriggersRun (..),
    newCloudbuildProjectsTriggersRun,

    -- ** cloudbuild.projects.triggers.webhook
    CloudbuildProjectsTriggersWebhookResource,
    CloudbuildProjectsTriggersWebhook (..),
    newCloudbuildProjectsTriggersWebhook,

    -- ** cloudbuild.webhook
    CloudbuildWebhookResource,
    CloudbuildWebhook (..),
    newCloudbuildWebhook,

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

import Gogol.ContainerBuilder.Cloudbuild.Locations.RegionalWebhook
import Gogol.ContainerBuilder.Cloudbuild.Operations.Cancel
import Gogol.ContainerBuilder.Cloudbuild.Operations.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Approve
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Cancel
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Builds.Retry
import Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.AddBitbucketServerConnectedRepository
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.ConnectedRepositories.BatchCreate
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.RemoveBitbucketServerConnectedRepository
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.BitbucketServerConfigs.Repos.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Approve
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Cancel
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Retry
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Operations.Cancel
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Operations.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Run
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Webhook
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Create
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Delete
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Get
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.List
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Patch
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Run
import Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Webhook
import Gogol.ContainerBuilder.Cloudbuild.Webhook
import Gogol.ContainerBuilder.Types

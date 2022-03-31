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
    newCloudbuildLocationsRegionalWebhook,
    CloudbuildLocationsRegionalWebhook,

    -- ** cloudbuild.operations.cancel
    CloudbuildOperationsCancelResource,
    newCloudbuildOperationsCancel,
    CloudbuildOperationsCancel,

    -- ** cloudbuild.operations.get
    CloudbuildOperationsGetResource,
    newCloudbuildOperationsGet,
    CloudbuildOperationsGet,

    -- ** cloudbuild.projects.builds.approve
    CloudbuildProjectsBuildsApproveResource,
    newCloudbuildProjectsBuildsApprove,
    CloudbuildProjectsBuildsApprove,

    -- ** cloudbuild.projects.builds.cancel
    CloudbuildProjectsBuildsCancelResource,
    newCloudbuildProjectsBuildsCancel,
    CloudbuildProjectsBuildsCancel,

    -- ** cloudbuild.projects.builds.create
    CloudbuildProjectsBuildsCreateResource,
    newCloudbuildProjectsBuildsCreate,
    CloudbuildProjectsBuildsCreate,

    -- ** cloudbuild.projects.builds.get
    CloudbuildProjectsBuildsGetResource,
    newCloudbuildProjectsBuildsGet,
    CloudbuildProjectsBuildsGet,

    -- ** cloudbuild.projects.builds.list
    CloudbuildProjectsBuildsListResource,
    newCloudbuildProjectsBuildsList,
    CloudbuildProjectsBuildsList,

    -- ** cloudbuild.projects.builds.retry
    CloudbuildProjectsBuildsRetryResource,
    newCloudbuildProjectsBuildsRetry,
    CloudbuildProjectsBuildsRetry,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.create
    CloudbuildProjectsGithubEnterpriseConfigsCreateResource,
    newCloudbuildProjectsGithubEnterpriseConfigsCreate,
    CloudbuildProjectsGithubEnterpriseConfigsCreate,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.delete
    CloudbuildProjectsGithubEnterpriseConfigsDeleteResource,
    newCloudbuildProjectsGithubEnterpriseConfigsDelete,
    CloudbuildProjectsGithubEnterpriseConfigsDelete,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.get
    CloudbuildProjectsGithubEnterpriseConfigsGetResource,
    newCloudbuildProjectsGithubEnterpriseConfigsGet,
    CloudbuildProjectsGithubEnterpriseConfigsGet,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.list
    CloudbuildProjectsGithubEnterpriseConfigsListResource,
    newCloudbuildProjectsGithubEnterpriseConfigsList,
    CloudbuildProjectsGithubEnterpriseConfigsList,

    -- ** cloudbuild.projects.githubEnterpriseConfigs.patch
    CloudbuildProjectsGithubEnterpriseConfigsPatchResource,
    newCloudbuildProjectsGithubEnterpriseConfigsPatch,
    CloudbuildProjectsGithubEnterpriseConfigsPatch,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.addBitbucketServerConnectedRepository
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepositoryResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository,
    CloudbuildProjectsLocationsBitbucketServerConfigsAddBitbucketServerConnectedRepository,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.connectedRepositories.batchCreate
    CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreateResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate,
    CloudbuildProjectsLocationsBitbucketServerConfigsConnectedRepositoriesBatchCreate,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.create
    CloudbuildProjectsLocationsBitbucketServerConfigsCreateResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsCreate,
    CloudbuildProjectsLocationsBitbucketServerConfigsCreate,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.delete
    CloudbuildProjectsLocationsBitbucketServerConfigsDeleteResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsDelete,
    CloudbuildProjectsLocationsBitbucketServerConfigsDelete,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.get
    CloudbuildProjectsLocationsBitbucketServerConfigsGetResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsGet,
    CloudbuildProjectsLocationsBitbucketServerConfigsGet,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.list
    CloudbuildProjectsLocationsBitbucketServerConfigsListResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsList,
    CloudbuildProjectsLocationsBitbucketServerConfigsList,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.patch
    CloudbuildProjectsLocationsBitbucketServerConfigsPatchResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsPatch,
    CloudbuildProjectsLocationsBitbucketServerConfigsPatch,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.removeBitbucketServerConnectedRepository
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepositoryResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository,
    CloudbuildProjectsLocationsBitbucketServerConfigsRemoveBitbucketServerConnectedRepository,

    -- ** cloudbuild.projects.locations.bitbucketServerConfigs.repos.list
    CloudbuildProjectsLocationsBitbucketServerConfigsReposListResource,
    newCloudbuildProjectsLocationsBitbucketServerConfigsReposList,
    CloudbuildProjectsLocationsBitbucketServerConfigsReposList,

    -- ** cloudbuild.projects.locations.builds.approve
    CloudbuildProjectsLocationsBuildsApproveResource,
    newCloudbuildProjectsLocationsBuildsApprove,
    CloudbuildProjectsLocationsBuildsApprove,

    -- ** cloudbuild.projects.locations.builds.cancel
    CloudbuildProjectsLocationsBuildsCancelResource,
    newCloudbuildProjectsLocationsBuildsCancel,
    CloudbuildProjectsLocationsBuildsCancel,

    -- ** cloudbuild.projects.locations.builds.create
    CloudbuildProjectsLocationsBuildsCreateResource,
    newCloudbuildProjectsLocationsBuildsCreate,
    CloudbuildProjectsLocationsBuildsCreate,

    -- ** cloudbuild.projects.locations.builds.get
    CloudbuildProjectsLocationsBuildsGetResource,
    newCloudbuildProjectsLocationsBuildsGet,
    CloudbuildProjectsLocationsBuildsGet,

    -- ** cloudbuild.projects.locations.builds.list
    CloudbuildProjectsLocationsBuildsListResource,
    newCloudbuildProjectsLocationsBuildsList,
    CloudbuildProjectsLocationsBuildsList,

    -- ** cloudbuild.projects.locations.builds.retry
    CloudbuildProjectsLocationsBuildsRetryResource,
    newCloudbuildProjectsLocationsBuildsRetry,
    CloudbuildProjectsLocationsBuildsRetry,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.create
    CloudbuildProjectsLocationsGithubEnterpriseConfigsCreateResource,
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.delete
    CloudbuildProjectsLocationsGithubEnterpriseConfigsDeleteResource,
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.get
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGetResource,
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGet,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.list
    CloudbuildProjectsLocationsGithubEnterpriseConfigsListResource,
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsList,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsList,

    -- ** cloudbuild.projects.locations.githubEnterpriseConfigs.patch
    CloudbuildProjectsLocationsGithubEnterpriseConfigsPatchResource,
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsPatch,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsPatch,

    -- ** cloudbuild.projects.locations.operations.cancel
    CloudbuildProjectsLocationsOperationsCancelResource,
    newCloudbuildProjectsLocationsOperationsCancel,
    CloudbuildProjectsLocationsOperationsCancel,

    -- ** cloudbuild.projects.locations.operations.get
    CloudbuildProjectsLocationsOperationsGetResource,
    newCloudbuildProjectsLocationsOperationsGet,
    CloudbuildProjectsLocationsOperationsGet,

    -- ** cloudbuild.projects.locations.triggers.create
    CloudbuildProjectsLocationsTriggersCreateResource,
    newCloudbuildProjectsLocationsTriggersCreate,
    CloudbuildProjectsLocationsTriggersCreate,

    -- ** cloudbuild.projects.locations.triggers.delete
    CloudbuildProjectsLocationsTriggersDeleteResource,
    newCloudbuildProjectsLocationsTriggersDelete,
    CloudbuildProjectsLocationsTriggersDelete,

    -- ** cloudbuild.projects.locations.triggers.get
    CloudbuildProjectsLocationsTriggersGetResource,
    newCloudbuildProjectsLocationsTriggersGet,
    CloudbuildProjectsLocationsTriggersGet,

    -- ** cloudbuild.projects.locations.triggers.list
    CloudbuildProjectsLocationsTriggersListResource,
    newCloudbuildProjectsLocationsTriggersList,
    CloudbuildProjectsLocationsTriggersList,

    -- ** cloudbuild.projects.locations.triggers.patch
    CloudbuildProjectsLocationsTriggersPatchResource,
    newCloudbuildProjectsLocationsTriggersPatch,
    CloudbuildProjectsLocationsTriggersPatch,

    -- ** cloudbuild.projects.locations.triggers.run
    CloudbuildProjectsLocationsTriggersRunResource,
    newCloudbuildProjectsLocationsTriggersRun,
    CloudbuildProjectsLocationsTriggersRun,

    -- ** cloudbuild.projects.locations.triggers.webhook
    CloudbuildProjectsLocationsTriggersWebhookResource,
    newCloudbuildProjectsLocationsTriggersWebhook,
    CloudbuildProjectsLocationsTriggersWebhook,

    -- ** cloudbuild.projects.locations.workerPools.create
    CloudbuildProjectsLocationsWorkerPoolsCreateResource,
    newCloudbuildProjectsLocationsWorkerPoolsCreate,
    CloudbuildProjectsLocationsWorkerPoolsCreate,

    -- ** cloudbuild.projects.locations.workerPools.delete
    CloudbuildProjectsLocationsWorkerPoolsDeleteResource,
    newCloudbuildProjectsLocationsWorkerPoolsDelete,
    CloudbuildProjectsLocationsWorkerPoolsDelete,

    -- ** cloudbuild.projects.locations.workerPools.get
    CloudbuildProjectsLocationsWorkerPoolsGetResource,
    newCloudbuildProjectsLocationsWorkerPoolsGet,
    CloudbuildProjectsLocationsWorkerPoolsGet,

    -- ** cloudbuild.projects.locations.workerPools.list
    CloudbuildProjectsLocationsWorkerPoolsListResource,
    newCloudbuildProjectsLocationsWorkerPoolsList,
    CloudbuildProjectsLocationsWorkerPoolsList,

    -- ** cloudbuild.projects.locations.workerPools.patch
    CloudbuildProjectsLocationsWorkerPoolsPatchResource,
    newCloudbuildProjectsLocationsWorkerPoolsPatch,
    CloudbuildProjectsLocationsWorkerPoolsPatch,

    -- ** cloudbuild.projects.triggers.create
    CloudbuildProjectsTriggersCreateResource,
    newCloudbuildProjectsTriggersCreate,
    CloudbuildProjectsTriggersCreate,

    -- ** cloudbuild.projects.triggers.delete
    CloudbuildProjectsTriggersDeleteResource,
    newCloudbuildProjectsTriggersDelete,
    CloudbuildProjectsTriggersDelete,

    -- ** cloudbuild.projects.triggers.get
    CloudbuildProjectsTriggersGetResource,
    newCloudbuildProjectsTriggersGet,
    CloudbuildProjectsTriggersGet,

    -- ** cloudbuild.projects.triggers.list
    CloudbuildProjectsTriggersListResource,
    newCloudbuildProjectsTriggersList,
    CloudbuildProjectsTriggersList,

    -- ** cloudbuild.projects.triggers.patch
    CloudbuildProjectsTriggersPatchResource,
    newCloudbuildProjectsTriggersPatch,
    CloudbuildProjectsTriggersPatch,

    -- ** cloudbuild.projects.triggers.run
    CloudbuildProjectsTriggersRunResource,
    newCloudbuildProjectsTriggersRun,
    CloudbuildProjectsTriggersRun,

    -- ** cloudbuild.projects.triggers.webhook
    CloudbuildProjectsTriggersWebhookResource,
    newCloudbuildProjectsTriggersWebhook,
    CloudbuildProjectsTriggersWebhook,

    -- ** cloudbuild.webhook
    CloudbuildWebhookResource,
    newCloudbuildWebhook,
    CloudbuildWebhook,

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

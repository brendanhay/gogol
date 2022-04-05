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
-- Module      : Gogol.ContainerBuilder.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ContainerBuilder.Internal.Product
  ( -- * AddBitbucketServerConnectedRepositoryRequest
    AddBitbucketServerConnectedRepositoryRequest (..),
    newAddBitbucketServerConnectedRepositoryRequest,

    -- * AddBitbucketServerConnectedRepositoryResponse
    AddBitbucketServerConnectedRepositoryResponse (..),
    newAddBitbucketServerConnectedRepositoryResponse,

    -- * ApprovalConfig
    ApprovalConfig (..),
    newApprovalConfig,

    -- * ApprovalResult
    ApprovalResult (..),
    newApprovalResult,

    -- * ApproveBuildRequest
    ApproveBuildRequest (..),
    newApproveBuildRequest,

    -- * ArtifactObjects
    ArtifactObjects (..),
    newArtifactObjects,

    -- * ArtifactResult
    ArtifactResult (..),
    newArtifactResult,

    -- * Artifacts
    Artifacts (..),
    newArtifacts,

    -- * BatchCreateBitbucketServerConnectedRepositoriesRequest
    BatchCreateBitbucketServerConnectedRepositoriesRequest (..),
    newBatchCreateBitbucketServerConnectedRepositoriesRequest,

    -- * BatchCreateBitbucketServerConnectedRepositoriesResponse
    BatchCreateBitbucketServerConnectedRepositoriesResponse (..),
    newBatchCreateBitbucketServerConnectedRepositoriesResponse,

    -- * BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata (..),
    newBatchCreateBitbucketServerConnectedRepositoriesResponseMetadata,

    -- * BitbucketServerConfig
    BitbucketServerConfig (..),
    newBitbucketServerConfig,

    -- * BitbucketServerConnectedRepository
    BitbucketServerConnectedRepository (..),
    newBitbucketServerConnectedRepository,

    -- * BitbucketServerRepository
    BitbucketServerRepository (..),
    newBitbucketServerRepository,

    -- * BitbucketServerRepositoryId
    BitbucketServerRepositoryId (..),
    newBitbucketServerRepositoryId,

    -- * BitbucketServerSecrets
    BitbucketServerSecrets (..),
    newBitbucketServerSecrets,

    -- * BitbucketServerTriggerConfig
    BitbucketServerTriggerConfig (..),
    newBitbucketServerTriggerConfig,

    -- * Build
    Build (..),
    newBuild,

    -- * Build_Substitutions
    Build_Substitutions (..),
    newBuild_Substitutions,

    -- * Build_Timing
    Build_Timing (..),
    newBuild_Timing,

    -- * BuildApproval
    BuildApproval (..),
    newBuildApproval,

    -- * BuildOperationMetadata
    BuildOperationMetadata (..),
    newBuildOperationMetadata,

    -- * BuildOptions
    BuildOptions (..),
    newBuildOptions,

    -- * BuildStep
    BuildStep (..),
    newBuildStep,

    -- * BuildTrigger
    BuildTrigger (..),
    newBuildTrigger,

    -- * BuildTrigger_Substitutions
    BuildTrigger_Substitutions (..),
    newBuildTrigger_Substitutions,

    -- * BuiltImage
    BuiltImage (..),
    newBuiltImage,

    -- * CancelBuildRequest
    CancelBuildRequest (..),
    newCancelBuildRequest,

    -- * CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- * CreateBitbucketServerConfigOperationMetadata
    CreateBitbucketServerConfigOperationMetadata (..),
    newCreateBitbucketServerConfigOperationMetadata,

    -- * CreateBitbucketServerConnectedRepositoryRequest
    CreateBitbucketServerConnectedRepositoryRequest (..),
    newCreateBitbucketServerConnectedRepositoryRequest,

    -- * CreateGitHubEnterpriseConfigOperationMetadata
    CreateGitHubEnterpriseConfigOperationMetadata (..),
    newCreateGitHubEnterpriseConfigOperationMetadata,

    -- * CreateGitLabConfigOperationMetadata
    CreateGitLabConfigOperationMetadata (..),
    newCreateGitLabConfigOperationMetadata,

    -- * CreateWorkerPoolOperationMetadata
    CreateWorkerPoolOperationMetadata (..),
    newCreateWorkerPoolOperationMetadata,

    -- * DeleteBitbucketServerConfigOperationMetadata
    DeleteBitbucketServerConfigOperationMetadata (..),
    newDeleteBitbucketServerConfigOperationMetadata,

    -- * DeleteGitHubEnterpriseConfigOperationMetadata
    DeleteGitHubEnterpriseConfigOperationMetadata (..),
    newDeleteGitHubEnterpriseConfigOperationMetadata,

    -- * DeleteGitLabConfigOperationMetadata
    DeleteGitLabConfigOperationMetadata (..),
    newDeleteGitLabConfigOperationMetadata,

    -- * DeleteWorkerPoolOperationMetadata
    DeleteWorkerPoolOperationMetadata (..),
    newDeleteWorkerPoolOperationMetadata,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FailureInfo
    FailureInfo (..),
    newFailureInfo,

    -- * FileHashes
    FileHashes (..),
    newFileHashes,

    -- * GitFileSource
    GitFileSource (..),
    newGitFileSource,

    -- * GitHubEnterpriseConfig
    GitHubEnterpriseConfig (..),
    newGitHubEnterpriseConfig,

    -- * GitHubEnterpriseSecrets
    GitHubEnterpriseSecrets (..),
    newGitHubEnterpriseSecrets,

    -- * GitHubEventsConfig
    GitHubEventsConfig (..),
    newGitHubEventsConfig,

    -- * GitRepoSource
    GitRepoSource (..),
    newGitRepoSource,

    -- * GoogleDevtoolsCloudbuildV2OperationMetadata
    GoogleDevtoolsCloudbuildV2OperationMetadata (..),
    newGoogleDevtoolsCloudbuildV2OperationMetadata,

    -- * HTTPDelivery
    HTTPDelivery (..),
    newHTTPDelivery,

    -- * Hash
    Hash (..),
    newHash,

    -- * HttpBody
    HttpBody (..),
    newHttpBody,

    -- * HttpBody_ExtensionsItem
    HttpBody_ExtensionsItem (..),
    newHttpBody_ExtensionsItem,

    -- * InlineSecret
    InlineSecret (..),
    newInlineSecret,

    -- * InlineSecret_EnvMap
    InlineSecret_EnvMap (..),
    newInlineSecret_EnvMap,

    -- * ListBitbucketServerConfigsResponse
    ListBitbucketServerConfigsResponse (..),
    newListBitbucketServerConfigsResponse,

    -- * ListBitbucketServerRepositoriesResponse
    ListBitbucketServerRepositoriesResponse (..),
    newListBitbucketServerRepositoriesResponse,

    -- * ListBuildTriggersResponse
    ListBuildTriggersResponse (..),
    newListBuildTriggersResponse,

    -- * ListBuildsResponse
    ListBuildsResponse (..),
    newListBuildsResponse,

    -- * ListGithubEnterpriseConfigsResponse
    ListGithubEnterpriseConfigsResponse (..),
    newListGithubEnterpriseConfigsResponse,

    -- * ListWorkerPoolsResponse
    ListWorkerPoolsResponse (..),
    newListWorkerPoolsResponse,

    -- * NetworkConfig
    NetworkConfig (..),
    newNetworkConfig,

    -- * Notification
    Notification (..),
    newNotification,

    -- * Notification_StructDelivery
    Notification_StructDelivery (..),
    newNotification_StructDelivery,

    -- * NotifierConfig
    NotifierConfig (..),
    newNotifierConfig,

    -- * NotifierMetadata
    NotifierMetadata (..),
    newNotifierMetadata,

    -- * NotifierSecret
    NotifierSecret (..),
    newNotifierSecret,

    -- * NotifierSecretRef
    NotifierSecretRef (..),
    newNotifierSecretRef,

    -- * NotifierSpec
    NotifierSpec (..),
    newNotifierSpec,

    -- * Operation
    Operation (..),
    newOperation,

    -- * Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- * Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- * OperationMetadata
    OperationMetadata (..),
    newOperationMetadata,

    -- * PoolOption
    PoolOption (..),
    newPoolOption,

    -- * PrivatePoolV1Config
    PrivatePoolV1Config (..),
    newPrivatePoolV1Config,

    -- * ProcessAppManifestCallbackOperationMetadata
    ProcessAppManifestCallbackOperationMetadata (..),
    newProcessAppManifestCallbackOperationMetadata,

    -- * PubsubConfig
    PubsubConfig (..),
    newPubsubConfig,

    -- * PullRequestFilter
    PullRequestFilter (..),
    newPullRequestFilter,

    -- * PushFilter
    PushFilter (..),
    newPushFilter,

    -- * ReceiveTriggerWebhookResponse
    ReceiveTriggerWebhookResponse (..),
    newReceiveTriggerWebhookResponse,

    -- * RemoveBitbucketServerConnectedRepositoryRequest
    RemoveBitbucketServerConnectedRepositoryRequest (..),
    newRemoveBitbucketServerConnectedRepositoryRequest,

    -- * RepoSource
    RepoSource (..),
    newRepoSource,

    -- * RepoSource_Substitutions
    RepoSource_Substitutions (..),
    newRepoSource_Substitutions,

    -- * Results
    Results (..),
    newResults,

    -- * RetryBuildRequest
    RetryBuildRequest (..),
    newRetryBuildRequest,

    -- * RunBuildTriggerRequest
    RunBuildTriggerRequest (..),
    newRunBuildTriggerRequest,

    -- * RunWorkflowCustomOperationMetadata
    RunWorkflowCustomOperationMetadata (..),
    newRunWorkflowCustomOperationMetadata,

    -- * SMTPDelivery
    SMTPDelivery (..),
    newSMTPDelivery,

    -- * Secret
    Secret (..),
    newSecret,

    -- * Secret_SecretEnv
    Secret_SecretEnv (..),
    newSecret_SecretEnv,

    -- * SecretManagerSecret
    SecretManagerSecret (..),
    newSecretManagerSecret,

    -- * Secrets
    Secrets (..),
    newSecrets,

    -- * SlackDelivery
    SlackDelivery (..),
    newSlackDelivery,

    -- * Source
    Source (..),
    newSource,

    -- * SourceProvenance
    SourceProvenance (..),
    newSourceProvenance,

    -- * SourceProvenance_FileHashes
    SourceProvenance_FileHashes (..),
    newSourceProvenance_FileHashes,

    -- * Status
    Status (..),
    newStatus,

    -- * Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- * StorageSource
    StorageSource (..),
    newStorageSource,

    -- * StorageSourceManifest
    StorageSourceManifest (..),
    newStorageSourceManifest,

    -- * TimeSpan
    TimeSpan (..),
    newTimeSpan,

    -- * UpdateBitbucketServerConfigOperationMetadata
    UpdateBitbucketServerConfigOperationMetadata (..),
    newUpdateBitbucketServerConfigOperationMetadata,

    -- * UpdateGitHubEnterpriseConfigOperationMetadata
    UpdateGitHubEnterpriseConfigOperationMetadata (..),
    newUpdateGitHubEnterpriseConfigOperationMetadata,

    -- * UpdateGitLabConfigOperationMetadata
    UpdateGitLabConfigOperationMetadata (..),
    newUpdateGitLabConfigOperationMetadata,

    -- * UpdateWorkerPoolOperationMetadata
    UpdateWorkerPoolOperationMetadata (..),
    newUpdateWorkerPoolOperationMetadata,

    -- * Volume
    Volume (..),
    newVolume,

    -- * Warning
    Warning (..),
    newWarning,

    -- * WebhookConfig
    WebhookConfig (..),
    newWebhookConfig,

    -- * WorkerConfig
    WorkerConfig (..),
    newWorkerConfig,

    -- * WorkerPool
    WorkerPool (..),
    newWorkerPool,

    -- * WorkerPool_Annotations
    WorkerPool_Annotations (..),
    newWorkerPool_Annotations,
  )
where

import Gogol.ContainerBuilder.Internal.Sum
import qualified Gogol.Prelude as Core

-- | RPC request object accepted by the AddBitbucketServerConnectedRepository RPC method.
--
-- /See:/ 'newAddBitbucketServerConnectedRepositoryRequest' smart constructor.
newtype AddBitbucketServerConnectedRepositoryRequest = AddBitbucketServerConnectedRepositoryRequest
  { -- | The connected repository to add.
    connectedRepository :: (Core.Maybe BitbucketServerRepositoryId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddBitbucketServerConnectedRepositoryRequest' with the minimum fields required to make a request.
newAddBitbucketServerConnectedRepositoryRequest ::
  AddBitbucketServerConnectedRepositoryRequest
newAddBitbucketServerConnectedRepositoryRequest =
  AddBitbucketServerConnectedRepositoryRequest
    { connectedRepository = Core.Nothing
    }

instance
  Core.FromJSON
    AddBitbucketServerConnectedRepositoryRequest
  where
  parseJSON =
    Core.withObject
      "AddBitbucketServerConnectedRepositoryRequest"
      ( \o ->
          AddBitbucketServerConnectedRepositoryRequest
            Core.<$> (o Core..:? "connectedRepository")
      )

instance
  Core.ToJSON
    AddBitbucketServerConnectedRepositoryRequest
  where
  toJSON
    AddBitbucketServerConnectedRepositoryRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("connectedRepository" Core..=)
                Core.<$> connectedRepository
            ]
        )

-- | RPC request object returned by the AddBitbucketServerConnectedRepository RPC method.
--
-- /See:/ 'newAddBitbucketServerConnectedRepositoryResponse' smart constructor.
data AddBitbucketServerConnectedRepositoryResponse = AddBitbucketServerConnectedRepositoryResponse
  { -- | The name of the @BitbucketServerConfig@ that added connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    config :: (Core.Maybe Core.Text),
    -- | The connected repository.
    connectedRepository :: (Core.Maybe BitbucketServerRepositoryId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AddBitbucketServerConnectedRepositoryResponse' with the minimum fields required to make a request.
newAddBitbucketServerConnectedRepositoryResponse ::
  AddBitbucketServerConnectedRepositoryResponse
newAddBitbucketServerConnectedRepositoryResponse =
  AddBitbucketServerConnectedRepositoryResponse
    { config = Core.Nothing,
      connectedRepository = Core.Nothing
    }

instance
  Core.FromJSON
    AddBitbucketServerConnectedRepositoryResponse
  where
  parseJSON =
    Core.withObject
      "AddBitbucketServerConnectedRepositoryResponse"
      ( \o ->
          AddBitbucketServerConnectedRepositoryResponse
            Core.<$> (o Core..:? "config")
              Core.<*> (o Core..:? "connectedRepository")
      )

instance
  Core.ToJSON
    AddBitbucketServerConnectedRepositoryResponse
  where
  toJSON
    AddBitbucketServerConnectedRepositoryResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("config" Core..=) Core.<$> config,
              ("connectedRepository" Core..=)
                Core.<$> connectedRepository
            ]
        )

-- | ApprovalConfig describes configuration for manual approval of a build.
--
-- /See:/ 'newApprovalConfig' smart constructor.
newtype ApprovalConfig = ApprovalConfig
  { -- | Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
    approvalRequired :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApprovalConfig' with the minimum fields required to make a request.
newApprovalConfig ::
  ApprovalConfig
newApprovalConfig = ApprovalConfig {approvalRequired = Core.Nothing}

instance Core.FromJSON ApprovalConfig where
  parseJSON =
    Core.withObject
      "ApprovalConfig"
      ( \o ->
          ApprovalConfig
            Core.<$> (o Core..:? "approvalRequired")
      )

instance Core.ToJSON ApprovalConfig where
  toJSON ApprovalConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvalRequired" Core..=)
              Core.<$> approvalRequired
          ]
      )

-- | ApprovalResult describes the decision and associated metadata of a manual approval of a build.
--
-- /See:/ 'newApprovalResult' smart constructor.
data ApprovalResult = ApprovalResult
  { -- | Output only. The time when the approval decision was made.
    approvalTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Email of the user that called the ApproveBuild API to approve or reject a build at the time that the API was called.
    approverAccount :: (Core.Maybe Core.Text),
    -- | Optional. An optional comment for this manual approval result.
    comment :: (Core.Maybe Core.Text),
    -- | Required. The decision of this manual approval.
    decision :: (Core.Maybe ApprovalResult_Decision),
    -- | Optional. An optional URL tied to this manual approval result. This field is essentially the same as comment, except that it will be rendered by the UI differently. An example use case is a link to an external job that approved this Build.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApprovalResult' with the minimum fields required to make a request.
newApprovalResult ::
  ApprovalResult
newApprovalResult =
  ApprovalResult
    { approvalTime = Core.Nothing,
      approverAccount = Core.Nothing,
      comment = Core.Nothing,
      decision = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON ApprovalResult where
  parseJSON =
    Core.withObject
      "ApprovalResult"
      ( \o ->
          ApprovalResult
            Core.<$> (o Core..:? "approvalTime")
            Core.<*> (o Core..:? "approverAccount")
            Core.<*> (o Core..:? "comment")
            Core.<*> (o Core..:? "decision")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON ApprovalResult where
  toJSON ApprovalResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvalTime" Core..=) Core.<$> approvalTime,
            ("approverAccount" Core..=) Core.<$> approverAccount,
            ("comment" Core..=) Core.<$> comment,
            ("decision" Core..=) Core.<$> decision,
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Request to approve or reject a pending build.
--
-- /See:/ 'newApproveBuildRequest' smart constructor.
newtype ApproveBuildRequest = ApproveBuildRequest
  { -- | Approval decision and metadata.
    approvalResult :: (Core.Maybe ApprovalResult)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ApproveBuildRequest' with the minimum fields required to make a request.
newApproveBuildRequest ::
  ApproveBuildRequest
newApproveBuildRequest = ApproveBuildRequest {approvalResult = Core.Nothing}

instance Core.FromJSON ApproveBuildRequest where
  parseJSON =
    Core.withObject
      "ApproveBuildRequest"
      ( \o ->
          ApproveBuildRequest
            Core.<$> (o Core..:? "approvalResult")
      )

instance Core.ToJSON ApproveBuildRequest where
  toJSON ApproveBuildRequest {..} =
    Core.object
      ( Core.catMaybes
          [("approvalResult" Core..=) Core.<$> approvalResult]
      )

-- | Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
--
-- /See:/ 'newArtifactObjects' smart constructor.
data ArtifactObjects = ArtifactObjects
  { -- | Cloud Storage bucket and optional object path, in the form \"gs:\/\/bucket\/path\/to\/somewhere\/\". (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
    location :: (Core.Maybe Core.Text),
    -- | Path globs used to match files in the build\'s workspace.
    paths :: (Core.Maybe [Core.Text]),
    -- | Output only. Stores timing information for pushing all artifact objects.
    timing :: (Core.Maybe TimeSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArtifactObjects' with the minimum fields required to make a request.
newArtifactObjects ::
  ArtifactObjects
newArtifactObjects =
  ArtifactObjects
    { location = Core.Nothing,
      paths = Core.Nothing,
      timing = Core.Nothing
    }

instance Core.FromJSON ArtifactObjects where
  parseJSON =
    Core.withObject
      "ArtifactObjects"
      ( \o ->
          ArtifactObjects
            Core.<$> (o Core..:? "location")
            Core.<*> (o Core..:? "paths")
            Core.<*> (o Core..:? "timing")
      )

instance Core.ToJSON ArtifactObjects where
  toJSON ArtifactObjects {..} =
    Core.object
      ( Core.catMaybes
          [ ("location" Core..=) Core.<$> location,
            ("paths" Core..=) Core.<$> paths,
            ("timing" Core..=) Core.<$> timing
          ]
      )

-- | An artifact that was uploaded during a build. This is a single record in the artifact manifest JSON file.
--
-- /See:/ 'newArtifactResult' smart constructor.
data ArtifactResult = ArtifactResult
  { -- | The file hash of the artifact.
    fileHash :: (Core.Maybe [FileHashes]),
    -- | The path of an artifact in a Google Cloud Storage bucket, with the generation number. For example, @gs:\/\/mybucket\/path\/to\/output.jar#generation@.
    location :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ArtifactResult' with the minimum fields required to make a request.
newArtifactResult ::
  ArtifactResult
newArtifactResult =
  ArtifactResult {fileHash = Core.Nothing, location = Core.Nothing}

instance Core.FromJSON ArtifactResult where
  parseJSON =
    Core.withObject
      "ArtifactResult"
      ( \o ->
          ArtifactResult
            Core.<$> (o Core..:? "fileHash")
            Core.<*> (o Core..:? "location")
      )

instance Core.ToJSON ArtifactResult where
  toJSON ArtifactResult {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileHash" Core..=) Core.<$> fileHash,
            ("location" Core..=) Core.<$> location
          ]
      )

-- | Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
--
-- /See:/ 'newArtifacts' smart constructor.
data Artifacts = Artifacts
  { -- | A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the Build resource\'s results field. If any of the images fail to be pushed, the build is marked FAILURE.
    images :: (Core.Maybe [Core.Text]),
    -- | A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account\'s credentials. The location and generation of the uploaded objects will be stored in the Build resource\'s results field. If any objects fail to be pushed, the build is marked FAILURE.
    objects :: (Core.Maybe ArtifactObjects)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Artifacts' with the minimum fields required to make a request.
newArtifacts ::
  Artifacts
newArtifacts = Artifacts {images = Core.Nothing, objects = Core.Nothing}

instance Core.FromJSON Artifacts where
  parseJSON =
    Core.withObject
      "Artifacts"
      ( \o ->
          Artifacts
            Core.<$> (o Core..:? "images")
            Core.<*> (o Core..:? "objects")
      )

instance Core.ToJSON Artifacts where
  toJSON Artifacts {..} =
    Core.object
      ( Core.catMaybes
          [ ("images" Core..=) Core.<$> images,
            ("objects" Core..=) Core.<$> objects
          ]
      )

-- | RPC request object accepted by BatchCreateBitbucketServerConnectedRepositories RPC method.
--
-- /See:/ 'newBatchCreateBitbucketServerConnectedRepositoriesRequest' smart constructor.
newtype BatchCreateBitbucketServerConnectedRepositoriesRequest = BatchCreateBitbucketServerConnectedRepositoriesRequest
  { -- | Required. Requests to connect Bitbucket Server repositories.
    requests :: (Core.Maybe [CreateBitbucketServerConnectedRepositoryRequest])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateBitbucketServerConnectedRepositoriesRequest' with the minimum fields required to make a request.
newBatchCreateBitbucketServerConnectedRepositoriesRequest ::
  BatchCreateBitbucketServerConnectedRepositoriesRequest
newBatchCreateBitbucketServerConnectedRepositoriesRequest =
  BatchCreateBitbucketServerConnectedRepositoriesRequest
    { requests = Core.Nothing
    }

instance
  Core.FromJSON
    BatchCreateBitbucketServerConnectedRepositoriesRequest
  where
  parseJSON =
    Core.withObject
      "BatchCreateBitbucketServerConnectedRepositoriesRequest"
      ( \o ->
          BatchCreateBitbucketServerConnectedRepositoriesRequest
            Core.<$> (o Core..:? "requests")
      )

instance
  Core.ToJSON
    BatchCreateBitbucketServerConnectedRepositoriesRequest
  where
  toJSON
    BatchCreateBitbucketServerConnectedRepositoriesRequest {..} =
      Core.object
        ( Core.catMaybes
            [("requests" Core..=) Core.<$> requests]
        )

-- | Response of BatchCreateBitbucketServerConnectedRepositories RPC method including all successfully connected Bitbucket Server repositories.
--
-- /See:/ 'newBatchCreateBitbucketServerConnectedRepositoriesResponse' smart constructor.
newtype BatchCreateBitbucketServerConnectedRepositoriesResponse = BatchCreateBitbucketServerConnectedRepositoriesResponse
  { -- | The connected Bitbucket Server repositories.
    bitbucketServerConnectedRepositories :: (Core.Maybe [BitbucketServerConnectedRepository])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateBitbucketServerConnectedRepositoriesResponse' with the minimum fields required to make a request.
newBatchCreateBitbucketServerConnectedRepositoriesResponse ::
  BatchCreateBitbucketServerConnectedRepositoriesResponse
newBatchCreateBitbucketServerConnectedRepositoriesResponse =
  BatchCreateBitbucketServerConnectedRepositoriesResponse
    { bitbucketServerConnectedRepositories = Core.Nothing
    }

instance
  Core.FromJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponse
  where
  parseJSON =
    Core.withObject
      "BatchCreateBitbucketServerConnectedRepositoriesResponse"
      ( \o ->
          BatchCreateBitbucketServerConnectedRepositoriesResponse
            Core.<$> (o Core..:? "bitbucketServerConnectedRepositories")
      )

instance
  Core.ToJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponse
  where
  toJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("bitbucketServerConnectedRepositories" Core..=)
                Core.<$> bitbucketServerConnectedRepositories
            ]
        )

-- | Metadata for @BatchCreateBitbucketServerConnectedRepositories@ operation.
--
-- /See:/ 'newBatchCreateBitbucketServerConnectedRepositoriesResponseMetadata' smart constructor.
data BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata = BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | The name of the @BitbucketServerConfig@ that added connected repositories. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    config :: (Core.Maybe Core.Text),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata' with the minimum fields required to make a request.
newBatchCreateBitbucketServerConnectedRepositoriesResponseMetadata ::
  BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
newBatchCreateBitbucketServerConnectedRepositoriesResponseMetadata =
  BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
    { completeTime = Core.Nothing,
      config = Core.Nothing,
      createTime = Core.Nothing
    }

instance
  Core.FromJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
  where
  parseJSON =
    Core.withObject
      "BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata"
      ( \o ->
          BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
            Core.<$> (o Core..:? "completeTime")
              Core.<*> (o Core..:? "config")
              Core.<*> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata
  where
  toJSON
    BatchCreateBitbucketServerConnectedRepositoriesResponseMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("completeTime" Core..=) Core.<$> completeTime,
              ("config" Core..=) Core.<$> config,
              ("createTime" Core..=) Core.<$> createTime
            ]
        )

-- | BitbucketServerConfig represents the configuration for a Bitbucket Server.
--
-- /See:/ 'newBitbucketServerConfig' smart constructor.
data BitbucketServerConfig = BitbucketServerConfig
  { -- | Required. Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
    apiKey :: (Core.Maybe Core.Text),
    -- | Output only. Connected Bitbucket Server repositories for this config.
    connectedRepositories :: (Core.Maybe [BitbucketServerRepositoryId]),
    -- | Time when the config was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Required. Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
    hostUri :: (Core.Maybe Core.Text),
    -- | The resource name for the config.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format @projects\/{project}\/global\/networks\/{network}@, where {project} is a project number or id and {network} is the name of a VPC network in the project.
    peeredNetwork :: (Core.Maybe Core.Text),
    -- | Required. Secret Manager secrets needed by the config.
    secrets :: (Core.Maybe BitbucketServerSecrets),
    -- | Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
    sslCa :: (Core.Maybe Core.Text),
    -- | Username of the account Cloud Build will use on Bitbucket Server.
    username :: (Core.Maybe Core.Text),
    -- | Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.
    webhookKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerConfig' with the minimum fields required to make a request.
newBitbucketServerConfig ::
  BitbucketServerConfig
newBitbucketServerConfig =
  BitbucketServerConfig
    { apiKey = Core.Nothing,
      connectedRepositories = Core.Nothing,
      createTime = Core.Nothing,
      hostUri = Core.Nothing,
      name = Core.Nothing,
      peeredNetwork = Core.Nothing,
      secrets = Core.Nothing,
      sslCa = Core.Nothing,
      username = Core.Nothing,
      webhookKey = Core.Nothing
    }

instance Core.FromJSON BitbucketServerConfig where
  parseJSON =
    Core.withObject
      "BitbucketServerConfig"
      ( \o ->
          BitbucketServerConfig
            Core.<$> (o Core..:? "apiKey")
            Core.<*> (o Core..:? "connectedRepositories")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "hostUri")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "peeredNetwork")
            Core.<*> (o Core..:? "secrets")
            Core.<*> (o Core..:? "sslCa")
            Core.<*> (o Core..:? "username")
            Core.<*> (o Core..:? "webhookKey")
      )

instance Core.ToJSON BitbucketServerConfig where
  toJSON BitbucketServerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiKey" Core..=) Core.<$> apiKey,
            ("connectedRepositories" Core..=)
              Core.<$> connectedRepositories,
            ("createTime" Core..=) Core.<$> createTime,
            ("hostUri" Core..=) Core.<$> hostUri,
            ("name" Core..=) Core.<$> name,
            ("peeredNetwork" Core..=) Core.<$> peeredNetwork,
            ("secrets" Core..=) Core.<$> secrets,
            ("sslCa" Core..=) Core.<$> sslCa,
            ("username" Core..=) Core.<$> username,
            ("webhookKey" Core..=) Core.<$> webhookKey
          ]
      )

-- | \/ BitbucketServerConnectedRepository represents a connected Bitbucket Server \/ repository.
--
-- /See:/ 'newBitbucketServerConnectedRepository' smart constructor.
data BitbucketServerConnectedRepository = BitbucketServerConnectedRepository
  { -- | The name of the @BitbucketServerConfig@ that added connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    parent :: (Core.Maybe Core.Text),
    -- | The Bitbucket Server repositories to connect.
    repo :: (Core.Maybe BitbucketServerRepositoryId),
    -- | Output only. The status of the repo connection request.
    status :: (Core.Maybe Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerConnectedRepository' with the minimum fields required to make a request.
newBitbucketServerConnectedRepository ::
  BitbucketServerConnectedRepository
newBitbucketServerConnectedRepository =
  BitbucketServerConnectedRepository
    { parent = Core.Nothing,
      repo = Core.Nothing,
      status = Core.Nothing
    }

instance
  Core.FromJSON
    BitbucketServerConnectedRepository
  where
  parseJSON =
    Core.withObject
      "BitbucketServerConnectedRepository"
      ( \o ->
          BitbucketServerConnectedRepository
            Core.<$> (o Core..:? "parent")
            Core.<*> (o Core..:? "repo")
            Core.<*> (o Core..:? "status")
      )

instance
  Core.ToJSON
    BitbucketServerConnectedRepository
  where
  toJSON BitbucketServerConnectedRepository {..} =
    Core.object
      ( Core.catMaybes
          [ ("parent" Core..=) Core.<$> parent,
            ("repo" Core..=) Core.<$> repo,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | BitbucketServerRepository represents a repository hosted on a Bitbucket Server.
--
-- /See:/ 'newBitbucketServerRepository' smart constructor.
data BitbucketServerRepository = BitbucketServerRepository
  { -- | Link to the browse repo page on the Bitbucket Server instance.
    browseUri :: (Core.Maybe Core.Text),
    -- | Description of the repository.
    description :: (Core.Maybe Core.Text),
    -- | Display name of the repository.
    displayName :: (Core.Maybe Core.Text),
    -- | The resource name of the repository.
    name :: (Core.Maybe Core.Text),
    -- | Identifier for a repository hosted on a Bitbucket Server.
    repoId :: (Core.Maybe BitbucketServerRepositoryId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerRepository' with the minimum fields required to make a request.
newBitbucketServerRepository ::
  BitbucketServerRepository
newBitbucketServerRepository =
  BitbucketServerRepository
    { browseUri = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      repoId = Core.Nothing
    }

instance Core.FromJSON BitbucketServerRepository where
  parseJSON =
    Core.withObject
      "BitbucketServerRepository"
      ( \o ->
          BitbucketServerRepository
            Core.<$> (o Core..:? "browseUri")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "repoId")
      )

instance Core.ToJSON BitbucketServerRepository where
  toJSON BitbucketServerRepository {..} =
    Core.object
      ( Core.catMaybes
          [ ("browseUri" Core..=) Core.<$> browseUri,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("repoId" Core..=) Core.<$> repoId
          ]
      )

-- | BitbucketServerRepositoryId identifies a specific repository hosted on a Bitbucket Server.
--
-- /See:/ 'newBitbucketServerRepositoryId' smart constructor.
data BitbucketServerRepositoryId = BitbucketServerRepositoryId
  { -- | Required. Identifier for the project storing the repository.
    projectKey :: (Core.Maybe Core.Text),
    -- | Required. Identifier for the repository.
    repoSlug :: (Core.Maybe Core.Text),
    -- | Output only. The ID of the webhook that was created for receiving events from this repo. We only create and manage a single webhook for each repo.
    webhookId :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerRepositoryId' with the minimum fields required to make a request.
newBitbucketServerRepositoryId ::
  BitbucketServerRepositoryId
newBitbucketServerRepositoryId =
  BitbucketServerRepositoryId
    { projectKey = Core.Nothing,
      repoSlug = Core.Nothing,
      webhookId = Core.Nothing
    }

instance Core.FromJSON BitbucketServerRepositoryId where
  parseJSON =
    Core.withObject
      "BitbucketServerRepositoryId"
      ( \o ->
          BitbucketServerRepositoryId
            Core.<$> (o Core..:? "projectKey")
            Core.<*> (o Core..:? "repoSlug")
            Core.<*> (o Core..:? "webhookId")
      )

instance Core.ToJSON BitbucketServerRepositoryId where
  toJSON BitbucketServerRepositoryId {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectKey" Core..=) Core.<$> projectKey,
            ("repoSlug" Core..=) Core.<$> repoSlug,
            ("webhookId" Core..=) Core.<$> webhookId
          ]
      )

-- | BitbucketServerSecrets represents the secrets in Secret Manager for a Bitbucket Server.
--
-- /See:/ 'newBitbucketServerSecrets' smart constructor.
data BitbucketServerSecrets = BitbucketServerSecrets
  { -- | Required. The resource name for the admin access token\'s secret version.
    adminAccessTokenVersionName :: (Core.Maybe Core.Text),
    -- | Required. The resource name for the read access token\'s secret version.
    readAccessTokenVersionName :: (Core.Maybe Core.Text),
    -- | Required. Immutable. The resource name for the webhook secret\'s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
    webhookSecretVersionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerSecrets' with the minimum fields required to make a request.
newBitbucketServerSecrets ::
  BitbucketServerSecrets
newBitbucketServerSecrets =
  BitbucketServerSecrets
    { adminAccessTokenVersionName = Core.Nothing,
      readAccessTokenVersionName = Core.Nothing,
      webhookSecretVersionName = Core.Nothing
    }

instance Core.FromJSON BitbucketServerSecrets where
  parseJSON =
    Core.withObject
      "BitbucketServerSecrets"
      ( \o ->
          BitbucketServerSecrets
            Core.<$> (o Core..:? "adminAccessTokenVersionName")
            Core.<*> (o Core..:? "readAccessTokenVersionName")
            Core.<*> (o Core..:? "webhookSecretVersionName")
      )

instance Core.ToJSON BitbucketServerSecrets where
  toJSON BitbucketServerSecrets {..} =
    Core.object
      ( Core.catMaybes
          [ ("adminAccessTokenVersionName" Core..=)
              Core.<$> adminAccessTokenVersionName,
            ("readAccessTokenVersionName" Core..=)
              Core.<$> readAccessTokenVersionName,
            ("webhookSecretVersionName" Core..=)
              Core.<$> webhookSecretVersionName
          ]
      )

-- | BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
--
-- /See:/ 'newBitbucketServerTriggerConfig' smart constructor.
data BitbucketServerTriggerConfig = BitbucketServerTriggerConfig
  { -- | Output only. The BitbucketServerConfig specified in the bitbucket/server/config_resource field.
    bitbucketServerConfig :: (Core.Maybe BitbucketServerConfig),
    -- | Required. The Bitbucket server config resource that this trigger config maps to.
    bitbucketServerConfigResource :: (Core.Maybe Core.Text),
    -- | Required. Key of the project that the repo is in. For example: The key for http:\/\/mybitbucket.server\/projects\/TEST\/repos\/test-repo is \"TEST\".
    projectKey :: (Core.Maybe Core.Text),
    -- | Filter to match changes in pull requests.
    pullRequest :: (Core.Maybe PullRequestFilter),
    -- | Filter to match changes in refs like branches, tags.
    push :: (Core.Maybe PushFilter),
    -- | Required. Slug of the repository. A repository slug is a URL-friendly version of a repository name, automatically generated by Bitbucket for use in the URL. For example, if the repository name is \'test repo\', in the URL it would become \'test-repo\' as in http:\/\/mybitbucket.server\/projects\/TEST\/repos\/test-repo.
    repoSlug :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BitbucketServerTriggerConfig' with the minimum fields required to make a request.
newBitbucketServerTriggerConfig ::
  BitbucketServerTriggerConfig
newBitbucketServerTriggerConfig =
  BitbucketServerTriggerConfig
    { bitbucketServerConfig = Core.Nothing,
      bitbucketServerConfigResource = Core.Nothing,
      projectKey = Core.Nothing,
      pullRequest = Core.Nothing,
      push = Core.Nothing,
      repoSlug = Core.Nothing
    }

instance Core.FromJSON BitbucketServerTriggerConfig where
  parseJSON =
    Core.withObject
      "BitbucketServerTriggerConfig"
      ( \o ->
          BitbucketServerTriggerConfig
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "bitbucketServerConfigResource")
            Core.<*> (o Core..:? "projectKey")
            Core.<*> (o Core..:? "pullRequest")
            Core.<*> (o Core..:? "push")
            Core.<*> (o Core..:? "repoSlug")
      )

instance Core.ToJSON BitbucketServerTriggerConfig where
  toJSON BitbucketServerTriggerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitbucketServerConfig" Core..=)
              Core.<$> bitbucketServerConfig,
            ("bitbucketServerConfigResource" Core..=)
              Core.<$> bitbucketServerConfigResource,
            ("projectKey" Core..=) Core.<$> projectKey,
            ("pullRequest" Core..=) Core.<$> pullRequest,
            ("push" Core..=) Core.<$> push,
            ("repoSlug" Core..=) Core.<$> repoSlug
          ]
      )

-- | A build resource in the Cloud Build API. At a high level, a @Build@ describes where to find source code, how to build it (for example, the builder image to run on the source), and where to store the built artifacts. Fields can include the following variables, which will be expanded when the build is created: - $PROJECT/ID: the project ID of the build. - $PROJECT/NUMBER: the project number of the build. - $LOCATION: the location\/region of the build. - $BUILD/ID: the autogenerated ID of the build. - $REPO/NAME: the source repository name specified by RepoSource. - $BRANCH/NAME: the branch name specified by RepoSource. - $TAG/NAME: the tag name specified by RepoSource. - $REVISION/ID or $COMMIT/SHA: the commit SHA specified by RepoSource or resolved from the specified branch or tag. - $SHORT/SHA: first 7 characters of $REVISION/ID or $COMMIT_SHA.
--
-- /See:/ 'newBuild' smart constructor.
data Build = Build
  { -- | Output only. Describes this build\'s approval configuration, status, and result.
    approval :: (Core.Maybe BuildApproval),
    -- | Artifacts produced by the build that should be uploaded upon successful completion of all build steps.
    artifacts :: (Core.Maybe Artifacts),
    -- | Secrets and secret environment variables.
    availableSecrets :: (Core.Maybe Secrets),
    -- | Output only. The ID of the @BuildTrigger@ that triggered this build, if it was triggered automatically.
    buildTriggerId :: (Core.Maybe Core.Text),
    -- | Output only. Time at which the request to create the build was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Contains information about the build when status=FAILURE.
    failureInfo :: (Core.Maybe FailureInfo),
    -- | Output only. Time at which execution of the build was finished. The difference between finish/time and start/time is the duration of the build\'s execution.
    finishTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Unique identifier of the build.
    id :: (Core.Maybe Core.Text),
    -- | A list of images to be pushed upon the successful completion of all build steps. The images are pushed using the builder service account\'s credentials. The digests of the pushed images will be stored in the @Build@ resource\'s results field. If any of the images fail to be pushed, the build status is marked @FAILURE@.
    images :: (Core.Maybe [Core.Text]),
    -- | Output only. URL to logs for this build in Google Cloud Console.
    logUrl :: (Core.Maybe Core.Text),
    -- | Google Cloud Storage bucket where logs should be written (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>). Logs file names will be of the format @${logs_bucket}\/log-${build_id}.txt@.
    logsBucket :: (Core.Maybe Core.Text),
    -- | Output only. The \'Build\' name with format: @projects\/{project}\/locations\/{location}\/builds\/{build}@, where {build} is a unique identifier generated by the service.
    name :: (Core.Maybe Core.Text),
    -- | Special options for this build.
    options :: (Core.Maybe BuildOptions),
    -- | Output only. ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | TTL in queue for this build. If provided and the build is enqueued longer than this value, the build will expire and the build status will be @EXPIRED@. The TTL starts ticking from create_time.
    queueTtl :: (Core.Maybe Core.Duration),
    -- | Output only. Results of the build.
    results :: (Core.Maybe Results),
    -- | Secrets to decrypt using Cloud Key Management Service. Note: Secret Manager is the recommended technique for managing sensitive data with Cloud Build. Use @available_secrets@ to configure builds to access secrets from Secret Manager. For instructions, see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-secrets
    secrets :: (Core.Maybe [Secret]),
    -- | IAM service account whose credentials will be used at build runtime. Must be of the format @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT}@. ACCOUNT can be email address or uniqueId of the service account.
    serviceAccount :: (Core.Maybe Core.Text),
    -- | The location of the source files to build.
    source :: (Core.Maybe Source),
    -- | Output only. A permanent fixed identifier for source.
    sourceProvenance :: (Core.Maybe SourceProvenance),
    -- | Output only. Time at which execution of the build was started.
    startTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Status of the build.
    status :: (Core.Maybe Build_Status),
    -- | Output only. Customer-readable message about the current status.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Required. The operations to be performed on the workspace.
    steps :: (Core.Maybe [BuildStep]),
    -- | Substitutions data for @Build@ resource.
    substitutions :: (Core.Maybe Build_Substitutions),
    -- | Tags for annotation of a @Build@. These are not docker tags.
    tags :: (Core.Maybe [Core.Text]),
    -- | Amount of time that this build should be allowed to run, to second granularity. If this amount of time elapses, work on the build will cease and the build status will be @TIMEOUT@. @timeout@ starts ticking from @startTime@. Default time is ten minutes.
    timeout :: (Core.Maybe Core.Duration),
    -- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all specified images. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
    timing :: (Core.Maybe Build_Timing),
    -- | Output only. Non-fatal problems encountered during the execution of the build.
    warnings :: (Core.Maybe [Warning])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Build' with the minimum fields required to make a request.
newBuild ::
  Build
newBuild =
  Build
    { approval = Core.Nothing,
      artifacts = Core.Nothing,
      availableSecrets = Core.Nothing,
      buildTriggerId = Core.Nothing,
      createTime = Core.Nothing,
      failureInfo = Core.Nothing,
      finishTime = Core.Nothing,
      id = Core.Nothing,
      images = Core.Nothing,
      logUrl = Core.Nothing,
      logsBucket = Core.Nothing,
      name = Core.Nothing,
      options = Core.Nothing,
      projectId = Core.Nothing,
      queueTtl = Core.Nothing,
      results = Core.Nothing,
      secrets = Core.Nothing,
      serviceAccount = Core.Nothing,
      source = Core.Nothing,
      sourceProvenance = Core.Nothing,
      startTime = Core.Nothing,
      status = Core.Nothing,
      statusDetail = Core.Nothing,
      steps = Core.Nothing,
      substitutions = Core.Nothing,
      tags = Core.Nothing,
      timeout = Core.Nothing,
      timing = Core.Nothing,
      warnings = Core.Nothing
    }

instance Core.FromJSON Build where
  parseJSON =
    Core.withObject
      "Build"
      ( \o ->
          Build
            Core.<$> (o Core..:? "approval")
            Core.<*> (o Core..:? "artifacts")
            Core.<*> (o Core..:? "availableSecrets")
            Core.<*> (o Core..:? "buildTriggerId")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "failureInfo")
            Core.<*> (o Core..:? "finishTime")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "images")
            Core.<*> (o Core..:? "logUrl")
            Core.<*> (o Core..:? "logsBucket")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "options")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "queueTtl")
            Core.<*> (o Core..:? "results")
            Core.<*> (o Core..:? "secrets")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "sourceProvenance")
            Core.<*> (o Core..:? "startTime")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "steps")
            Core.<*> (o Core..:? "substitutions")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "timeout")
            Core.<*> (o Core..:? "timing")
            Core.<*> (o Core..:? "warnings")
      )

instance Core.ToJSON Build where
  toJSON Build {..} =
    Core.object
      ( Core.catMaybes
          [ ("approval" Core..=) Core.<$> approval,
            ("artifacts" Core..=) Core.<$> artifacts,
            ("availableSecrets" Core..=)
              Core.<$> availableSecrets,
            ("buildTriggerId" Core..=) Core.<$> buildTriggerId,
            ("createTime" Core..=) Core.<$> createTime,
            ("failureInfo" Core..=) Core.<$> failureInfo,
            ("finishTime" Core..=) Core.<$> finishTime,
            ("id" Core..=) Core.<$> id,
            ("images" Core..=) Core.<$> images,
            ("logUrl" Core..=) Core.<$> logUrl,
            ("logsBucket" Core..=) Core.<$> logsBucket,
            ("name" Core..=) Core.<$> name,
            ("options" Core..=) Core.<$> options,
            ("projectId" Core..=) Core.<$> projectId,
            ("queueTtl" Core..=) Core.<$> queueTtl,
            ("results" Core..=) Core.<$> results,
            ("secrets" Core..=) Core.<$> secrets,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("source" Core..=) Core.<$> source,
            ("sourceProvenance" Core..=)
              Core.<$> sourceProvenance,
            ("startTime" Core..=) Core.<$> startTime,
            ("status" Core..=) Core.<$> status,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("steps" Core..=) Core.<$> steps,
            ("substitutions" Core..=) Core.<$> substitutions,
            ("tags" Core..=) Core.<$> tags,
            ("timeout" Core..=) Core.<$> timeout,
            ("timing" Core..=) Core.<$> timing,
            ("warnings" Core..=) Core.<$> warnings
          ]
      )

-- | Substitutions data for @Build@ resource.
--
-- /See:/ 'newBuild_Substitutions' smart constructor.
newtype Build_Substitutions = Build_Substitutions
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Build_Substitutions' with the minimum fields required to make a request.
newBuild_Substitutions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  Build_Substitutions
newBuild_Substitutions additional =
  Build_Substitutions {additional = additional}

instance Core.FromJSON Build_Substitutions where
  parseJSON =
    Core.withObject
      "Build_Substitutions"
      ( \o ->
          Build_Substitutions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Build_Substitutions where
  toJSON Build_Substitutions {..} =
    Core.toJSON additional

-- | Output only. Stores timing information for phases of the build. Valid keys are: * BUILD: time to execute all build steps. * PUSH: time to push all specified images. * FETCHSOURCE: time to fetch source. * SETUPBUILD: time to set up build. If the build does not specify source or images, these keys will not be included.
--
-- /See:/ 'newBuild_Timing' smart constructor.
newtype Build_Timing = Build_Timing
  { -- |
    additional :: (Core.HashMap Core.Text TimeSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Build_Timing' with the minimum fields required to make a request.
newBuild_Timing ::
  -- |  See 'additional'.
  Core.HashMap Core.Text TimeSpan ->
  Build_Timing
newBuild_Timing additional = Build_Timing {additional = additional}

instance Core.FromJSON Build_Timing where
  parseJSON =
    Core.withObject
      "Build_Timing"
      ( \o ->
          Build_Timing Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Build_Timing where
  toJSON Build_Timing {..} = Core.toJSON additional

-- | BuildApproval describes a build\'s approval configuration, state, and result.
--
-- /See:/ 'newBuildApproval' smart constructor.
data BuildApproval = BuildApproval
  { -- | Output only. Configuration for manual approval of this build.
    config :: (Core.Maybe ApprovalConfig),
    -- | Output only. Result of manual approval for this Build.
    result :: (Core.Maybe ApprovalResult),
    -- | Output only. The state of this build\'s approval.
    state :: (Core.Maybe BuildApproval_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildApproval' with the minimum fields required to make a request.
newBuildApproval ::
  BuildApproval
newBuildApproval =
  BuildApproval
    { config = Core.Nothing,
      result = Core.Nothing,
      state = Core.Nothing
    }

instance Core.FromJSON BuildApproval where
  parseJSON =
    Core.withObject
      "BuildApproval"
      ( \o ->
          BuildApproval
            Core.<$> (o Core..:? "config")
            Core.<*> (o Core..:? "result")
            Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON BuildApproval where
  toJSON BuildApproval {..} =
    Core.object
      ( Core.catMaybes
          [ ("config" Core..=) Core.<$> config,
            ("result" Core..=) Core.<$> result,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Metadata for build operations.
--
-- /See:/ 'newBuildOperationMetadata' smart constructor.
newtype BuildOperationMetadata = BuildOperationMetadata
  { -- | The build that the operation is tracking.
    build :: (Core.Maybe Build)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildOperationMetadata' with the minimum fields required to make a request.
newBuildOperationMetadata ::
  BuildOperationMetadata
newBuildOperationMetadata = BuildOperationMetadata {build = Core.Nothing}

instance Core.FromJSON BuildOperationMetadata where
  parseJSON =
    Core.withObject
      "BuildOperationMetadata"
      ( \o ->
          BuildOperationMetadata Core.<$> (o Core..:? "build")
      )

instance Core.ToJSON BuildOperationMetadata where
  toJSON BuildOperationMetadata {..} =
    Core.object
      (Core.catMaybes [("build" Core..=) Core.<$> build])

-- | Optional arguments to enable specific features of builds.
--
-- /See:/ 'newBuildOptions' smart constructor.
data BuildOptions = BuildOptions
  { -- | Requested disk size for the VM that runs the build. Note that this is /NOT/ \"disk free\"; some of the space will be used by the operating system and build utilities. Also note that this is the minimum disk size that will be allocated for the build -- the build may run with a larger disk than requested. At present, the maximum disk size is 1000GB; builds that request more than the maximum are rejected with an error.
    diskSizeGb :: (Core.Maybe Core.Int64),
    -- | Option to specify whether or not to apply bash style string operations to the substitutions. NOTE: this is always enabled for triggered builds and cannot be overridden in the build configuration file.
    dynamicSubstitutions :: (Core.Maybe Core.Bool),
    -- | A list of global environment variable definitions that will exist for all build steps in this build. If a variable is defined in both globally and in a build step, the variable will use the build step value. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    env :: (Core.Maybe [Core.Text]),
    -- | Option to define build log streaming behavior to Google Cloud Storage.
    logStreamingOption :: (Core.Maybe BuildOptions_LogStreamingOption),
    -- | Option to specify the logging mode, which determines if and where build logs are stored.
    logging :: (Core.Maybe BuildOptions_Logging),
    -- | Compute Engine machine type on which to run the build.
    machineType :: (Core.Maybe BuildOptions_MachineType),
    -- | Optional. Specification for execution on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
    pool :: (Core.Maybe PoolOption),
    -- | Requested verifiability options.
    requestedVerifyOption :: (Core.Maybe BuildOptions_RequestedVerifyOption),
    -- | A list of global environment variables, which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@. These variables will be available to all build steps in this build.
    secretEnv :: (Core.Maybe [Core.Text]),
    -- | Requested hash for SourceProvenance.
    sourceProvenanceHash :: (Core.Maybe [BuildOptions_SourceProvenanceHashItem]),
    -- | Option to specify behavior when there is an error in the substitution checks. NOTE: this is always set to ALLOW_LOOSE for triggered builds and cannot be overridden in the build configuration file.
    substitutionOption :: (Core.Maybe BuildOptions_SubstitutionOption),
    -- | Global list of volumes to mount for ALL build steps Each volume is created as an empty volume prior to starting the build process. Upon completion of the build, volumes and their contents are discarded. Global volume names and paths cannot conflict with the volumes defined a build step. Using a global volume in a build with only one step is not valid as it is indicative of a build request with an incorrect configuration.
    volumes :: (Core.Maybe [Volume]),
    -- | This field deprecated; please use @pool.name@ instead.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildOptions' with the minimum fields required to make a request.
newBuildOptions ::
  BuildOptions
newBuildOptions =
  BuildOptions
    { diskSizeGb = Core.Nothing,
      dynamicSubstitutions = Core.Nothing,
      env = Core.Nothing,
      logStreamingOption = Core.Nothing,
      logging = Core.Nothing,
      machineType = Core.Nothing,
      pool = Core.Nothing,
      requestedVerifyOption = Core.Nothing,
      secretEnv = Core.Nothing,
      sourceProvenanceHash = Core.Nothing,
      substitutionOption = Core.Nothing,
      volumes = Core.Nothing,
      workerPool = Core.Nothing
    }

instance Core.FromJSON BuildOptions where
  parseJSON =
    Core.withObject
      "BuildOptions"
      ( \o ->
          BuildOptions
            Core.<$> ( o Core..:? "diskSizeGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "dynamicSubstitutions")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "logStreamingOption")
            Core.<*> (o Core..:? "logging")
            Core.<*> (o Core..:? "machineType")
            Core.<*> (o Core..:? "pool")
            Core.<*> (o Core..:? "requestedVerifyOption")
            Core.<*> (o Core..:? "secretEnv")
            Core.<*> (o Core..:? "sourceProvenanceHash")
            Core.<*> (o Core..:? "substitutionOption")
            Core.<*> (o Core..:? "volumes")
            Core.<*> (o Core..:? "workerPool")
      )

instance Core.ToJSON BuildOptions where
  toJSON BuildOptions {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskSizeGb" Core..=) Core.. Core.AsText
              Core.<$> diskSizeGb,
            ("dynamicSubstitutions" Core..=)
              Core.<$> dynamicSubstitutions,
            ("env" Core..=) Core.<$> env,
            ("logStreamingOption" Core..=)
              Core.<$> logStreamingOption,
            ("logging" Core..=) Core.<$> logging,
            ("machineType" Core..=) Core.<$> machineType,
            ("pool" Core..=) Core.<$> pool,
            ("requestedVerifyOption" Core..=)
              Core.<$> requestedVerifyOption,
            ("secretEnv" Core..=) Core.<$> secretEnv,
            ("sourceProvenanceHash" Core..=)
              Core.<$> sourceProvenanceHash,
            ("substitutionOption" Core..=)
              Core.<$> substitutionOption,
            ("volumes" Core..=) Core.<$> volumes,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | A step in the build pipeline.
--
-- /See:/ 'newBuildStep' smart constructor.
data BuildStep = BuildStep
  { -- | A list of arguments that will be presented to the step when it is started. If the image used to run the step\'s container has an entrypoint, the @args@ are used as arguments to that entrypoint. If the image does not define an entrypoint, the first element in args is used as the entrypoint, and the remainder will be used as arguments.
    args :: (Core.Maybe [Core.Text]),
    -- | Working directory to use when running this step\'s container. If this value is a relative path, it is relative to the build\'s working directory. If this value is absolute, it may be outside the build\'s working directory, in which case the contents of the path may not be persisted across build step executions, unless a @volume@ for that path is specified. If the build specifies a @RepoSource@ with @dir@ and a step with a @dir@, which specifies an absolute path, the @RepoSource@ @dir@ is ignored for the step\'s execution.
    dir :: (Core.Maybe Core.Text),
    -- | Entrypoint to be used instead of the build step image\'s default entrypoint. If unset, the image\'s default entrypoint is used.
    entrypoint :: (Core.Maybe Core.Text),
    -- | A list of environment variable definitions to be used when running a step. The elements are of the form \"KEY=VALUE\" for the environment variable \"KEY\" being given the value \"VALUE\".
    env :: (Core.Maybe [Core.Text]),
    -- | Unique identifier for this build step, used in @wait_for@ to reference this build step as a dependency.
    id :: (Core.Maybe Core.Text),
    -- | Required. The name of the container image that will run this particular build step. If the image is available in the host\'s Docker daemon\'s cache, it will be run directly. If not, the host will attempt to pull the image first, using the builder service account\'s credentials if necessary. The Docker daemon\'s cache will already have the latest versions of all of the officially supported build steps (<https://github.com/GoogleCloudPlatform/cloud-builders>). The Docker daemon will also have cached many of the layers for some popular images, like \"ubuntu\", \"debian\", but they will be refreshed at the time you attempt to use them. If you built an image in a previous build step, it will be stored in the host\'s Docker daemon\'s cache and is available to use as the name for a later build step.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Stores timing information for pulling this build step\'s builder image only.
    pullTiming :: (Core.Maybe TimeSpan),
    -- | A shell script to be executed in the step. When script is provided, the user cannot specify the entrypoint or args.
    script :: (Core.Maybe Core.Text),
    -- | A list of environment variables which are encrypted using a Cloud Key Management Service crypto key. These values must be specified in the build\'s @Secret@.
    secretEnv :: (Core.Maybe [Core.Text]),
    -- | Output only. Status of the build step. At this time, build step status is only updated on build completion; step status is not updated in real-time as the build progresses.
    status :: (Core.Maybe BuildStep_Status),
    -- | Time limit for executing this build step. If not defined, the step has no time limit and will be allowed to continue to run until either it completes or the build itself times out.
    timeout :: (Core.Maybe Core.Duration),
    -- | Output only. Stores timing information for executing this build step.
    timing :: (Core.Maybe TimeSpan),
    -- | List of volumes to mount into the build step. Each volume is created as an empty volume prior to execution of the build step. Upon completion of the build, volumes and their contents are discarded. Using a named volume in only one step is not valid as it is indicative of a build request with an incorrect configuration.
    volumes :: (Core.Maybe [Volume]),
    -- | The ID(s) of the step(s) that this build step depends on. This build step will not start until all the build steps in @wait_for@ have completed successfully. If @wait_for@ is empty, this build step will start when all previous build steps in the @Build.Steps@ list have completed successfully.
    waitFor :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildStep' with the minimum fields required to make a request.
newBuildStep ::
  BuildStep
newBuildStep =
  BuildStep
    { args = Core.Nothing,
      dir = Core.Nothing,
      entrypoint = Core.Nothing,
      env = Core.Nothing,
      id = Core.Nothing,
      name = Core.Nothing,
      pullTiming = Core.Nothing,
      script = Core.Nothing,
      secretEnv = Core.Nothing,
      status = Core.Nothing,
      timeout = Core.Nothing,
      timing = Core.Nothing,
      volumes = Core.Nothing,
      waitFor = Core.Nothing
    }

instance Core.FromJSON BuildStep where
  parseJSON =
    Core.withObject
      "BuildStep"
      ( \o ->
          BuildStep
            Core.<$> (o Core..:? "args")
            Core.<*> (o Core..:? "dir")
            Core.<*> (o Core..:? "entrypoint")
            Core.<*> (o Core..:? "env")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pullTiming")
            Core.<*> (o Core..:? "script")
            Core.<*> (o Core..:? "secretEnv")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "timeout")
            Core.<*> (o Core..:? "timing")
            Core.<*> (o Core..:? "volumes")
            Core.<*> (o Core..:? "waitFor")
      )

instance Core.ToJSON BuildStep where
  toJSON BuildStep {..} =
    Core.object
      ( Core.catMaybes
          [ ("args" Core..=) Core.<$> args,
            ("dir" Core..=) Core.<$> dir,
            ("entrypoint" Core..=) Core.<$> entrypoint,
            ("env" Core..=) Core.<$> env,
            ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("pullTiming" Core..=) Core.<$> pullTiming,
            ("script" Core..=) Core.<$> script,
            ("secretEnv" Core..=) Core.<$> secretEnv,
            ("status" Core..=) Core.<$> status,
            ("timeout" Core..=) Core.<$> timeout,
            ("timing" Core..=) Core.<$> timing,
            ("volumes" Core..=) Core.<$> volumes,
            ("waitFor" Core..=) Core.<$> waitFor
          ]
      )

-- | Configuration for an automated build in response to source repository changes.
--
-- /See:/ 'newBuildTrigger' smart constructor.
data BuildTrigger = BuildTrigger
  { -- | Configuration for manual approval to start a build invocation of this BuildTrigger.
    approvalConfig :: (Core.Maybe ApprovalConfig),
    -- | Autodetect build configuration. The following precedence is used (case insensitive): 1. cloudbuild.yaml 2. cloudbuild.yml 3. cloudbuild.json 4. Dockerfile Currently only available for GitHub App Triggers.
    autodetect :: (Core.Maybe Core.Bool),
    -- | BitbucketServerTriggerConfig describes the configuration of a trigger that creates a build whenever a Bitbucket Server event is received.
    bitbucketServerTriggerConfig :: (Core.Maybe BitbucketServerTriggerConfig),
    -- | Contents of the build template.
    build :: (Core.Maybe Build),
    -- | Output only. Time when the trigger was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Human-readable description of this trigger.
    description :: (Core.Maybe Core.Text),
    -- | If true, the trigger will never automatically execute a build.
    disabled :: (Core.Maybe Core.Bool),
    -- | EventType allows the user to explicitly set the type of event to which this BuildTrigger should respond. This field will be validated against the rest of the configuration if it is set.
    eventType :: (Core.Maybe BuildTrigger_EventType),
    -- | Path, from the source root, to the build configuration file (i.e. cloudbuild.yaml).
    filename :: (Core.Maybe Core.Text),
    -- | A Common Expression Language string.
    filter :: (Core.Maybe Core.Text),
    -- | The file source describing the local or remote Build template.
    gitFileSource :: (Core.Maybe GitFileSource),
    -- | GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received. Mutually exclusive with @trigger_template@.
    github :: (Core.Maybe GitHubEventsConfig),
    -- | Output only. Unique identifier of the trigger.
    id :: (Core.Maybe Core.Text),
    -- | ignored/files and included/files are file glob matches using https:\/\/golang.org\/pkg\/path\/filepath\/#Match extended with support for \"**\". If ignored/files and changed files are both empty, then they are not used to determine whether or not to trigger a build. If ignored/files is not empty, then we ignore any files that match any of the ignored/file globs. If the change has no files that are outside of the ignored/files globs, then we do not trigger a build.
    ignoredFiles :: (Core.Maybe [Core.Text]),
    -- | If any of the files altered in the commit pass the ignored/files filter and included/files is empty, then as far as this filter is concerned, we should trigger the build. If any of the files altered in the commit pass the ignored/files filter and included/files is not empty, then we make sure that at least one of those files matches a included_files glob. If not, then we do not trigger a build.
    includedFiles :: (Core.Maybe [Core.Text]),
    -- | User-assigned name of the trigger. Must be unique within the project. Trigger names must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
    name :: (Core.Maybe Core.Text),
    -- | PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub\/Sub message is published.
    pubsubConfig :: (Core.Maybe PubsubConfig),
    -- | The @Trigger@ name with format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@, where {trigger} is a unique identifier generated by the service.
    resourceName :: (Core.Maybe Core.Text),
    -- | The service account used for all user-controlled operations including UpdateBuildTrigger, RunBuildTrigger, CreateBuild, and CancelBuild. If no service account is set, then the standard Cloud Build service account ([PROJECT_NUM]\@system.gserviceaccount.com) will be used instead. Format: @projects\/{PROJECT_ID}\/serviceAccounts\/{ACCOUNT_ID_OR_EMAIL}@
    serviceAccount :: (Core.Maybe Core.Text),
    -- | The repo and ref of the repository from which to build. This field is used only for those triggers that do not respond to SCM events. Triggers that respond to such events build source at whatever commit caused the event. This field is currently only used by Webhook, Pub\/Sub, Manual, and Cron triggers.
    sourceToBuild :: (Core.Maybe GitRepoSource),
    -- | Substitutions for Build resource. The keys must match the following regular expression: @^_[A-Z0-9_]+$@.
    substitutions :: (Core.Maybe BuildTrigger_Substitutions),
    -- | Tags for annotation of a @BuildTrigger@
    tags :: (Core.Maybe [Core.Text]),
    -- | Template describing the types of source changes to trigger a build. Branch and tag names in trigger templates are interpreted as regular expressions. Any branch or tag change that matches that regular expression will trigger a build. Mutually exclusive with @github@.
    triggerTemplate :: (Core.Maybe RepoSource),
    -- | WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger\'s webhook URL.
    webhookConfig :: (Core.Maybe WebhookConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildTrigger' with the minimum fields required to make a request.
newBuildTrigger ::
  BuildTrigger
newBuildTrigger =
  BuildTrigger
    { approvalConfig = Core.Nothing,
      autodetect = Core.Nothing,
      bitbucketServerTriggerConfig = Core.Nothing,
      build = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      disabled = Core.Nothing,
      eventType = Core.Nothing,
      filename = Core.Nothing,
      filter = Core.Nothing,
      gitFileSource = Core.Nothing,
      github = Core.Nothing,
      id = Core.Nothing,
      ignoredFiles = Core.Nothing,
      includedFiles = Core.Nothing,
      name = Core.Nothing,
      pubsubConfig = Core.Nothing,
      resourceName = Core.Nothing,
      serviceAccount = Core.Nothing,
      sourceToBuild = Core.Nothing,
      substitutions = Core.Nothing,
      tags = Core.Nothing,
      triggerTemplate = Core.Nothing,
      webhookConfig = Core.Nothing
    }

instance Core.FromJSON BuildTrigger where
  parseJSON =
    Core.withObject
      "BuildTrigger"
      ( \o ->
          BuildTrigger
            Core.<$> (o Core..:? "approvalConfig")
            Core.<*> (o Core..:? "autodetect")
            Core.<*> (o Core..:? "bitbucketServerTriggerConfig")
            Core.<*> (o Core..:? "build")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disabled")
            Core.<*> (o Core..:? "eventType")
            Core.<*> (o Core..:? "filename")
            Core.<*> (o Core..:? "filter")
            Core.<*> (o Core..:? "gitFileSource")
            Core.<*> (o Core..:? "github")
            Core.<*> (o Core..:? "id")
            Core.<*> (o Core..:? "ignoredFiles")
            Core.<*> (o Core..:? "includedFiles")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pubsubConfig")
            Core.<*> (o Core..:? "resourceName")
            Core.<*> (o Core..:? "serviceAccount")
            Core.<*> (o Core..:? "sourceToBuild")
            Core.<*> (o Core..:? "substitutions")
            Core.<*> (o Core..:? "tags")
            Core.<*> (o Core..:? "triggerTemplate")
            Core.<*> (o Core..:? "webhookConfig")
      )

instance Core.ToJSON BuildTrigger where
  toJSON BuildTrigger {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvalConfig" Core..=) Core.<$> approvalConfig,
            ("autodetect" Core..=) Core.<$> autodetect,
            ("bitbucketServerTriggerConfig" Core..=)
              Core.<$> bitbucketServerTriggerConfig,
            ("build" Core..=) Core.<$> build,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("disabled" Core..=) Core.<$> disabled,
            ("eventType" Core..=) Core.<$> eventType,
            ("filename" Core..=) Core.<$> filename,
            ("filter" Core..=) Core.<$> filter,
            ("gitFileSource" Core..=) Core.<$> gitFileSource,
            ("github" Core..=) Core.<$> github,
            ("id" Core..=) Core.<$> id,
            ("ignoredFiles" Core..=) Core.<$> ignoredFiles,
            ("includedFiles" Core..=) Core.<$> includedFiles,
            ("name" Core..=) Core.<$> name,
            ("pubsubConfig" Core..=) Core.<$> pubsubConfig,
            ("resourceName" Core..=) Core.<$> resourceName,
            ("serviceAccount" Core..=) Core.<$> serviceAccount,
            ("sourceToBuild" Core..=) Core.<$> sourceToBuild,
            ("substitutions" Core..=) Core.<$> substitutions,
            ("tags" Core..=) Core.<$> tags,
            ("triggerTemplate" Core..=) Core.<$> triggerTemplate,
            ("webhookConfig" Core..=) Core.<$> webhookConfig
          ]
      )

-- | Substitutions for Build resource. The keys must match the following regular expression: @^_[A-Z0-9_]+$@.
--
-- /See:/ 'newBuildTrigger_Substitutions' smart constructor.
newtype BuildTrigger_Substitutions = BuildTrigger_Substitutions
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuildTrigger_Substitutions' with the minimum fields required to make a request.
newBuildTrigger_Substitutions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  BuildTrigger_Substitutions
newBuildTrigger_Substitutions additional =
  BuildTrigger_Substitutions {additional = additional}

instance Core.FromJSON BuildTrigger_Substitutions where
  parseJSON =
    Core.withObject
      "BuildTrigger_Substitutions"
      ( \o ->
          BuildTrigger_Substitutions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON BuildTrigger_Substitutions where
  toJSON BuildTrigger_Substitutions {..} =
    Core.toJSON additional

-- | An image built by the pipeline.
--
-- /See:/ 'newBuiltImage' smart constructor.
data BuiltImage = BuiltImage
  { -- | Docker Registry 2.0 digest.
    digest :: (Core.Maybe Core.Text),
    -- | Name used to push the container image to Google Container Registry, as presented to @docker push@.
    name :: (Core.Maybe Core.Text),
    -- | Output only. Stores timing information for pushing the specified image.
    pushTiming :: (Core.Maybe TimeSpan)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BuiltImage' with the minimum fields required to make a request.
newBuiltImage ::
  BuiltImage
newBuiltImage =
  BuiltImage
    { digest = Core.Nothing,
      name = Core.Nothing,
      pushTiming = Core.Nothing
    }

instance Core.FromJSON BuiltImage where
  parseJSON =
    Core.withObject
      "BuiltImage"
      ( \o ->
          BuiltImage
            Core.<$> (o Core..:? "digest")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "pushTiming")
      )

instance Core.ToJSON BuiltImage where
  toJSON BuiltImage {..} =
    Core.object
      ( Core.catMaybes
          [ ("digest" Core..=) Core.<$> digest,
            ("name" Core..=) Core.<$> name,
            ("pushTiming" Core..=) Core.<$> pushTiming
          ]
      )

-- | Request to cancel an ongoing build.
--
-- /See:/ 'newCancelBuildRequest' smart constructor.
data CancelBuildRequest = CancelBuildRequest
  { -- | Required. ID of the build.
    id :: (Core.Maybe Core.Text),
    -- | The name of the @Build@ to cancel. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    name :: (Core.Maybe Core.Text),
    -- | Required. ID of the project.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelBuildRequest' with the minimum fields required to make a request.
newCancelBuildRequest ::
  CancelBuildRequest
newCancelBuildRequest =
  CancelBuildRequest
    { id = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON CancelBuildRequest where
  parseJSON =
    Core.withObject
      "CancelBuildRequest"
      ( \o ->
          CancelBuildRequest
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON CancelBuildRequest where
  toJSON CancelBuildRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newCancelOperationRequest' smart constructor.
data CancelOperationRequest = CancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CancelOperationRequest' with the minimum fields required to make a request.
newCancelOperationRequest ::
  CancelOperationRequest
newCancelOperationRequest = CancelOperationRequest

instance Core.FromJSON CancelOperationRequest where
  parseJSON =
    Core.withObject
      "CancelOperationRequest"
      (\o -> Core.pure CancelOperationRequest)

instance Core.ToJSON CancelOperationRequest where
  toJSON = Core.const Core.emptyObject

-- | Metadata for @CreateBitbucketServerConfig@ operation.
--
-- /See:/ 'newCreateBitbucketServerConfigOperationMetadata' smart constructor.
data CreateBitbucketServerConfigOperationMetadata = CreateBitbucketServerConfigOperationMetadata
  { -- | The resource name of the BitbucketServerConfig to be created. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{id}@.
    bitbucketServerConfig :: (Core.Maybe Core.Text),
    -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBitbucketServerConfigOperationMetadata' with the minimum fields required to make a request.
newCreateBitbucketServerConfigOperationMetadata ::
  CreateBitbucketServerConfigOperationMetadata
newCreateBitbucketServerConfigOperationMetadata =
  CreateBitbucketServerConfigOperationMetadata
    { bitbucketServerConfig = Core.Nothing,
      completeTime = Core.Nothing,
      createTime = Core.Nothing
    }

instance
  Core.FromJSON
    CreateBitbucketServerConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "CreateBitbucketServerConfigOperationMetadata"
      ( \o ->
          CreateBitbucketServerConfigOperationMetadata
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    CreateBitbucketServerConfigOperationMetadata
  where
  toJSON
    CreateBitbucketServerConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("bitbucketServerConfig" Core..=)
                Core.<$> bitbucketServerConfig,
              ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime
            ]
        )

-- | Request to connect a repository from a connected Bitbucket Server host.
--
-- /See:/ 'newCreateBitbucketServerConnectedRepositoryRequest' smart constructor.
data CreateBitbucketServerConnectedRepositoryRequest = CreateBitbucketServerConnectedRepositoryRequest
  { -- | Required. The Bitbucket Server repository to connect.
    bitbucketServerConnectedRepository :: (Core.Maybe BitbucketServerConnectedRepository),
    -- | Required. The name of the @BitbucketServerConfig@ that added connected repository. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{config}@
    parent :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateBitbucketServerConnectedRepositoryRequest' with the minimum fields required to make a request.
newCreateBitbucketServerConnectedRepositoryRequest ::
  CreateBitbucketServerConnectedRepositoryRequest
newCreateBitbucketServerConnectedRepositoryRequest =
  CreateBitbucketServerConnectedRepositoryRequest
    { bitbucketServerConnectedRepository = Core.Nothing,
      parent = Core.Nothing
    }

instance
  Core.FromJSON
    CreateBitbucketServerConnectedRepositoryRequest
  where
  parseJSON =
    Core.withObject
      "CreateBitbucketServerConnectedRepositoryRequest"
      ( \o ->
          CreateBitbucketServerConnectedRepositoryRequest
            Core.<$> (o Core..:? "bitbucketServerConnectedRepository")
              Core.<*> (o Core..:? "parent")
      )

instance
  Core.ToJSON
    CreateBitbucketServerConnectedRepositoryRequest
  where
  toJSON
    CreateBitbucketServerConnectedRepositoryRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("bitbucketServerConnectedRepository" Core..=)
                Core.<$> bitbucketServerConnectedRepository,
              ("parent" Core..=) Core.<$> parent
            ]
        )

-- | Metadata for @CreateGithubEnterpriseConfig@ operation.
--
-- /See:/ 'newCreateGitHubEnterpriseConfigOperationMetadata' smart constructor.
data CreateGitHubEnterpriseConfigOperationMetadata = CreateGitHubEnterpriseConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitHubEnterprise to be created. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateGitHubEnterpriseConfigOperationMetadata' with the minimum fields required to make a request.
newCreateGitHubEnterpriseConfigOperationMetadata ::
  CreateGitHubEnterpriseConfigOperationMetadata
newCreateGitHubEnterpriseConfigOperationMetadata =
  CreateGitHubEnterpriseConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing
    }

instance
  Core.FromJSON
    CreateGitHubEnterpriseConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "CreateGitHubEnterpriseConfigOperationMetadata"
      ( \o ->
          CreateGitHubEnterpriseConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "githubEnterpriseConfig")
      )

instance
  Core.ToJSON
    CreateGitHubEnterpriseConfigOperationMetadata
  where
  toJSON
    CreateGitHubEnterpriseConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime,
              ("githubEnterpriseConfig" Core..=)
                Core.<$> githubEnterpriseConfig
            ]
        )

-- | Metadata for @CreateGitLabConfig@ operation.
--
-- /See:/ 'newCreateGitLabConfigOperationMetadata' smart constructor.
data CreateGitLabConfigOperationMetadata = CreateGitLabConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitLabConfig to be created. Format: @projects\/{project}\/locations\/{location}\/gitlabConfigs\/{id}@.
    gitlabConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateGitLabConfigOperationMetadata' with the minimum fields required to make a request.
newCreateGitLabConfigOperationMetadata ::
  CreateGitLabConfigOperationMetadata
newCreateGitLabConfigOperationMetadata =
  CreateGitLabConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      gitlabConfig = Core.Nothing
    }

instance
  Core.FromJSON
    CreateGitLabConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "CreateGitLabConfigOperationMetadata"
      ( \o ->
          CreateGitLabConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "gitlabConfig")
      )

instance
  Core.ToJSON
    CreateGitLabConfigOperationMetadata
  where
  toJSON CreateGitLabConfigOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("gitlabConfig" Core..=) Core.<$> gitlabConfig
          ]
      )

-- | Metadata for the @CreateWorkerPool@ operation.
--
-- /See:/ 'newCreateWorkerPoolOperationMetadata' smart constructor.
data CreateWorkerPoolOperationMetadata = CreateWorkerPoolOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the @WorkerPool@ to create. Format: @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CreateWorkerPoolOperationMetadata' with the minimum fields required to make a request.
newCreateWorkerPoolOperationMetadata ::
  CreateWorkerPoolOperationMetadata
newCreateWorkerPoolOperationMetadata =
  CreateWorkerPoolOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      workerPool = Core.Nothing
    }

instance
  Core.FromJSON
    CreateWorkerPoolOperationMetadata
  where
  parseJSON =
    Core.withObject
      "CreateWorkerPoolOperationMetadata"
      ( \o ->
          CreateWorkerPoolOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "workerPool")
      )

instance
  Core.ToJSON
    CreateWorkerPoolOperationMetadata
  where
  toJSON CreateWorkerPoolOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | Metadata for @DeleteBitbucketServerConfig@ operation.
--
-- /See:/ 'newDeleteBitbucketServerConfigOperationMetadata' smart constructor.
data DeleteBitbucketServerConfigOperationMetadata = DeleteBitbucketServerConfigOperationMetadata
  { -- | The resource name of the BitbucketServerConfig to be deleted. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{id}@.
    bitbucketServerConfig :: (Core.Maybe Core.Text),
    -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteBitbucketServerConfigOperationMetadata' with the minimum fields required to make a request.
newDeleteBitbucketServerConfigOperationMetadata ::
  DeleteBitbucketServerConfigOperationMetadata
newDeleteBitbucketServerConfigOperationMetadata =
  DeleteBitbucketServerConfigOperationMetadata
    { bitbucketServerConfig = Core.Nothing,
      completeTime = Core.Nothing,
      createTime = Core.Nothing
    }

instance
  Core.FromJSON
    DeleteBitbucketServerConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "DeleteBitbucketServerConfigOperationMetadata"
      ( \o ->
          DeleteBitbucketServerConfigOperationMetadata
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    DeleteBitbucketServerConfigOperationMetadata
  where
  toJSON
    DeleteBitbucketServerConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("bitbucketServerConfig" Core..=)
                Core.<$> bitbucketServerConfig,
              ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime
            ]
        )

-- | Metadata for @DeleteGitHubEnterpriseConfig@ operation.
--
-- /See:/ 'newDeleteGitHubEnterpriseConfigOperationMetadata' smart constructor.
data DeleteGitHubEnterpriseConfigOperationMetadata = DeleteGitHubEnterpriseConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitHubEnterprise to be deleted. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteGitHubEnterpriseConfigOperationMetadata' with the minimum fields required to make a request.
newDeleteGitHubEnterpriseConfigOperationMetadata ::
  DeleteGitHubEnterpriseConfigOperationMetadata
newDeleteGitHubEnterpriseConfigOperationMetadata =
  DeleteGitHubEnterpriseConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing
    }

instance
  Core.FromJSON
    DeleteGitHubEnterpriseConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "DeleteGitHubEnterpriseConfigOperationMetadata"
      ( \o ->
          DeleteGitHubEnterpriseConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "githubEnterpriseConfig")
      )

instance
  Core.ToJSON
    DeleteGitHubEnterpriseConfigOperationMetadata
  where
  toJSON
    DeleteGitHubEnterpriseConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime,
              ("githubEnterpriseConfig" Core..=)
                Core.<$> githubEnterpriseConfig
            ]
        )

-- | Metadata for @DeleteGitLabConfig@ operation.
--
-- /See:/ 'newDeleteGitLabConfigOperationMetadata' smart constructor.
data DeleteGitLabConfigOperationMetadata = DeleteGitLabConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitLabConfig to be created. Format: @projects\/{project}\/locations\/{location}\/gitlabConfigs\/{id}@.
    gitlabConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteGitLabConfigOperationMetadata' with the minimum fields required to make a request.
newDeleteGitLabConfigOperationMetadata ::
  DeleteGitLabConfigOperationMetadata
newDeleteGitLabConfigOperationMetadata =
  DeleteGitLabConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      gitlabConfig = Core.Nothing
    }

instance
  Core.FromJSON
    DeleteGitLabConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "DeleteGitLabConfigOperationMetadata"
      ( \o ->
          DeleteGitLabConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "gitlabConfig")
      )

instance
  Core.ToJSON
    DeleteGitLabConfigOperationMetadata
  where
  toJSON DeleteGitLabConfigOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("gitlabConfig" Core..=) Core.<$> gitlabConfig
          ]
      )

-- | Metadata for the @DeleteWorkerPool@ operation.
--
-- /See:/ 'newDeleteWorkerPoolOperationMetadata' smart constructor.
data DeleteWorkerPoolOperationMetadata = DeleteWorkerPoolOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the @WorkerPool@ being deleted. Format: @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DeleteWorkerPoolOperationMetadata' with the minimum fields required to make a request.
newDeleteWorkerPoolOperationMetadata ::
  DeleteWorkerPoolOperationMetadata
newDeleteWorkerPoolOperationMetadata =
  DeleteWorkerPoolOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      workerPool = Core.Nothing
    }

instance
  Core.FromJSON
    DeleteWorkerPoolOperationMetadata
  where
  parseJSON =
    Core.withObject
      "DeleteWorkerPoolOperationMetadata"
      ( \o ->
          DeleteWorkerPoolOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "workerPool")
      )

instance
  Core.ToJSON
    DeleteWorkerPoolOperationMetadata
  where
  toJSON DeleteWorkerPoolOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A fatal problem encountered during the execution of the build.
--
-- /See:/ 'newFailureInfo' smart constructor.
data FailureInfo = FailureInfo
  { -- | Explains the failure issue in more detail using hard-coded text.
    detail :: (Core.Maybe Core.Text),
    -- | The name of the failure.
    type' :: (Core.Maybe FailureInfo_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FailureInfo' with the minimum fields required to make a request.
newFailureInfo ::
  FailureInfo
newFailureInfo = FailureInfo {detail = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON FailureInfo where
  parseJSON =
    Core.withObject
      "FailureInfo"
      ( \o ->
          FailureInfo
            Core.<$> (o Core..:? "detail") Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON FailureInfo where
  toJSON FailureInfo {..} =
    Core.object
      ( Core.catMaybes
          [ ("detail" Core..=) Core.<$> detail,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Container message for hashes of byte content of files, used in SourceProvenance messages to verify integrity of source input to the build.
--
-- /See:/ 'newFileHashes' smart constructor.
newtype FileHashes = FileHashes
  { -- | Collection of file hashes.
    fileHash :: (Core.Maybe [Hash])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FileHashes' with the minimum fields required to make a request.
newFileHashes ::
  FileHashes
newFileHashes = FileHashes {fileHash = Core.Nothing}

instance Core.FromJSON FileHashes where
  parseJSON =
    Core.withObject
      "FileHashes"
      (\o -> FileHashes Core.<$> (o Core..:? "fileHash"))

instance Core.ToJSON FileHashes where
  toJSON FileHashes {..} =
    Core.object
      ( Core.catMaybes
          [("fileHash" Core..=) Core.<$> fileHash]
      )

-- | GitFileSource describes a file within a (possibly remote) code repository.
--
-- /See:/ 'newGitFileSource' smart constructor.
data GitFileSource = GitFileSource
  { -- | The full resource name of the bitbucket server config. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{id}@.
    bitbucketServerConfig :: (Core.Maybe Core.Text),
    -- | The full resource name of the github enterprise config. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@. @projects\/{project}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text),
    -- | The path of the file, with the repo root as the root of the path.
    path :: (Core.Maybe Core.Text),
    -- | See RepoType above.
    repoType :: (Core.Maybe GitFileSource_RepoType),
    -- | The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax\/resolution as described here: https:\/\/git-scm.com\/docs\/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
    revision :: (Core.Maybe Core.Text),
    -- | The URI of the repo (optional). If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitFileSource' with the minimum fields required to make a request.
newGitFileSource ::
  GitFileSource
newGitFileSource =
  GitFileSource
    { bitbucketServerConfig = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing,
      path = Core.Nothing,
      repoType = Core.Nothing,
      revision = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON GitFileSource where
  parseJSON =
    Core.withObject
      "GitFileSource"
      ( \o ->
          GitFileSource
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "githubEnterpriseConfig")
            Core.<*> (o Core..:? "path")
            Core.<*> (o Core..:? "repoType")
            Core.<*> (o Core..:? "revision")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON GitFileSource where
  toJSON GitFileSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitbucketServerConfig" Core..=)
              Core.<$> bitbucketServerConfig,
            ("githubEnterpriseConfig" Core..=)
              Core.<$> githubEnterpriseConfig,
            ("path" Core..=) Core.<$> path,
            ("repoType" Core..=) Core.<$> repoType,
            ("revision" Core..=) Core.<$> revision,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | GitHubEnterpriseConfig represents a configuration for a GitHub Enterprise server.
--
-- /See:/ 'newGitHubEnterpriseConfig' smart constructor.
data GitHubEnterpriseConfig = GitHubEnterpriseConfig
  { -- | Required. The GitHub app id of the Cloud Build app on the GitHub Enterprise server.
    appId :: (Core.Maybe Core.Int64),
    -- | Output only. Time when the installation was associated with the project.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Name to display for this config.
    displayName :: (Core.Maybe Core.Text),
    -- | The URL of the github enterprise host the configuration is for.
    hostUrl :: (Core.Maybe Core.Text),
    -- | Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\"
    name :: (Core.Maybe Core.Text),
    -- | Optional. The network to be used when reaching out to the GitHub Enterprise server. The VPC network must be enabled for private service connection. This should be set if the GitHub Enterprise server is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the GitHub Enterprise server will be made over the public internet. Must be in the format @projects\/{project}\/global\/networks\/{network}@, where {project} is a project number or id and {network} is the name of a VPC network in the project.
    peeredNetwork :: (Core.Maybe Core.Text),
    -- | Names of secrets in Secret Manager.
    secrets :: (Core.Maybe GitHubEnterpriseSecrets),
    -- | Optional. SSL certificate to use for requests to GitHub Enterprise.
    sslCa :: (Core.Maybe Core.Text),
    -- | The key that should be attached to webhook calls to the ReceiveWebhook endpoint.
    webhookKey :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitHubEnterpriseConfig' with the minimum fields required to make a request.
newGitHubEnterpriseConfig ::
  GitHubEnterpriseConfig
newGitHubEnterpriseConfig =
  GitHubEnterpriseConfig
    { appId = Core.Nothing,
      createTime = Core.Nothing,
      displayName = Core.Nothing,
      hostUrl = Core.Nothing,
      name = Core.Nothing,
      peeredNetwork = Core.Nothing,
      secrets = Core.Nothing,
      sslCa = Core.Nothing,
      webhookKey = Core.Nothing
    }

instance Core.FromJSON GitHubEnterpriseConfig where
  parseJSON =
    Core.withObject
      "GitHubEnterpriseConfig"
      ( \o ->
          GitHubEnterpriseConfig
            Core.<$> ( o Core..:? "appId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "hostUrl")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "peeredNetwork")
            Core.<*> (o Core..:? "secrets")
            Core.<*> (o Core..:? "sslCa")
            Core.<*> (o Core..:? "webhookKey")
      )

instance Core.ToJSON GitHubEnterpriseConfig where
  toJSON GitHubEnterpriseConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("appId" Core..=) Core.. Core.AsText Core.<$> appId,
            ("createTime" Core..=) Core.<$> createTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("hostUrl" Core..=) Core.<$> hostUrl,
            ("name" Core..=) Core.<$> name,
            ("peeredNetwork" Core..=) Core.<$> peeredNetwork,
            ("secrets" Core..=) Core.<$> secrets,
            ("sslCa" Core..=) Core.<$> sslCa,
            ("webhookKey" Core..=) Core.<$> webhookKey
          ]
      )

-- | GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects\/\/secrets\/.
--
-- /See:/ 'newGitHubEnterpriseSecrets' smart constructor.
data GitHubEnterpriseSecrets = GitHubEnterpriseSecrets
  { -- | The resource name for the OAuth client ID secret in Secret Manager.
    oauthClientIdName :: (Core.Maybe Core.Text),
    -- | The resource name for the OAuth client ID secret version in Secret Manager.
    oauthClientIdVersionName :: (Core.Maybe Core.Text),
    -- | The resource name for the OAuth secret in Secret Manager.
    oauthSecretName :: (Core.Maybe Core.Text),
    -- | The resource name for the OAuth secret secret version in Secret Manager.
    oauthSecretVersionName :: (Core.Maybe Core.Text),
    -- | The resource name for the private key secret.
    privateKeyName :: (Core.Maybe Core.Text),
    -- | The resource name for the private key secret version.
    privateKeyVersionName :: (Core.Maybe Core.Text),
    -- | The resource name for the webhook secret in Secret Manager.
    webhookSecretName :: (Core.Maybe Core.Text),
    -- | The resource name for the webhook secret secret version in Secret Manager.
    webhookSecretVersionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitHubEnterpriseSecrets' with the minimum fields required to make a request.
newGitHubEnterpriseSecrets ::
  GitHubEnterpriseSecrets
newGitHubEnterpriseSecrets =
  GitHubEnterpriseSecrets
    { oauthClientIdName = Core.Nothing,
      oauthClientIdVersionName = Core.Nothing,
      oauthSecretName = Core.Nothing,
      oauthSecretVersionName = Core.Nothing,
      privateKeyName = Core.Nothing,
      privateKeyVersionName = Core.Nothing,
      webhookSecretName = Core.Nothing,
      webhookSecretVersionName = Core.Nothing
    }

instance Core.FromJSON GitHubEnterpriseSecrets where
  parseJSON =
    Core.withObject
      "GitHubEnterpriseSecrets"
      ( \o ->
          GitHubEnterpriseSecrets
            Core.<$> (o Core..:? "oauthClientIdName")
            Core.<*> (o Core..:? "oauthClientIdVersionName")
            Core.<*> (o Core..:? "oauthSecretName")
            Core.<*> (o Core..:? "oauthSecretVersionName")
            Core.<*> (o Core..:? "privateKeyName")
            Core.<*> (o Core..:? "privateKeyVersionName")
            Core.<*> (o Core..:? "webhookSecretName")
            Core.<*> (o Core..:? "webhookSecretVersionName")
      )

instance Core.ToJSON GitHubEnterpriseSecrets where
  toJSON GitHubEnterpriseSecrets {..} =
    Core.object
      ( Core.catMaybes
          [ ("oauthClientIdName" Core..=)
              Core.<$> oauthClientIdName,
            ("oauthClientIdVersionName" Core..=)
              Core.<$> oauthClientIdVersionName,
            ("oauthSecretName" Core..=) Core.<$> oauthSecretName,
            ("oauthSecretVersionName" Core..=)
              Core.<$> oauthSecretVersionName,
            ("privateKeyName" Core..=) Core.<$> privateKeyName,
            ("privateKeyVersionName" Core..=)
              Core.<$> privateKeyVersionName,
            ("webhookSecretName" Core..=)
              Core.<$> webhookSecretName,
            ("webhookSecretVersionName" Core..=)
              Core.<$> webhookSecretVersionName
          ]
      )

-- | GitHubEventsConfig describes the configuration of a trigger that creates a build whenever a GitHub event is received.
--
-- /See:/ 'newGitHubEventsConfig' smart constructor.
data GitHubEventsConfig = GitHubEventsConfig
  { -- | Optional. The resource name of the github enterprise config that should be applied to this installation. For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\"
    enterpriseConfigResourceName :: (Core.Maybe Core.Text),
    -- | The installationID that emits the GitHub event.
    installationId :: (Core.Maybe Core.Int64),
    -- | Name of the repository. For example: The name for https:\/\/github.com\/googlecloudplatform\/cloud-builders is \"cloud-builders\".
    name :: (Core.Maybe Core.Text),
    -- | Owner of the repository. For example: The owner for https:\/\/github.com\/googlecloudplatform\/cloud-builders is \"googlecloudplatform\".
    owner :: (Core.Maybe Core.Text),
    -- | filter to match changes in pull requests.
    pullRequest :: (Core.Maybe PullRequestFilter),
    -- | filter to match changes in refs like branches, tags.
    push :: (Core.Maybe PushFilter)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitHubEventsConfig' with the minimum fields required to make a request.
newGitHubEventsConfig ::
  GitHubEventsConfig
newGitHubEventsConfig =
  GitHubEventsConfig
    { enterpriseConfigResourceName = Core.Nothing,
      installationId = Core.Nothing,
      name = Core.Nothing,
      owner = Core.Nothing,
      pullRequest = Core.Nothing,
      push = Core.Nothing
    }

instance Core.FromJSON GitHubEventsConfig where
  parseJSON =
    Core.withObject
      "GitHubEventsConfig"
      ( \o ->
          GitHubEventsConfig
            Core.<$> (o Core..:? "enterpriseConfigResourceName")
            Core.<*> ( o Core..:? "installationId"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "owner")
            Core.<*> (o Core..:? "pullRequest")
            Core.<*> (o Core..:? "push")
      )

instance Core.ToJSON GitHubEventsConfig where
  toJSON GitHubEventsConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("enterpriseConfigResourceName" Core..=)
              Core.<$> enterpriseConfigResourceName,
            ("installationId" Core..=) Core.. Core.AsText
              Core.<$> installationId,
            ("name" Core..=) Core.<$> name,
            ("owner" Core..=) Core.<$> owner,
            ("pullRequest" Core..=) Core.<$> pullRequest,
            ("push" Core..=) Core.<$> push
          ]
      )

-- | GitRepoSource describes a repo and ref of a code repository.
--
-- /See:/ 'newGitRepoSource' smart constructor.
data GitRepoSource = GitRepoSource
  { -- | The full resource name of the bitbucket server config. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{id}@.
    bitbucketServerConfig :: (Core.Maybe Core.Text),
    -- | The full resource name of the github enterprise config. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@. @projects\/{project}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text),
    -- | The branch or tag to use. Must start with \"refs\/\" (required).
    ref :: (Core.Maybe Core.Text),
    -- | See RepoType below.
    repoType :: (Core.Maybe GitRepoSource_RepoType),
    -- | The URI of the repo (required).
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GitRepoSource' with the minimum fields required to make a request.
newGitRepoSource ::
  GitRepoSource
newGitRepoSource =
  GitRepoSource
    { bitbucketServerConfig = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing,
      ref = Core.Nothing,
      repoType = Core.Nothing,
      uri = Core.Nothing
    }

instance Core.FromJSON GitRepoSource where
  parseJSON =
    Core.withObject
      "GitRepoSource"
      ( \o ->
          GitRepoSource
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "githubEnterpriseConfig")
            Core.<*> (o Core..:? "ref")
            Core.<*> (o Core..:? "repoType")
            Core.<*> (o Core..:? "uri")
      )

instance Core.ToJSON GitRepoSource where
  toJSON GitRepoSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitbucketServerConfig" Core..=)
              Core.<$> bitbucketServerConfig,
            ("githubEnterpriseConfig" Core..=)
              Core.<$> githubEnterpriseConfig,
            ("ref" Core..=) Core.<$> ref,
            ("repoType" Core..=) Core.<$> repoType,
            ("uri" Core..=) Core.<$> uri
          ]
      )

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newGoogleDevtoolsCloudbuildV2OperationMetadata' smart constructor.
data GoogleDevtoolsCloudbuildV2OperationMetadata = GoogleDevtoolsCloudbuildV2OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Output only. Human-readable status of the operation, if any.
    statusMessage :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleDevtoolsCloudbuildV2OperationMetadata' with the minimum fields required to make a request.
newGoogleDevtoolsCloudbuildV2OperationMetadata ::
  GoogleDevtoolsCloudbuildV2OperationMetadata
newGoogleDevtoolsCloudbuildV2OperationMetadata =
  GoogleDevtoolsCloudbuildV2OperationMetadata
    { apiVersion = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      requestedCancellation = Core.Nothing,
      statusMessage = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleDevtoolsCloudbuildV2OperationMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleDevtoolsCloudbuildV2OperationMetadata"
      ( \o ->
          GoogleDevtoolsCloudbuildV2OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "statusMessage")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance
  Core.ToJSON
    GoogleDevtoolsCloudbuildV2OperationMetadata
  where
  toJSON
    GoogleDevtoolsCloudbuildV2OperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("apiVersion" Core..=) Core.<$> apiVersion,
              ("createTime" Core..=) Core.<$> createTime,
              ("endTime" Core..=) Core.<$> endTime,
              ("requestedCancellation" Core..=)
                Core.<$> requestedCancellation,
              ("statusMessage" Core..=) Core.<$> statusMessage,
              ("target" Core..=) Core.<$> target,
              ("verb" Core..=) Core.<$> verb
            ]
        )

-- | HTTPDelivery is the delivery configuration for an HTTP notification.
--
-- /See:/ 'newHTTPDelivery' smart constructor.
newtype HTTPDelivery = HTTPDelivery
  { -- | The URI to which JSON-containing HTTP POST requests should be sent.
    uri :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HTTPDelivery' with the minimum fields required to make a request.
newHTTPDelivery ::
  HTTPDelivery
newHTTPDelivery = HTTPDelivery {uri = Core.Nothing}

instance Core.FromJSON HTTPDelivery where
  parseJSON =
    Core.withObject
      "HTTPDelivery"
      (\o -> HTTPDelivery Core.<$> (o Core..:? "uri"))

instance Core.ToJSON HTTPDelivery where
  toJSON HTTPDelivery {..} =
    Core.object
      (Core.catMaybes [("uri" Core..=) Core.<$> uri])

-- | Container message for hash values.
--
-- /See:/ 'newHash' smart constructor.
data Hash = Hash
  { -- | The type of hash that was performed.
    type' :: (Core.Maybe Hash_Type),
    -- | The hash value.
    value :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Hash' with the minimum fields required to make a request.
newHash ::
  Hash
newHash = Hash {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Hash where
  parseJSON =
    Core.withObject
      "Hash"
      ( \o ->
          Hash
            Core.<$> (o Core..:? "type") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Hash where
  toJSON Hash {..} =
    Core.object
      ( Core.catMaybes
          [ ("type" Core..=) Core.<$> type',
            ("value" Core..=) Core.<$> value
          ]
      )

-- | Message that represents an arbitrary HTTP body. It should only be used for payload formats that can\'t be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { \/\/ A unique request id. string request/id = 1; \/\/ The raw HTTP body is bound to this field. google.api.HttpBody http/body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream
-- google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.
--
-- /See:/ 'newHttpBody' smart constructor.
data HttpBody = HttpBody
  { -- | The HTTP Content-Type header value specifying the content type of the body.
    contentType :: (Core.Maybe Core.Text),
    -- | The HTTP request\/response body as raw binary.
    data' :: (Core.Maybe Core.Base64),
    -- | Application specific response metadata. Must be set in the first response for streaming APIs.
    extensions :: (Core.Maybe [HttpBody_ExtensionsItem])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody' with the minimum fields required to make a request.
newHttpBody ::
  HttpBody
newHttpBody =
  HttpBody
    { contentType = Core.Nothing,
      data' = Core.Nothing,
      extensions = Core.Nothing
    }

instance Core.FromJSON HttpBody where
  parseJSON =
    Core.withObject
      "HttpBody"
      ( \o ->
          HttpBody
            Core.<$> (o Core..:? "contentType")
            Core.<*> (o Core..:? "data")
            Core.<*> (o Core..:? "extensions")
      )

instance Core.ToJSON HttpBody where
  toJSON HttpBody {..} =
    Core.object
      ( Core.catMaybes
          [ ("contentType" Core..=) Core.<$> contentType,
            ("data" Core..=) Core.<$> data',
            ("extensions" Core..=) Core.<$> extensions
          ]
      )

--
-- /See:/ 'newHttpBody_ExtensionsItem' smart constructor.
newtype HttpBody_ExtensionsItem = HttpBody_ExtensionsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'HttpBody_ExtensionsItem' with the minimum fields required to make a request.
newHttpBody_ExtensionsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  HttpBody_ExtensionsItem
newHttpBody_ExtensionsItem additional =
  HttpBody_ExtensionsItem {additional = additional}

instance Core.FromJSON HttpBody_ExtensionsItem where
  parseJSON =
    Core.withObject
      "HttpBody_ExtensionsItem"
      ( \o ->
          HttpBody_ExtensionsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON HttpBody_ExtensionsItem where
  toJSON HttpBody_ExtensionsItem {..} =
    Core.toJSON additional

-- | Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
--
-- /See:/ 'newInlineSecret' smart constructor.
data InlineSecret = InlineSecret
  { -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
    envMap :: (Core.Maybe InlineSecret_EnvMap),
    -- | Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects\//\/locations\//\/keyRings\//\/cryptoKeys\//
    kmsKeyName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineSecret' with the minimum fields required to make a request.
newInlineSecret ::
  InlineSecret
newInlineSecret =
  InlineSecret {envMap = Core.Nothing, kmsKeyName = Core.Nothing}

instance Core.FromJSON InlineSecret where
  parseJSON =
    Core.withObject
      "InlineSecret"
      ( \o ->
          InlineSecret
            Core.<$> (o Core..:? "envMap")
            Core.<*> (o Core..:? "kmsKeyName")
      )

instance Core.ToJSON InlineSecret where
  toJSON InlineSecret {..} =
    Core.object
      ( Core.catMaybes
          [ ("envMap" Core..=) Core.<$> envMap,
            ("kmsKeyName" Core..=) Core.<$> kmsKeyName
          ]
      )

-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newInlineSecret_EnvMap' smart constructor.
newtype InlineSecret_EnvMap = InlineSecret_EnvMap
  { -- |
    additional :: (Core.HashMap Core.Text Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'InlineSecret_EnvMap' with the minimum fields required to make a request.
newInlineSecret_EnvMap ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Base64 ->
  InlineSecret_EnvMap
newInlineSecret_EnvMap additional =
  InlineSecret_EnvMap {additional = additional}

instance Core.FromJSON InlineSecret_EnvMap where
  parseJSON =
    Core.withObject
      "InlineSecret_EnvMap"
      ( \o ->
          InlineSecret_EnvMap
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON InlineSecret_EnvMap where
  toJSON InlineSecret_EnvMap {..} =
    Core.toJSON additional

-- | RPC response object returned by ListBitbucketServerConfigs RPC method.
--
-- /See:/ 'newListBitbucketServerConfigsResponse' smart constructor.
data ListBitbucketServerConfigsResponse = ListBitbucketServerConfigsResponse
  { -- | A list of BitbucketServerConfigs
    bitbucketServerConfigs :: (Core.Maybe [BitbucketServerConfig]),
    -- | A token that can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBitbucketServerConfigsResponse' with the minimum fields required to make a request.
newListBitbucketServerConfigsResponse ::
  ListBitbucketServerConfigsResponse
newListBitbucketServerConfigsResponse =
  ListBitbucketServerConfigsResponse
    { bitbucketServerConfigs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListBitbucketServerConfigsResponse
  where
  parseJSON =
    Core.withObject
      "ListBitbucketServerConfigsResponse"
      ( \o ->
          ListBitbucketServerConfigsResponse
            Core.<$> (o Core..:? "bitbucketServerConfigs")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListBitbucketServerConfigsResponse
  where
  toJSON ListBitbucketServerConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitbucketServerConfigs" Core..=)
              Core.<$> bitbucketServerConfigs,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | RPC response object returned by the ListBitbucketServerRepositories RPC method.
--
-- /See:/ 'newListBitbucketServerRepositoriesResponse' smart constructor.
data ListBitbucketServerRepositoriesResponse = ListBitbucketServerRepositoriesResponse
  { -- | List of Bitbucket Server repositories.
    bitbucketServerRepositories :: (Core.Maybe [BitbucketServerRepository]),
    -- | A token that can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBitbucketServerRepositoriesResponse' with the minimum fields required to make a request.
newListBitbucketServerRepositoriesResponse ::
  ListBitbucketServerRepositoriesResponse
newListBitbucketServerRepositoriesResponse =
  ListBitbucketServerRepositoriesResponse
    { bitbucketServerRepositories = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    ListBitbucketServerRepositoriesResponse
  where
  parseJSON =
    Core.withObject
      "ListBitbucketServerRepositoriesResponse"
      ( \o ->
          ListBitbucketServerRepositoriesResponse
            Core.<$> (o Core..:? "bitbucketServerRepositories")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    ListBitbucketServerRepositoriesResponse
  where
  toJSON ListBitbucketServerRepositoriesResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("bitbucketServerRepositories" Core..=)
              Core.<$> bitbucketServerRepositories,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | Response containing existing @BuildTriggers@.
--
-- /See:/ 'newListBuildTriggersResponse' smart constructor.
data ListBuildTriggersResponse = ListBuildTriggersResponse
  { -- | Token to receive the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | @BuildTriggers@ for the project, sorted by @create_time@ descending.
    triggers :: (Core.Maybe [BuildTrigger])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBuildTriggersResponse' with the minimum fields required to make a request.
newListBuildTriggersResponse ::
  ListBuildTriggersResponse
newListBuildTriggersResponse =
  ListBuildTriggersResponse
    { nextPageToken = Core.Nothing,
      triggers = Core.Nothing
    }

instance Core.FromJSON ListBuildTriggersResponse where
  parseJSON =
    Core.withObject
      "ListBuildTriggersResponse"
      ( \o ->
          ListBuildTriggersResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "triggers")
      )

instance Core.ToJSON ListBuildTriggersResponse where
  toJSON ListBuildTriggersResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("triggers" Core..=) Core.<$> triggers
          ]
      )

-- | Response including listed builds.
--
-- /See:/ 'newListBuildsResponse' smart constructor.
data ListBuildsResponse = ListBuildsResponse
  { -- | Builds will be sorted by @create_time@, descending.
    builds :: (Core.Maybe [Build]),
    -- | Token to receive the next page of results. This will be absent if the end of the response list has been reached.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListBuildsResponse' with the minimum fields required to make a request.
newListBuildsResponse ::
  ListBuildsResponse
newListBuildsResponse =
  ListBuildsResponse {builds = Core.Nothing, nextPageToken = Core.Nothing}

instance Core.FromJSON ListBuildsResponse where
  parseJSON =
    Core.withObject
      "ListBuildsResponse"
      ( \o ->
          ListBuildsResponse
            Core.<$> (o Core..:? "builds")
            Core.<*> (o Core..:? "nextPageToken")
      )

instance Core.ToJSON ListBuildsResponse where
  toJSON ListBuildsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("builds" Core..=) Core.<$> builds,
            ("nextPageToken" Core..=) Core.<$> nextPageToken
          ]
      )

-- | RPC response object returned by ListGithubEnterpriseConfigs RPC method.
--
-- /See:/ 'newListGithubEnterpriseConfigsResponse' smart constructor.
newtype ListGithubEnterpriseConfigsResponse = ListGithubEnterpriseConfigsResponse
  { -- | A list of GitHubEnterpriseConfigs
    configs :: (Core.Maybe [GitHubEnterpriseConfig])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListGithubEnterpriseConfigsResponse' with the minimum fields required to make a request.
newListGithubEnterpriseConfigsResponse ::
  ListGithubEnterpriseConfigsResponse
newListGithubEnterpriseConfigsResponse =
  ListGithubEnterpriseConfigsResponse {configs = Core.Nothing}

instance
  Core.FromJSON
    ListGithubEnterpriseConfigsResponse
  where
  parseJSON =
    Core.withObject
      "ListGithubEnterpriseConfigsResponse"
      ( \o ->
          ListGithubEnterpriseConfigsResponse
            Core.<$> (o Core..:? "configs")
      )

instance
  Core.ToJSON
    ListGithubEnterpriseConfigsResponse
  where
  toJSON ListGithubEnterpriseConfigsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("configs" Core..=) Core.<$> configs]
      )

-- | Response containing existing @WorkerPools@.
--
-- /See:/ 'newListWorkerPoolsResponse' smart constructor.
data ListWorkerPoolsResponse = ListWorkerPoolsResponse
  { -- | Continuation token used to page through large result sets. Provide this value in a subsequent ListWorkerPoolsRequest to return the next page of results.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | @WorkerPools@ for the specified project.
    workerPools :: (Core.Maybe [WorkerPool])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListWorkerPoolsResponse' with the minimum fields required to make a request.
newListWorkerPoolsResponse ::
  ListWorkerPoolsResponse
newListWorkerPoolsResponse =
  ListWorkerPoolsResponse
    { nextPageToken = Core.Nothing,
      workerPools = Core.Nothing
    }

instance Core.FromJSON ListWorkerPoolsResponse where
  parseJSON =
    Core.withObject
      "ListWorkerPoolsResponse"
      ( \o ->
          ListWorkerPoolsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "workerPools")
      )

instance Core.ToJSON ListWorkerPoolsResponse where
  toJSON ListWorkerPoolsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("workerPools" Core..=) Core.<$> workerPools
          ]
      )

-- | Defines the network configuration for the pool.
--
-- /See:/ 'newNetworkConfig' smart constructor.
data NetworkConfig = NetworkConfig
  { -- | Option to configure network egress for the workers.
    egressOption :: (Core.Maybe NetworkConfig_EgressOption),
    -- | Required. Immutable. The network definition that the workers are peered to. If this section is left empty, the workers will be peered to @WorkerPool.project_id@ on the service producer network. Must be in the format @projects\/{project}\/global\/networks\/{network}@, where @{project}@ is a project number, such as @12345@, and @{network}@ is the name of a VPC network in the project. See <https://cloud.google.com/build/docs/private-pools/set-up-private-pool-environment Understanding network configuration options>
    peeredNetwork :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NetworkConfig' with the minimum fields required to make a request.
newNetworkConfig ::
  NetworkConfig
newNetworkConfig =
  NetworkConfig {egressOption = Core.Nothing, peeredNetwork = Core.Nothing}

instance Core.FromJSON NetworkConfig where
  parseJSON =
    Core.withObject
      "NetworkConfig"
      ( \o ->
          NetworkConfig
            Core.<$> (o Core..:? "egressOption")
            Core.<*> (o Core..:? "peeredNetwork")
      )

instance Core.ToJSON NetworkConfig where
  toJSON NetworkConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("egressOption" Core..=) Core.<$> egressOption,
            ("peeredNetwork" Core..=) Core.<$> peeredNetwork
          ]
      )

-- | Notification is the container which holds the data that is relevant to this particular notification.
--
-- /See:/ 'newNotification' smart constructor.
data Notification = Notification
  { -- | The filter string to use for notification filtering. Currently, this is assumed to be a CEL program. See https:\/\/opensource.google\/projects\/cel for more.
    filter :: (Core.Maybe Core.Text),
    -- | Configuration for HTTP delivery.
    httpDelivery :: (Core.Maybe HTTPDelivery),
    -- | Configuration for Slack delivery.
    slackDelivery :: (Core.Maybe SlackDelivery),
    -- | Configuration for SMTP (email) delivery.
    smtpDelivery :: (Core.Maybe SMTPDelivery),
    -- | Escape hatch for users to supply custom delivery configs.
    structDelivery :: (Core.Maybe Notification_StructDelivery)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification' with the minimum fields required to make a request.
newNotification ::
  Notification
newNotification =
  Notification
    { filter = Core.Nothing,
      httpDelivery = Core.Nothing,
      slackDelivery = Core.Nothing,
      smtpDelivery = Core.Nothing,
      structDelivery = Core.Nothing
    }

instance Core.FromJSON Notification where
  parseJSON =
    Core.withObject
      "Notification"
      ( \o ->
          Notification
            Core.<$> (o Core..:? "filter")
            Core.<*> (o Core..:? "httpDelivery")
            Core.<*> (o Core..:? "slackDelivery")
            Core.<*> (o Core..:? "smtpDelivery")
            Core.<*> (o Core..:? "structDelivery")
      )

instance Core.ToJSON Notification where
  toJSON Notification {..} =
    Core.object
      ( Core.catMaybes
          [ ("filter" Core..=) Core.<$> filter,
            ("httpDelivery" Core..=) Core.<$> httpDelivery,
            ("slackDelivery" Core..=) Core.<$> slackDelivery,
            ("smtpDelivery" Core..=) Core.<$> smtpDelivery,
            ("structDelivery" Core..=) Core.<$> structDelivery
          ]
      )

-- | Escape hatch for users to supply custom delivery configs.
--
-- /See:/ 'newNotification_StructDelivery' smart constructor.
newtype Notification_StructDelivery = Notification_StructDelivery
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Notification_StructDelivery' with the minimum fields required to make a request.
newNotification_StructDelivery ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Notification_StructDelivery
newNotification_StructDelivery additional =
  Notification_StructDelivery {additional = additional}

instance Core.FromJSON Notification_StructDelivery where
  parseJSON =
    Core.withObject
      "Notification_StructDelivery"
      ( \o ->
          Notification_StructDelivery
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Notification_StructDelivery where
  toJSON Notification_StructDelivery {..} =
    Core.toJSON additional

-- | NotifierConfig is the top-level configuration message.
--
-- /See:/ 'newNotifierConfig' smart constructor.
data NotifierConfig = NotifierConfig
  { -- | The API version of this configuration format.
    apiVersion :: (Core.Maybe Core.Text),
    -- | The type of notifier to use (e.g. SMTPNotifier).
    kind :: (Core.Maybe Core.Text),
    -- | Metadata for referring to\/handling\/deploying this notifier.
    metadata :: (Core.Maybe NotifierMetadata),
    -- | The actual configuration for this notifier.
    spec :: (Core.Maybe NotifierSpec)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotifierConfig' with the minimum fields required to make a request.
newNotifierConfig ::
  NotifierConfig
newNotifierConfig =
  NotifierConfig
    { apiVersion = Core.Nothing,
      kind = Core.Nothing,
      metadata = Core.Nothing,
      spec = Core.Nothing
    }

instance Core.FromJSON NotifierConfig where
  parseJSON =
    Core.withObject
      "NotifierConfig"
      ( \o ->
          NotifierConfig
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "kind")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "spec")
      )

instance Core.ToJSON NotifierConfig where
  toJSON NotifierConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("kind" Core..=) Core.<$> kind,
            ("metadata" Core..=) Core.<$> metadata,
            ("spec" Core..=) Core.<$> spec
          ]
      )

-- | NotifierMetadata contains the data which can be used to reference or describe this notifier.
--
-- /See:/ 'newNotifierMetadata' smart constructor.
data NotifierMetadata = NotifierMetadata
  { -- | The human-readable and user-given name for the notifier. For example: \"repo-merge-email-notifier\".
    name :: (Core.Maybe Core.Text),
    -- | The string representing the name and version of notifier to deploy. Expected to be of the form of \"\/:\". For example: \"gcr.io\/my-project\/notifiers\/smtp:1.2.34\".
    notifier :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotifierMetadata' with the minimum fields required to make a request.
newNotifierMetadata ::
  NotifierMetadata
newNotifierMetadata =
  NotifierMetadata {name = Core.Nothing, notifier = Core.Nothing}

instance Core.FromJSON NotifierMetadata where
  parseJSON =
    Core.withObject
      "NotifierMetadata"
      ( \o ->
          NotifierMetadata
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "notifier")
      )

instance Core.ToJSON NotifierMetadata where
  toJSON NotifierMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("notifier" Core..=) Core.<$> notifier
          ]
      )

-- | NotifierSecret is the container that maps a secret name (reference) to its Google Cloud Secret Manager resource path.
--
-- /See:/ 'newNotifierSecret' smart constructor.
data NotifierSecret = NotifierSecret
  { -- | Name is the local name of the secret, such as the verbatim string \"my-smtp-password\".
    name :: (Core.Maybe Core.Text),
    -- | Value is interpreted to be a resource path for fetching the actual (versioned) secret data for this secret. For example, this would be a Google Cloud Secret Manager secret version resource path like: \"projects\/my-project\/secrets\/my-secret\/versions\/latest\".
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotifierSecret' with the minimum fields required to make a request.
newNotifierSecret ::
  NotifierSecret
newNotifierSecret = NotifierSecret {name = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON NotifierSecret where
  parseJSON =
    Core.withObject
      "NotifierSecret"
      ( \o ->
          NotifierSecret
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON NotifierSecret where
  toJSON NotifierSecret {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )

-- | NotifierSecretRef contains the reference to a secret stored in the corresponding NotifierSpec.
--
-- /See:/ 'newNotifierSecretRef' smart constructor.
newtype NotifierSecretRef = NotifierSecretRef
  { -- | The value of @secret_ref@ should be a @name@ that is registered in a @Secret@ in the @secrets@ list of the @Spec@.
    secretRef :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotifierSecretRef' with the minimum fields required to make a request.
newNotifierSecretRef ::
  NotifierSecretRef
newNotifierSecretRef = NotifierSecretRef {secretRef = Core.Nothing}

instance Core.FromJSON NotifierSecretRef where
  parseJSON =
    Core.withObject
      "NotifierSecretRef"
      ( \o ->
          NotifierSecretRef Core.<$> (o Core..:? "secretRef")
      )

instance Core.ToJSON NotifierSecretRef where
  toJSON NotifierSecretRef {..} =
    Core.object
      ( Core.catMaybes
          [("secretRef" Core..=) Core.<$> secretRef]
      )

-- | NotifierSpec is the configuration container for notifications.
--
-- /See:/ 'newNotifierSpec' smart constructor.
data NotifierSpec = NotifierSpec
  { -- | The configuration of this particular notifier.
    notification :: (Core.Maybe Notification),
    -- | Configurations for secret resources used by this particular notifier.
    secrets :: (Core.Maybe [NotifierSecret])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'NotifierSpec' with the minimum fields required to make a request.
newNotifierSpec ::
  NotifierSpec
newNotifierSpec =
  NotifierSpec {notification = Core.Nothing, secrets = Core.Nothing}

instance Core.FromJSON NotifierSpec where
  parseJSON =
    Core.withObject
      "NotifierSpec"
      ( \o ->
          NotifierSpec
            Core.<$> (o Core..:? "notification")
            Core.<*> (o Core..:? "secrets")
      )

instance Core.ToJSON NotifierSpec where
  toJSON NotifierSpec {..} =
    Core.object
      ( Core.catMaybes
          [ ("notification" Core..=) Core.<$> notification,
            ("secrets" Core..=) Core.<$> secrets
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newOperation' smart constructor.
data Operation = Operation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe Status),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe Operation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe Operation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation' with the minimum fields required to make a request.
newOperation ::
  Operation
newOperation =
  Operation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON Operation where
  parseJSON =
    Core.withObject
      "Operation"
      ( \o ->
          Operation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON Operation where
  toJSON Operation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newOperation_Metadata' smart constructor.
newtype Operation_Metadata = Operation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Metadata' with the minimum fields required to make a request.
newOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Metadata
newOperation_Metadata additional = Operation_Metadata {additional = additional}

instance Core.FromJSON Operation_Metadata where
  parseJSON =
    Core.withObject
      "Operation_Metadata"
      ( \o ->
          Operation_Metadata Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Metadata where
  toJSON Operation_Metadata {..} =
    Core.toJSON additional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newOperation_Response' smart constructor.
newtype Operation_Response = Operation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Operation_Response' with the minimum fields required to make a request.
newOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Operation_Response
newOperation_Response additional = Operation_Response {additional = additional}

instance Core.FromJSON Operation_Response where
  parseJSON =
    Core.withObject
      "Operation_Response"
      ( \o ->
          Operation_Response Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Operation_Response where
  toJSON Operation_Response {..} =
    Core.toJSON additional

-- | Represents the metadata of the long-running operation.
--
-- /See:/ 'newOperationMetadata' smart constructor.
data OperationMetadata = OperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    cancelRequested :: (Core.Maybe Core.Bool),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Human-readable status of the operation, if any.
    statusDetail :: (Core.Maybe Core.Text),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OperationMetadata' with the minimum fields required to make a request.
newOperationMetadata ::
  OperationMetadata
newOperationMetadata =
  OperationMetadata
    { apiVersion = Core.Nothing,
      cancelRequested = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      statusDetail = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance Core.FromJSON OperationMetadata where
  parseJSON =
    Core.withObject
      "OperationMetadata"
      ( \o ->
          OperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "cancelRequested")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "statusDetail")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance Core.ToJSON OperationMetadata where
  toJSON OperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("cancelRequested" Core..=) Core.<$> cancelRequested,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("statusDetail" Core..=) Core.<$> statusDetail,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | Details about how a build should be executed on a @WorkerPool@. See <https://cloud.google.com/build/docs/private-pools/run-builds-in-private-pool running builds in a private pool> for more information.
--
-- /See:/ 'newPoolOption' smart constructor.
newtype PoolOption = PoolOption
  { -- | The @WorkerPool@ resource to execute the build on. You must have @cloudbuild.workerpools.use@ on the project hosting the WorkerPool. Format projects\/{project}\/locations\/{location}\/workerPools\/{workerPoolId}
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PoolOption' with the minimum fields required to make a request.
newPoolOption ::
  PoolOption
newPoolOption = PoolOption {name = Core.Nothing}

instance Core.FromJSON PoolOption where
  parseJSON =
    Core.withObject
      "PoolOption"
      (\o -> PoolOption Core.<$> (o Core..:? "name"))

instance Core.ToJSON PoolOption where
  toJSON PoolOption {..} =
    Core.object
      (Core.catMaybes [("name" Core..=) Core.<$> name])

-- | Configuration for a V1 @PrivatePool@.
--
-- /See:/ 'newPrivatePoolV1Config' smart constructor.
data PrivatePoolV1Config = PrivatePoolV1Config
  { -- | Network configuration for the pool.
    networkConfig :: (Core.Maybe NetworkConfig),
    -- | Machine configuration for the workers in the pool.
    workerConfig :: (Core.Maybe WorkerConfig)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PrivatePoolV1Config' with the minimum fields required to make a request.
newPrivatePoolV1Config ::
  PrivatePoolV1Config
newPrivatePoolV1Config =
  PrivatePoolV1Config
    { networkConfig = Core.Nothing,
      workerConfig = Core.Nothing
    }

instance Core.FromJSON PrivatePoolV1Config where
  parseJSON =
    Core.withObject
      "PrivatePoolV1Config"
      ( \o ->
          PrivatePoolV1Config
            Core.<$> (o Core..:? "networkConfig")
            Core.<*> (o Core..:? "workerConfig")
      )

instance Core.ToJSON PrivatePoolV1Config where
  toJSON PrivatePoolV1Config {..} =
    Core.object
      ( Core.catMaybes
          [ ("networkConfig" Core..=) Core.<$> networkConfig,
            ("workerConfig" Core..=) Core.<$> workerConfig
          ]
      )

-- | Metadata for @ProcessAppManifestCallback@ operation.
--
-- /See:/ 'newProcessAppManifestCallbackOperationMetadata' smart constructor.
data ProcessAppManifestCallbackOperationMetadata = ProcessAppManifestCallbackOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitHubEnterprise to be created. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProcessAppManifestCallbackOperationMetadata' with the minimum fields required to make a request.
newProcessAppManifestCallbackOperationMetadata ::
  ProcessAppManifestCallbackOperationMetadata
newProcessAppManifestCallbackOperationMetadata =
  ProcessAppManifestCallbackOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing
    }

instance
  Core.FromJSON
    ProcessAppManifestCallbackOperationMetadata
  where
  parseJSON =
    Core.withObject
      "ProcessAppManifestCallbackOperationMetadata"
      ( \o ->
          ProcessAppManifestCallbackOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "githubEnterpriseConfig")
      )

instance
  Core.ToJSON
    ProcessAppManifestCallbackOperationMetadata
  where
  toJSON
    ProcessAppManifestCallbackOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime,
              ("githubEnterpriseConfig" Core..=)
                Core.<$> githubEnterpriseConfig
            ]
        )

-- | PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub\/Sub message is published.
--
-- /See:/ 'newPubsubConfig' smart constructor.
data PubsubConfig = PubsubConfig
  { -- | Service account that will make the push request.
    serviceAccountEmail :: (Core.Maybe Core.Text),
    -- | Potential issues with the underlying Pub\/Sub subscription configuration. Only populated on get requests.
    state :: (Core.Maybe PubsubConfig_State),
    -- | Output only. Name of the subscription. Format is @projects\/{project}\/subscriptions\/{subscription}@.
    subscription :: (Core.Maybe Core.Text),
    -- | The name of the topic from which this subscription is receiving messages. Format is @projects\/{project}\/topics\/{topic}@.
    topic :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PubsubConfig' with the minimum fields required to make a request.
newPubsubConfig ::
  PubsubConfig
newPubsubConfig =
  PubsubConfig
    { serviceAccountEmail = Core.Nothing,
      state = Core.Nothing,
      subscription = Core.Nothing,
      topic = Core.Nothing
    }

instance Core.FromJSON PubsubConfig where
  parseJSON =
    Core.withObject
      "PubsubConfig"
      ( \o ->
          PubsubConfig
            Core.<$> (o Core..:? "serviceAccountEmail")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "subscription")
            Core.<*> (o Core..:? "topic")
      )

instance Core.ToJSON PubsubConfig where
  toJSON PubsubConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("serviceAccountEmail" Core..=)
              Core.<$> serviceAccountEmail,
            ("state" Core..=) Core.<$> state,
            ("subscription" Core..=) Core.<$> subscription,
            ("topic" Core..=) Core.<$> topic
          ]
      )

-- | PullRequestFilter contains filter properties for matching GitHub Pull Requests.
--
-- /See:/ 'newPullRequestFilter' smart constructor.
data PullRequestFilter = PullRequestFilter
  { -- | Regex of branches to match. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    branch :: (Core.Maybe Core.Text),
    -- | Configure builds to run whether a repository owner or collaborator need to comment @\/gcbrun@.
    commentControl :: (Core.Maybe PullRequestFilter_CommentControl),
    -- | If true, branches that do NOT match the git_ref will trigger a build.
    invertRegex :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PullRequestFilter' with the minimum fields required to make a request.
newPullRequestFilter ::
  PullRequestFilter
newPullRequestFilter =
  PullRequestFilter
    { branch = Core.Nothing,
      commentControl = Core.Nothing,
      invertRegex = Core.Nothing
    }

instance Core.FromJSON PullRequestFilter where
  parseJSON =
    Core.withObject
      "PullRequestFilter"
      ( \o ->
          PullRequestFilter
            Core.<$> (o Core..:? "branch")
            Core.<*> (o Core..:? "commentControl")
            Core.<*> (o Core..:? "invertRegex")
      )

instance Core.ToJSON PullRequestFilter where
  toJSON PullRequestFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("branch" Core..=) Core.<$> branch,
            ("commentControl" Core..=) Core.<$> commentControl,
            ("invertRegex" Core..=) Core.<$> invertRegex
          ]
      )

-- | Push contains filter properties for matching GitHub git pushes.
--
-- /See:/ 'newPushFilter' smart constructor.
data PushFilter = PushFilter
  { -- | Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    branch :: (Core.Maybe Core.Text),
    -- | When true, only trigger a build if the revision regex does NOT match the git_ref regex.
    invertRegex :: (Core.Maybe Core.Bool),
    -- | Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    tag :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PushFilter' with the minimum fields required to make a request.
newPushFilter ::
  PushFilter
newPushFilter =
  PushFilter
    { branch = Core.Nothing,
      invertRegex = Core.Nothing,
      tag = Core.Nothing
    }

instance Core.FromJSON PushFilter where
  parseJSON =
    Core.withObject
      "PushFilter"
      ( \o ->
          PushFilter
            Core.<$> (o Core..:? "branch")
            Core.<*> (o Core..:? "invertRegex")
            Core.<*> (o Core..:? "tag")
      )

instance Core.ToJSON PushFilter where
  toJSON PushFilter {..} =
    Core.object
      ( Core.catMaybes
          [ ("branch" Core..=) Core.<$> branch,
            ("invertRegex" Core..=) Core.<$> invertRegex,
            ("tag" Core..=) Core.<$> tag
          ]
      )

-- | ReceiveTriggerWebhookResponse [Experimental] is the response object for the ReceiveTriggerWebhook method.
--
-- /See:/ 'newReceiveTriggerWebhookResponse' smart constructor.
data ReceiveTriggerWebhookResponse = ReceiveTriggerWebhookResponse
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ReceiveTriggerWebhookResponse' with the minimum fields required to make a request.
newReceiveTriggerWebhookResponse ::
  ReceiveTriggerWebhookResponse
newReceiveTriggerWebhookResponse = ReceiveTriggerWebhookResponse

instance Core.FromJSON ReceiveTriggerWebhookResponse where
  parseJSON =
    Core.withObject
      "ReceiveTriggerWebhookResponse"
      (\o -> Core.pure ReceiveTriggerWebhookResponse)

instance Core.ToJSON ReceiveTriggerWebhookResponse where
  toJSON = Core.const Core.emptyObject

-- | RPC request object accepted by RemoveBitbucketServerConnectedRepository RPC method.
--
-- /See:/ 'newRemoveBitbucketServerConnectedRepositoryRequest' smart constructor.
newtype RemoveBitbucketServerConnectedRepositoryRequest = RemoveBitbucketServerConnectedRepositoryRequest
  { -- | The connected repository to remove.
    connectedRepository :: (Core.Maybe BitbucketServerRepositoryId)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoveBitbucketServerConnectedRepositoryRequest' with the minimum fields required to make a request.
newRemoveBitbucketServerConnectedRepositoryRequest ::
  RemoveBitbucketServerConnectedRepositoryRequest
newRemoveBitbucketServerConnectedRepositoryRequest =
  RemoveBitbucketServerConnectedRepositoryRequest
    { connectedRepository = Core.Nothing
    }

instance
  Core.FromJSON
    RemoveBitbucketServerConnectedRepositoryRequest
  where
  parseJSON =
    Core.withObject
      "RemoveBitbucketServerConnectedRepositoryRequest"
      ( \o ->
          RemoveBitbucketServerConnectedRepositoryRequest
            Core.<$> (o Core..:? "connectedRepository")
      )

instance
  Core.ToJSON
    RemoveBitbucketServerConnectedRepositoryRequest
  where
  toJSON
    RemoveBitbucketServerConnectedRepositoryRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("connectedRepository" Core..=)
                Core.<$> connectedRepository
            ]
        )

-- | Location of the source in a Google Cloud Source Repository.
--
-- /See:/ 'newRepoSource' smart constructor.
data RepoSource = RepoSource
  { -- | Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    branchName :: (Core.Maybe Core.Text),
    -- | Explicit commit SHA to build.
    commitSha :: (Core.Maybe Core.Text),
    -- | Directory, relative to the source root, in which to run the build. This must be a relative path. If a step\'s @dir@ is specified and is an absolute path, this value is ignored for that step\'s execution.
    dir :: (Core.Maybe Core.Text),
    -- | Only trigger a build if the revision regex does NOT match the revision regex.
    invertRegex :: (Core.Maybe Core.Bool),
    -- | ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
    projectId :: (Core.Maybe Core.Text),
    -- | Name of the Cloud Source Repository.
    repoName :: (Core.Maybe Core.Text),
    -- | Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
    substitutions :: (Core.Maybe RepoSource_Substitutions),
    -- | Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https:\/\/github.com\/google\/re2\/wiki\/Syntax
    tagName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepoSource' with the minimum fields required to make a request.
newRepoSource ::
  RepoSource
newRepoSource =
  RepoSource
    { branchName = Core.Nothing,
      commitSha = Core.Nothing,
      dir = Core.Nothing,
      invertRegex = Core.Nothing,
      projectId = Core.Nothing,
      repoName = Core.Nothing,
      substitutions = Core.Nothing,
      tagName = Core.Nothing
    }

instance Core.FromJSON RepoSource where
  parseJSON =
    Core.withObject
      "RepoSource"
      ( \o ->
          RepoSource
            Core.<$> (o Core..:? "branchName")
            Core.<*> (o Core..:? "commitSha")
            Core.<*> (o Core..:? "dir")
            Core.<*> (o Core..:? "invertRegex")
            Core.<*> (o Core..:? "projectId")
            Core.<*> (o Core..:? "repoName")
            Core.<*> (o Core..:? "substitutions")
            Core.<*> (o Core..:? "tagName")
      )

instance Core.ToJSON RepoSource where
  toJSON RepoSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("branchName" Core..=) Core.<$> branchName,
            ("commitSha" Core..=) Core.<$> commitSha,
            ("dir" Core..=) Core.<$> dir,
            ("invertRegex" Core..=) Core.<$> invertRegex,
            ("projectId" Core..=) Core.<$> projectId,
            ("repoName" Core..=) Core.<$> repoName,
            ("substitutions" Core..=) Core.<$> substitutions,
            ("tagName" Core..=) Core.<$> tagName
          ]
      )

-- | Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
--
-- /See:/ 'newRepoSource_Substitutions' smart constructor.
newtype RepoSource_Substitutions = RepoSource_Substitutions
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RepoSource_Substitutions' with the minimum fields required to make a request.
newRepoSource_Substitutions ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  RepoSource_Substitutions
newRepoSource_Substitutions additional =
  RepoSource_Substitutions {additional = additional}

instance Core.FromJSON RepoSource_Substitutions where
  parseJSON =
    Core.withObject
      "RepoSource_Substitutions"
      ( \o ->
          RepoSource_Substitutions
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON RepoSource_Substitutions where
  toJSON RepoSource_Substitutions {..} =
    Core.toJSON additional

-- | Artifacts created by the build pipeline.
--
-- /See:/ 'newResults' smart constructor.
data Results = Results
  { -- | Path to the artifact manifest. Only populated when artifacts are uploaded.
    artifactManifest :: (Core.Maybe Core.Text),
    -- | Time to push all non-container artifacts.
    artifactTiming :: (Core.Maybe TimeSpan),
    -- | List of build step digests, in the order corresponding to build step indices.
    buildStepImages :: (Core.Maybe [Core.Text]),
    -- | List of build step outputs, produced by builder images, in the order corresponding to build step indices. <https://cloud.google.com/cloud-build/docs/cloud-builders Cloud Builders> can produce this output by writing to @$BUILDER_OUTPUT\/output@. Only the first 4KB of data is stored.
    buildStepOutputs :: (Core.Maybe [Core.Base64]),
    -- | Container images that were built as a part of the build.
    images :: (Core.Maybe [BuiltImage]),
    -- | Number of artifacts uploaded. Only populated when artifacts are uploaded.
    numArtifacts :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Results' with the minimum fields required to make a request.
newResults ::
  Results
newResults =
  Results
    { artifactManifest = Core.Nothing,
      artifactTiming = Core.Nothing,
      buildStepImages = Core.Nothing,
      buildStepOutputs = Core.Nothing,
      images = Core.Nothing,
      numArtifacts = Core.Nothing
    }

instance Core.FromJSON Results where
  parseJSON =
    Core.withObject
      "Results"
      ( \o ->
          Results
            Core.<$> (o Core..:? "artifactManifest")
            Core.<*> (o Core..:? "artifactTiming")
            Core.<*> (o Core..:? "buildStepImages")
            Core.<*> (o Core..:? "buildStepOutputs")
            Core.<*> (o Core..:? "images")
            Core.<*> ( o Core..:? "numArtifacts"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Results where
  toJSON Results {..} =
    Core.object
      ( Core.catMaybes
          [ ("artifactManifest" Core..=)
              Core.<$> artifactManifest,
            ("artifactTiming" Core..=) Core.<$> artifactTiming,
            ("buildStepImages" Core..=) Core.<$> buildStepImages,
            ("buildStepOutputs" Core..=)
              Core.<$> buildStepOutputs,
            ("images" Core..=) Core.<$> images,
            ("numArtifacts" Core..=) Core.. Core.AsText
              Core.<$> numArtifacts
          ]
      )

-- | Specifies a build to retry.
--
-- /See:/ 'newRetryBuildRequest' smart constructor.
data RetryBuildRequest = RetryBuildRequest
  { -- | Required. Build ID of the original build.
    id :: (Core.Maybe Core.Text),
    -- | The name of the @Build@ to retry. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    name :: (Core.Maybe Core.Text),
    -- | Required. ID of the project.
    projectId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RetryBuildRequest' with the minimum fields required to make a request.
newRetryBuildRequest ::
  RetryBuildRequest
newRetryBuildRequest =
  RetryBuildRequest
    { id = Core.Nothing,
      name = Core.Nothing,
      projectId = Core.Nothing
    }

instance Core.FromJSON RetryBuildRequest where
  parseJSON =
    Core.withObject
      "RetryBuildRequest"
      ( \o ->
          RetryBuildRequest
            Core.<$> (o Core..:? "id")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "projectId")
      )

instance Core.ToJSON RetryBuildRequest where
  toJSON RetryBuildRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("id" Core..=) Core.<$> id,
            ("name" Core..=) Core.<$> name,
            ("projectId" Core..=) Core.<$> projectId
          ]
      )

-- | Specifies a build trigger to run and the source to use.
--
-- /See:/ 'newRunBuildTriggerRequest' smart constructor.
data RunBuildTriggerRequest = RunBuildTriggerRequest
  { -- | Required. ID of the project.
    projectId :: (Core.Maybe Core.Text),
    -- | Source to build against this trigger. Branch and tag names cannot consist of regular expressions.
    source :: (Core.Maybe RepoSource),
    -- | Required. ID of the trigger.
    triggerId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunBuildTriggerRequest' with the minimum fields required to make a request.
newRunBuildTriggerRequest ::
  RunBuildTriggerRequest
newRunBuildTriggerRequest =
  RunBuildTriggerRequest
    { projectId = Core.Nothing,
      source = Core.Nothing,
      triggerId = Core.Nothing
    }

instance Core.FromJSON RunBuildTriggerRequest where
  parseJSON =
    Core.withObject
      "RunBuildTriggerRequest"
      ( \o ->
          RunBuildTriggerRequest
            Core.<$> (o Core..:? "projectId")
            Core.<*> (o Core..:? "source")
            Core.<*> (o Core..:? "triggerId")
      )

instance Core.ToJSON RunBuildTriggerRequest where
  toJSON RunBuildTriggerRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("projectId" Core..=) Core.<$> projectId,
            ("source" Core..=) Core.<$> source,
            ("triggerId" Core..=) Core.<$> triggerId
          ]
      )

-- | Represents the custom metadata of the RunWorkflow long-running operation.
--
-- /See:/ 'newRunWorkflowCustomOperationMetadata' smart constructor.
data RunWorkflowCustomOperationMetadata = RunWorkflowCustomOperationMetadata
  { -- | Output only. API version used to start the operation.
    apiVersion :: (Core.Maybe Core.Text),
    -- | Output only. The time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The time the operation finished running.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Output only. ID of the pipeline run created by RunWorkflow.
    pipelineRunId :: (Core.Maybe Core.Text),
    -- | Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to @Code.CANCELLED@.
    requestedCancellation :: (Core.Maybe Core.Bool),
    -- | Output only. Server-defined resource path for the target of the operation.
    target :: (Core.Maybe Core.Text),
    -- | Output only. Name of the verb executed by the operation.
    verb :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunWorkflowCustomOperationMetadata' with the minimum fields required to make a request.
newRunWorkflowCustomOperationMetadata ::
  RunWorkflowCustomOperationMetadata
newRunWorkflowCustomOperationMetadata =
  RunWorkflowCustomOperationMetadata
    { apiVersion = Core.Nothing,
      createTime = Core.Nothing,
      endTime = Core.Nothing,
      pipelineRunId = Core.Nothing,
      requestedCancellation = Core.Nothing,
      target = Core.Nothing,
      verb = Core.Nothing
    }

instance
  Core.FromJSON
    RunWorkflowCustomOperationMetadata
  where
  parseJSON =
    Core.withObject
      "RunWorkflowCustomOperationMetadata"
      ( \o ->
          RunWorkflowCustomOperationMetadata
            Core.<$> (o Core..:? "apiVersion")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "endTime")
            Core.<*> (o Core..:? "pipelineRunId")
            Core.<*> (o Core..:? "requestedCancellation")
            Core.<*> (o Core..:? "target")
            Core.<*> (o Core..:? "verb")
      )

instance
  Core.ToJSON
    RunWorkflowCustomOperationMetadata
  where
  toJSON RunWorkflowCustomOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("apiVersion" Core..=) Core.<$> apiVersion,
            ("createTime" Core..=) Core.<$> createTime,
            ("endTime" Core..=) Core.<$> endTime,
            ("pipelineRunId" Core..=) Core.<$> pipelineRunId,
            ("requestedCancellation" Core..=)
              Core.<$> requestedCancellation,
            ("target" Core..=) Core.<$> target,
            ("verb" Core..=) Core.<$> verb
          ]
      )

-- | SMTPDelivery is the delivery configuration for an SMTP (email) notification.
--
-- /See:/ 'newSMTPDelivery' smart constructor.
data SMTPDelivery = SMTPDelivery
  { -- | This is the SMTP account\/email that appears in the @From:@ of the email. If empty, it is assumed to be sender.
    fromAddress :: (Core.Maybe Core.Text),
    -- | The SMTP sender\'s password.
    password :: (Core.Maybe NotifierSecretRef),
    -- | The SMTP port of the server.
    port :: (Core.Maybe Core.Text),
    -- | This is the list of addresses to which we send the email (i.e. in the @To:@ of the email).
    recipientAddresses :: (Core.Maybe [Core.Text]),
    -- | This is the SMTP account\/email that is used to send the message.
    senderAddress :: (Core.Maybe Core.Text),
    -- | The address of the SMTP server.
    server :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SMTPDelivery' with the minimum fields required to make a request.
newSMTPDelivery ::
  SMTPDelivery
newSMTPDelivery =
  SMTPDelivery
    { fromAddress = Core.Nothing,
      password = Core.Nothing,
      port = Core.Nothing,
      recipientAddresses = Core.Nothing,
      senderAddress = Core.Nothing,
      server = Core.Nothing
    }

instance Core.FromJSON SMTPDelivery where
  parseJSON =
    Core.withObject
      "SMTPDelivery"
      ( \o ->
          SMTPDelivery
            Core.<$> (o Core..:? "fromAddress")
            Core.<*> (o Core..:? "password")
            Core.<*> (o Core..:? "port")
            Core.<*> (o Core..:? "recipientAddresses")
            Core.<*> (o Core..:? "senderAddress")
            Core.<*> (o Core..:? "server")
      )

instance Core.ToJSON SMTPDelivery where
  toJSON SMTPDelivery {..} =
    Core.object
      ( Core.catMaybes
          [ ("fromAddress" Core..=) Core.<$> fromAddress,
            ("password" Core..=) Core.<$> password,
            ("port" Core..=) Core.<$> port,
            ("recipientAddresses" Core..=)
              Core.<$> recipientAddresses,
            ("senderAddress" Core..=) Core.<$> senderAddress,
            ("server" Core..=) Core.<$> server
          ]
      )

-- | Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use @kmsKeyName@ with @available_secrets@ instead of using @kmsKeyName@ with @secret@. For instructions see: https:\/\/cloud.google.com\/cloud-build\/docs\/securing-builds\/use-encrypted-credentials.
--
-- /See:/ 'newSecret' smart constructor.
data Secret = Secret
  { -- | Cloud KMS key name to use to decrypt these envs.
    kmsKeyName :: (Core.Maybe Core.Text),
    -- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
    secretEnv :: (Core.Maybe Secret_SecretEnv)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret' with the minimum fields required to make a request.
newSecret ::
  Secret
newSecret = Secret {kmsKeyName = Core.Nothing, secretEnv = Core.Nothing}

instance Core.FromJSON Secret where
  parseJSON =
    Core.withObject
      "Secret"
      ( \o ->
          Secret
            Core.<$> (o Core..:? "kmsKeyName")
            Core.<*> (o Core..:? "secretEnv")
      )

instance Core.ToJSON Secret where
  toJSON Secret {..} =
    Core.object
      ( Core.catMaybes
          [ ("kmsKeyName" Core..=) Core.<$> kmsKeyName,
            ("secretEnv" Core..=) Core.<$> secretEnv
          ]
      )

-- | Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build\'s secrets.
--
-- /See:/ 'newSecret_SecretEnv' smart constructor.
newtype Secret_SecretEnv = Secret_SecretEnv
  { -- |
    additional :: (Core.HashMap Core.Text Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secret_SecretEnv' with the minimum fields required to make a request.
newSecret_SecretEnv ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Base64 ->
  Secret_SecretEnv
newSecret_SecretEnv additional = Secret_SecretEnv {additional = additional}

instance Core.FromJSON Secret_SecretEnv where
  parseJSON =
    Core.withObject
      "Secret_SecretEnv"
      ( \o ->
          Secret_SecretEnv Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Secret_SecretEnv where
  toJSON Secret_SecretEnv {..} = Core.toJSON additional

-- | Pairs a secret environment variable with a SecretVersion in Secret Manager.
--
-- /See:/ 'newSecretManagerSecret' smart constructor.
data SecretManagerSecret = SecretManagerSecret
  { -- | Environment variable name to associate with the secret. Secret environment variables must be unique across all of a build\'s secrets, and must be used by at least one build step.
    env :: (Core.Maybe Core.Text),
    -- | Resource name of the SecretVersion. In format: projects\//\/secrets\//\/versions\/*
    versionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecretManagerSecret' with the minimum fields required to make a request.
newSecretManagerSecret ::
  SecretManagerSecret
newSecretManagerSecret =
  SecretManagerSecret {env = Core.Nothing, versionName = Core.Nothing}

instance Core.FromJSON SecretManagerSecret where
  parseJSON =
    Core.withObject
      "SecretManagerSecret"
      ( \o ->
          SecretManagerSecret
            Core.<$> (o Core..:? "env")
            Core.<*> (o Core..:? "versionName")
      )

instance Core.ToJSON SecretManagerSecret where
  toJSON SecretManagerSecret {..} =
    Core.object
      ( Core.catMaybes
          [ ("env" Core..=) Core.<$> env,
            ("versionName" Core..=) Core.<$> versionName
          ]
      )

-- | Secrets and secret environment variables.
--
-- /See:/ 'newSecrets' smart constructor.
data Secrets = Secrets
  { -- | Secrets encrypted with KMS key and the associated secret environment variable.
    inline :: (Core.Maybe [InlineSecret]),
    -- | Secrets in Secret Manager and associated secret environment variable.
    secretManager :: (Core.Maybe [SecretManagerSecret])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Secrets' with the minimum fields required to make a request.
newSecrets ::
  Secrets
newSecrets = Secrets {inline = Core.Nothing, secretManager = Core.Nothing}

instance Core.FromJSON Secrets where
  parseJSON =
    Core.withObject
      "Secrets"
      ( \o ->
          Secrets
            Core.<$> (o Core..:? "inline")
            Core.<*> (o Core..:? "secretManager")
      )

instance Core.ToJSON Secrets where
  toJSON Secrets {..} =
    Core.object
      ( Core.catMaybes
          [ ("inline" Core..=) Core.<$> inline,
            ("secretManager" Core..=) Core.<$> secretManager
          ]
      )

-- | SlackDelivery is the delivery configuration for delivering Slack messages via webhooks. See Slack webhook documentation at: https:\/\/api.slack.com\/messaging\/webhooks.
--
-- /See:/ 'newSlackDelivery' smart constructor.
newtype SlackDelivery = SlackDelivery
  { -- | The secret reference for the Slack webhook URI for sending messages to a channel.
    webhookUri :: (Core.Maybe NotifierSecretRef)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SlackDelivery' with the minimum fields required to make a request.
newSlackDelivery ::
  SlackDelivery
newSlackDelivery = SlackDelivery {webhookUri = Core.Nothing}

instance Core.FromJSON SlackDelivery where
  parseJSON =
    Core.withObject
      "SlackDelivery"
      ( \o ->
          SlackDelivery Core.<$> (o Core..:? "webhookUri")
      )

instance Core.ToJSON SlackDelivery where
  toJSON SlackDelivery {..} =
    Core.object
      ( Core.catMaybes
          [("webhookUri" Core..=) Core.<$> webhookUri]
      )

-- | Location of the source in a supported storage service.
--
-- /See:/ 'newSource' smart constructor.
data Source = Source
  { -- | If provided, get the source from this location in a Cloud Source Repository.
    repoSource :: (Core.Maybe RepoSource),
    -- | If provided, get the source from this location in Google Cloud Storage.
    storageSource :: (Core.Maybe StorageSource),
    -- | If provided, get the source from this manifest in Google Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
    storageSourceManifest :: (Core.Maybe StorageSourceManifest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Source' with the minimum fields required to make a request.
newSource ::
  Source
newSource =
  Source
    { repoSource = Core.Nothing,
      storageSource = Core.Nothing,
      storageSourceManifest = Core.Nothing
    }

instance Core.FromJSON Source where
  parseJSON =
    Core.withObject
      "Source"
      ( \o ->
          Source
            Core.<$> (o Core..:? "repoSource")
            Core.<*> (o Core..:? "storageSource")
            Core.<*> (o Core..:? "storageSourceManifest")
      )

instance Core.ToJSON Source where
  toJSON Source {..} =
    Core.object
      ( Core.catMaybes
          [ ("repoSource" Core..=) Core.<$> repoSource,
            ("storageSource" Core..=) Core.<$> storageSource,
            ("storageSourceManifest" Core..=)
              Core.<$> storageSourceManifest
          ]
      )

-- | Provenance of the source. Ways to find the original source, or verify that some source was used for this build.
--
-- /See:/ 'newSourceProvenance' smart constructor.
data SourceProvenance = SourceProvenance
  { -- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
    fileHashes :: (Core.Maybe SourceProvenance_FileHashes),
    -- | A copy of the build\'s @source.repo_source@, if exists, with any revisions resolved.
    resolvedRepoSource :: (Core.Maybe RepoSource),
    -- | A copy of the build\'s @source.storage_source@, if exists, with any generations resolved.
    resolvedStorageSource :: (Core.Maybe StorageSource),
    -- | A copy of the build\'s @source.storage_source_manifest@, if exists, with any revisions resolved. This feature is in Preview.
    resolvedStorageSourceManifest :: (Core.Maybe StorageSourceManifest)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceProvenance' with the minimum fields required to make a request.
newSourceProvenance ::
  SourceProvenance
newSourceProvenance =
  SourceProvenance
    { fileHashes = Core.Nothing,
      resolvedRepoSource = Core.Nothing,
      resolvedStorageSource = Core.Nothing,
      resolvedStorageSourceManifest = Core.Nothing
    }

instance Core.FromJSON SourceProvenance where
  parseJSON =
    Core.withObject
      "SourceProvenance"
      ( \o ->
          SourceProvenance
            Core.<$> (o Core..:? "fileHashes")
            Core.<*> (o Core..:? "resolvedRepoSource")
            Core.<*> (o Core..:? "resolvedStorageSource")
            Core.<*> (o Core..:? "resolvedStorageSourceManifest")
      )

instance Core.ToJSON SourceProvenance where
  toJSON SourceProvenance {..} =
    Core.object
      ( Core.catMaybes
          [ ("fileHashes" Core..=) Core.<$> fileHashes,
            ("resolvedRepoSource" Core..=)
              Core.<$> resolvedRepoSource,
            ("resolvedStorageSource" Core..=)
              Core.<$> resolvedStorageSource,
            ("resolvedStorageSourceManifest" Core..=)
              Core.<$> resolvedStorageSourceManifest
          ]
      )

-- | Output only. Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. Note that @FileHashes@ will only be populated if @BuildOptions@ has requested a @SourceProvenanceHash@. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (@.tar.gz@), the @FileHash@ will be for the single path to that file.
--
-- /See:/ 'newSourceProvenance_FileHashes' smart constructor.
newtype SourceProvenance_FileHashes = SourceProvenance_FileHashes
  { -- |
    additional :: (Core.HashMap Core.Text FileHashes)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceProvenance_FileHashes' with the minimum fields required to make a request.
newSourceProvenance_FileHashes ::
  -- |  See 'additional'.
  Core.HashMap Core.Text FileHashes ->
  SourceProvenance_FileHashes
newSourceProvenance_FileHashes additional =
  SourceProvenance_FileHashes {additional = additional}

instance Core.FromJSON SourceProvenance_FileHashes where
  parseJSON =
    Core.withObject
      "SourceProvenance_FileHashes"
      ( \o ->
          SourceProvenance_FileHashes
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON SourceProvenance_FileHashes where
  toJSON SourceProvenance_FileHashes {..} =
    Core.toJSON additional

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newStatus' smart constructor.
data Status = Status
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [Status_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status' with the minimum fields required to make a request.
newStatus ::
  Status
newStatus =
  Status {code = Core.Nothing, details = Core.Nothing, message = Core.Nothing}

instance Core.FromJSON Status where
  parseJSON =
    Core.withObject
      "Status"
      ( \o ->
          Status
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details")
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON Status where
  toJSON Status {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newStatus_DetailsItem' smart constructor.
newtype Status_DetailsItem = Status_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Status_DetailsItem' with the minimum fields required to make a request.
newStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  Status_DetailsItem
newStatus_DetailsItem additional = Status_DetailsItem {additional = additional}

instance Core.FromJSON Status_DetailsItem where
  parseJSON =
    Core.withObject
      "Status_DetailsItem"
      ( \o ->
          Status_DetailsItem Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON Status_DetailsItem where
  toJSON Status_DetailsItem {..} =
    Core.toJSON additional

-- | Location of the source in an archive file in Google Cloud Storage.
--
-- /See:/ 'newStorageSource' smart constructor.
data StorageSource = StorageSource
  { -- | Google Cloud Storage bucket containing the source (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
    bucket :: (Core.Maybe Core.Text),
    -- | Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    generation :: (Core.Maybe Core.Int64),
    -- | Google Cloud Storage object containing the source. This object must be a zipped (@.zip@) or gzipped archive file (@.tar.gz@) containing source to build.
    object :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageSource' with the minimum fields required to make a request.
newStorageSource ::
  StorageSource
newStorageSource =
  StorageSource
    { bucket = Core.Nothing,
      generation = Core.Nothing,
      object = Core.Nothing
    }

instance Core.FromJSON StorageSource where
  parseJSON =
    Core.withObject
      "StorageSource"
      ( \o ->
          StorageSource
            Core.<$> (o Core..:? "bucket")
            Core.<*> ( o Core..:? "generation"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "object")
      )

instance Core.ToJSON StorageSource where
  toJSON StorageSource {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("object" Core..=) Core.<$> object
          ]
      )

-- | Location of the source manifest in Google Cloud Storage. This feature is in Preview; see description <https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher here>.
--
-- /See:/ 'newStorageSourceManifest' smart constructor.
data StorageSourceManifest = StorageSourceManifest
  { -- | Google Cloud Storage bucket containing the source manifest (see <https://cloud.google.com/storage/docs/bucket-naming#requirements Bucket Name Requirements>).
    bucket :: (Core.Maybe Core.Text),
    -- | Google Cloud Storage generation for the object. If the generation is omitted, the latest generation will be used.
    generation :: (Core.Maybe Core.Int64),
    -- | Google Cloud Storage object containing the source manifest. This object must be a JSON file.
    object :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageSourceManifest' with the minimum fields required to make a request.
newStorageSourceManifest ::
  StorageSourceManifest
newStorageSourceManifest =
  StorageSourceManifest
    { bucket = Core.Nothing,
      generation = Core.Nothing,
      object = Core.Nothing
    }

instance Core.FromJSON StorageSourceManifest where
  parseJSON =
    Core.withObject
      "StorageSourceManifest"
      ( \o ->
          StorageSourceManifest
            Core.<$> (o Core..:? "bucket")
            Core.<*> ( o Core..:? "generation"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "object")
      )

instance Core.ToJSON StorageSourceManifest where
  toJSON StorageSourceManifest {..} =
    Core.object
      ( Core.catMaybes
          [ ("bucket" Core..=) Core.<$> bucket,
            ("generation" Core..=) Core.. Core.AsText
              Core.<$> generation,
            ("object" Core..=) Core.<$> object
          ]
      )

-- | Start and end times for a build execution phase.
--
-- /See:/ 'newTimeSpan' smart constructor.
data TimeSpan = TimeSpan
  { -- | End of time span.
    endTime :: (Core.Maybe Core.DateTime),
    -- | Start of time span.
    startTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TimeSpan' with the minimum fields required to make a request.
newTimeSpan ::
  TimeSpan
newTimeSpan = TimeSpan {endTime = Core.Nothing, startTime = Core.Nothing}

instance Core.FromJSON TimeSpan where
  parseJSON =
    Core.withObject
      "TimeSpan"
      ( \o ->
          TimeSpan
            Core.<$> (o Core..:? "endTime")
            Core.<*> (o Core..:? "startTime")
      )

instance Core.ToJSON TimeSpan where
  toJSON TimeSpan {..} =
    Core.object
      ( Core.catMaybes
          [ ("endTime" Core..=) Core.<$> endTime,
            ("startTime" Core..=) Core.<$> startTime
          ]
      )

-- | Metadata for @UpdateBitbucketServerConfig@ operation.
--
-- /See:/ 'newUpdateBitbucketServerConfigOperationMetadata' smart constructor.
data UpdateBitbucketServerConfigOperationMetadata = UpdateBitbucketServerConfigOperationMetadata
  { -- | The resource name of the BitbucketServerConfig to be updated. Format: @projects\/{project}\/locations\/{location}\/bitbucketServerConfigs\/{id}@.
    bitbucketServerConfig :: (Core.Maybe Core.Text),
    -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateBitbucketServerConfigOperationMetadata' with the minimum fields required to make a request.
newUpdateBitbucketServerConfigOperationMetadata ::
  UpdateBitbucketServerConfigOperationMetadata
newUpdateBitbucketServerConfigOperationMetadata =
  UpdateBitbucketServerConfigOperationMetadata
    { bitbucketServerConfig = Core.Nothing,
      completeTime = Core.Nothing,
      createTime = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateBitbucketServerConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "UpdateBitbucketServerConfigOperationMetadata"
      ( \o ->
          UpdateBitbucketServerConfigOperationMetadata
            Core.<$> (o Core..:? "bitbucketServerConfig")
            Core.<*> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
      )

instance
  Core.ToJSON
    UpdateBitbucketServerConfigOperationMetadata
  where
  toJSON
    UpdateBitbucketServerConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("bitbucketServerConfig" Core..=)
                Core.<$> bitbucketServerConfig,
              ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime
            ]
        )

-- | Metadata for @UpdateGitHubEnterpriseConfig@ operation.
--
-- /See:/ 'newUpdateGitHubEnterpriseConfigOperationMetadata' smart constructor.
data UpdateGitHubEnterpriseConfigOperationMetadata = UpdateGitHubEnterpriseConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitHubEnterprise to be updated. Format: @projects\/{project}\/locations\/{location}\/githubEnterpriseConfigs\/{id}@.
    githubEnterpriseConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateGitHubEnterpriseConfigOperationMetadata' with the minimum fields required to make a request.
newUpdateGitHubEnterpriseConfigOperationMetadata ::
  UpdateGitHubEnterpriseConfigOperationMetadata
newUpdateGitHubEnterpriseConfigOperationMetadata =
  UpdateGitHubEnterpriseConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      githubEnterpriseConfig = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateGitHubEnterpriseConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "UpdateGitHubEnterpriseConfigOperationMetadata"
      ( \o ->
          UpdateGitHubEnterpriseConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "githubEnterpriseConfig")
      )

instance
  Core.ToJSON
    UpdateGitHubEnterpriseConfigOperationMetadata
  where
  toJSON
    UpdateGitHubEnterpriseConfigOperationMetadata {..} =
      Core.object
        ( Core.catMaybes
            [ ("completeTime" Core..=) Core.<$> completeTime,
              ("createTime" Core..=) Core.<$> createTime,
              ("githubEnterpriseConfig" Core..=)
                Core.<$> githubEnterpriseConfig
            ]
        )

-- | Metadata for @UpdateGitLabConfig@ operation.
--
-- /See:/ 'newUpdateGitLabConfigOperationMetadata' smart constructor.
data UpdateGitLabConfigOperationMetadata = UpdateGitLabConfigOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the GitLabConfig to be created. Format: @projects\/{project}\/locations\/{location}\/gitlabConfigs\/{id}@.
    gitlabConfig :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateGitLabConfigOperationMetadata' with the minimum fields required to make a request.
newUpdateGitLabConfigOperationMetadata ::
  UpdateGitLabConfigOperationMetadata
newUpdateGitLabConfigOperationMetadata =
  UpdateGitLabConfigOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      gitlabConfig = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateGitLabConfigOperationMetadata
  where
  parseJSON =
    Core.withObject
      "UpdateGitLabConfigOperationMetadata"
      ( \o ->
          UpdateGitLabConfigOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "gitlabConfig")
      )

instance
  Core.ToJSON
    UpdateGitLabConfigOperationMetadata
  where
  toJSON UpdateGitLabConfigOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("gitlabConfig" Core..=) Core.<$> gitlabConfig
          ]
      )

-- | Metadata for the @UpdateWorkerPool@ operation.
--
-- /See:/ 'newUpdateWorkerPoolOperationMetadata' smart constructor.
data UpdateWorkerPoolOperationMetadata = UpdateWorkerPoolOperationMetadata
  { -- | Time the operation was completed.
    completeTime :: (Core.Maybe Core.DateTime),
    -- | Time the operation was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | The resource name of the @WorkerPool@ being updated. Format: @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@.
    workerPool :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UpdateWorkerPoolOperationMetadata' with the minimum fields required to make a request.
newUpdateWorkerPoolOperationMetadata ::
  UpdateWorkerPoolOperationMetadata
newUpdateWorkerPoolOperationMetadata =
  UpdateWorkerPoolOperationMetadata
    { completeTime = Core.Nothing,
      createTime = Core.Nothing,
      workerPool = Core.Nothing
    }

instance
  Core.FromJSON
    UpdateWorkerPoolOperationMetadata
  where
  parseJSON =
    Core.withObject
      "UpdateWorkerPoolOperationMetadata"
      ( \o ->
          UpdateWorkerPoolOperationMetadata
            Core.<$> (o Core..:? "completeTime")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "workerPool")
      )

instance
  Core.ToJSON
    UpdateWorkerPoolOperationMetadata
  where
  toJSON UpdateWorkerPoolOperationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("completeTime" Core..=) Core.<$> completeTime,
            ("createTime" Core..=) Core.<$> createTime,
            ("workerPool" Core..=) Core.<$> workerPool
          ]
      )

-- | Volume describes a Docker container volume which is mounted into build steps in order to persist files across build step execution.
--
-- /See:/ 'newVolume' smart constructor.
data Volume = Volume
  { -- | Name of the volume to mount. Volume names must be unique per build step and must be valid names for Docker volumes. Each named volume must be used by at least two build steps.
    name :: (Core.Maybe Core.Text),
    -- | Path at which to mount the volume. Paths must be absolute and cannot conflict with other volume paths on the same build step or with certain reserved volume paths.
    path :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Volume' with the minimum fields required to make a request.
newVolume ::
  Volume
newVolume = Volume {name = Core.Nothing, path = Core.Nothing}

instance Core.FromJSON Volume where
  parseJSON =
    Core.withObject
      "Volume"
      ( \o ->
          Volume
            Core.<$> (o Core..:? "name") Core.<*> (o Core..:? "path")
      )

instance Core.ToJSON Volume where
  toJSON Volume {..} =
    Core.object
      ( Core.catMaybes
          [ ("name" Core..=) Core.<$> name,
            ("path" Core..=) Core.<$> path
          ]
      )

-- | A non-fatal problem encountered during the execution of the build.
--
-- /See:/ 'newWarning' smart constructor.
data Warning = Warning
  { -- | The priority for this warning.
    priority :: (Core.Maybe Warning_Priority),
    -- | Explanation of the warning generated.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Warning' with the minimum fields required to make a request.
newWarning ::
  Warning
newWarning = Warning {priority = Core.Nothing, text = Core.Nothing}

instance Core.FromJSON Warning where
  parseJSON =
    Core.withObject
      "Warning"
      ( \o ->
          Warning
            Core.<$> (o Core..:? "priority") Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON Warning where
  toJSON Warning {..} =
    Core.object
      ( Core.catMaybes
          [ ("priority" Core..=) Core.<$> priority,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | WebhookConfig describes the configuration of a trigger that creates a build whenever a webhook is sent to a trigger\'s webhook URL.
--
-- /See:/ 'newWebhookConfig' smart constructor.
data WebhookConfig = WebhookConfig
  { -- | Required. Resource name for the secret required as a URL parameter.
    secret :: (Core.Maybe Core.Text),
    -- | Potential issues with the underlying Pub\/Sub subscription configuration. Only populated on get requests.
    state :: (Core.Maybe WebhookConfig_State)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebhookConfig' with the minimum fields required to make a request.
newWebhookConfig ::
  WebhookConfig
newWebhookConfig = WebhookConfig {secret = Core.Nothing, state = Core.Nothing}

instance Core.FromJSON WebhookConfig where
  parseJSON =
    Core.withObject
      "WebhookConfig"
      ( \o ->
          WebhookConfig
            Core.<$> (o Core..:? "secret") Core.<*> (o Core..:? "state")
      )

instance Core.ToJSON WebhookConfig where
  toJSON WebhookConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("secret" Core..=) Core.<$> secret,
            ("state" Core..=) Core.<$> state
          ]
      )

-- | Defines the configuration to be used for creating workers in the pool.
--
-- /See:/ 'newWorkerConfig' smart constructor.
data WorkerConfig = WorkerConfig
  { -- | Size of the disk attached to the worker, in GB. See <https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema Worker pool config file>. Specify a value of up to 1000. If @0@ is specified, Cloud Build will use a standard disk size.
    diskSizeGb :: (Core.Maybe Core.Int64),
    -- | Machine type of a worker, such as @e2-medium@. See <https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema Worker pool config file>. If left blank, Cloud Build will use a sensible default.
    machineType :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerConfig' with the minimum fields required to make a request.
newWorkerConfig ::
  WorkerConfig
newWorkerConfig =
  WorkerConfig {diskSizeGb = Core.Nothing, machineType = Core.Nothing}

instance Core.FromJSON WorkerConfig where
  parseJSON =
    Core.withObject
      "WorkerConfig"
      ( \o ->
          WorkerConfig
            Core.<$> ( o Core..:? "diskSizeGb"
                         Core.<&> Core.fmap Core.fromAsText
                     )
            Core.<*> (o Core..:? "machineType")
      )

instance Core.ToJSON WorkerConfig where
  toJSON WorkerConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("diskSizeGb" Core..=) Core.. Core.AsText
              Core.<$> diskSizeGb,
            ("machineType" Core..=) Core.<$> machineType
          ]
      )

-- | Configuration for a @WorkerPool@. Cloud Build owns and maintains a pool of workers for general use and have no access to a project\'s private network. By default, builds submitted to Cloud Build will use a worker from this pool. If your build needs access to resources on a private network, create and use a @WorkerPool@ to run your builds. Private @WorkerPool@s give your builds access to any single VPC network that you administer, including any on-prem resources connected to that VPC network. For an overview of private pools, see <https://cloud.google.com/build/docs/private-pools/private-pools-overview Private pools overview>.
--
-- /See:/ 'newWorkerPool' smart constructor.
data WorkerPool = WorkerPool
  { -- | User specified annotations. See https:\/\/google.aip.dev\/128#annotations for more details such as format and size limitations.
    annotations :: (Core.Maybe WorkerPool_Annotations),
    -- | Output only. Time at which the request to create the @WorkerPool@ was received.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. Time at which the request to delete the @WorkerPool@ was received.
    deleteTime :: (Core.Maybe Core.DateTime),
    -- | A user-specified, human-readable name for the @WorkerPool@. If provided, this value must be 1-63 characters.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. Checksum computed by the server. May be sent on update and delete requests to ensure that the client has an up-to-date value before proceeding.
    etag :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the @WorkerPool@, with format @projects\/{project}\/locations\/{location}\/workerPools\/{worker_pool}@. The value of @{worker_pool}@ is provided by @worker_pool_id@ in @CreateWorkerPool@ request and the value of @{location}@ is determined by the endpoint accessed.
    name :: (Core.Maybe Core.Text),
    -- | Legacy Private Pool configuration.
    privatePoolV1Config :: (Core.Maybe PrivatePoolV1Config),
    -- | Output only. @WorkerPool@ state.
    state :: (Core.Maybe WorkerPool_State),
    -- | Output only. A unique identifier for the @WorkerPool@.
    uid :: (Core.Maybe Core.Text),
    -- | Output only. Time at which the request to update the @WorkerPool@ was received.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerPool' with the minimum fields required to make a request.
newWorkerPool ::
  WorkerPool
newWorkerPool =
  WorkerPool
    { annotations = Core.Nothing,
      createTime = Core.Nothing,
      deleteTime = Core.Nothing,
      displayName = Core.Nothing,
      etag = Core.Nothing,
      name = Core.Nothing,
      privatePoolV1Config = Core.Nothing,
      state = Core.Nothing,
      uid = Core.Nothing,
      updateTime = Core.Nothing
    }

instance Core.FromJSON WorkerPool where
  parseJSON =
    Core.withObject
      "WorkerPool"
      ( \o ->
          WorkerPool
            Core.<$> (o Core..:? "annotations")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "deleteTime")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "privatePoolV1Config")
            Core.<*> (o Core..:? "state")
            Core.<*> (o Core..:? "uid")
            Core.<*> (o Core..:? "updateTime")
      )

instance Core.ToJSON WorkerPool where
  toJSON WorkerPool {..} =
    Core.object
      ( Core.catMaybes
          [ ("annotations" Core..=) Core.<$> annotations,
            ("createTime" Core..=) Core.<$> createTime,
            ("deleteTime" Core..=) Core.<$> deleteTime,
            ("displayName" Core..=) Core.<$> displayName,
            ("etag" Core..=) Core.<$> etag,
            ("name" Core..=) Core.<$> name,
            ("privatePoolV1Config" Core..=)
              Core.<$> privatePoolV1Config,
            ("state" Core..=) Core.<$> state,
            ("uid" Core..=) Core.<$> uid,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | User specified annotations. See https:\/\/google.aip.dev\/128#annotations for more details such as format and size limitations.
--
-- /See:/ 'newWorkerPool_Annotations' smart constructor.
newtype WorkerPool_Annotations = WorkerPool_Annotations
  { -- |
    additional :: (Core.HashMap Core.Text Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WorkerPool_Annotations' with the minimum fields required to make a request.
newWorkerPool_Annotations ::
  -- |  See 'additional'.
  Core.HashMap Core.Text Core.Text ->
  WorkerPool_Annotations
newWorkerPool_Annotations additional =
  WorkerPool_Annotations {additional = additional}

instance Core.FromJSON WorkerPool_Annotations where
  parseJSON =
    Core.withObject
      "WorkerPool_Annotations"
      ( \o ->
          WorkerPool_Annotations
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON WorkerPool_Annotations where
  toJSON WorkerPool_Annotations {..} =
    Core.toJSON additional

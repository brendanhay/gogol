{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ContainerBuilder
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and manages builds on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference>
module Network.Google.ContainerBuilder
    (
    -- * Service Configuration
      containerBuilderService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ContainerBuilderAPI

    -- * Resources

    -- ** cloudbuild.operations.cancel
    , module Network.Google.Resource.Cloudbuild.Operations.Cancel

    -- ** cloudbuild.operations.get
    , module Network.Google.Resource.Cloudbuild.Operations.Get

    -- ** cloudbuild.projects.builds.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel

    -- ** cloudbuild.projects.builds.create
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Create

    -- ** cloudbuild.projects.builds.get
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Get

    -- ** cloudbuild.projects.builds.list
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.List

    -- ** cloudbuild.projects.builds.retry
    , module Network.Google.Resource.Cloudbuild.Projects.Builds.Retry

    -- ** cloudbuild.projects.locations.builds.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel

    -- ** cloudbuild.projects.locations.builds.create
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create

    -- ** cloudbuild.projects.locations.builds.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get

    -- ** cloudbuild.projects.locations.builds.list
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List

    -- ** cloudbuild.projects.locations.builds.retry
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry

    -- ** cloudbuild.projects.locations.operations.cancel
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Cancel

    -- ** cloudbuild.projects.locations.operations.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Get

    -- ** cloudbuild.projects.locations.triggers.create
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Create

    -- ** cloudbuild.projects.locations.triggers.delete
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Delete

    -- ** cloudbuild.projects.locations.triggers.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Get

    -- ** cloudbuild.projects.locations.triggers.list
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.List

    -- ** cloudbuild.projects.locations.triggers.patch
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Patch

    -- ** cloudbuild.projects.locations.triggers.run
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Run

    -- ** cloudbuild.projects.locations.triggers.webhook
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Webhook

    -- ** cloudbuild.projects.locations.workerPools.create
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Create

    -- ** cloudbuild.projects.locations.workerPools.delete
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Delete

    -- ** cloudbuild.projects.locations.workerPools.get
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Get

    -- ** cloudbuild.projects.locations.workerPools.list
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.List

    -- ** cloudbuild.projects.locations.workerPools.patch
    , module Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Patch

    -- ** cloudbuild.projects.triggers.create
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Create

    -- ** cloudbuild.projects.triggers.delete
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete

    -- ** cloudbuild.projects.triggers.get
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Get

    -- ** cloudbuild.projects.triggers.list
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.List

    -- ** cloudbuild.projects.triggers.patch
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch

    -- ** cloudbuild.projects.triggers.run
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Run

    -- ** cloudbuild.projects.triggers.webhook
    , module Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook

    -- * Types

    -- ** BuildStep
    , BuildStep
    , buildStep
    , bsStatus
    , bsDir
    , bsArgs
    , bsEnv
    , bsPullTiming
    , bsEntrypoint
    , bsWaitFor
    , bsName
    , bsId
    , bsTiming
    , bsSecretEnv
    , bsTimeout
    , bsVolumes

    -- ** WorkerConfig
    , WorkerConfig
    , workerConfig
    , wcDiskSizeGb
    , wcMachineType

    -- ** SourceProvenance
    , SourceProvenance
    , sourceProvenance
    , spResolvedRepoSource
    , spResolvedStorageSourceManifest
    , spResolvedStorageSource
    , spFileHashes

    -- ** ListBuildsResponse
    , ListBuildsResponse
    , listBuildsResponse
    , lbrNextPageToken
    , lbrBuilds

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** PullRequestFilter
    , PullRequestFilter
    , pullRequestFilter
    , prfCommentControl
    , prfInvertRegex
    , prfBranch

    -- ** RetryBuildRequest
    , RetryBuildRequest
    , retryBuildRequest
    , rbrName
    , rbrId
    , rbrProjectId

    -- ** PoolOption
    , PoolOption
    , poolOption
    , poName

    -- ** HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Hash
    , Hash
    , hash
    , hValue
    , hType

    -- ** Results
    , Results
    , results
    , rImages
    , rBuildStepImages
    , rArtifactManifest
    , rBuildStepOutputs
    , rNumArtifacts
    , rArtifactTiming

    -- ** BuildTriggerSubstitutions
    , BuildTriggerSubstitutions
    , buildTriggerSubstitutions
    , btsAddtional

    -- ** RepoSource
    , RepoSource
    , repoSource
    , rsSubstitutions
    , rsInvertRegex
    , rsRepoName
    , rsDir
    , rsCommitSha
    , rsBranchName
    , rsTagName
    , rsProjectId

    -- ** Secrets
    , Secrets
    , secrets
    , sInline
    , sSecretManager

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** SecretSecretEnv
    , SecretSecretEnv
    , secretSecretEnv
    , sseAddtional

    -- ** Notification
    , Notification
    , notification
    , nStructDelivery
    , nSmtpDelivery
    , nHTTPDelivery
    , nSlackDelivery
    , nFilter

    -- ** Artifacts
    , Artifacts
    , artifacts
    , aImages
    , aObjects

    -- ** BuildStepStatus
    , BuildStepStatus (..)

    -- ** ArtifactObjects
    , ArtifactObjects
    , artifactObjects
    , aoLocation
    , aoTiming
    , aoPaths

    -- ** GitHubEventsConfig
    , GitHubEventsConfig
    , gitHubEventsConfig
    , ghecOwner
    , ghecPullRequest
    , ghecName
    , ghecPush
    , ghecInstallationId

    -- ** ListWorkerPoolsResponse
    , ListWorkerPoolsResponse
    , listWorkerPoolsResponse
    , lwprNextPageToken
    , lwprWorkerPools

    -- ** PullRequestFilterCommentControl
    , PullRequestFilterCommentControl (..)

    -- ** Volume
    , Volume
    , volume
    , vPath
    , vName

    -- ** NotifierSecretRef
    , NotifierSecretRef
    , notifierSecretRef
    , nsrSecretRef

    -- ** ReceiveTriggerWebhookResponse
    , ReceiveTriggerWebhookResponse
    , receiveTriggerWebhookResponse

    -- ** StorageSourceManifest
    , StorageSourceManifest
    , storageSourceManifest
    , ssmBucket
    , ssmObject
    , ssmGeneration

    -- ** DeleteWorkerPoolOperationMetadata
    , DeleteWorkerPoolOperationMetadata
    , deleteWorkerPoolOperationMetadata
    , dwpomCompleteTime
    , dwpomWorkerPool
    , dwpomCreateTime

    -- ** UpdateWorkerPoolOperationMetadata
    , UpdateWorkerPoolOperationMetadata
    , updateWorkerPoolOperationMetadata
    , uwpomCompleteTime
    , uwpomWorkerPool
    , uwpomCreateTime

    -- ** SecretManagerSecret
    , SecretManagerSecret
    , secretManagerSecret
    , smsVersionName
    , smsEnv

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** PubsubConfigState
    , PubsubConfigState (..)

    -- ** Build
    , Build
    , build
    , bAvailableSecrets
    , bImages
    , bStatus
    , bSourceProvenance
    , bSubstitutions
    , bLogURL
    , bResults
    , bSecrets
    , bStartTime
    , bArtifacts
    , bFailureInfo
    , bWarnings
    , bLogsBucket
    , bSteps
    , bServiceAccount
    , bName
    , bStatusDetail
    , bSource
    , bId
    , bQueueTtl
    , bOptions
    , bProjectId
    , bTiming
    , bBuildTriggerId
    , bTimeout
    , bFinishTime
    , bCreateTime
    , bTags

    -- ** InlineSecretEnvMap
    , InlineSecretEnvMap
    , inlineSecretEnvMap
    , isemAddtional

    -- ** FailureInfo
    , FailureInfo
    , failureInfo
    , fiType
    , fiDetail

    -- ** CreateWorkerPoolOperationMetadata
    , CreateWorkerPoolOperationMetadata
    , createWorkerPoolOperationMetadata
    , cwpomCompleteTime
    , cwpomWorkerPool
    , cwpomCreateTime

    -- ** SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- ** WorkerPoolAnnotations
    , WorkerPoolAnnotations
    , workerPoolAnnotations
    , wpaAddtional

    -- ** SMTPDelivery
    , SMTPDelivery
    , sMTPDelivery
    , smtpdSenderAddress
    , smtpdFromAddress
    , smtpdRecipientAddresses
    , smtpdPassword
    , smtpdServer
    , smtpdPort

    -- ** Secret
    , Secret
    , secret
    , sKmsKeyName
    , sSecretEnv

    -- ** GoogleDevtoolsCloudbuildV2OperationMetadata
    , GoogleDevtoolsCloudbuildV2OperationMetadata
    , googleDevtoolsCloudbuildV2OperationMetadata
    , gdcvomAPIVersion
    , gdcvomRequestedCancellation
    , gdcvomStatusMessage
    , gdcvomEndTime
    , gdcvomVerb
    , gdcvomTarget
    , gdcvomCreateTime

    -- ** PushFilter
    , PushFilter
    , pushFilter
    , pfInvertRegex
    , pfTag
    , pfBranch

    -- ** CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest
    , cbrName
    , cbrId
    , cbrProjectId

    -- ** PubsubConfig
    , PubsubConfig
    , pubsubConfig
    , pcState
    , pcTopic
    , pcServiceAccountEmail
    , pcSubscription

    -- ** TimeSpan
    , TimeSpan
    , timeSpan
    , tsStartTime
    , tsEndTime

    -- ** NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncPeeredNetwork
    , ncEgressOption

    -- ** StorageSource
    , StorageSource
    , storageSource
    , ssBucket
    , ssObject
    , ssGeneration

    -- ** PrivatePoolV1Config
    , PrivatePoolV1Config
    , privatePoolV1Config
    , ppvcWorkerConfig
    , ppvcNetworkConfig

    -- ** HTTPDelivery
    , HTTPDelivery
    , hTTPDelivery
    , httpdURI

    -- ** ListBuildTriggersResponse
    , ListBuildTriggersResponse
    , listBuildTriggersResponse
    , lbtrNextPageToken
    , lbtrTriggers

    -- ** InlineSecret
    , InlineSecret
    , inlineSecret
    , isEnvMap
    , isKmsKeyName

    -- ** ArtifactResult
    , ArtifactResult
    , artifactResult
    , arFileHash
    , arLocation

    -- ** GitRepoSourceRepoType
    , GitRepoSourceRepoType (..)

    -- ** GitRepoSource
    , GitRepoSource
    , gitRepoSource
    , grsRepoType
    , grsURI
    , grsRef

    -- ** BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- ** FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- ** Warning
    , Warning
    , warning
    , wPriority
    , wText

    -- ** NetworkConfigEgressOption
    , NetworkConfigEgressOption (..)

    -- ** WorkerPool
    , WorkerPool
    , workerPool
    , wpAnnotations
    , wpEtag
    , wpState
    , wpUid
    , wpUpdateTime
    , wpDeleteTime
    , wpPrivatePoolV1Config
    , wpName
    , wpDisplayName
    , wpCreateTime

    -- ** BuildSubstitutions
    , BuildSubstitutions
    , buildSubstitutions
    , bsAddtional

    -- ** SlackDelivery
    , SlackDelivery
    , slackDelivery
    , sdWebhookURI

    -- ** Xgafv
    , Xgafv (..)

    -- ** BuildStatus
    , BuildStatus (..)

    -- ** BuildOptionsSubstitutionOption
    , BuildOptionsSubstitutionOption (..)

    -- ** HashType
    , HashType (..)

    -- ** NotifierSecret
    , NotifierSecret
    , notifierSecret
    , nsValue
    , nsName

    -- ** BuildOptionsLogStreamingOption
    , BuildOptionsLogStreamingOption (..)

    -- ** BuildOptionsSourceProvenanceHashItem
    , BuildOptionsSourceProvenanceHashItem (..)

    -- ** Source
    , Source
    , source
    , sRepoSource
    , sStorageSourceManifest
    , sStorageSource

    -- ** BuildOptionsLogging
    , BuildOptionsLogging (..)

    -- ** WorkerPoolState
    , WorkerPoolState (..)

    -- ** HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- ** WarningPriority
    , WarningPriority (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

    -- ** BuildOptionsMachineType
    , BuildOptionsMachineType (..)

    -- ** BuildTiming
    , BuildTiming
    , buildTiming
    , btAddtional

    -- ** NotifierConfig
    , NotifierConfig
    , notifierConfig
    , ncAPIVersion
    , ncKind
    , ncSpec
    , ncMetadata

    -- ** BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- ** FailureInfoType
    , FailureInfoType (..)

    -- ** BuildOptions
    , BuildOptions
    , buildOptions
    , boDiskSizeGb
    , boEnv
    , boPool
    , boSubstitutionOption
    , boRequestedVerifyOption
    , boWorkerPool
    , boMachineType
    , boSecretEnv
    , boVolumes
    , boLogStreamingOption
    , boLogging
    , boSourceProvenanceHash
    , boDynamicSubstitutions

    -- ** NotificationStructDelivery
    , NotificationStructDelivery
    , notificationStructDelivery
    , nsdAddtional

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** RunBuildTriggerRequest
    , RunBuildTriggerRequest
    , runBuildTriggerRequest
    , rbtrTriggerId
    , rbtrSource
    , rbtrProjectId

    -- ** BuildTrigger
    , BuildTrigger
    , buildTrigger
    , btSubstitutions
    , btResourceName
    , btIncludedFiles
    , btSourceToBuild
    , btDisabled
    , btTriggerTemplate
    , btBuild
    , btIgnoredFiles
    , btPubsubConfig
    , btName
    , btId
    , btGithub
    , btFilter
    , btAutodetect
    , btDescription
    , btFilename
    , btCreateTime
    , btWebhookConfig
    , btTags

    -- ** WebhookConfigState
    , WebhookConfigState (..)

    -- ** NotifierMetadata
    , NotifierMetadata
    , notifierMetadata
    , nmNotifier
    , nmName

    -- ** NotifierSpec
    , NotifierSpec
    , notifierSpec
    , nsSecrets
    , nsNotification

    -- ** BuiltImage
    , BuiltImage
    , builtImage
    , biPushTiming
    , biName
    , biDigest

    -- ** RepoSourceSubstitutions
    , RepoSourceSubstitutions
    , repoSourceSubstitutions
    , rssAddtional

    -- ** WebhookConfig
    , WebhookConfig
    , webhookConfig
    , wcState
    , wcSecret
    ) where

import Network.Google.Prelude
import Network.Google.ContainerBuilder.Types
import Network.Google.Resource.Cloudbuild.Operations.Cancel
import Network.Google.Resource.Cloudbuild.Operations.Get
import Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Builds.Create
import Network.Google.Resource.Cloudbuild.Projects.Builds.Get
import Network.Google.Resource.Cloudbuild.Projects.Builds.List
import Network.Google.Resource.Cloudbuild.Projects.Builds.Retry
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Create
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Get
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.List
import Network.Google.Resource.Cloudbuild.Projects.Locations.Builds.Retry
import Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Cancel
import Network.Google.Resource.Cloudbuild.Projects.Locations.Operations.Get
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Create
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Delete
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Get
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.List
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Patch
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Run
import Network.Google.Resource.Cloudbuild.Projects.Locations.Triggers.Webhook
import Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Create
import Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Delete
import Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Get
import Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.List
import Network.Google.Resource.Cloudbuild.Projects.Locations.WorkerPools.Patch
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
import Network.Google.Resource.Cloudbuild.Projects.Triggers.List
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Run
import Network.Google.Resource.Cloudbuild.Projects.Triggers.Webhook

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Build API service.
type ContainerBuilderAPI =
     OperationsGetResource :<|> OperationsCancelResource
       :<|> ProjectsBuildsListResource
       :<|> ProjectsBuildsRetryResource
       :<|> ProjectsBuildsGetResource
       :<|> ProjectsBuildsCreateResource
       :<|> ProjectsBuildsCancelResource
       :<|> ProjectsTriggersListResource
       :<|> ProjectsTriggersPatchResource
       :<|> ProjectsTriggersGetResource
       :<|> ProjectsTriggersRunResource
       :<|> ProjectsTriggersCreateResource
       :<|> ProjectsTriggersWebhookResource
       :<|> ProjectsTriggersDeleteResource
       :<|> ProjectsLocationsBuildsListResource
       :<|> ProjectsLocationsBuildsRetryResource
       :<|> ProjectsLocationsBuildsGetResource
       :<|> ProjectsLocationsBuildsCreateResource
       :<|> ProjectsLocationsBuildsCancelResource
       :<|> ProjectsLocationsTriggersListResource
       :<|> ProjectsLocationsTriggersPatchResource
       :<|> ProjectsLocationsTriggersGetResource
       :<|> ProjectsLocationsTriggersRunResource
       :<|> ProjectsLocationsTriggersCreateResource
       :<|> ProjectsLocationsTriggersWebhookResource
       :<|> ProjectsLocationsTriggersDeleteResource
       :<|> ProjectsLocationsWorkerPoolsListResource
       :<|> ProjectsLocationsWorkerPoolsPatchResource
       :<|> ProjectsLocationsWorkerPoolsGetResource
       :<|> ProjectsLocationsWorkerPoolsCreateResource
       :<|> ProjectsLocationsWorkerPoolsDeleteResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerBuilder.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ContainerBuilder.Types
    (
    -- * Service Configuration
      containerBuilderService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * BuildStep
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

    -- * WorkerConfig
    , WorkerConfig
    , workerConfig
    , wcDiskSizeGb
    , wcMachineType

    -- * SourceProvenance
    , SourceProvenance
    , sourceProvenance
    , spResolvedRepoSource
    , spResolvedStorageSourceManifest
    , spResolvedStorageSource
    , spFileHashes

    -- * ListBuildsResponse
    , ListBuildsResponse
    , listBuildsResponse
    , lbrNextPageToken
    , lbrBuilds

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * PullRequestFilter
    , PullRequestFilter
    , pullRequestFilter
    , prfCommentControl
    , prfInvertRegex
    , prfBranch

    -- * RetryBuildRequest
    , RetryBuildRequest
    , retryBuildRequest
    , rbrName
    , rbrId
    , rbrProjectId

    -- * PoolOption
    , PoolOption
    , poolOption
    , poName

    -- * HTTPBodyExtensionsItem
    , HTTPBodyExtensionsItem
    , hTTPBodyExtensionsItem
    , httpbeiAddtional

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Hash
    , Hash
    , hash
    , hValue
    , hType

    -- * Results
    , Results
    , results
    , rImages
    , rBuildStepImages
    , rArtifactManifest
    , rBuildStepOutputs
    , rNumArtifacts
    , rArtifactTiming

    -- * BuildTriggerSubstitutions
    , BuildTriggerSubstitutions
    , buildTriggerSubstitutions
    , btsAddtional

    -- * RepoSource
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

    -- * Secrets
    , Secrets
    , secrets
    , sInline
    , sSecretManager

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Empty
    , Empty
    , empty

    -- * SecretSecretEnv
    , SecretSecretEnv
    , secretSecretEnv
    , sseAddtional

    -- * Notification
    , Notification
    , notification
    , nStructDelivery
    , nSmtpDelivery
    , nHTTPDelivery
    , nSlackDelivery
    , nFilter

    -- * Artifacts
    , Artifacts
    , artifacts
    , aImages
    , aObjects

    -- * BuildStepStatus
    , BuildStepStatus (..)

    -- * ArtifactObjects
    , ArtifactObjects
    , artifactObjects
    , aoLocation
    , aoTiming
    , aoPaths

    -- * GitHubEventsConfig
    , GitHubEventsConfig
    , gitHubEventsConfig
    , ghecOwner
    , ghecPullRequest
    , ghecName
    , ghecPush
    , ghecInstallationId

    -- * ListWorkerPoolsResponse
    , ListWorkerPoolsResponse
    , listWorkerPoolsResponse
    , lwprNextPageToken
    , lwprWorkerPools

    -- * PullRequestFilterCommentControl
    , PullRequestFilterCommentControl (..)

    -- * Volume
    , Volume
    , volume
    , vPath
    , vName

    -- * NotifierSecretRef
    , NotifierSecretRef
    , notifierSecretRef
    , nsrSecretRef

    -- * ReceiveTriggerWebhookResponse
    , ReceiveTriggerWebhookResponse
    , receiveTriggerWebhookResponse

    -- * StorageSourceManifest
    , StorageSourceManifest
    , storageSourceManifest
    , ssmBucket
    , ssmObject
    , ssmGeneration

    -- * DeleteWorkerPoolOperationMetadata
    , DeleteWorkerPoolOperationMetadata
    , deleteWorkerPoolOperationMetadata
    , dwpomCompleteTime
    , dwpomWorkerPool
    , dwpomCreateTime

    -- * UpdateWorkerPoolOperationMetadata
    , UpdateWorkerPoolOperationMetadata
    , updateWorkerPoolOperationMetadata
    , uwpomCompleteTime
    , uwpomWorkerPool
    , uwpomCreateTime

    -- * SecretManagerSecret
    , SecretManagerSecret
    , secretManagerSecret
    , smsVersionName
    , smsEnv

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * PubsubConfigState
    , PubsubConfigState (..)

    -- * Build
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

    -- * InlineSecretEnvMap
    , InlineSecretEnvMap
    , inlineSecretEnvMap
    , isemAddtional

    -- * FailureInfo
    , FailureInfo
    , failureInfo
    , fiType
    , fiDetail

    -- * CreateWorkerPoolOperationMetadata
    , CreateWorkerPoolOperationMetadata
    , createWorkerPoolOperationMetadata
    , cwpomCompleteTime
    , cwpomWorkerPool
    , cwpomCreateTime

    -- * SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- * WorkerPoolAnnotations
    , WorkerPoolAnnotations
    , workerPoolAnnotations
    , wpaAddtional

    -- * SMTPDelivery
    , SMTPDelivery
    , sMTPDelivery
    , smtpdSenderAddress
    , smtpdFromAddress
    , smtpdRecipientAddresses
    , smtpdPassword
    , smtpdServer
    , smtpdPort

    -- * Secret
    , Secret
    , secret
    , sKmsKeyName
    , sSecretEnv

    -- * GoogleDevtoolsCloudbuildV2OperationMetadata
    , GoogleDevtoolsCloudbuildV2OperationMetadata
    , googleDevtoolsCloudbuildV2OperationMetadata
    , gdcvomAPIVersion
    , gdcvomRequestedCancellation
    , gdcvomStatusMessage
    , gdcvomEndTime
    , gdcvomVerb
    , gdcvomTarget
    , gdcvomCreateTime

    -- * PushFilter
    , PushFilter
    , pushFilter
    , pfInvertRegex
    , pfTag
    , pfBranch

    -- * CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest
    , cbrName
    , cbrId
    , cbrProjectId

    -- * PubsubConfig
    , PubsubConfig
    , pubsubConfig
    , pcState
    , pcTopic
    , pcServiceAccountEmail
    , pcSubscription

    -- * TimeSpan
    , TimeSpan
    , timeSpan
    , tsStartTime
    , tsEndTime

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncPeeredNetwork
    , ncEgressOption

    -- * StorageSource
    , StorageSource
    , storageSource
    , ssBucket
    , ssObject
    , ssGeneration

    -- * PrivatePoolV1Config
    , PrivatePoolV1Config
    , privatePoolV1Config
    , ppvcWorkerConfig
    , ppvcNetworkConfig

    -- * HTTPDelivery
    , HTTPDelivery
    , hTTPDelivery
    , httpdURI

    -- * ListBuildTriggersResponse
    , ListBuildTriggersResponse
    , listBuildTriggersResponse
    , lbtrNextPageToken
    , lbtrTriggers

    -- * InlineSecret
    , InlineSecret
    , inlineSecret
    , isEnvMap
    , isKmsKeyName

    -- * ArtifactResult
    , ArtifactResult
    , artifactResult
    , arFileHash
    , arLocation

    -- * GitRepoSourceRepoType
    , GitRepoSourceRepoType (..)

    -- * GitRepoSource
    , GitRepoSource
    , gitRepoSource
    , grsRepoType
    , grsURI
    , grsRef

    -- * BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- * FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- * Warning
    , Warning
    , warning
    , wPriority
    , wText

    -- * NetworkConfigEgressOption
    , NetworkConfigEgressOption (..)

    -- * WorkerPool
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

    -- * BuildSubstitutions
    , BuildSubstitutions
    , buildSubstitutions
    , bsAddtional

    -- * SlackDelivery
    , SlackDelivery
    , slackDelivery
    , sdWebhookURI

    -- * Xgafv
    , Xgafv (..)

    -- * BuildStatus
    , BuildStatus (..)

    -- * BuildOptionsSubstitutionOption
    , BuildOptionsSubstitutionOption (..)

    -- * HashType
    , HashType (..)

    -- * NotifierSecret
    , NotifierSecret
    , notifierSecret
    , nsValue
    , nsName

    -- * BuildOptionsLogStreamingOption
    , BuildOptionsLogStreamingOption (..)

    -- * BuildOptionsSourceProvenanceHashItem
    , BuildOptionsSourceProvenanceHashItem (..)

    -- * Source
    , Source
    , source
    , sRepoSource
    , sStorageSourceManifest
    , sStorageSource

    -- * BuildOptionsLogging
    , BuildOptionsLogging (..)

    -- * WorkerPoolState
    , WorkerPoolState (..)

    -- * HTTPBody
    , HTTPBody
    , hTTPBody
    , httpbExtensions
    , httpbData
    , httpbContentType

    -- * WarningPriority
    , WarningPriority (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omEndTime
    , omStatusDetail
    , omVerb
    , omCancelRequested
    , omTarget
    , omCreateTime

    -- * BuildOptionsMachineType
    , BuildOptionsMachineType (..)

    -- * BuildTiming
    , BuildTiming
    , buildTiming
    , btAddtional

    -- * NotifierConfig
    , NotifierConfig
    , notifierConfig
    , ncAPIVersion
    , ncKind
    , ncSpec
    , ncMetadata

    -- * BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- * FailureInfoType
    , FailureInfoType (..)

    -- * BuildOptions
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

    -- * NotificationStructDelivery
    , NotificationStructDelivery
    , notificationStructDelivery
    , nsdAddtional

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * RunBuildTriggerRequest
    , RunBuildTriggerRequest
    , runBuildTriggerRequest
    , rbtrTriggerId
    , rbtrSource
    , rbtrProjectId

    -- * BuildTrigger
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

    -- * WebhookConfigState
    , WebhookConfigState (..)

    -- * NotifierMetadata
    , NotifierMetadata
    , notifierMetadata
    , nmNotifier
    , nmName

    -- * NotifierSpec
    , NotifierSpec
    , notifierSpec
    , nsSecrets
    , nsNotification

    -- * BuiltImage
    , BuiltImage
    , builtImage
    , biPushTiming
    , biName
    , biDigest

    -- * RepoSourceSubstitutions
    , RepoSourceSubstitutions
    , repoSourceSubstitutions
    , rssAddtional

    -- * WebhookConfig
    , WebhookConfig
    , webhookConfig
    , wcState
    , wcSecret
    ) where

import Network.Google.ContainerBuilder.Types.Product
import Network.Google.ContainerBuilder.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Build API. This contains the host and root path used as a starting point for constructing service requests.
containerBuilderService :: ServiceConfig
containerBuilderService
  = defaultService (ServiceId "cloudbuild:v1")
      "cloudbuild.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ContainerBuilder
-- Copyright   : (c) 2015-2016 Brendan Hay
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

    -- ** cloudbuild.operations.list
    , module Network.Google.Resource.Cloudbuild.Operations.List

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

    -- ** SourceProvenance
    , SourceProvenance
    , sourceProvenance
    , spResolvedRepoSource
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

    -- ** RetryBuildRequest
    , RetryBuildRequest
    , retryBuildRequest

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

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

    -- ** BuildTriggerSubstitutions
    , BuildTriggerSubstitutions
    , buildTriggerSubstitutions
    , btsAddtional

    -- ** RepoSource
    , RepoSource
    , repoSource
    , rsRepoName
    , rsDir
    , rsCommitSha
    , rsBranchName
    , rsTagName
    , rsProjectId

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

    -- ** Volume
    , Volume
    , volume
    , vPath
    , vName

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** Build
    , Build
    , build
    , bImages
    , bStatus
    , bSourceProvenance
    , bSubstitutions
    , bLogURL
    , bResults
    , bSecrets
    , bStartTime
    , bArtifacts
    , bLogsBucket
    , bSteps
    , bStatusDetail
    , bSource
    , bId
    , bOptions
    , bProjectId
    , bTiming
    , bBuildTriggerId
    , bTimeout
    , bFinishTime
    , bCreateTime
    , bTags

    -- ** SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- ** Secret
    , Secret
    , secret
    , sKmsKeyName
    , sSecretEnv

    -- ** CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest

    -- ** TimeSpan
    , TimeSpan
    , timeSpan
    , tsStartTime
    , tsEndTime

    -- ** StorageSource
    , StorageSource
    , storageSource
    , ssBucket
    , ssObject
    , ssGeneration

    -- ** ListBuildTriggersResponse
    , ListBuildTriggersResponse
    , listBuildTriggersResponse
    , lbtrTriggers

    -- ** ArtifactResult
    , ArtifactResult
    , artifactResult
    , arFileHash
    , arLocation

    -- ** BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- ** FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- ** BuildSubstitutions
    , BuildSubstitutions
    , buildSubstitutions
    , bsAddtional

    -- ** Xgafv
    , Xgafv (..)

    -- ** BuildStatus
    , BuildStatus (..)

    -- ** BuildOptionsSubstitutionOption
    , BuildOptionsSubstitutionOption (..)

    -- ** HashType
    , HashType (..)

    -- ** BuildOptionsLogStreamingOption
    , BuildOptionsLogStreamingOption (..)

    -- ** Source
    , Source
    , source
    , sRepoSource
    , sStorageSource

    -- ** BuildOptionsLogging
    , BuildOptionsLogging (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** BuildOptionsMachineType
    , BuildOptionsMachineType (..)

    -- ** BuildTiming
    , BuildTiming
    , buildTiming
    , btAddtional

    -- ** BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- ** BuildOptions
    , BuildOptions
    , buildOptions
    , boDiskSizeGb
    , boEnv
    , boSubstitutionOption
    , boRequestedVerifyOption
    , boWorkerPool
    , boMachineType
    , boSecretEnv
    , boVolumes
    , boLogStreamingOption
    , boLogging
    , boSourceProvenanceHash

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** BuildTrigger
    , BuildTrigger
    , buildTrigger
    , btSubstitutions
    , btIncludedFiles
    , btDisabled
    , btTriggerTemplate
    , btBuild
    , btIgnoredFiles
    , btId
    , btDescription
    , btFilename
    , btCreateTime

    -- ** BuiltImage
    , BuiltImage
    , builtImage
    , biPushTiming
    , biName
    , biDigest
    ) where

import           Network.Google.ContainerBuilder.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Cloudbuild.Operations.Cancel
import           Network.Google.Resource.Cloudbuild.Operations.Get
import           Network.Google.Resource.Cloudbuild.Operations.List
import           Network.Google.Resource.Cloudbuild.Projects.Builds.Cancel
import           Network.Google.Resource.Cloudbuild.Projects.Builds.Create
import           Network.Google.Resource.Cloudbuild.Projects.Builds.Get
import           Network.Google.Resource.Cloudbuild.Projects.Builds.List
import           Network.Google.Resource.Cloudbuild.Projects.Builds.Retry
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.List
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Run

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Build API service.
type ContainerBuilderAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
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
       :<|> ProjectsTriggersDeleteResource

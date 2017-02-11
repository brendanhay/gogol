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
-- Builds container images in the cloud.
--
-- /See:/ <https://cloud.google.com/container-builder/docs/ Google Cloud Container Builder API Reference>
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

    -- * Types

    -- ** BuildStep
    , BuildStep
    , buildStep
    , bsDir
    , bsArgs
    , bsEnv
    , bsEntrypoint
    , bsWaitFor
    , bsName
    , bsId

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

    -- ** RepoSource
    , RepoSource
    , repoSource
    , rsRepoName
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
    , bLogURL
    , bResults
    , bStartTime
    , bLogsBucket
    , bSteps
    , bStatusDetail
    , bSource
    , bId
    , bOptions
    , bProjectId
    , bBuildTriggerId
    , bTimeout
    , bFinishTime
    , bCreateTime

    -- ** SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- ** CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest

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

    -- ** BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- ** FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- ** Xgafv
    , Xgafv (..)

    -- ** BuildStatus
    , BuildStatus (..)

    -- ** HashType
    , HashType (..)

    -- ** Source
    , Source
    , source
    , sRepoSource
    , sStorageSource

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- ** BuildOptions
    , BuildOptions
    , buildOptions
    , boRequestedVerifyOption
    , boSourceProvenanceHash

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** BuildTrigger
    , BuildTrigger
    , buildTrigger
    , btDisabled
    , btTriggerTemplate
    , btBuild
    , btId
    , btDescription
    , btFilename
    , btCreateTime

    -- ** BuiltImage
    , BuiltImage
    , builtImage
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
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Create
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Delete
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Get
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.List
import           Network.Google.Resource.Cloudbuild.Projects.Triggers.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Cloud Container Builder API service.
type ContainerBuilderAPI =
     OperationsListResource :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> ProjectsBuildsListResource
       :<|> ProjectsBuildsGetResource
       :<|> ProjectsBuildsCreateResource
       :<|> ProjectsBuildsCancelResource
       :<|> ProjectsTriggersListResource
       :<|> ProjectsTriggersPatchResource
       :<|> ProjectsTriggersGetResource
       :<|> ProjectsTriggersCreateResource
       :<|> ProjectsTriggersDeleteResource

{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ContainerBuilder.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , bsDir
    , bsArgs
    , bsEnv
    , bsEntrypoint
    , bsWaitFor
    , bsName
    , bsId

    -- * SourceProvenance
    , SourceProvenance
    , sourceProvenance
    , spResolvedRepoSource
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

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

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

    -- * RepoSource
    , RepoSource
    , repoSource
    , rsRepoName
    , rsCommitSha
    , rsBranchName
    , rsTagName
    , rsProjectId

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

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Build
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

    -- * SourceProvenanceFileHashes
    , SourceProvenanceFileHashes
    , sourceProvenanceFileHashes
    , spfhAddtional

    -- * CancelBuildRequest
    , CancelBuildRequest
    , cancelBuildRequest

    -- * StorageSource
    , StorageSource
    , storageSource
    , ssBucket
    , ssObject
    , ssGeneration

    -- * ListBuildTriggersResponse
    , ListBuildTriggersResponse
    , listBuildTriggersResponse
    , lbtrTriggers

    -- * BuildOptionsRequestedVerifyOption
    , BuildOptionsRequestedVerifyOption (..)

    -- * FileHashes
    , FileHashes
    , fileHashes
    , fhFileHash

    -- * Xgafv
    , Xgafv (..)

    -- * BuildStatus
    , BuildStatus (..)

    -- * HashType
    , HashType (..)

    -- * Source
    , Source
    , source
    , sRepoSource
    , sStorageSource

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * BuildOperationMetadata
    , BuildOperationMetadata
    , buildOperationMetadata
    , bomBuild

    -- * BuildOptions
    , BuildOptions
    , buildOptions
    , boRequestedVerifyOption
    , boSourceProvenanceHash

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * BuildTrigger
    , BuildTrigger
    , buildTrigger
    , btDisabled
    , btTriggerTemplate
    , btBuild
    , btId
    , btDescription
    , btFilename
    , btCreateTime

    -- * BuiltImage
    , BuiltImage
    , builtImage
    , biName
    , biDigest
    ) where

import           Network.Google.ContainerBuilder.Types.Product
import           Network.Google.ContainerBuilder.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Google Cloud Container Builder API. This contains the host and root path used as a starting point for constructing service requests.
containerBuilderService :: ServiceConfig
containerBuilderService
  = defaultService (ServiceId "cloudbuild:v1")
      "cloudbuild.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DeploymentManager
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | The Deployment Manager API allows users to declaratively configure,
-- deploy and run complex solutions on the Google Cloud Platform.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference>
module Network.Google.DeploymentManager
    (
    -- * REST Resources

    -- ** Google Cloud Deployment Manager API
      DeploymentManager
    , deploymentManager
    , deploymentManagerURL

    -- ** deploymentmanager.deployments.delete
    , module Network.Google.API.DeploymentManager.Deployments.Delete

    -- ** deploymentmanager.deployments.get
    , module Network.Google.API.DeploymentManager.Deployments.Get

    -- ** deploymentmanager.deployments.insert
    , module Network.Google.API.DeploymentManager.Deployments.Insert

    -- ** deploymentmanager.deployments.list
    , module Network.Google.API.DeploymentManager.Deployments.List

    -- ** deploymentmanager.deployments.patch
    , module Network.Google.API.DeploymentManager.Deployments.Patch

    -- ** deploymentmanager.deployments.update
    , module Network.Google.API.DeploymentManager.Deployments.Update

    -- ** deploymentmanager.manifests.get
    , module Network.Google.API.DeploymentManager.Manifests.Get

    -- ** deploymentmanager.manifests.list
    , module Network.Google.API.DeploymentManager.Manifests.List

    -- ** deploymentmanager.operations.get
    , module Network.Google.API.DeploymentManager.Operations.Get

    -- ** deploymentmanager.operations.list
    , module Network.Google.API.DeploymentManager.Operations.List

    -- ** deploymentmanager.resources.get
    , module Network.Google.API.DeploymentManager.Resources.Get

    -- ** deploymentmanager.resources.list
    , module Network.Google.API.DeploymentManager.Resources.List

    -- ** deploymentmanager.types.list
    , module Network.Google.API.DeploymentManager.Types.List

    -- * Types

    -- ** DeploymentsPatch'CreatePolicy
    , DeploymentsPatch'CreatePolicy (..)

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** Manifest
    , Manifest
    , manifest
    , mInsertTime
    , mLayout
    , mConfig
    , mImports
    , mSelfLink
    , mName
    , mEvaluatedConfig
    , mId

    -- ** TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

    -- ** Alt
    , Alt (..)

    -- ** ManifestsListResponse
    , ManifestsListResponse
    , manifestsListResponse
    , mlrNextPageToken
    , mlrManifests

    -- ** Type
    , Type
    , type'
    , tInsertTime
    , tSelfLink
    , tName
    , tId

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** ImportFile
    , ImportFile
    , importFile
    , ifContent
    , ifName

    -- ** DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

    -- ** DeploymentsUpdate'CreatePolicy
    , DeploymentsUpdate'CreatePolicy (..)

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** DeploymentsUpdate'UpdatePolicy
    , DeploymentsUpdate'UpdatePolicy (..)

    -- ** DeploymentsUpdate'DeletePolicy
    , DeploymentsUpdate'DeletePolicy (..)

    -- ** DeploymentsPatch'UpdatePolicy
    , DeploymentsPatch'UpdatePolicy (..)

    -- ** Deployment
    , Deployment
    , deployment
    , dState
    , dInsertTime
    , dFingerprint
    , dIntent
    , dUpdateTime
    , dName
    , dManifest
    , dId
    , dDescription
    , dUpdate
    , dTarget

    -- ** DeploymentsPatch'DeletePolicy
    , DeploymentsPatch'DeletePolicy (..)

    -- ** TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrOperations

    -- ** Resource
    , Resource
    , resource
    , rInsertTime
    , rUrl
    , rUpdateTime
    , rName
    , rManifest
    , rFinalProperties
    , rId
    , rType
    , rUpdate
    , rProperties

    -- ** Operation
    , Operation
    , operation
    , oTargetId
    , oStatus
    , oInsertTime
    , oProgress
    , oStartTime
    , oKind
    , oError
    , oHttpErrorMessage
    , oZone
    , oWarnings
    , oHttpErrorStatusCode
    , oUser
    , oSelfLink
    , oName
    , oStatusMessage
    , oCreationTimestamp
    , oEndTime
    , oId
    , oOperationType
    , oRegion
    , oTargetLink
    , oClientOperationId

    -- ** ResourcesListResponse
    , ResourcesListResponse
    , resourcesListResponse
    , rlrNextPageToken
    , rlrResources

    -- ** DeploymentUpdate
    , DeploymentUpdate
    , deploymentUpdate
    , duManifest
    , duErrors

    -- ** ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruIntent
    , ruManifest
    , ruFinalProperties
    , ruErrors
    , ruProperties
    ) where

import           Network.Google.API.DeploymentManager.Deployments.Delete
import           Network.Google.API.DeploymentManager.Deployments.Get
import           Network.Google.API.DeploymentManager.Deployments.Insert
import           Network.Google.API.DeploymentManager.Deployments.List
import           Network.Google.API.DeploymentManager.Deployments.Patch
import           Network.Google.API.DeploymentManager.Deployments.Update
import           Network.Google.API.DeploymentManager.Manifests.Get
import           Network.Google.API.DeploymentManager.Manifests.List
import           Network.Google.API.DeploymentManager.Operations.Get
import           Network.Google.API.DeploymentManager.Operations.List
import           Network.Google.API.DeploymentManager.Resources.Get
import           Network.Google.API.DeploymentManager.Resources.List
import           Network.Google.API.DeploymentManager.Types.List
import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

{- $resources
TODO
-}

type DeploymentManager =
     ManifestsListAPI :<|> ManifestsGetAPI :<|>
       DeploymentsDeleteAPI
       :<|> ResourcesGetAPI
       :<|> DeploymentsGetAPI
       :<|> ResourcesListAPI
       :<|> DeploymentsPatchAPI
       :<|> OperationsGetAPI
       :<|> OperationsListAPI
       :<|> DeploymentsListAPI
       :<|> TypesListAPI
       :<|> DeploymentsUpdateAPI
       :<|> DeploymentsInsertAPI

deploymentManager :: Proxy DeploymentManager
deploymentManager = Proxy

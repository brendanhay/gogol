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
    -- * API
      DeploymentManagerAPI
    , deploymentManagerAPI
    , deploymentManagerURL

    -- * Service Methods

    -- * REST Resources

    -- ** DeploymentManagerDeploymentsDelete
    , module Network.Google.Resource.DeploymentManager.Deployments.Delete

    -- ** DeploymentManagerDeploymentsGet
    , module Network.Google.Resource.DeploymentManager.Deployments.Get

    -- ** DeploymentManagerDeploymentsInsert
    , module Network.Google.Resource.DeploymentManager.Deployments.Insert

    -- ** DeploymentManagerDeploymentsList
    , module Network.Google.Resource.DeploymentManager.Deployments.List

    -- ** DeploymentManagerDeploymentsPatch
    , module Network.Google.Resource.DeploymentManager.Deployments.Patch

    -- ** DeploymentManagerDeploymentsUpdate
    , module Network.Google.Resource.DeploymentManager.Deployments.Update

    -- ** DeploymentManagerManifestsGet
    , module Network.Google.Resource.DeploymentManager.Manifests.Get

    -- ** DeploymentManagerManifestsList
    , module Network.Google.Resource.DeploymentManager.Manifests.List

    -- ** DeploymentManagerOperationsGet
    , module Network.Google.Resource.DeploymentManager.Operations.Get

    -- ** DeploymentManagerOperationsList
    , module Network.Google.Resource.DeploymentManager.Operations.List

    -- ** DeploymentManagerResourcesGet
    , module Network.Google.Resource.DeploymentManager.Resources.Get

    -- ** DeploymentManagerResourcesList
    , module Network.Google.Resource.DeploymentManager.Resources.List

    -- ** DeploymentManagerTypesList
    , module Network.Google.Resource.DeploymentManager.Types.List

    -- * Types

    -- ** OperationWarnings
    , OperationWarnings
    , operationWarnings
    , owData
    , owCode
    , owMessage

    -- ** OperationWarningsData
    , OperationWarningsData
    , operationWarningsData
    , owdValue
    , owdKey

    -- ** DeploymentManagerDeploymentsPatchDeletePolicy
    , DeploymentManagerDeploymentsPatchDeletePolicy (..)

    -- ** DeploymentManagerDeploymentsPatchUpdatePolicy
    , DeploymentManagerDeploymentsPatchUpdatePolicy (..)

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrOperations

    -- ** TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes

    -- ** DeploymentManagerDeploymentsPatchCreatePolicy
    , DeploymentManagerDeploymentsPatchCreatePolicy (..)

    -- ** DeploymentManagerDeploymentsUpdateCreatePolicy
    , DeploymentManagerDeploymentsUpdateCreatePolicy (..)

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
    , oHTTPErrorMessage
    , oZone
    , oWarnings
    , oHTTPErrorStatusCode
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

    -- ** DeploymentManagerDeploymentsUpdateUpdatePolicy
    , DeploymentManagerDeploymentsUpdateUpdatePolicy (..)

    -- ** DeploymentManagerDeploymentsUpdateDeletePolicy
    , DeploymentManagerDeploymentsUpdateDeletePolicy (..)

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

    -- ** Resource
    , Resource
    , resource
    , rInsertTime
    , rURL
    , rUpdateTime
    , rName
    , rManifest
    , rFinalProperties
    , rId
    , rType
    , rUpdate
    , rProperties

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** OperationErrorErrors
    , OperationErrorErrors
    , operationErrorErrors
    , oeeLocation
    , oeeCode
    , oeeMessage

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

    -- ** TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DeploymentManager.Deployments.Delete
import           Network.Google.Resource.DeploymentManager.Deployments.Get
import           Network.Google.Resource.DeploymentManager.Deployments.Insert
import           Network.Google.Resource.DeploymentManager.Deployments.List
import           Network.Google.Resource.DeploymentManager.Deployments.Patch
import           Network.Google.Resource.DeploymentManager.Deployments.Update
import           Network.Google.Resource.DeploymentManager.Manifests.Get
import           Network.Google.Resource.DeploymentManager.Manifests.List
import           Network.Google.Resource.DeploymentManager.Operations.Get
import           Network.Google.Resource.DeploymentManager.Operations.List
import           Network.Google.Resource.DeploymentManager.Resources.Get
import           Network.Google.Resource.DeploymentManager.Resources.List
import           Network.Google.Resource.DeploymentManager.Types.List

{- $resources
TODO
-}

type DeploymentManagerAPI =
     TypesListResource :<|> ResourcesListResource :<|>
       ResourcesGetResource
       :<|> ManifestsListResource
       :<|> ManifestsGetResource
       :<|> DeploymentsInsertResource
       :<|> DeploymentsListResource
       :<|> DeploymentsPatchResource
       :<|> DeploymentsGetResource
       :<|> DeploymentsDeleteResource
       :<|> DeploymentsUpdateResource
       :<|> OperationsListResource
       :<|> OperationsGetResource

deploymentManagerAPI :: Proxy DeploymentManagerAPI
deploymentManagerAPI = Proxy

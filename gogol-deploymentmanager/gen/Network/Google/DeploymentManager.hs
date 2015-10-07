{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

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
-- | The Deployment Manager API allows users to declaratively configure,
-- deploy and run complex solutions on the Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference>
module Network.Google.DeploymentManager
    (
    -- * API Declaration
      DeploymentManagerAPI

    -- * Resources

    -- ** DeploymentManagerDeploymentsCancelPreview
    , module Network.Google.Resource.DeploymentManager.Deployments.CancelPreview

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

    -- ** DeploymentManagerDeploymentsStop
    , module Network.Google.Resource.DeploymentManager.Deployments.Stop

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

    -- ** OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- ** ConfigFile
    , ConfigFile
    , configFile
    , cfContent

    -- ** DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

    -- ** OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrOperations

    -- ** ResourceUpdateWarningsItemDataItem
    , ResourceUpdateWarningsItemDataItem
    , resourceUpdateWarningsItemDataItem
    , ruwidiValue
    , ruwidiKey

    -- ** TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes

    -- ** DeploymentsUpdateDeletePolicy
    , DeploymentsUpdateDeletePolicy (..)

    -- ** DeploymentsPatchDeletePolicy
    , DeploymentsPatchDeletePolicy (..)

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

    -- ** DeploymentsPatchCreatePolicy
    , DeploymentsPatchCreatePolicy (..)

    -- ** ResourcesListResponse
    , ResourcesListResponse
    , resourcesListResponse
    , rlrNextPageToken
    , rlrResources

    -- ** DeploymentUpdate
    , DeploymentUpdate
    , deploymentUpdate
    , duManifest

    -- ** ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruError
    , ruWarnings
    , ruIntent
    , ruManifest
    , ruFinalProperties
    , ruProperties

    -- ** Manifest
    , Manifest
    , manifest
    , mInsertTime
    , mLayout
    , mConfig
    , mExpandedConfig
    , mImports
    , mSelfLink
    , mName
    , mId

    -- ** ResourceUpdateWarningsItem
    , ResourceUpdateWarningsItem
    , resourceUpdateWarningsItem
    , ruwiData
    , ruwiCode
    , ruwiMessage

    -- ** DeploymentsCancelPreviewRequest
    , DeploymentsCancelPreviewRequest
    , deploymentsCancelPreviewRequest
    , dcprFingerprint

    -- ** Resource
    , Resource
    , resource
    , rInsertTime
    , rURL
    , rWarnings
    , rUpdateTime
    , rName
    , rManifest
    , rFinalProperties
    , rId
    , rType
    , rUpdate
    , rProperties

    -- ** ResourceUpdateErrorErrorsItem
    , ResourceUpdateErrorErrorsItem
    , resourceUpdateErrorErrorsItem
    , rueeiLocation
    , rueeiCode
    , rueeiMessage

    -- ** ManifestsListResponse
    , ManifestsListResponse
    , manifestsListResponse
    , mlrNextPageToken
    , mlrManifests

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

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

    -- ** OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- ** DeploymentsStopRequest
    , DeploymentsStopRequest
    , deploymentsStopRequest
    , dsrFingerprint

    -- ** ResourceWarningsItemDataItem
    , ResourceWarningsItemDataItem
    , resourceWarningsItemDataItem
    , rwidiValue
    , rwidiKey

    -- ** ResourceUpdateError
    , ResourceUpdateError
    , resourceUpdateError
    , rueErrors

    -- ** DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

    -- ** ResourceWarningsItem
    , ResourceWarningsItem
    , resourceWarningsItem
    , rwiData
    , rwiCode
    , rwiMessage

    -- ** TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports

    -- ** OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- ** Deployment
    , Deployment
    , deployment
    , dInsertTime
    , dOperation
    , dFingerprint
    , dName
    , dManifest
    , dId
    , dDescription
    , dUpdate
    , dTarget
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude
import           Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
import           Network.Google.Resource.DeploymentManager.Deployments.Delete
import           Network.Google.Resource.DeploymentManager.Deployments.Get
import           Network.Google.Resource.DeploymentManager.Deployments.Insert
import           Network.Google.Resource.DeploymentManager.Deployments.List
import           Network.Google.Resource.DeploymentManager.Deployments.Patch
import           Network.Google.Resource.DeploymentManager.Deployments.Stop
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

-- | Represents the entirety of the methods and resources available for the Google Cloud Deployment Manager API service.
type DeploymentManagerAPI =
     TypesListResource :<|> ResourcesListResource :<|>
       ResourcesGetResource
       :<|> ManifestsListResource
       :<|> ManifestsGetResource
       :<|> DeploymentsInsertResource
       :<|> DeploymentsListResource
       :<|> DeploymentsPatchResource
       :<|> DeploymentsGetResource
       :<|> DeploymentsCancelPreviewResource
       :<|> DeploymentsStopResource
       :<|> DeploymentsDeleteResource
       :<|> DeploymentsUpdateResource
       :<|> OperationsListResource
       :<|> OperationsGetResource

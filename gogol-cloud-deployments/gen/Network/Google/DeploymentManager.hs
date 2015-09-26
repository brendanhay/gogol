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
    -- * Resources
      DeploymentManager
    , TypesAPI
    , TypesList
    , ResourcesAPI
    , ResourcesList
    , ResourcesGet
    , ManifestsAPI
    , ManifestsList
    , ManifestsGet
    , DeploymentsAPI
    , DeploymentsInsert
    , DeploymentsList
    , DeploymentsPatch
    , DeploymentsGet
    , DeploymentsDelete
    , DeploymentsUpdate
    , OperationsAPI
    , OperationsList
    , OperationsGet

    -- * Types

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

    -- ** DeploymentUpdate
    , DeploymentUpdate
    , deploymentUpdate
    , duManifest
    , duErrors

    -- ** DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

    -- ** ImportFile
    , ImportFile
    , importFile
    , ifContent
    , ifName

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

    -- ** ManifestsListResponse
    , ManifestsListResponse
    , manifestsListResponse
    , mlrNextPageToken
    , mlrManifests

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

    -- ** OperationError
    , OperationError
    , operationError
    , oeErrors

    -- ** OperationItemDataItemWarnings
    , OperationItemDataItemWarnings
    , operationItemDataItemWarnings
    , oidiwValue
    , oidiwKey

    -- ** OperationItemErrorsError
    , OperationItemErrorsError
    , operationItemErrorsError
    , oieeLocation
    , oieeCode
    , oieeMessage

    -- ** OperationItemWarnings
    , OperationItemWarnings
    , operationItemWarnings
    , oiwData
    , oiwCode
    , oiwMessage

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

    -- ** ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruIntent
    , ruManifest
    , ruFinalProperties
    , ruErrors
    , ruProperties

    -- ** ResourcesListResponse
    , ResourcesListResponse
    , resourcesListResponse
    , rlrNextPageToken
    , rlrResources

    -- ** TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports

    -- ** Type
    , Type
    , type'
    , tInsertTime
    , tSelfLink
    , tName
    , tId

    -- ** TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes
    ) where

import           Network.Google.DeploymentManager.Types

{- $resources
TODO
-}

type DeploymentManager =
     ResourcesAPI :<|>
       ManifestsAPI :<|>
         DeploymentsAPI :<|> OperationsAPI :<|> TypesAPI

type TypesAPI = TypesList

-- | Lists all resource types for Deployment Manager.
type TypesList =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "types"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ResourcesAPI = ResourcesGet :<|> ResourcesList

-- | Lists all resources in a given deployment.
type ResourcesList =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> "resources"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets information about a single resource.
type ResourcesGet =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> "resources"
       :> Capture "resource" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type ManifestsAPI = ManifestsGet :<|> ManifestsList

-- | Lists all manifests for a given deployment.
type ManifestsList =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> "manifests"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets information about a specific manifest.
type ManifestsGet =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> "manifests"
       :> Capture "manifest" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type DeploymentsAPI =
     DeploymentsList :<|>
       DeploymentsPatch :<|>
         DeploymentsGet :<|>
           DeploymentsDelete :<|>
             DeploymentsUpdate :<|> DeploymentsInsert

-- | Creates a deployment and all of the resources described by the
-- deployment manifest.
type DeploymentsInsert =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Lists all deployments for a given project.
type DeploymentsList =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
type DeploymentsPatch =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> QueryParam "createPolicy" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "updatePolicy" Text
       :> QueryParam "deletePolicy" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets information about a specific deployment.
type DeploymentsGet =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Deletes a deployment and all of the resources in the deployment.
type DeploymentsDelete =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
type DeploymentsUpdate =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "deployments"
       :> Capture "deployment" Text
       :> QueryParam "createPolicy" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "updatePolicy" Text
       :> QueryParam "deletePolicy" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

type OperationsAPI =
     OperationsGet :<|> OperationsList

-- | Lists all operations for a project.
type OperationsList =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "operations"
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "filter" Text
       :> QueryParam "pageToken" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "maxResults" Word32
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

-- | Gets information about a specific operation.
type OperationsGet =
     "deploymentmanager" :> "v2beta2" :> "projects" :>
       Capture "project" Text
       :> "global"
       :> "operations"
       :> Capture "operation" Text
       :> QueryParam "quotaUser" Text
       :> QueryParam "prettyPrint" Bool
       :> QueryParam "userIp" Text
       :> QueryParam "key" Text
       :> QueryParam "oauth_token" Text
       :> QueryParam "fields" Text
       :> QueryParam "alt" Text

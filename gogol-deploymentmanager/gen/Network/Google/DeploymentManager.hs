{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DeploymentManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Deployment Manager v2 API provides services for
-- configuring, deploying, and viewing Google Cloud services and APIs via
-- templates which specify deployments of Cloud resources.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference>
module Network.Google.DeploymentManager
    (
    -- * Service Configuration
      deploymentManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , ndevCloudmanScope
    , ndevCloudmanReadOnlyScope

    -- * API Declaration
    , DeploymentManagerAPI

    -- * Resources

    -- ** deploymentmanager.deployments.cancelPreview
    , module Network.Google.Resource.DeploymentManager.Deployments.CancelPreview

    -- ** deploymentmanager.deployments.delete
    , module Network.Google.Resource.DeploymentManager.Deployments.Delete

    -- ** deploymentmanager.deployments.get
    , module Network.Google.Resource.DeploymentManager.Deployments.Get

    -- ** deploymentmanager.deployments.getIamPolicy
    , module Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy

    -- ** deploymentmanager.deployments.insert
    , module Network.Google.Resource.DeploymentManager.Deployments.Insert

    -- ** deploymentmanager.deployments.list
    , module Network.Google.Resource.DeploymentManager.Deployments.List

    -- ** deploymentmanager.deployments.patch
    , module Network.Google.Resource.DeploymentManager.Deployments.Patch

    -- ** deploymentmanager.deployments.setIamPolicy
    , module Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy

    -- ** deploymentmanager.deployments.stop
    , module Network.Google.Resource.DeploymentManager.Deployments.Stop

    -- ** deploymentmanager.deployments.testIamPermissions
    , module Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions

    -- ** deploymentmanager.deployments.update
    , module Network.Google.Resource.DeploymentManager.Deployments.Update

    -- ** deploymentmanager.manifests.get
    , module Network.Google.Resource.DeploymentManager.Manifests.Get

    -- ** deploymentmanager.manifests.list
    , module Network.Google.Resource.DeploymentManager.Manifests.List

    -- ** deploymentmanager.operations.get
    , module Network.Google.Resource.DeploymentManager.Operations.Get

    -- ** deploymentmanager.operations.list
    , module Network.Google.Resource.DeploymentManager.Operations.List

    -- ** deploymentmanager.resources.get
    , module Network.Google.Resource.DeploymentManager.Resources.Get

    -- ** deploymentmanager.resources.list
    , module Network.Google.Resource.DeploymentManager.Resources.List

    -- ** deploymentmanager.types.list
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

    -- ** OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

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

    -- ** ResourceUpdateWarningsItemCode
    , ResourceUpdateWarningsItemCode (..)

    -- ** DeploymentsDeleteDeletePolicy
    , DeploymentsDeleteDeletePolicy (..)

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
    , oOperationGroupId
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
    , oDescription
    , oTargetLink
    , oClientOperationId

    -- ** TestPermissionsResponse
    , TestPermissionsResponse
    , testPermissionsResponse
    , tprPermissions

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
    , duLabels
    , duDescription

    -- ** ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruError
    , ruAccessControl
    , ruWarnings
    , ruIntent
    , ruManifest
    , ruFinalProperties
    , ruProperties

    -- ** DeploymentLabelEntry
    , DeploymentLabelEntry
    , deploymentLabelEntry
    , dleValue
    , dleKey

    -- ** OperationStatus
    , OperationStatus (..)

    -- ** ResourceUpdateState
    , ResourceUpdateState (..)

    -- ** ResourceUpdateIntent
    , ResourceUpdateIntent (..)

    -- ** TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- ** Manifest
    , Manifest
    , manifest
    , mInsertTime
    , mLayout
    , mConfig
    , mExpandedConfig
    , mManifestSizeBytes
    , mImports
    , mSelfLink
    , mName
    , mId
    , mManifestSizeLimitBytes

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

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Resource
    , Resource
    , resource
    , rInsertTime
    , rAccessControl
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

    -- ** Xgafv
    , Xgafv (..)

    -- ** DeploymentUpdateLabelEntry
    , DeploymentUpdateLabelEntry
    , deploymentUpdateLabelEntry
    , duleValue
    , duleKey

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

    -- ** GlobalSetPolicyRequest
    , GlobalSetPolicyRequest
    , globalSetPolicyRequest
    , gsprEtag
    , gsprBindings
    , gsprPolicy

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** Type
    , Type
    , type'
    , tInsertTime
    , tOperation
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

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** ResourceUpdateError
    , ResourceUpdateError
    , resourceUpdateError
    , rueErrors

    -- ** ResourceWarningsItemCode
    , ResourceWarningsItemCode (..)

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

    -- ** ResourceAccessControl
    , ResourceAccessControl
    , resourceAccessControl
    , racGcpIAMPolicy

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

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** Deployment
    , Deployment
    , deployment
    , dInsertTime
    , dOperation
    , dFingerprint
    , dUpdateTime
    , dSelfLink
    , dName
    , dManifest
    , dId
    , dLabels
    , dDescription
    , dUpdate
    , dTarget

    -- ** DeploymentsInsertCreatePolicy
    , DeploymentsInsertCreatePolicy (..)
    ) where

import Network.Google.Prelude
import Network.Google.DeploymentManager.Types
import Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
import Network.Google.Resource.DeploymentManager.Deployments.Delete
import Network.Google.Resource.DeploymentManager.Deployments.Get
import Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy
import Network.Google.Resource.DeploymentManager.Deployments.Insert
import Network.Google.Resource.DeploymentManager.Deployments.List
import Network.Google.Resource.DeploymentManager.Deployments.Patch
import Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy
import Network.Google.Resource.DeploymentManager.Deployments.Stop
import Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions
import Network.Google.Resource.DeploymentManager.Deployments.Update
import Network.Google.Resource.DeploymentManager.Manifests.Get
import Network.Google.Resource.DeploymentManager.Manifests.List
import Network.Google.Resource.DeploymentManager.Operations.Get
import Network.Google.Resource.DeploymentManager.Operations.List
import Network.Google.Resource.DeploymentManager.Resources.Get
import Network.Google.Resource.DeploymentManager.Resources.List
import Network.Google.Resource.DeploymentManager.Types.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Deployment Manager V2 API service.
type DeploymentManagerAPI =
     TypesListResource :<|> ResourcesListResource :<|>
       ResourcesGetResource
       :<|> ManifestsListResource
       :<|> ManifestsGetResource
       :<|> DeploymentsInsertResource
       :<|> DeploymentsListResource
       :<|> DeploymentsGetIAMPolicyResource
       :<|> DeploymentsPatchResource
       :<|> DeploymentsGetResource
       :<|> DeploymentsCancelPreviewResource
       :<|> DeploymentsSetIAMPolicyResource
       :<|> DeploymentsStopResource
       :<|> DeploymentsTestIAMPermissionsResource
       :<|> DeploymentsDeleteResource
       :<|> DeploymentsUpdateResource
       :<|> OperationsListResource
       :<|> OperationsGetResource

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types
    (
    -- * Service Configuration
      deploymentManagerService

    -- * OAuth Scopes
    , cloudPlatformReadOnlyScope
    , cloudPlatformScope
    , ndevCloudmanScope
    , ndevCloudmanReadOnlyScope

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * ConfigFile
    , ConfigFile
    , configFile
    , cfContent

    -- * OperationWarningsItemCode
    , OperationWarningsItemCode (..)

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrOperations

    -- * ResourceUpdateWarningsItemDataItem
    , ResourceUpdateWarningsItemDataItem
    , resourceUpdateWarningsItemDataItem
    , ruwidiValue
    , ruwidiKey

    -- * ResourceUpdateWarningsItemCode
    , ResourceUpdateWarningsItemCode (..)

    -- * DeploymentsDeleteDeletePolicy
    , DeploymentsDeleteDeletePolicy (..)

    -- * TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes

    -- * DeploymentsUpdateDeletePolicy
    , DeploymentsUpdateDeletePolicy (..)

    -- * DeploymentsPatchDeletePolicy
    , DeploymentsPatchDeletePolicy (..)

    -- * Operation
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

    -- * TestPermissionsResponse
    , TestPermissionsResponse
    , testPermissionsResponse
    , tprPermissions

    -- * DeploymentsPatchCreatePolicy
    , DeploymentsPatchCreatePolicy (..)

    -- * ResourcesListResponse
    , ResourcesListResponse
    , resourcesListResponse
    , rlrNextPageToken
    , rlrResources

    -- * DeploymentUpdate
    , DeploymentUpdate
    , deploymentUpdate
    , duManifest
    , duLabels
    , duDescription

    -- * ResourceUpdate
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

    -- * DeploymentLabelEntry
    , DeploymentLabelEntry
    , deploymentLabelEntry
    , dleValue
    , dleKey

    -- * OperationStatus
    , OperationStatus (..)

    -- * ResourceUpdateState
    , ResourceUpdateState (..)

    -- * ResourceUpdateIntent
    , ResourceUpdateIntent (..)

    -- * TestPermissionsRequest
    , TestPermissionsRequest
    , testPermissionsRequest
    , tPermissions

    -- * Manifest
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

    -- * ResourceUpdateWarningsItem
    , ResourceUpdateWarningsItem
    , resourceUpdateWarningsItem
    , ruwiData
    , ruwiCode
    , ruwiMessage

    -- * DeploymentsCancelPreviewRequest
    , DeploymentsCancelPreviewRequest
    , deploymentsCancelPreviewRequest
    , dcprFingerprint

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Resource
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

    -- * Xgafv
    , Xgafv (..)

    -- * DeploymentUpdateLabelEntry
    , DeploymentUpdateLabelEntry
    , deploymentUpdateLabelEntry
    , duleValue
    , duleKey

    -- * ResourceUpdateErrorErrorsItem
    , ResourceUpdateErrorErrorsItem
    , resourceUpdateErrorErrorsItem
    , rueeiLocation
    , rueeiCode
    , rueeiMessage

    -- * ManifestsListResponse
    , ManifestsListResponse
    , manifestsListResponse
    , mlrNextPageToken
    , mlrManifests

    -- * OperationError
    , OperationError
    , operationError
    , oeErrors

    -- * GlobalSetPolicyRequest
    , GlobalSetPolicyRequest
    , globalSetPolicyRequest
    , gsprEtag
    , gsprBindings
    , gsprPolicy

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * Type
    , Type
    , type'
    , tInsertTime
    , tOperation
    , tSelfLink
    , tName
    , tId

    -- * ImportFile
    , ImportFile
    , importFile
    , ifContent
    , ifName

    -- * OperationErrorErrorsItem
    , OperationErrorErrorsItem
    , operationErrorErrorsItem
    , oeeiLocation
    , oeeiCode
    , oeeiMessage

    -- * DeploymentsStopRequest
    , DeploymentsStopRequest
    , deploymentsStopRequest
    , dsrFingerprint

    -- * ResourceWarningsItemDataItem
    , ResourceWarningsItemDataItem
    , resourceWarningsItemDataItem
    , rwidiValue
    , rwidiKey

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * ResourceUpdateError
    , ResourceUpdateError
    , resourceUpdateError
    , rueErrors

    -- * ResourceWarningsItemCode
    , ResourceWarningsItemCode (..)

    -- * DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

    -- * ResourceWarningsItem
    , ResourceWarningsItem
    , resourceWarningsItem
    , rwiData
    , rwiCode
    , rwiMessage

    -- * ResourceAccessControl
    , ResourceAccessControl
    , resourceAccessControl
    , racGcpIAMPolicy

    -- * TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports

    -- * OperationWarningsItem
    , OperationWarningsItem
    , operationWarningsItem
    , owiData
    , owiCode
    , owiMessage

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * Deployment
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

    -- * DeploymentsInsertCreatePolicy
    , DeploymentsInsertCreatePolicy (..)
    ) where

import Network.Google.DeploymentManager.Types.Product
import Network.Google.DeploymentManager.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v2' of the Cloud Deployment Manager V2 API. This contains the host and root path used as a starting point for constructing service requests.
deploymentManagerService :: ServiceConfig
deploymentManagerService
  = defaultService (ServiceId "deploymentmanager:v2")
      "deploymentmanager.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and manage your Google Cloud Platform management resources and
-- deployment status information
ndevCloudmanScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman"]
ndevCloudmanScope = Proxy

-- | View your Google Cloud Platform management resources and deployment
-- status information
ndevCloudmanReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman.readonly"]
ndevCloudmanReadOnlyScope = Proxy

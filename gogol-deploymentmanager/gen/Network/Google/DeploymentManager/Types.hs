{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

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

    -- * ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruError
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

    -- * Manifest
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

    -- * Resource
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

    -- * Type
    , Type
    , type'
    , tInsertTime
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

    -- * ResourceUpdateError
    , ResourceUpdateError
    , resourceUpdateError
    , rueErrors

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

    -- * Deployment
    , Deployment
    , deployment
    , dInsertTime
    , dOperation
    , dFingerprint
    , dName
    , dManifest
    , dId
    , dLabels
    , dDescription
    , dUpdate
    , dTarget
    ) where

import           Network.Google.DeploymentManager.Types.Product
import           Network.Google.DeploymentManager.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2' of the Google Cloud Deployment Manager API. This contains the host and root path used as a starting point for constructing service requests.
deploymentManagerService :: ServiceConfig
deploymentManagerService
  = defaultService (ServiceId "deploymentmanager:v2")
      "www.googleapis.com"

-- | View your data across Google Cloud Platform services
cloudPlatformReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform.read-only"]
cloudPlatformReadOnlyScope = Proxy;

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

-- | View and manage your Google Cloud Platform management resources and
-- deployment status information
ndevCloudmanScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman"]
ndevCloudmanScope = Proxy;

-- | View your Google Cloud Platform management resources and deployment
-- status information
ndevCloudmanReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/ndev.cloudman.readonly"]
ndevCloudmanReadOnlyScope = Proxy;

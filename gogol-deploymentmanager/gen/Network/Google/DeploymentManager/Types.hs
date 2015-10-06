{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DeploymentManager.Types
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DeploymentManager.Types
    (
    -- * Service URL
      deploymentManagerRequest

    -- * OperationWarningsItemDataItem
    , OperationWarningsItemDataItem
    , operationWarningsItemDataItem
    , owidiValue
    , owidiKey

    -- * DeploymentsUpdateCreatePolicy
    , DeploymentsUpdateCreatePolicy (..)

    -- * OperationsListResponse
    , OperationsListResponse
    , operationsListResponse
    , olrNextPageToken
    , olrOperations

    -- * TypesListResponse
    , TypesListResponse
    , typesListResponse
    , tlrNextPageToken
    , tlrTypes

    -- * DeploymentsUpdateUpdatePolicy
    , DeploymentsUpdateUpdatePolicy (..)

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
    , oTargetLink
    , oClientOperationId

    -- * DeploymentsPatchUpdatePolicy
    , DeploymentsPatchUpdatePolicy (..)

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
    , duErrors

    -- * ResourceUpdate
    , ResourceUpdate
    , resourceUpdate
    , ruState
    , ruIntent
    , ruManifest
    , ruFinalProperties
    , ruErrors
    , ruProperties

    -- * Manifest
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

    -- * Resource
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

    -- * DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

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
    ) where

import           Network.Google.DeploymentManager.Types.Product
import           Network.Google.DeploymentManager.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v2beta2' of the Google Cloud Deployment Manager API.
deploymentManagerRequest :: RequestBuilder
deploymentManagerRequest
  = defaultRequest "https://www.googleapis.com/"
      "deploymentmanager/v2beta2/projects/"

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
      deploymentManagerURL

    -- * CreatePolicy
    , CreatePolicy (..)

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

    -- * DeploymentManagerDeploymentsUpdateCreatePolicy
    , DeploymentManagerDeploymentsUpdateCreatePolicy (..)

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

    -- * ResourcesListResponse
    , ResourcesListResponse
    , resourcesListResponse
    , rlrNextPageToken
    , rlrResources

    -- * DeploymentManagerDeploymentsUpdateUpdatePolicy
    , DeploymentManagerDeploymentsUpdateUpdatePolicy (..)

    -- * DeploymentManagerDeploymentsUpdateDeletePolicy
    , DeploymentManagerDeploymentsUpdateDeletePolicy (..)

    -- * Error'
    , Error'
    , error'
    , eErrors

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

    -- * UpdatePolicy
    , UpdatePolicy (..)

    -- * DeletePolicy
    , DeletePolicy (..)

    -- * WarningsItem
    , WarningsItem
    , warningsItem
    , wiData
    , wiCode
    , wiMessage

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

    -- * DataItem
    , DataItem
    , dataItem
    , dValue
    , dKey

    -- * ManifestsListResponse
    , ManifestsListResponse
    , manifestsListResponse
    , mlrNextPageToken
    , mlrManifests

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

    -- * DeploymentsListResponse
    , DeploymentsListResponse
    , deploymentsListResponse
    , dlrNextPageToken
    , dlrDeployments

    -- * ErrorsItem
    , ErrorsItem
    , errorsItem
    , eiLocation
    , eiCode
    , eiMessage

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

    -- * TargetConfiguration
    , TargetConfiguration
    , targetConfiguration
    , tcConfig
    , tcImports
    ) where

import           Network.Google.DeploymentManager.Types.Product
import           Network.Google.DeploymentManager.Types.Sum
import           Network.Google.Prelude

-- | URL referring to version 'v2beta2' of the Google Cloud Deployment Manager API.
deploymentManagerURL :: BaseUrl
deploymentManagerURL
  = BaseUrl Https
      "https://www.googleapis.com/deploymentmanager/v2beta2/projects/"
      443

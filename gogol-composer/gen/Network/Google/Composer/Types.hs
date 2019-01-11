{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Composer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Composer.Types
    (
    -- * Service Configuration
      composerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- * ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerNextPageToken
    , lerEnvironments

    -- * EnvironmentConfig
    , EnvironmentConfig
    , environmentConfig
    , ecNodeConfig
    , ecNodeCount
    , ecSoftwareConfig
    , ecDagGcsPrefix
    , ecGkeCluster
    , ecAirflowURI

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * NodeConfig
    , NodeConfig
    , nodeConfig
    , ncDiskSizeGb
    , ncLocation
    , ncNetwork
    , ncOAuthScopes
    , ncServiceAccount
    , ncSubnetwork
    , ncMachineType
    , ncTags

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

    -- * OperationMetadataOperationType
    , OperationMetadataOperationType (..)

    -- * SoftwareConfigEnvVariables
    , SoftwareConfigEnvVariables
    , softwareConfigEnvVariables
    , scevAddtional

    -- * Environment
    , Environment
    , environment
    , eState
    , eConfig
    , eUuid
    , eUpdateTime
    , eName
    , eLabels
    , eCreateTime

    -- * SoftwareConfigAirflowConfigOverrides
    , SoftwareConfigAirflowConfigOverrides
    , softwareConfigAirflowConfigOverrides
    , scacoAddtional

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * SoftwareConfigPypiPackages
    , SoftwareConfigPypiPackages
    , softwareConfigPypiPackages
    , scppAddtional

    -- * OperationMetadataState
    , OperationMetadataState (..)

    -- * EnvironmentState
    , EnvironmentState (..)

    -- * Xgafv
    , Xgafv (..)

    -- * SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scImageVersion
    , scPythonVersion
    , scPypiPackages
    , scAirflowConfigOverrides
    , scEnvVariables

    -- * EnvironmentLabels
    , EnvironmentLabels
    , environmentLabels
    , elAddtional

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omState
    , omResourceUuid
    , omResource
    , omEndTime
    , omOperationType
    , omCreateTime

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.Composer.Types.Product
import           Network.Google.Composer.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Composer API. This contains the host and root path used as a starting point for constructing service requests.
composerService :: ServiceConfig
composerService
  = defaultService (ServiceId "composer:v1")
      "composer.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

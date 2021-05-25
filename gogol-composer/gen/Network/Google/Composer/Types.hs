{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
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

    -- * ListImageVersionsResponse
    , ListImageVersionsResponse
    , listImageVersionsResponse
    , livrNextPageToken
    , livrImageVersions

    -- * ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerNextPageToken
    , lerEnvironments

    -- * WebServerConfig
    , WebServerConfig
    , webServerConfig
    , wscMachineType

    -- * DatabaseConfig
    , DatabaseConfig
    , databaseConfig
    , dcMachineType

    -- * EnvironmentConfig
    , EnvironmentConfig
    , environmentConfig
    , ecDatabaseConfig
    , ecWebServerConfig
    , ecNodeConfig
    , ecNodeCount
    , ecPrivateEnvironmentConfig
    , ecEncryptionConfig
    , ecSoftwareConfig
    , ecDagGcsPrefix
    , ecWebServerNetworkAccessControl
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
    , ncIPAllocationPolicy
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

    -- * ImageVersion
    , ImageVersion
    , imageVersion
    , ivUpgradeDisabled
    , ivCreationDisabled
    , ivReleaseDate
    , ivImageVersionId
    , ivSupportedPythonVersions
    , ivIsDefault

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

    -- * AllowedIPRange
    , AllowedIPRange
    , allowedIPRange
    , airValue
    , airDescription

    -- * IPAllocationPolicy
    , IPAllocationPolicy
    , ipAllocationPolicy
    , iapServicesSecondaryRangeName
    , iapUseIPAliases
    , iapClusterSecondaryRangeName
    , iapClusterIPv4CIdRBlock
    , iapServicesIPv4CIdRBlock

    -- * CheckUpgradeResponseContainsPypiModulesConflict
    , CheckUpgradeResponseContainsPypiModulesConflict (..)

    -- * Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- * CheckUpgradeResponsePypiDependencies
    , CheckUpgradeResponsePypiDependencies
    , checkUpgradeResponsePypiDependencies
    , curpdAddtional

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

    -- * PrivateEnvironmentConfig
    , PrivateEnvironmentConfig
    , privateEnvironmentConfig
    , pecWebServerIPv4CIdRBlock
    , pecCloudSQLIPv4CIdRBlock
    , pecWebServerIPv4ReservedRange
    , pecPrivateClusterConfig
    , pecEnablePrivateEnvironment

    -- * SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scImageVersion
    , scPythonVersion
    , scPypiPackages
    , scAirflowConfigOverrides
    , scEnvVariables

    -- * PrivateClusterConfig
    , PrivateClusterConfig
    , privateClusterConfig
    , pccEnablePrivateEndpoint
    , pccMasterIPv4CIdRBlock
    , pccMasterIPv4ReservedRange

    -- * EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- * CheckUpgradeResponse
    , CheckUpgradeResponse
    , checkUpgradeResponse
    , curContainsPypiModulesConflict
    , curBuildLogURI
    , curImageVersion
    , curPypiDependencies
    , curPypiConflictBuildLogExtract

    -- * WebServerNetworkAccessControl
    , WebServerNetworkAccessControl
    , webServerNetworkAccessControl
    , wsnacAllowedIPRanges

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

import Network.Google.Composer.Types.Product
import Network.Google.Composer.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Composer API. This contains the host and root path used as a starting point for constructing service requests.
composerService :: ServiceConfig
composerService
  = defaultService (ServiceId "composer:v1")
      "composer.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

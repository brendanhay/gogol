{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Composer
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Manages Apache Airflow environments on Google Cloud Platform.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference>
module Network.Google.Composer
    (
    -- * Service Configuration
      composerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ComposerAPI

    -- * Resources

    -- ** composer.projects.locations.environments.create
    , module Network.Google.Resource.Composer.Projects.Locations.Environments.Create

    -- ** composer.projects.locations.environments.delete
    , module Network.Google.Resource.Composer.Projects.Locations.Environments.Delete

    -- ** composer.projects.locations.environments.get
    , module Network.Google.Resource.Composer.Projects.Locations.Environments.Get

    -- ** composer.projects.locations.environments.list
    , module Network.Google.Resource.Composer.Projects.Locations.Environments.List

    -- ** composer.projects.locations.environments.patch
    , module Network.Google.Resource.Composer.Projects.Locations.Environments.Patch

    -- ** composer.projects.locations.imageVersions.list
    , module Network.Google.Resource.Composer.Projects.Locations.ImageVersions.List

    -- ** composer.projects.locations.operations.delete
    , module Network.Google.Resource.Composer.Projects.Locations.Operations.Delete

    -- ** composer.projects.locations.operations.get
    , module Network.Google.Resource.Composer.Projects.Locations.Operations.Get

    -- ** composer.projects.locations.operations.list
    , module Network.Google.Resource.Composer.Projects.Locations.Operations.List

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** OperationSchema
    , OperationSchema
    , operationSchema
    , osAddtional

    -- ** ListImageVersionsResponse
    , ListImageVersionsResponse
    , listImageVersionsResponse
    , livrNextPageToken
    , livrImageVersions

    -- ** ListEnvironmentsResponse
    , ListEnvironmentsResponse
    , listEnvironmentsResponse
    , lerNextPageToken
    , lerEnvironments

    -- ** WebServerConfig
    , WebServerConfig
    , webServerConfig
    , wscMachineType

    -- ** DatabaseConfig
    , DatabaseConfig
    , databaseConfig
    , dcMachineType

    -- ** EnvironmentConfig
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

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** NodeConfig
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

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Empty
    , Empty
    , empty

    -- ** OperationMetadataOperationType
    , OperationMetadataOperationType (..)

    -- ** SoftwareConfigEnvVariables
    , SoftwareConfigEnvVariables
    , softwareConfigEnvVariables
    , scevAddtional

    -- ** ImageVersion
    , ImageVersion
    , imageVersion
    , ivUpgradeDisabled
    , ivCreationDisabled
    , ivReleaseDate
    , ivImageVersionId
    , ivSupportedPythonVersions
    , ivIsDefault

    -- ** Environment
    , Environment
    , environment
    , eState
    , eConfig
    , eUuid
    , eUpdateTime
    , eName
    , eLabels
    , eCreateTime

    -- ** SoftwareConfigAirflowConfigOverrides
    , SoftwareConfigAirflowConfigOverrides
    , softwareConfigAirflowConfigOverrides
    , scacoAddtional

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** AllowedIPRange
    , AllowedIPRange
    , allowedIPRange
    , airValue
    , airDescription

    -- ** IPAllocationPolicy
    , IPAllocationPolicy
    , ipAllocationPolicy
    , iapServicesSecondaryRangeName
    , iapUseIPAliases
    , iapClusterSecondaryRangeName
    , iapClusterIPv4CIdRBlock
    , iapServicesIPv4CIdRBlock

    -- ** CheckUpgradeResponseContainsPypiModulesConflict
    , CheckUpgradeResponseContainsPypiModulesConflict (..)

    -- ** Date
    , Date
    , date
    , dDay
    , dYear
    , dMonth

    -- ** CheckUpgradeResponsePypiDependencies
    , CheckUpgradeResponsePypiDependencies
    , checkUpgradeResponsePypiDependencies
    , curpdAddtional

    -- ** SoftwareConfigPypiPackages
    , SoftwareConfigPypiPackages
    , softwareConfigPypiPackages
    , scppAddtional

    -- ** OperationMetadataState
    , OperationMetadataState (..)

    -- ** EnvironmentState
    , EnvironmentState (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** PrivateEnvironmentConfig
    , PrivateEnvironmentConfig
    , privateEnvironmentConfig
    , pecWebServerIPv4CIdRBlock
    , pecCloudSQLIPv4CIdRBlock
    , pecWebServerIPv4ReservedRange
    , pecPrivateClusterConfig
    , pecEnablePrivateEnvironment

    -- ** SoftwareConfig
    , SoftwareConfig
    , softwareConfig
    , scImageVersion
    , scPythonVersion
    , scPypiPackages
    , scAirflowConfigOverrides
    , scEnvVariables

    -- ** PrivateClusterConfig
    , PrivateClusterConfig
    , privateClusterConfig
    , pccEnablePrivateEndpoint
    , pccMasterIPv4CIdRBlock
    , pccMasterIPv4ReservedRange

    -- ** EncryptionConfig
    , EncryptionConfig
    , encryptionConfig
    , ecKmsKeyName

    -- ** CheckUpgradeResponse
    , CheckUpgradeResponse
    , checkUpgradeResponse
    , curContainsPypiModulesConflict
    , curBuildLogURI
    , curImageVersion
    , curPypiDependencies
    , curPypiConflictBuildLogExtract

    -- ** WebServerNetworkAccessControl
    , WebServerNetworkAccessControl
    , webServerNetworkAccessControl
    , wsnacAllowedIPRanges

    -- ** EnvironmentLabels
    , EnvironmentLabels
    , environmentLabels
    , elAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omState
    , omResourceUuid
    , omResource
    , omEndTime
    , omOperationType
    , omCreateTime

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import Network.Google.Prelude
import Network.Google.Composer.Types
import Network.Google.Resource.Composer.Projects.Locations.Environments.Create
import Network.Google.Resource.Composer.Projects.Locations.Environments.Delete
import Network.Google.Resource.Composer.Projects.Locations.Environments.Get
import Network.Google.Resource.Composer.Projects.Locations.Environments.List
import Network.Google.Resource.Composer.Projects.Locations.Environments.Patch
import Network.Google.Resource.Composer.Projects.Locations.ImageVersions.List
import Network.Google.Resource.Composer.Projects.Locations.Operations.Delete
import Network.Google.Resource.Composer.Projects.Locations.Operations.Get
import Network.Google.Resource.Composer.Projects.Locations.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Composer API service.
type ComposerAPI =
     ProjectsLocationsOperationsListResource :<|>
       ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsDeleteResource
       :<|> ProjectsLocationsImageVersionsListResource
       :<|> ProjectsLocationsEnvironmentsListResource
       :<|> ProjectsLocationsEnvironmentsPatchResource
       :<|> ProjectsLocationsEnvironmentsGetResource
       :<|> ProjectsLocationsEnvironmentsCreateResource
       :<|> ProjectsLocationsEnvironmentsDeleteResource

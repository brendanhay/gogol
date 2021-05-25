{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.DataFusion
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Data Fusion is a fully-managed, cloud native, enterprise data
-- integration service for quickly building and managing data pipelines. It
-- provides a graphical interface to increase time efficiency and reduce
-- complexity, and allows business users, developers, and data scientists
-- to easily and reliably build scalable data integration solutions to
-- cleanse, prepare, blend, transfer and transform data without having to
-- wrestle with infrastructure.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference>
module Network.Google.DataFusion
    (
    -- * Service Configuration
      dataFusionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , DataFusionAPI

    -- * Resources

    -- ** datafusion.projects.locations.get
    , module Network.Google.Resource.DataFusion.Projects.Locations.Get

    -- ** datafusion.projects.locations.instances.create
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Create

    -- ** datafusion.projects.locations.instances.delete
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Delete

    -- ** datafusion.projects.locations.instances.get
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Get

    -- ** datafusion.projects.locations.instances.getIamPolicy
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.GetIAMPolicy

    -- ** datafusion.projects.locations.instances.list
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.List

    -- ** datafusion.projects.locations.instances.patch
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Patch

    -- ** datafusion.projects.locations.instances.restart
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.Restart

    -- ** datafusion.projects.locations.instances.setIamPolicy
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.SetIAMPolicy

    -- ** datafusion.projects.locations.instances.testIamPermissions
    , module Network.Google.Resource.DataFusion.Projects.Locations.Instances.TestIAMPermissions

    -- ** datafusion.projects.locations.list
    , module Network.Google.Resource.DataFusion.Projects.Locations.List

    -- ** datafusion.projects.locations.operations.cancel
    , module Network.Google.Resource.DataFusion.Projects.Locations.Operations.Cancel

    -- ** datafusion.projects.locations.operations.delete
    , module Network.Google.Resource.DataFusion.Projects.Locations.Operations.Delete

    -- ** datafusion.projects.locations.operations.get
    , module Network.Google.Resource.DataFusion.Projects.Locations.Operations.Get

    -- ** datafusion.projects.locations.operations.list
    , module Network.Google.Resource.DataFusion.Projects.Locations.Operations.List

    -- ** datafusion.projects.locations.versions.list
    , module Network.Google.Resource.DataFusion.Projects.Locations.Versions.List

    -- * Types

    -- ** InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

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

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

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

    -- ** AcceleratorAcceleratorType
    , AcceleratorAcceleratorType (..)

    -- ** AcceleratorState
    , AcceleratorState (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** CryptoKeyConfig
    , CryptoKeyConfig
    , cryptoKeyConfig
    , ckcKeyReference

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** InstanceType
    , InstanceType (..)

    -- ** NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncNetwork
    , ncIPAllocation

    -- ** Accelerator
    , Accelerator
    , accelerator
    , aAcceleratorType
    , aState

    -- ** RestartInstanceRequest
    , RestartInstanceRequest
    , restartInstanceRequest

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Version
    , Version
    , version
    , vDefaultVersion
    , vVersionNumber
    , vAvailableFeatures

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** OperationMetadataAdditionalStatus
    , OperationMetadataAdditionalStatus
    , operationMetadataAdditionalStatus
    , omasAddtional

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- ** LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAPIVersion
    , omAdditionalStatus
    , omRequestedCancellation
    , omEndTime
    , omStatusDetail
    , omVerb
    , omTarget
    , omCreateTime

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- ** InstanceState
    , InstanceState (..)

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** InstanceOptions
    , InstanceOptions
    , instanceOptions
    , ioAddtional

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** Instance
    , Instance
    , instance'
    , iStateMessage
    , iTenantProjectId
    , iState
    , iEnableStackdriverLogging
    , iP4ServiceAccount
    , iEnableRbac
    , iAPIEndpoint
    , iCryptoKeyConfig
    , iServiceEndpoint
    , iZone
    , iGcsBucket
    , iServiceAccount
    , iNetworkConfig
    , iUpdateTime
    , iAccelerators
    , iPrivateInstance
    , iName
    , iVersion
    , iDataprocServiceAccount
    , iDisplayName
    , iEnableStackdriverMonitoring
    , iLabels
    , iOptions
    , iType
    , iAvailableVersion
    , iDescription
    , iCreateTime

    -- ** ListAvailableVersionsResponse
    , ListAvailableVersionsResponse
    , listAvailableVersionsResponse
    , lavrNextPageToken
    , lavrAvailableVersions
    ) where

import Network.Google.Prelude
import Network.Google.DataFusion.Types
import Network.Google.Resource.DataFusion.Projects.Locations.Get
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.Create
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.Delete
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.Get
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.GetIAMPolicy
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.List
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.Patch
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.Restart
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.SetIAMPolicy
import Network.Google.Resource.DataFusion.Projects.Locations.Instances.TestIAMPermissions
import Network.Google.Resource.DataFusion.Projects.Locations.List
import Network.Google.Resource.DataFusion.Projects.Locations.Operations.Cancel
import Network.Google.Resource.DataFusion.Projects.Locations.Operations.Delete
import Network.Google.Resource.DataFusion.Projects.Locations.Operations.Get
import Network.Google.Resource.DataFusion.Projects.Locations.Operations.List
import Network.Google.Resource.DataFusion.Projects.Locations.Versions.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Data Fusion API service.
type DataFusionAPI =
     ProjectsLocationsVersionsListResource :<|>
       ProjectsLocationsInstancesListResource
       :<|> ProjectsLocationsInstancesGetIAMPolicyResource
       :<|> ProjectsLocationsInstancesPatchResource
       :<|> ProjectsLocationsInstancesGetResource
       :<|> ProjectsLocationsInstancesCreateResource
       :<|> ProjectsLocationsInstancesSetIAMPolicyResource
       :<|> ProjectsLocationsInstancesRestartResource
       :<|>
       ProjectsLocationsInstancesTestIAMPermissionsResource
       :<|> ProjectsLocationsInstancesDeleteResource
       :<|> ProjectsLocationsOperationsListResource
       :<|> ProjectsLocationsOperationsGetResource
       :<|> ProjectsLocationsOperationsCancelResource
       :<|> ProjectsLocationsOperationsDeleteResource
       :<|> ProjectsLocationsListResource
       :<|> ProjectsLocationsGetResource

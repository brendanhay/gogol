{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataFusion.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataFusion.Types
    (
    -- * Service Configuration
      dataFusionService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * InstanceLabels
    , InstanceLabels
    , instanceLabels
    , ilAddtional

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

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListLocationsResponse
    , ListLocationsResponse
    , listLocationsResponse
    , llrNextPageToken
    , llrLocations

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * Location
    , Location
    , location
    , lName
    , lMetadata
    , lDisplayName
    , lLabels
    , lLocationId

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

    -- * AcceleratorAcceleratorType
    , AcceleratorAcceleratorType (..)

    -- * AcceleratorState
    , AcceleratorState (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * CryptoKeyConfig
    , CryptoKeyConfig
    , cryptoKeyConfig
    , ckcKeyReference

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * InstanceType
    , InstanceType (..)

    -- * NetworkConfig
    , NetworkConfig
    , networkConfig
    , ncNetwork
    , ncIPAllocation

    -- * Accelerator
    , Accelerator
    , accelerator
    , aAcceleratorType
    , aState

    -- * RestartInstanceRequest
    , RestartInstanceRequest
    , restartInstanceRequest

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Version
    , Version
    , version
    , vDefaultVersion
    , vVersionNumber
    , vAvailableFeatures

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * OperationMetadataAdditionalStatus
    , OperationMetadataAdditionalStatus
    , operationMetadataAdditionalStatus
    , omasAddtional

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * LocationLabels
    , LocationLabels
    , locationLabels
    , llAddtional

    -- * LocationMetadata
    , LocationMetadata
    , locationMetadata
    , lmAddtional

    -- * OperationMetadata
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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * ListInstancesResponse
    , ListInstancesResponse
    , listInstancesResponse
    , lirNextPageToken
    , lirUnreachable
    , lirInstances

    -- * InstanceState
    , InstanceState (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * InstanceOptions
    , InstanceOptions
    , instanceOptions
    , ioAddtional

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- * Instance
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

    -- * ListAvailableVersionsResponse
    , ListAvailableVersionsResponse
    , listAvailableVersionsResponse
    , lavrNextPageToken
    , lavrAvailableVersions
    ) where

import Network.Google.DataFusion.Types.Product
import Network.Google.DataFusion.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Data Fusion API. This contains the host and root path used as a starting point for constructing service requests.
dataFusionService :: ServiceConfig
dataFusionService
  = defaultService (ServiceId "datafusion:v1")
      "datafusion.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

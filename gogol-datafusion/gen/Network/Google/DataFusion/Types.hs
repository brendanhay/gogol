{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * CounterOptions
    , CounterOptions
    , counterOptions
    , coField
    , coMetric

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs
    , acExemptedMembers

    -- * CloudAuditOptionsLogName
    , CloudAuditOptionsLogName (..)

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

    -- * ConditionSys
    , ConditionSys (..)

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

    -- * RuleAction
    , RuleAction (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * Rule
    , Rule
    , rule
    , rAction
    , rIn
    , rNotIn
    , rConditions
    , rPermissions
    , rLogConfig
    , rDescription

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

    -- * CloudAuditOptions
    , CloudAuditOptions
    , cloudAuditOptions
    , caoAuthorizationLoggingOptions
    , caoLogName

    -- * ConditionOp
    , ConditionOp (..)

    -- * DataAccessOptions
    , DataAccessOptions
    , dataAccessOptions
    , daoLogMode

    -- * RestartInstanceRequest
    , RestartInstanceRequest
    , restartInstanceRequest

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * UpgradeInstanceRequest
    , UpgradeInstanceRequest
    , upgradeInstanceRequest

    -- * AuthorizationLoggingOptions
    , AuthorizationLoggingOptions
    , authorizationLoggingOptions
    , aloPermissionType

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pRules
    , pVersion
    , pBindings
    , pIAMOwned

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
    , omRequestedCancellation
    , omEndTime
    , omStatusDetail
    , omVerb
    , omTarget
    , omCreateTime

    -- * DataAccessOptionsLogMode
    , DataAccessOptionsLogMode (..)

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

    -- * AuthorizationLoggingOptionsPermissionType
    , AuthorizationLoggingOptionsPermissionType (..)

    -- * Condition
    , Condition
    , condition
    , cOp
    , cIAM
    , cValues
    , cSys
    , cSvc

    -- * InstanceState
    , InstanceState (..)

    -- * ConditionIAM
    , ConditionIAM (..)

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * LogConfig
    , LogConfig
    , logConfig
    , lcCloudAudit
    , lcDataAccess
    , lcCounter

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
    , iState
    , iEnableStackdriverLogging
    , iServiceEndpoint
    , iZone
    , iServiceAccount
    , iNetworkConfig
    , iUpdateTime
    , iPrivateInstance
    , iName
    , iVersion
    , iDisplayName
    , iEnableStackdriverMonitoring
    , iLabels
    , iOptions
    , iType
    , iDescription
    , iCreateTime
    ) where

import           Network.Google.DataFusion.Types.Product
import           Network.Google.DataFusion.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Data Fusion API. This contains the host and root path used as a starting point for constructing service requests.
dataFusionService :: ServiceConfig
dataFusionService
  = defaultService (ServiceId "datafusion:v1beta1")
      "datafusion.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AccessContextManager.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AccessContextManager.Types
    (
    -- * Service Configuration
      accessContextManagerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * BasicLevel
    , BasicLevel
    , basicLevel
    , blConditions
    , blCombiningFunction

    -- * AccessPoliciesAccessLevelsGetAccessLevelFormat
    , AccessPoliciesAccessLevelsGetAccessLevelFormat (..)

    -- * IngressPolicy
    , IngressPolicy
    , ingressPolicy
    , ipIngressFrom
    , ipIngressTo

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- * AccessLevel
    , AccessLevel
    , accessLevel
    , alBasic
    , alCustom
    , alName
    , alTitle
    , alDescription

    -- * BasicLevelCombiningFunction
    , BasicLevelCombiningFunction (..)

    -- * IngressSource
    , IngressSource
    , ingressSource
    , isAccessLevel
    , isResource

    -- * ServicePerimeterConfig
    , ServicePerimeterConfig
    , servicePerimeterConfig
    , spcResources
    , spcVPCAccessibleServices
    , spcRestrictedServices
    , spcEgressPolicies
    , spcAccessLevels
    , spcIngressPolicies

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * EgressPolicy
    , EgressPolicy
    , egressPolicy
    , epEgressFrom
    , epEgressTo

    -- * ServicePerimeterPerimeterType
    , ServicePerimeterPerimeterType (..)

    -- * Empty
    , Empty
    , empty

    -- * OSConstraintOSType
    , OSConstraintOSType (..)

    -- * GcpUserAccessBinding
    , GcpUserAccessBinding
    , gcpUserAccessBinding
    , guabGroupKey
    , guabName
    , guabAccessLevels

    -- * ServicePerimeter
    , ServicePerimeter
    , servicePerimeter
    , spStatus
    , spPerimeterType
    , spName
    , spSpec
    , spTitle
    , spUseExplicitDryRunSpec
    , spDescription

    -- * AccessPoliciesAccessLevelsListAccessLevelFormat
    , AccessPoliciesAccessLevelsListAccessLevelFormat (..)

    -- * CommitServicePerimetersRequest
    , CommitServicePerimetersRequest
    , commitServicePerimetersRequest
    , csprEtag

    -- * ListAccessPoliciesResponse
    , ListAccessPoliciesResponse
    , listAccessPoliciesResponse
    , laprNextPageToken
    , laprAccessPolicies

    -- * DevicePolicyAllowedDeviceManagementLevelsItem
    , DevicePolicyAllowedDeviceManagementLevelsItem (..)

    -- * EgressFrom
    , EgressFrom
    , egressFrom
    , efIdentityType
    , efIdentities

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ReplaceServicePerimetersRequest
    , ReplaceServicePerimetersRequest
    , replaceServicePerimetersRequest
    , rsprEtag
    , rsprServicePerimeters

    -- * ReplaceAccessLevelsResponse
    , ReplaceAccessLevelsResponse
    , replaceAccessLevelsResponse
    , ralrAccessLevels

    -- * EgressTo
    , EgressTo
    , egressTo
    , etResources
    , etOperations

    -- * OSConstraint
    , OSConstraint
    , osConstraint
    , ocOSType
    , ocMinimumVersion
    , ocRequireVerifiedChromeOS

    -- * IngressFrom
    , IngressFrom
    , ingressFrom
    , ifIdentityType
    , ifSources
    , ifIdentities

    -- * ReplaceServicePerimetersResponse
    , ReplaceServicePerimetersResponse
    , replaceServicePerimetersResponse
    , rServicePerimeters

    -- * AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apParent
    , apEtag
    , apName
    , apTitle

    -- * ReplaceAccessLevelsRequest
    , ReplaceAccessLevelsRequest
    , replaceAccessLevelsRequest
    , rEtag
    , rAccessLevels

    -- * IngressTo
    , IngressTo
    , ingressTo
    , itResources
    , itOperations

    -- * IngressFromIdentityType
    , IngressFromIdentityType (..)

    -- * MethodSelector
    , MethodSelector
    , methodSelector
    , msMethod
    , msPermission

    -- * ListGcpUserAccessBindingsResponse
    , ListGcpUserAccessBindingsResponse
    , listGcpUserAccessBindingsResponse
    , lguabrNextPageToken
    , lguabrGcpUserAccessBindings

    -- * Xgafv
    , Xgafv (..)

    -- * ListServicePerimetersResponse
    , ListServicePerimetersResponse
    , listServicePerimetersResponse
    , lsprNextPageToken
    , lsprServicePerimeters

    -- * VPCAccessibleServices
    , VPCAccessibleServices
    , vpcAccessibleServices
    , vasAllowedServices
    , vasEnableRestriction

    -- * CustomLevel
    , CustomLevel
    , customLevel
    , clExpr

    -- * APIOperation
    , APIOperation
    , apiOperation
    , aoMethodSelectors
    , aoServiceName

    -- * EgressFromIdentityType
    , EgressFromIdentityType (..)

    -- * ListAccessLevelsResponse
    , ListAccessLevelsResponse
    , listAccessLevelsResponse
    , lalrNextPageToken
    , lalrAccessLevels

    -- * DevicePolicyAllowedEncryptionStatusesItem
    , DevicePolicyAllowedEncryptionStatusesItem (..)

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * DevicePolicy
    , DevicePolicy
    , devicePolicy
    , dpOSConstraints
    , dpRequireAdminApproval
    , dpRequireCorpOwned
    , dpRequireScreenlock
    , dpAllowedEncryptionStatuses
    , dpAllowedDeviceManagementLevels

    -- * Condition
    , Condition
    , condition
    , cMembers
    , cRegions
    , cNegate
    , cIPSubnetworks
    , cDevicePolicy
    , cRequiredAccessLevels

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * CommitServicePerimetersResponse
    , CommitServicePerimetersResponse
    , commitServicePerimetersResponse
    , csprServicePerimeters
    ) where

import Network.Google.AccessContextManager.Types.Product
import Network.Google.AccessContextManager.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Access Context Manager API. This contains the host and root path used as a starting point for constructing service requests.
accessContextManagerService :: ServiceConfig
accessContextManagerService
  = defaultService
      (ServiceId "accesscontextmanager:v1")
      "accesscontextmanager.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

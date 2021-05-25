{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.AccessContextManager
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- An API for setting attribute based access control to requests to GCP
-- services.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference>
module Network.Google.AccessContextManager
    (
    -- * Service Configuration
      accessContextManagerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , AccessContextManagerAPI

    -- * Resources

    -- ** accesscontextmanager.accessPolicies.accessLevels.create
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Create

    -- ** accesscontextmanager.accessPolicies.accessLevels.delete
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Delete

    -- ** accesscontextmanager.accessPolicies.accessLevels.get
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Get

    -- ** accesscontextmanager.accessPolicies.accessLevels.list
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.List

    -- ** accesscontextmanager.accessPolicies.accessLevels.patch
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Patch

    -- ** accesscontextmanager.accessPolicies.accessLevels.replaceAll
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll

    -- ** accesscontextmanager.accessPolicies.create
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.Create

    -- ** accesscontextmanager.accessPolicies.delete
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.Delete

    -- ** accesscontextmanager.accessPolicies.get
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.Get

    -- ** accesscontextmanager.accessPolicies.list
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.List

    -- ** accesscontextmanager.accessPolicies.patch
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.Patch

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.commit
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Commit

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.create
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Create

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.delete
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Delete

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.get
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Get

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.list
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.List

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.patch
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Patch

    -- ** accesscontextmanager.accessPolicies.servicePerimeters.replaceAll
    , module Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll

    -- ** accesscontextmanager.operations.cancel
    , module Network.Google.Resource.AccessContextManager.Operations.Cancel

    -- ** accesscontextmanager.operations.delete
    , module Network.Google.Resource.AccessContextManager.Operations.Delete

    -- ** accesscontextmanager.operations.get
    , module Network.Google.Resource.AccessContextManager.Operations.Get

    -- ** accesscontextmanager.operations.list
    , module Network.Google.Resource.AccessContextManager.Operations.List

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.create
    , module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Create

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.delete
    , module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Delete

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.get
    , module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Get

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.list
    , module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.List

    -- ** accesscontextmanager.organizations.gcpUserAccessBindings.patch
    , module Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Patch

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** BasicLevel
    , BasicLevel
    , basicLevel
    , blConditions
    , blCombiningFunction

    -- ** AccessPoliciesAccessLevelsGetAccessLevelFormat
    , AccessPoliciesAccessLevelsGetAccessLevelFormat (..)

    -- ** IngressPolicy
    , IngressPolicy
    , ingressPolicy
    , ipIngressFrom
    , ipIngressTo

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** CancelOperationRequest
    , CancelOperationRequest
    , cancelOperationRequest

    -- ** AccessLevel
    , AccessLevel
    , accessLevel
    , alBasic
    , alCustom
    , alName
    , alTitle
    , alDescription

    -- ** BasicLevelCombiningFunction
    , BasicLevelCombiningFunction (..)

    -- ** IngressSource
    , IngressSource
    , ingressSource
    , isAccessLevel
    , isResource

    -- ** ServicePerimeterConfig
    , ServicePerimeterConfig
    , servicePerimeterConfig
    , spcResources
    , spcVPCAccessibleServices
    , spcRestrictedServices
    , spcEgressPolicies
    , spcAccessLevels
    , spcIngressPolicies

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** EgressPolicy
    , EgressPolicy
    , egressPolicy
    , epEgressFrom
    , epEgressTo

    -- ** ServicePerimeterPerimeterType
    , ServicePerimeterPerimeterType (..)

    -- ** Empty
    , Empty
    , empty

    -- ** OSConstraintOSType
    , OSConstraintOSType (..)

    -- ** GcpUserAccessBinding
    , GcpUserAccessBinding
    , gcpUserAccessBinding
    , guabGroupKey
    , guabName
    , guabAccessLevels

    -- ** ServicePerimeter
    , ServicePerimeter
    , servicePerimeter
    , spStatus
    , spPerimeterType
    , spName
    , spSpec
    , spTitle
    , spUseExplicitDryRunSpec
    , spDescription

    -- ** AccessPoliciesAccessLevelsListAccessLevelFormat
    , AccessPoliciesAccessLevelsListAccessLevelFormat (..)

    -- ** CommitServicePerimetersRequest
    , CommitServicePerimetersRequest
    , commitServicePerimetersRequest
    , csprEtag

    -- ** ListAccessPoliciesResponse
    , ListAccessPoliciesResponse
    , listAccessPoliciesResponse
    , laprNextPageToken
    , laprAccessPolicies

    -- ** DevicePolicyAllowedDeviceManagementLevelsItem
    , DevicePolicyAllowedDeviceManagementLevelsItem (..)

    -- ** EgressFrom
    , EgressFrom
    , egressFrom
    , efIdentityType
    , efIdentities

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ReplaceServicePerimetersRequest
    , ReplaceServicePerimetersRequest
    , replaceServicePerimetersRequest
    , rsprEtag
    , rsprServicePerimeters

    -- ** ReplaceAccessLevelsResponse
    , ReplaceAccessLevelsResponse
    , replaceAccessLevelsResponse
    , ralrAccessLevels

    -- ** EgressTo
    , EgressTo
    , egressTo
    , etResources
    , etOperations

    -- ** OSConstraint
    , OSConstraint
    , osConstraint
    , ocOSType
    , ocMinimumVersion
    , ocRequireVerifiedChromeOS

    -- ** IngressFrom
    , IngressFrom
    , ingressFrom
    , ifIdentityType
    , ifSources
    , ifIdentities

    -- ** ReplaceServicePerimetersResponse
    , ReplaceServicePerimetersResponse
    , replaceServicePerimetersResponse
    , rServicePerimeters

    -- ** AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apParent
    , apEtag
    , apName
    , apTitle

    -- ** ReplaceAccessLevelsRequest
    , ReplaceAccessLevelsRequest
    , replaceAccessLevelsRequest
    , rEtag
    , rAccessLevels

    -- ** IngressTo
    , IngressTo
    , ingressTo
    , itResources
    , itOperations

    -- ** IngressFromIdentityType
    , IngressFromIdentityType (..)

    -- ** MethodSelector
    , MethodSelector
    , methodSelector
    , msMethod
    , msPermission

    -- ** ListGcpUserAccessBindingsResponse
    , ListGcpUserAccessBindingsResponse
    , listGcpUserAccessBindingsResponse
    , lguabrNextPageToken
    , lguabrGcpUserAccessBindings

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListServicePerimetersResponse
    , ListServicePerimetersResponse
    , listServicePerimetersResponse
    , lsprNextPageToken
    , lsprServicePerimeters

    -- ** VPCAccessibleServices
    , VPCAccessibleServices
    , vpcAccessibleServices
    , vasAllowedServices
    , vasEnableRestriction

    -- ** CustomLevel
    , CustomLevel
    , customLevel
    , clExpr

    -- ** APIOperation
    , APIOperation
    , apiOperation
    , aoMethodSelectors
    , aoServiceName

    -- ** EgressFromIdentityType
    , EgressFromIdentityType (..)

    -- ** ListAccessLevelsResponse
    , ListAccessLevelsResponse
    , listAccessLevelsResponse
    , lalrNextPageToken
    , lalrAccessLevels

    -- ** DevicePolicyAllowedEncryptionStatusesItem
    , DevicePolicyAllowedEncryptionStatusesItem (..)

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** DevicePolicy
    , DevicePolicy
    , devicePolicy
    , dpOSConstraints
    , dpRequireAdminApproval
    , dpRequireCorpOwned
    , dpRequireScreenlock
    , dpAllowedEncryptionStatuses
    , dpAllowedDeviceManagementLevels

    -- ** Condition
    , Condition
    , condition
    , cMembers
    , cRegions
    , cNegate
    , cIPSubnetworks
    , cDevicePolicy
    , cRequiredAccessLevels

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** CommitServicePerimetersResponse
    , CommitServicePerimetersResponse
    , commitServicePerimetersResponse
    , csprServicePerimeters
    ) where

import Network.Google.Prelude
import Network.Google.AccessContextManager.Types
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Create
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Delete
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Get
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.List
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Patch
import Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.ReplaceAll
import Network.Google.Resource.AccessContextManager.AccessPolicies.Create
import Network.Google.Resource.AccessContextManager.AccessPolicies.Delete
import Network.Google.Resource.AccessContextManager.AccessPolicies.Get
import Network.Google.Resource.AccessContextManager.AccessPolicies.List
import Network.Google.Resource.AccessContextManager.AccessPolicies.Patch
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Commit
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Create
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Get
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.List
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
import Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.ReplaceAll
import Network.Google.Resource.AccessContextManager.Operations.Cancel
import Network.Google.Resource.AccessContextManager.Operations.Delete
import Network.Google.Resource.AccessContextManager.Operations.Get
import Network.Google.Resource.AccessContextManager.Operations.List
import Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Create
import Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Delete
import Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Get
import Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.List
import Network.Google.Resource.AccessContextManager.Organizations.GcpUserAccessBindings.Patch

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Access Context Manager API service.
type AccessContextManagerAPI =
     AccessPoliciesServicePerimetersListResource :<|>
       AccessPoliciesServicePerimetersReplaceAllResource
       :<|> AccessPoliciesServicePerimetersPatchResource
       :<|> AccessPoliciesServicePerimetersGetResource
       :<|> AccessPoliciesServicePerimetersCreateResource
       :<|> AccessPoliciesServicePerimetersDeleteResource
       :<|> AccessPoliciesServicePerimetersCommitResource
       :<|> AccessPoliciesAccessLevelsListResource
       :<|> AccessPoliciesAccessLevelsReplaceAllResource
       :<|> AccessPoliciesAccessLevelsPatchResource
       :<|> AccessPoliciesAccessLevelsGetResource
       :<|> AccessPoliciesAccessLevelsCreateResource
       :<|> AccessPoliciesAccessLevelsDeleteResource
       :<|> AccessPoliciesListResource
       :<|> AccessPoliciesPatchResource
       :<|> AccessPoliciesGetResource
       :<|> AccessPoliciesCreateResource
       :<|> AccessPoliciesDeleteResource
       :<|> OrganizationsGcpUserAccessBindingsListResource
       :<|> OrganizationsGcpUserAccessBindingsPatchResource
       :<|> OrganizationsGcpUserAccessBindingsGetResource
       :<|> OrganizationsGcpUserAccessBindingsCreateResource
       :<|> OrganizationsGcpUserAccessBindingsDeleteResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource

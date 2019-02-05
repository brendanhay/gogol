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

    -- ** accesscontextmanager.operations.get
    , module Network.Google.Resource.AccessContextManager.Operations.Get

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

    -- ** AccessLevel
    , AccessLevel
    , accessLevel
    , alBasic
    , alUpdateTime
    , alName
    , alTitle
    , alDescription
    , alCreateTime

    -- ** BasicLevelCombiningFunction
    , BasicLevelCombiningFunction (..)

    -- ** ServicePerimeterConfig
    , ServicePerimeterConfig
    , servicePerimeterConfig
    , spcUnrestrictedServices
    , spcResources
    , spcRestrictedServices
    , spcAccessLevels

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** ServicePerimeterPerimeterType
    , ServicePerimeterPerimeterType (..)

    -- ** OSConstraintOSType
    , OSConstraintOSType (..)

    -- ** ServicePerimeter
    , ServicePerimeter
    , servicePerimeter
    , spStatus
    , spPerimeterType
    , spUpdateTime
    , spName
    , spTitle
    , spDescription
    , spCreateTime

    -- ** ListAccessPoliciesResponse
    , ListAccessPoliciesResponse
    , listAccessPoliciesResponse
    , laprNextPageToken
    , laprAccessPolicies

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** OSConstraint
    , OSConstraint
    , osConstraint
    , ocOSType
    , ocMinimumVersion

    -- ** AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apParent
    , apUpdateTime
    , apName
    , apTitle
    , apCreateTime

    -- ** Xgafv
    , Xgafv (..)

    -- ** ListServicePerimetersResponse
    , ListServicePerimetersResponse
    , listServicePerimetersResponse
    , lsprNextPageToken
    , lsprServicePerimeters

    -- ** ListAccessLevelsResponse
    , ListAccessLevelsResponse
    , listAccessLevelsResponse
    , lalrNextPageToken
    , lalrAccessLevels

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** DevicePolicy
    , DevicePolicy
    , devicePolicy
    , dpOSConstraints
    , dpRequireScreenlock
    , dpAllowedEncryptionStatuses
    , dpAllowedDeviceManagementLevels

    -- ** Condition
    , Condition
    , condition
    , cMembers
    , cNegate
    , cIPSubnetworks
    , cDevicePolicy
    , cRequiredAccessLevels

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.AccessContextManager.Types
import           Network.Google.Prelude
import           Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Create
import           Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Delete
import           Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Get
import           Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.List
import           Network.Google.Resource.AccessContextManager.AccessPolicies.AccessLevels.Patch
import           Network.Google.Resource.AccessContextManager.AccessPolicies.Create
import           Network.Google.Resource.AccessContextManager.AccessPolicies.Delete
import           Network.Google.Resource.AccessContextManager.AccessPolicies.Get
import           Network.Google.Resource.AccessContextManager.AccessPolicies.List
import           Network.Google.Resource.AccessContextManager.AccessPolicies.Patch
import           Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Create
import           Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Delete
import           Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Get
import           Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.List
import           Network.Google.Resource.AccessContextManager.AccessPolicies.ServicePerimeters.Patch
import           Network.Google.Resource.AccessContextManager.Operations.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Access Context Manager API service.
type AccessContextManagerAPI =
     AccessPoliciesServicePerimetersListResource :<|>
       AccessPoliciesServicePerimetersPatchResource
       :<|> AccessPoliciesServicePerimetersGetResource
       :<|> AccessPoliciesServicePerimetersCreateResource
       :<|> AccessPoliciesServicePerimetersDeleteResource
       :<|> AccessPoliciesAccessLevelsListResource
       :<|> AccessPoliciesAccessLevelsPatchResource
       :<|> AccessPoliciesAccessLevelsGetResource
       :<|> AccessPoliciesAccessLevelsCreateResource
       :<|> AccessPoliciesAccessLevelsDeleteResource
       :<|> AccessPoliciesListResource
       :<|> AccessPoliciesPatchResource
       :<|> AccessPoliciesGetResource
       :<|> AccessPoliciesCreateResource
       :<|> AccessPoliciesDeleteResource
       :<|> OperationsGetResource

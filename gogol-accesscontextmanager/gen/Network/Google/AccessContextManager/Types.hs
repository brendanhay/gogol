{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * AccessLevel
    , AccessLevel
    , accessLevel
    , alBasic
    , alUpdateTime
    , alName
    , alTitle
    , alDescription
    , alCreateTime

    -- * BasicLevelCombiningFunction
    , BasicLevelCombiningFunction (..)

    -- * ServicePerimeterConfig
    , ServicePerimeterConfig
    , servicePerimeterConfig
    , spcUnrestrictedServices
    , spcResources
    , spcRestrictedServices
    , spcAccessLevels

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * ServicePerimeterPerimeterType
    , ServicePerimeterPerimeterType (..)

    -- * OSConstraintOSType
    , OSConstraintOSType (..)

    -- * ServicePerimeter
    , ServicePerimeter
    , servicePerimeter
    , spStatus
    , spPerimeterType
    , spUpdateTime
    , spName
    , spTitle
    , spDescription
    , spCreateTime

    -- * ListAccessPoliciesResponse
    , ListAccessPoliciesResponse
    , listAccessPoliciesResponse
    , laprNextPageToken
    , laprAccessPolicies

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * OSConstraint
    , OSConstraint
    , osConstraint
    , ocOSType
    , ocMinimumVersion

    -- * AccessPolicy
    , AccessPolicy
    , accessPolicy
    , apParent
    , apUpdateTime
    , apName
    , apTitle
    , apCreateTime

    -- * Xgafv
    , Xgafv (..)

    -- * ListServicePerimetersResponse
    , ListServicePerimetersResponse
    , listServicePerimetersResponse
    , lsprNextPageToken
    , lsprServicePerimeters

    -- * ListAccessLevelsResponse
    , ListAccessLevelsResponse
    , listAccessLevelsResponse
    , lalrNextPageToken
    , lalrAccessLevels

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * DevicePolicy
    , DevicePolicy
    , devicePolicy
    , dpOSConstraints
    , dpRequireScreenlock
    , dpAllowedEncryptionStatuses
    , dpAllowedDeviceManagementLevels

    -- * Condition
    , Condition
    , condition
    , cMembers
    , cNegate
    , cIPSubnetworks
    , cDevicePolicy
    , cRequiredAccessLevels

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional
    ) where

import           Network.Google.AccessContextManager.Types.Product
import           Network.Google.AccessContextManager.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta' of the Access Context Manager API. This contains the host and root path used as a starting point for constructing service requests.
accessContextManagerService :: ServiceConfig
accessContextManagerService
  = defaultService
      (ServiceId "accesscontextmanager:v1beta")
      "accesscontextmanager.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;

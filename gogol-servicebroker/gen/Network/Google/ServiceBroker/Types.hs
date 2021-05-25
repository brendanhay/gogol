{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ServiceBroker.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ServiceBroker.Types
    (
    -- * Service Configuration
      serviceBrokerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleIAMV1__Policy
    , GoogleIAMV1__Policy
    , googleIAMV1__Policy
    , givpEtag
    , givpVersion
    , givpBindings

    -- * GoogleIAMV1__TestIAMPermissionsResponse
    , GoogleIAMV1__TestIAMPermissionsResponse
    , googleIAMV1__TestIAMPermissionsResponse
    , givtiprPermissions

    -- * GoogleType__Expr
    , GoogleType__Expr
    , googleType__Expr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleIAMV1__Binding
    , GoogleIAMV1__Binding
    , googleIAMV1__Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- * GoogleIAMV1__SetIAMPolicyRequest
    , GoogleIAMV1__SetIAMPolicyRequest
    , googleIAMV1__SetIAMPolicyRequest
    , givsiprPolicy

    -- * GoogleIAMV1__TestIAMPermissionsRequest
    , GoogleIAMV1__TestIAMPermissionsRequest
    , googleIAMV1__TestIAMPermissionsRequest
    , giamvtiamprPermissions
    ) where

import Network.Google.Prelude
import Network.Google.ServiceBroker.Types.Product
import Network.Google.ServiceBroker.Types.Sum

-- | Default request referring to version 'v1' of the Service Broker API. This contains the host and root path used as a starting point for constructing service requests.
serviceBrokerService :: ServiceConfig
serviceBrokerService
  = defaultService (ServiceId "servicebroker:v1")
      "servicebroker.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

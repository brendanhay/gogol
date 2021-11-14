{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ServiceBroker
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Platform Service Broker API provides Google hosted
-- implementation of the Open Service Broker API
-- (https:\/\/www.openservicebrokerapi.org\/).
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference>
module Network.Google.ServiceBroker
    (
    -- * Service Configuration
      serviceBrokerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ServiceBrokerAPI

    -- * Resources

    -- ** servicebroker.getIamPolicy
    , module Network.Google.Resource.ServiceBroker.GetIAMPolicy

    -- ** servicebroker.setIamPolicy
    , module Network.Google.Resource.ServiceBroker.SetIAMPolicy

    -- ** servicebroker.testIamPermissions
    , module Network.Google.Resource.ServiceBroker.TestIAMPermissions

    -- * Types

    -- ** GoogleIAMV1__Policy
    , GoogleIAMV1__Policy
    , googleIAMV1__Policy
    , givpEtag
    , givpVersion
    , givpBindings

    -- ** GoogleIAMV1__TestIAMPermissionsResponse
    , GoogleIAMV1__TestIAMPermissionsResponse
    , googleIAMV1__TestIAMPermissionsResponse
    , givtiprPermissions

    -- ** GoogleType__Expr
    , GoogleType__Expr
    , googleType__Expr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleIAMV1__Binding
    , GoogleIAMV1__Binding
    , googleIAMV1__Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- ** GoogleIAMV1__SetIAMPolicyRequest
    , GoogleIAMV1__SetIAMPolicyRequest
    , googleIAMV1__SetIAMPolicyRequest
    , givsiprPolicy

    -- ** GoogleIAMV1__TestIAMPermissionsRequest
    , GoogleIAMV1__TestIAMPermissionsRequest
    , googleIAMV1__TestIAMPermissionsRequest
    , giamvtiamprPermissions
    ) where

import Network.Google.Prelude
import Network.Google.Resource.ServiceBroker.GetIAMPolicy
import Network.Google.Resource.ServiceBroker.SetIAMPolicy
import Network.Google.Resource.ServiceBroker.TestIAMPermissions
import Network.Google.ServiceBroker.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Service Broker API service.
type ServiceBrokerAPI =
     GetIAMPolicyResource :<|> SetIAMPolicyResource :<|>
       TestIAMPermissionsResource

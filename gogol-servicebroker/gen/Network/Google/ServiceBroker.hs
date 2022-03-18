{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.ServiceBroker
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Platform Service Broker API provides Google hosted implementation of the Open Service Broker API (https:\/\/www.openservicebrokerapi.org\/).
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference>
module Network.Google.ServiceBroker
  ( -- * Configuration
    serviceBrokerService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** servicebroker.getIamPolicy
    ServiceBrokerGetIamPolicyResource,
    newServiceBrokerGetIamPolicy,
    ServiceBrokerGetIamPolicy,

    -- ** servicebroker.setIamPolicy
    ServiceBrokerSetIamPolicyResource,
    newServiceBrokerSetIamPolicy,
    ServiceBrokerSetIamPolicy,

    -- ** servicebroker.testIamPermissions
    ServiceBrokerTestIamPermissionsResource,
    newServiceBrokerTestIamPermissions,
    ServiceBrokerTestIamPermissions,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleIamV1__Binding
    GoogleIamV1__Binding (..),
    newGoogleIamV1__Binding,

    -- ** GoogleIamV1__Policy
    GoogleIamV1__Policy (..),
    newGoogleIamV1__Policy,

    -- ** GoogleIamV1__SetIamPolicyRequest
    GoogleIamV1__SetIamPolicyRequest (..),
    newGoogleIamV1__SetIamPolicyRequest,

    -- ** GoogleIamV1__TestIamPermissionsRequest
    GoogleIamV1__TestIamPermissionsRequest (..),
    newGoogleIamV1__TestIamPermissionsRequest,

    -- ** GoogleIamV1__TestIamPermissionsResponse
    GoogleIamV1__TestIamPermissionsResponse (..),
    newGoogleIamV1__TestIamPermissionsResponse,

    -- ** GoogleType__Expr
    GoogleType__Expr (..),
    newGoogleType__Expr,
  )
where

import Network.Google.ServiceBroker.GetIamPolicy
import Network.Google.ServiceBroker.SetIamPolicy
import Network.Google.ServiceBroker.TestIamPermissions
import Network.Google.ServiceBroker.Types

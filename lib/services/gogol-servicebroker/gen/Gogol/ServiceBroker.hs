{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ServiceBroker
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Cloud Platform Service Broker API provides Google hosted implementation of the Open Service Broker API (https:\/\/www.openservicebrokerapi.org\/).
--
-- /See:/ <https://cloud.google.com/kubernetes-engine/docs/concepts/add-on/service-broker Service Broker API Reference>
module Gogol.ServiceBroker
    (
    -- * Configuration
      serviceBrokerService

    -- * OAuth Scopes
    , CloudPlatform'FullControl

    -- * Resources

    -- ** servicebroker.getIamPolicy
    , ServiceBrokerGetIamPolicyResource
    , ServiceBrokerGetIamPolicy (..)
    , newServiceBrokerGetIamPolicy

    -- ** servicebroker.setIamPolicy
    , ServiceBrokerSetIamPolicyResource
    , ServiceBrokerSetIamPolicy (..)
    , newServiceBrokerSetIamPolicy

    -- ** servicebroker.testIamPermissions
    , ServiceBrokerTestIamPermissionsResource
    , ServiceBrokerTestIamPermissions (..)
    , newServiceBrokerTestIamPermissions

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleIamV1__Binding
    , GoogleIamV1__Binding (..)
    , newGoogleIamV1__Binding

    -- ** GoogleIamV1__Policy
    , GoogleIamV1__Policy (..)
    , newGoogleIamV1__Policy

    -- ** GoogleIamV1__SetIamPolicyRequest
    , GoogleIamV1__SetIamPolicyRequest (..)
    , newGoogleIamV1__SetIamPolicyRequest

    -- ** GoogleIamV1__TestIamPermissionsRequest
    , GoogleIamV1__TestIamPermissionsRequest (..)
    , newGoogleIamV1__TestIamPermissionsRequest

    -- ** GoogleIamV1__TestIamPermissionsResponse
    , GoogleIamV1__TestIamPermissionsResponse (..)
    , newGoogleIamV1__TestIamPermissionsResponse

    -- ** GoogleType__Expr
    , GoogleType__Expr (..)
    , newGoogleType__Expr
    ) where

import Gogol.ServiceBroker.GetIamPolicy
import Gogol.ServiceBroker.SetIamPolicy
import Gogol.ServiceBroker.TestIamPermissions
import Gogol.ServiceBroker.Types

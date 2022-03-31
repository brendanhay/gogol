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
-- Module      : Gogol.ServiceBroker.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.ServiceBroker.Types
  ( -- * Configuration
    serviceBrokerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import qualified Gogol.Prelude as Core
import Gogol.ServiceBroker.Internal.Product
import Gogol.ServiceBroker.Internal.Sum

-- | Default request referring to version @v1@ of the Service Broker API. This contains the host and root path used as a starting point for constructing service requests.
serviceBrokerService :: Core.ServiceConfig
serviceBrokerService =
  Core.defaultService
    (Core.ServiceId "servicebroker:v1")
    "servicebroker.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"

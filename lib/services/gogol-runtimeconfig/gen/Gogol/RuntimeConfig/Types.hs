{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.RuntimeConfig.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.RuntimeConfig.Types
  ( -- * Configuration
    runtimeConfigService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Cloudruntimeconfig'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CancelOperationRequest
    CancelOperationRequest (..),
    newCancelOperationRequest,

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.RuntimeConfig.Internal.Product
import Gogol.RuntimeConfig.Internal.Sum

-- | Default request referring to version @v1@ of the Cloud Runtime Configuration API. This contains the host and root path used as a starting point for constructing service requests.
runtimeConfigService :: Core.ServiceConfig
runtimeConfigService =
  Core.defaultService
    (Core.ServiceId "runtimeconfig:v1")
    "runtimeconfig.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"

-- | Manage your Google Cloud Platform services\' runtime configuration
type Cloudruntimeconfig'FullControl =
  "https://www.googleapis.com/auth/cloudruntimeconfig"

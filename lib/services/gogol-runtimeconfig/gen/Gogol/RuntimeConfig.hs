{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.RuntimeConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Runtime Configurator allows you to dynamically configure and expose variables through Google Cloud Platform. In addition, you can also set Watchers and Waiters that will watch for changes to your data and return based on certain conditions.
--
-- /See:/ <https://cloud.google.com/deployment-manager/runtime-configurator/ Cloud Runtime Configuration API Reference>
module Gogol.RuntimeConfig
  ( -- * Configuration
    runtimeConfigService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,
    Cloudruntimeconfig'FullControl,

    -- * Resources

    -- ** runtimeconfig.operations.cancel
    RuntimeConfigOperationsCancelResource,
    RuntimeConfigOperationsCancel (..),
    newRuntimeConfigOperationsCancel,

    -- ** runtimeconfig.operations.delete
    RuntimeConfigOperationsDeleteResource,
    RuntimeConfigOperationsDelete (..),
    newRuntimeConfigOperationsDelete,

    -- ** runtimeconfig.operations.list
    RuntimeConfigOperationsListResource,
    RuntimeConfigOperationsList (..),
    newRuntimeConfigOperationsList,

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

import Gogol.RuntimeConfig.Operations.Cancel
import Gogol.RuntimeConfig.Operations.Delete
import Gogol.RuntimeConfig.Operations.List
import Gogol.RuntimeConfig.Types

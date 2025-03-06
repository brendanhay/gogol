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
-- Module      : Gogol.Admin.DataTransfer.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Admin.DataTransfer.Types
  ( -- * Configuration
    adminDataTransferService,

    -- * OAuth Scopes
    Admin'Datatransfer,
    Admin'Datatransfer'Readonly,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Application
    Application (..),
    newApplication,

    -- ** ApplicationDataTransfer
    ApplicationDataTransfer (..),
    newApplicationDataTransfer,

    -- ** ApplicationTransferParam
    ApplicationTransferParam (..),
    newApplicationTransferParam,

    -- ** ApplicationsListResponse
    ApplicationsListResponse (..),
    newApplicationsListResponse,

    -- ** DataTransfer
    DataTransfer (..),
    newDataTransfer,

    -- ** DataTransfersListResponse
    DataTransfersListResponse (..),
    newDataTransfersListResponse,
  )
where

import Gogol.Admin.DataTransfer.Internal.Product
import Gogol.Admin.DataTransfer.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @datatransfer_v1@ of the Admin SDK API. This contains the host and root path used as a starting point for constructing service requests.
adminDataTransferService :: Core.ServiceConfig
adminDataTransferService =
  Core.defaultService
    (Core.ServiceId "admin:datatransfer_v1")
    "admin.googleapis.com"

-- | View and manage data transfers between users in your organization
type Admin'Datatransfer =
  "https://www.googleapis.com/auth/admin.datatransfer"

-- | View data transfers between users in your organization
type Admin'Datatransfer'Readonly =
  "https://www.googleapis.com/auth/admin.datatransfer.readonly"

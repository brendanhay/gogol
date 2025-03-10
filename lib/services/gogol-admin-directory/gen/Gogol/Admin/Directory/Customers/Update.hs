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
-- Module      : Gogol.Admin.Directory.Customers.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a customer.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.customers.update@.
module Gogol.Admin.Directory.Customers.Update
  ( -- * Resource
    DirectoryCustomersUpdateResource,

    -- ** Constructing a Request
    DirectoryCustomersUpdate (..),
    newDirectoryCustomersUpdate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @directory.customers.update@ method which the
-- 'DirectoryCustomersUpdate' request conforms to.
type DirectoryCustomersUpdateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> "customers"
    Core.:> Core.Capture "customerKey" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Customer
    Core.:> Core.Put '[Core.JSON] Customer

-- | Updates a customer.
--
-- /See:/ 'newDirectoryCustomersUpdate' smart constructor.
data DirectoryCustomersUpdate = DirectoryCustomersUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Id of the customer to be updated
    customerKey :: Core.Text,
    -- | Multipart request metadata.
    payload :: Customer,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryCustomersUpdate' with the minimum fields required to make a request.
newDirectoryCustomersUpdate ::
  -- |  Id of the customer to be updated See 'customerKey'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Customer ->
  DirectoryCustomersUpdate
newDirectoryCustomersUpdate customerKey payload =
  DirectoryCustomersUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customerKey = customerKey,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryCustomersUpdate where
  type Rs DirectoryCustomersUpdate = Customer
  type Scopes DirectoryCustomersUpdate = '[Admin'Directory'Customer]
  requestClient DirectoryCustomersUpdate {..} =
    go
      customerKey
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DirectoryCustomersUpdateResource)
          Core.mempty

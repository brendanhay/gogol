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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a print server\'s configuration.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.patch@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Patch
  ( -- * Resource
    AdminCustomersChromePrintServersPatchResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintServersPatch (..),
    newAdminCustomersChromePrintServersPatch,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customers.chrome.printServers.patch@ method which the
-- 'AdminCustomersChromePrintServersPatch' request conforms to.
type AdminCustomersChromePrintServersPatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PrintServer
    Core.:> Core.Patch '[Core.JSON] PrintServer

-- | Updates a print server\'s configuration.
--
-- /See:/ 'newAdminCustomersChromePrintServersPatch' smart constructor.
data AdminCustomersChromePrintServersPatch = AdminCustomersChromePrintServersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Immutable. Resource name of the print server. Leave empty when creating. Format: @customers\/{customer.id}\/printServers\/{print_server.id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PrintServer,
    -- | The list of fields to update. Some fields are read-only and cannot be updated. Values for unspecified fields are patched.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersPatch' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersPatch ::
  -- |  Immutable. Resource name of the print server. Leave empty when creating. Format: @customers\/{customer.id}\/printServers\/{print_server.id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PrintServer ->
  AdminCustomersChromePrintServersPatch
newAdminCustomersChromePrintServersPatch name payload =
  AdminCustomersChromePrintServersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdminCustomersChromePrintServersPatch where
  type Rs AdminCustomersChromePrintServersPatch = PrintServer
  type
    Scopes AdminCustomersChromePrintServersPatch =
      '[Admin'Chrome'Printers]
  requestClient AdminCustomersChromePrintServersPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdminCustomersChromePrintServersPatchResource
          )
          Core.mempty

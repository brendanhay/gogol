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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a print server.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.create@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.Create
  ( -- * Resource
    AdminCustomersChromePrintServersCreateResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintServersCreate (..),
    newAdminCustomersChromePrintServersCreate,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customers.chrome.printServers.create@ method which the
-- 'AdminCustomersChromePrintServersCreate' request conforms to.
type AdminCustomersChromePrintServersCreateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printServers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PrintServer
    Core.:> Core.Post '[Core.JSON] PrintServer

-- | Creates a print server.
--
-- /See:/ 'newAdminCustomersChromePrintServersCreate' smart constructor.
data AdminCustomersChromePrintServersCreate = AdminCustomersChromePrintServersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: PrintServer,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersCreate' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersCreate ::
  -- |  Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PrintServer ->
  AdminCustomersChromePrintServersCreate
newAdminCustomersChromePrintServersCreate parent payload =
  AdminCustomersChromePrintServersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdminCustomersChromePrintServersCreate where
  type Rs AdminCustomersChromePrintServersCreate = PrintServer
  type
    Scopes AdminCustomersChromePrintServersCreate =
      '[Admin'Chrome'Printers]
  requestClient AdminCustomersChromePrintServersCreate {..} =
    go
      parent
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
          ( Core.Proxy ::
              Core.Proxy AdminCustomersChromePrintServersCreateResource
          )
          Core.mempty

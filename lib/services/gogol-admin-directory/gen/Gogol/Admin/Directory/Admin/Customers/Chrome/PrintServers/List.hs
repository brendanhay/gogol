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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists print server configurations.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printServers.list@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.PrintServers.List
  ( -- * Resource
    AdminCustomersChromePrintServersListResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintServersList (..),
    newAdminCustomersChromePrintServersList,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customers.chrome.printServers.list@ method which the
-- 'AdminCustomersChromePrintServersList' request conforms to.
type AdminCustomersChromePrintServersListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printServers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "orgUnitId" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListPrintServersResponse

-- | Lists print server configurations.
--
-- /See:/ 'newAdminCustomersChromePrintServersList' smart constructor.
data AdminCustomersChromePrintServersList = AdminCustomersChromePrintServersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Search query in <https://github.com/google/cel-spec Common Expression Language syntax>. Supported filters are @display_name@, @description@, and @uri@. Example: @printServer.displayName==\'marketing-queue\'@.
    filter :: (Core.Maybe Core.Text),
    -- | Sort order for results. Supported values are @display_name@, @description@, or @create_time@. Default order is ascending, but descending order can be returned by appending \"desc\" to the @order_by@ field. For instance, @orderBy==\'description desc\'@ returns the print servers sorted by description in descending order.
    orderBy :: (Core.Maybe Core.Text),
    -- | If @org_unit_id@ is present in the request, only print servers owned or inherited by the organizational unit (OU) are returned. If the @PrintServer@ resource\'s @org_unit_id@ matches the one in the request, the OU owns the server. If @org_unit_id@ is not specified in the request, all print servers are returned or filtered against.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | The maximum number of objects to return (default @100@, max @100@). The service might return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A generated token to paginate results (the @next_page_token@ from a previous call).
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintServersList' with the minimum fields required to make a request.
newAdminCustomersChromePrintServersList ::
  -- |  Required. The <https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers unique ID> of the customer\'s Google Workspace account. Format: @customers\/{id}@ See 'parent'.
  Core.Text ->
  AdminCustomersChromePrintServersList
newAdminCustomersChromePrintServersList parent =
  AdminCustomersChromePrintServersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      orderBy = Core.Nothing,
      orgUnitId = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AdminCustomersChromePrintServersList where
  type
    Rs AdminCustomersChromePrintServersList =
      ListPrintServersResponse
  type
    Scopes AdminCustomersChromePrintServersList =
      '[Admin'Chrome'Printers, Admin'Chrome'Printers'Readonly]
  requestClient AdminCustomersChromePrintServersList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      orderBy
      orgUnitId
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      adminDirectoryService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AdminCustomersChromePrintServersListResource
          )
          Core.mempty

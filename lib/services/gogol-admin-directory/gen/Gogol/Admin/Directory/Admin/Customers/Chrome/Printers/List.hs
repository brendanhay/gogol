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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List printers configs.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.list@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.List
  ( -- * Resource
    AdminCustomersChromePrintersListResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintersList (..),
    newAdminCustomersChromePrintersList,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customers.chrome.printers.list@ method which the
-- 'AdminCustomersChromePrintersList' request conforms to.
type AdminCustomersChromePrintersListResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printers"
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
    Core.:> Core.Get '[Core.JSON] ListPrintersResponse

-- | List printers configs.
--
-- /See:/ 'newAdminCustomersChromePrintersList' smart constructor.
data AdminCustomersChromePrintersList = AdminCustomersChromePrintersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Search query. Search syntax is shared between this api and Admin Console printers pages.
    filter :: (Core.Maybe Core.Text),
    -- | The order to sort results by. Must be one of display/name, description, make/and/model, or create/time. Default order is ascending, but descending order can be returned by appending \"desc\" to the order_by field. For instance, \"description desc\" will return the printers sorted by description in descending order.
    orderBy :: (Core.Maybe Core.Text),
    -- | Organization Unit that we want to list the printers for. When org/unit is not present in the request then all printers of the customer are returned (or filtered). When org/unit is present in the request then only printers available to this OU will be returned (owned or inherited). You may see if printer is owned or inherited for this OU by looking at Printer.org/unit/id.
    orgUnitId :: (Core.Maybe Core.Text),
    -- | The maximum number of objects to return. The service may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous call.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The name of the customer who owns this collection of printers. Format: customers\/{customer_id}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintersList' with the minimum fields required to make a request.
newAdminCustomersChromePrintersList ::
  -- |  Required. The name of the customer who owns this collection of printers. Format: customers\/{customer_id} See 'parent'.
  Core.Text ->
  AdminCustomersChromePrintersList
newAdminCustomersChromePrintersList parent =
  AdminCustomersChromePrintersList
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

instance Core.GoogleRequest AdminCustomersChromePrintersList where
  type Rs AdminCustomersChromePrintersList = ListPrintersResponse
  type
    Scopes AdminCustomersChromePrintersList =
      '[Admin'Chrome'Printers, Admin'Chrome'Printers'Readonly]
  requestClient AdminCustomersChromePrintersList {..} =
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
          (Core.Proxy :: Core.Proxy AdminCustomersChromePrintersListResource)
          Core.mempty

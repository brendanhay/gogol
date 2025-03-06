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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchDeletePrinters
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes printers in batch.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.batchDeletePrinters@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchDeletePrinters
  ( -- * Resource
    AdminCustomersChromePrintersBatchDeletePrintersResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintersBatchDeletePrinters (..),
    newAdminCustomersChromePrintersBatchDeletePrinters,
  )
where

import Gogol.Admin.Directory.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @admin.customers.chrome.printers.batchDeletePrinters@ method which the
-- 'AdminCustomersChromePrintersBatchDeletePrinters' request conforms to.
type AdminCustomersChromePrintersBatchDeletePrintersResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printers:batchDeletePrinters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchDeletePrintersRequest
    Core.:> Core.Post '[Core.JSON] BatchDeletePrintersResponse

-- | Deletes printers in batch.
--
-- /See:/ 'newAdminCustomersChromePrintersBatchDeletePrinters' smart constructor.
data AdminCustomersChromePrintersBatchDeletePrinters = AdminCustomersChromePrintersBatchDeletePrinters
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the customer. Format: customers\/{customer_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchDeletePrintersRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintersBatchDeletePrinters' with the minimum fields required to make a request.
newAdminCustomersChromePrintersBatchDeletePrinters ::
  -- |  Required. The name of the customer. Format: customers\/{customer_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchDeletePrintersRequest ->
  AdminCustomersChromePrintersBatchDeletePrinters
newAdminCustomersChromePrintersBatchDeletePrinters parent payload =
  AdminCustomersChromePrintersBatchDeletePrinters
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdminCustomersChromePrintersBatchDeletePrinters
  where
  type
    Rs AdminCustomersChromePrintersBatchDeletePrinters =
      BatchDeletePrintersResponse
  type
    Scopes AdminCustomersChromePrintersBatchDeletePrinters =
      '[Admin'Chrome'Printers]
  requestClient AdminCustomersChromePrintersBatchDeletePrinters {..} =
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
              Core.Proxy AdminCustomersChromePrintersBatchDeletePrintersResource
          )
          Core.mempty

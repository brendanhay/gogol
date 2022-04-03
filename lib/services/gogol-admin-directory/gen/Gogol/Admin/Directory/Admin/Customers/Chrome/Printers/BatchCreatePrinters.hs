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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchCreatePrinters
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates printers under given Organization Unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.batchCreatePrinters@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.BatchCreatePrinters
  ( -- * Resource
    AdminCustomersChromePrintersBatchCreatePrintersResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintersBatchCreatePrinters (..),
    newAdminCustomersChromePrintersBatchCreatePrinters,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @admin.customers.chrome.printers.batchCreatePrinters@ method which the
-- 'AdminCustomersChromePrintersBatchCreatePrinters' request conforms to.
type AdminCustomersChromePrintersBatchCreatePrintersResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printers:batchCreatePrinters"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BatchCreatePrintersRequest
    Core.:> Core.Post
              '[Core.JSON]
              BatchCreatePrintersResponse

-- | Creates printers under given Organization Unit.
--
-- /See:/ 'newAdminCustomersChromePrintersBatchCreatePrinters' smart constructor.
data AdminCustomersChromePrintersBatchCreatePrinters = AdminCustomersChromePrintersBatchCreatePrinters
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the customer. Format: customers\/{customer_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchCreatePrintersRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintersBatchCreatePrinters' with the minimum fields required to make a request.
newAdminCustomersChromePrintersBatchCreatePrinters ::
  -- |  Required. The name of the customer. Format: customers\/{customer_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchCreatePrintersRequest ->
  AdminCustomersChromePrintersBatchCreatePrinters
newAdminCustomersChromePrintersBatchCreatePrinters parent payload =
  AdminCustomersChromePrintersBatchCreatePrinters
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdminCustomersChromePrintersBatchCreatePrinters
  where
  type
    Rs
      AdminCustomersChromePrintersBatchCreatePrinters =
      BatchCreatePrintersResponse
  type
    Scopes
      AdminCustomersChromePrintersBatchCreatePrinters =
      '[Admin'Chrome'Printers]
  requestClient
    AdminCustomersChromePrintersBatchCreatePrinters {..} =
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
                Core.Proxy
                  AdminCustomersChromePrintersBatchCreatePrintersResource
            )
            Core.mempty

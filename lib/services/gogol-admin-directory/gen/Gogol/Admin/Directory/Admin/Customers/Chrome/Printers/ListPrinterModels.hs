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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.ListPrinterModels
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the supported printer models.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.listPrinterModels@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.ListPrinterModels
  ( -- * Resource
    AdminCustomersChromePrintersListPrinterModelsResource,

    -- ** Constructing a Request
    newAdminCustomersChromePrintersListPrinterModels,
    AdminCustomersChromePrintersListPrinterModels,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @admin.customers.chrome.printers.listPrinterModels@ method which the
-- 'AdminCustomersChromePrintersListPrinterModels' request conforms to.
type AdminCustomersChromePrintersListPrinterModelsResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printers:listPrinterModels"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListPrinterModelsResponse

-- | Lists the supported printer models.
--
-- /See:/ 'newAdminCustomersChromePrintersListPrinterModels' smart constructor.
data AdminCustomersChromePrintersListPrinterModels = AdminCustomersChromePrintersListPrinterModels
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Filer to list only models by a given manufacturer in format: \"manufacturer:Brother\". Search syntax is shared between this api and Admin Console printers pages.
    filter :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'AdminCustomersChromePrintersListPrinterModels' with the minimum fields required to make a request.
newAdminCustomersChromePrintersListPrinterModels ::
  -- |  Required. The name of the customer who owns this collection of printers. Format: customers\/{customer_id} See 'parent'.
  Core.Text ->
  AdminCustomersChromePrintersListPrinterModels
newAdminCustomersChromePrintersListPrinterModels parent =
  AdminCustomersChromePrintersListPrinterModels
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdminCustomersChromePrintersListPrinterModels
  where
  type
    Rs AdminCustomersChromePrintersListPrinterModels =
      ListPrinterModelsResponse
  type
    Scopes
      AdminCustomersChromePrintersListPrinterModels =
      '[ "https://www.googleapis.com/auth/admin.chrome.printers",
         "https://www.googleapis.com/auth/admin.chrome.printers.readonly"
       ]
  requestClient
    AdminCustomersChromePrintersListPrinterModels {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
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
                Core.Proxy
                  AdminCustomersChromePrintersListPrinterModelsResource
            )
            Core.mempty

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
-- Module      : Network.Google.Admin.Directory.Admin.Customers.Chrome.Printers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a printer under given Organization Unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.create@.
module Network.Google.Admin.Directory.Admin.Customers.Chrome.Printers.Create
  ( -- * Resource
    AdminCustomersChromePrintersCreateResource,

    -- ** Constructing a Request
    newAdminCustomersChromePrintersCreate,
    AdminCustomersChromePrintersCreate,
  )
where

import Network.Google.Admin.Directory.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @admin.customers.chrome.printers.create@ method which the
-- 'AdminCustomersChromePrintersCreate' request conforms to.
type AdminCustomersChromePrintersCreateResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "chrome"
    Core.:> "printers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Printer
    Core.:> Core.Post '[Core.JSON] Printer

-- | Creates a printer under given Organization Unit.
--
-- /See:/ 'newAdminCustomersChromePrintersCreate' smart constructor.
data AdminCustomersChromePrintersCreate = AdminCustomersChromePrintersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the customer. Format: customers\/{customer_id}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Printer,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintersCreate' with the minimum fields required to make a request.
newAdminCustomersChromePrintersCreate ::
  -- |  Required. The name of the customer. Format: customers\/{customer_id} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Printer ->
  AdminCustomersChromePrintersCreate
newAdminCustomersChromePrintersCreate parent payload =
  AdminCustomersChromePrintersCreate
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
    AdminCustomersChromePrintersCreate
  where
  type Rs AdminCustomersChromePrintersCreate = Printer
  type
    Scopes AdminCustomersChromePrintersCreate =
      '["https://www.googleapis.com/auth/admin.chrome.printers"]
  requestClient AdminCustomersChromePrintersCreate {..} =
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
                AdminCustomersChromePrintersCreateResource
          )
          Core.mempty

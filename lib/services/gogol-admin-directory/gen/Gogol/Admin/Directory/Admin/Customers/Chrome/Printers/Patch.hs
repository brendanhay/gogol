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
-- Module      : Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a @Printer@ resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.patch@.
module Gogol.Admin.Directory.Admin.Customers.Chrome.Printers.Patch
  ( -- * Resource
    AdminCustomersChromePrintersPatchResource,

    -- ** Constructing a Request
    AdminCustomersChromePrintersPatch (..),
    newAdminCustomersChromePrintersPatch,
  )
where

import Gogol.Admin.Directory.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @admin.customers.chrome.printers.patch@ method which the
-- 'AdminCustomersChromePrintersPatch' request conforms to.
type AdminCustomersChromePrintersPatchResource =
  "admin"
    Core.:> "directory"
    Core.:> "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "clearMask" Core.FieldMask
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Printer
    Core.:> Core.Patch '[Core.JSON] Printer

-- | Updates a @Printer@ resource.
--
-- /See:/ 'newAdminCustomersChromePrintersPatch' smart constructor.
data AdminCustomersChromePrintersPatch = AdminCustomersChromePrintersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The list of fields to be cleared. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched.
    clearMask :: (Core.Maybe Core.FieldMask),
    -- | The resource name of the Printer object, in the format customers\/{customer-id}\/printers\/{printer-id} (During printer creation leave empty)
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: Printer,
    -- | The list of fields to be updated. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AdminCustomersChromePrintersPatch' with the minimum fields required to make a request.
newAdminCustomersChromePrintersPatch ::
  -- |  The resource name of the Printer object, in the format customers\/{customer-id}\/printers\/{printer-id} (During printer creation leave empty) See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Printer ->
  AdminCustomersChromePrintersPatch
newAdminCustomersChromePrintersPatch name payload =
  AdminCustomersChromePrintersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      clearMask = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AdminCustomersChromePrintersPatch
  where
  type Rs AdminCustomersChromePrintersPatch = Printer
  type
    Scopes AdminCustomersChromePrintersPatch =
      '[Admin'Chrome'Printers]
  requestClient AdminCustomersChromePrintersPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      clearMask
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
              Core.Proxy AdminCustomersChromePrintersPatchResource
          )
          Core.mempty

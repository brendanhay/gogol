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
-- Module      : Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a product certification by its name. This method can only be called by certification bodies.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference> for @manufacturers.accounts.languages.productCertifications.delete@.
module Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Delete
  ( -- * Resource
    ManufacturersAccountsLanguagesProductCertificationsDeleteResource,

    -- ** Constructing a Request
    ManufacturersAccountsLanguagesProductCertificationsDelete (..),
    newManufacturersAccountsLanguagesProductCertificationsDelete,
  )
where

import Gogol.Manufacturers.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @manufacturers.accounts.languages.productCertifications.delete@ method which the
-- 'ManufacturersAccountsLanguagesProductCertificationsDelete' request conforms to.
type ManufacturersAccountsLanguagesProductCertificationsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a product certification by its name. This method can only be called by certification bodies.
--
-- /See:/ 'newManufacturersAccountsLanguagesProductCertificationsDelete' smart constructor.
data ManufacturersAccountsLanguagesProductCertificationsDelete = ManufacturersAccountsLanguagesProductCertificationsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the product certification to delete. Format: accounts\/{account}\/languages\/{language_code}\/productCertifications\/{id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ManufacturersAccountsLanguagesProductCertificationsDelete' with the minimum fields required to make a request.
newManufacturersAccountsLanguagesProductCertificationsDelete ::
  -- |  Required. The name of the product certification to delete. Format: accounts\/{account}\/languages\/{language_code}\/productCertifications\/{id} See 'name'.
  Core.Text ->
  ManufacturersAccountsLanguagesProductCertificationsDelete
newManufacturersAccountsLanguagesProductCertificationsDelete name =
  ManufacturersAccountsLanguagesProductCertificationsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ManufacturersAccountsLanguagesProductCertificationsDelete
  where
  type
    Rs ManufacturersAccountsLanguagesProductCertificationsDelete =
      Empty
  type
    Scopes
      ManufacturersAccountsLanguagesProductCertificationsDelete =
      '[Manufacturercenter'FullControl]
  requestClient
    ManufacturersAccountsLanguagesProductCertificationsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        manufacturersService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ManufacturersAccountsLanguagesProductCertificationsDeleteResource
            )
            Core.mempty

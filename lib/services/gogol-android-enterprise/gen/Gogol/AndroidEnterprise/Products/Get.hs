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
-- Module      : Gogol.AndroidEnterprise.Products.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.products.get@.
module Gogol.AndroidEnterprise.Products.Get
  ( -- * Resource
    AndroidEnterpriseProductsGetResource,

    -- ** Constructing a Request
    AndroidEnterpriseProductsGet (..),
    newAndroidEnterpriseProductsGet,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.products.get@ method which the
-- 'AndroidEnterpriseProductsGet' request conforms to.
type AndroidEnterpriseProductsGetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "language" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Product

-- | Retrieves details of a product for display to an enterprise admin.
--
-- /See:/ 'newAndroidEnterpriseProductsGet' smart constructor.
data AndroidEnterpriseProductsGet = AndroidEnterpriseProductsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | The BCP47 tag for the user\'s preferred language (e.g. \"en-US\", \"de\").
    language :: (Core.Maybe Core.Text),
    -- | The ID of the product, e.g. \"app:com.google.android.gm\".
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseProductsGet' with the minimum fields required to make a request.
newAndroidEnterpriseProductsGet ::
  -- |  The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  -- |  The ID of the product, e.g. \"app:com.google.android.gm\". See 'productId'.
  Core.Text ->
  AndroidEnterpriseProductsGet
newAndroidEnterpriseProductsGet enterpriseId productId =
  AndroidEnterpriseProductsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enterpriseId = enterpriseId,
      language = Core.Nothing,
      productId = productId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidEnterpriseProductsGet where
  type Rs AndroidEnterpriseProductsGet = Product
  type
    Scopes AndroidEnterpriseProductsGet =
      '[Androidenterprise'FullControl]
  requestClient AndroidEnterpriseProductsGet {..} =
    go
      enterpriseId
      productId
      xgafv
      accessToken
      callback
      language
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidEnterpriseService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AndroidEnterpriseProductsGetResource)
          Core.mempty

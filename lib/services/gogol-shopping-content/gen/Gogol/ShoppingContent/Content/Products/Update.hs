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
-- Module      : Gogol.ShoppingContent.Content.Products.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing product in your Merchant Center account. Only updates attributes provided in the request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.products.update@.
module Gogol.ShoppingContent.Content.Products.Update
  ( -- * Resource
    ContentProductsUpdateResource,

    -- ** Constructing a Request
    ContentProductsUpdate (..),
    newContentProductsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.products.update@ method which the
-- 'ContentProductsUpdate' request conforms to.
type ContentProductsUpdateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Product
    Core.:> Core.Patch '[Core.JSON] Product

-- | Updates an existing product in your Merchant Center account. Only updates attributes provided in the request.
--
-- /See:/ 'newContentProductsUpdate' smart constructor.
data ContentProductsUpdate = ContentProductsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account that contains the product. This account cannot be a multi-client account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: Product,
    -- | The REST ID of the product for which to update.
    productId :: Core.Text,
    -- | The comma-separated list of product attributes to be updated. Example: @\"title,salePrice\"@. Attributes specified in the update mask without a value specified in the body will be deleted from the product. /You must specify the update mask to delete attributes./ Only top-level product attributes can be updated. If not defined, product attributes with set values will be updated and other attributes will stay unchanged.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentProductsUpdate' with the minimum fields required to make a request.
newContentProductsUpdate ::
  -- |  The ID of the account that contains the product. This account cannot be a multi-client account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  Product ->
  -- |  The REST ID of the product for which to update. See 'productId'.
  Core.Text ->
  ContentProductsUpdate
newContentProductsUpdate merchantId payload productId =
  ContentProductsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      productId = productId,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ContentProductsUpdate where
  type Rs ContentProductsUpdate = Product
  type Scopes ContentProductsUpdate = '[Content'FullControl]
  requestClient ContentProductsUpdate {..} =
    go
      merchantId
      productId
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      shoppingContentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy ContentProductsUpdateResource)
          Core.mempty

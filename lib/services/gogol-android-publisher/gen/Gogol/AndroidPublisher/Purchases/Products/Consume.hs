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
-- Module      : Gogol.AndroidPublisher.Purchases.Products.Consume
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Consumes a purchase for an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.consume@.
module Gogol.AndroidPublisher.Purchases.Products.Consume
  ( -- * Resource
    AndroidPublisherPurchasesProductsConsumeResource,

    -- ** Constructing a Request
    AndroidPublisherPurchasesProductsConsume (..),
    newAndroidPublisherPurchasesProductsConsume,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.purchases.products.consume@ method which the
-- 'AndroidPublisherPurchasesProductsConsume' request conforms to.
type AndroidPublisherPurchasesProductsConsumeResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "tokens"
    Core.:> Core.CaptureMode "token" "consume" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Consumes a purchase for an inapp item.
--
-- /See:/ 'newAndroidPublisherPurchasesProductsConsume' smart constructor.
data AndroidPublisherPurchasesProductsConsume = AndroidPublisherPurchasesProductsConsume
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The package name of the application the inapp product was sold in (for example, \'com.some.thing\').
    packageName :: Core.Text,
    -- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
    productId :: Core.Text,
    -- | The token provided to the user\'s device when the inapp product was purchased.
    token :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesProductsConsume' with the minimum fields required to make a request.
newAndroidPublisherPurchasesProductsConsume ::
  -- |  The package name of the application the inapp product was sold in (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  The inapp product SKU (for example, \'com.some.thing.inapp1\'). See 'productId'.
  Core.Text ->
  -- |  The token provided to the user\'s device when the inapp product was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesProductsConsume
newAndroidPublisherPurchasesProductsConsume
  packageName
  productId
  token =
    AndroidPublisherPurchasesProductsConsume
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        productId = productId,
        token = token,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherPurchasesProductsConsume
  where
  type Rs AndroidPublisherPurchasesProductsConsume = ()
  type
    Scopes AndroidPublisherPurchasesProductsConsume =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherPurchasesProductsConsume {..} =
    go
      packageName
      productId
      token
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherPurchasesProductsConsumeResource
          )
          Core.mempty

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
-- Module      : Gogol.AndroidPublisher.Purchases.Products.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the purchase and consumption status of an inapp item.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.get@.
module Gogol.AndroidPublisher.Purchases.Products.Get
  ( -- * Resource
    AndroidPublisherPurchasesProductsGetResource,

    -- ** Constructing a Request
    newAndroidPublisherPurchasesProductsGet,
    AndroidPublisherPurchasesProductsGet,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.purchases.products.get@ method which the
-- 'AndroidPublisherPurchasesProductsGet' request conforms to.
type AndroidPublisherPurchasesProductsGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "products"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "tokens"
    Core.:> Core.Capture "token" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProductPurchase

-- | Checks the purchase and consumption status of an inapp item.
--
-- /See:/ 'newAndroidPublisherPurchasesProductsGet' smart constructor.
data AndroidPublisherPurchasesProductsGet = AndroidPublisherPurchasesProductsGet
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

-- | Creates a value of 'AndroidPublisherPurchasesProductsGet' with the minimum fields required to make a request.
newAndroidPublisherPurchasesProductsGet ::
  -- |  The package name of the application the inapp product was sold in (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  The inapp product SKU (for example, \'com.some.thing.inapp1\'). See 'productId'.
  Core.Text ->
  -- |  The token provided to the user\'s device when the inapp product was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesProductsGet
newAndroidPublisherPurchasesProductsGet packageName productId token =
  AndroidPublisherPurchasesProductsGet
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
    AndroidPublisherPurchasesProductsGet
  where
  type
    Rs AndroidPublisherPurchasesProductsGet =
      ProductPurchase
  type
    Scopes AndroidPublisherPurchasesProductsGet =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherPurchasesProductsGet {..} =
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
                Core.Proxy
                  AndroidPublisherPurchasesProductsGetResource
            )
            Core.mempty

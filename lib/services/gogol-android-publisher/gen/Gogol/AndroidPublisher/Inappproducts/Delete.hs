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
-- Module      : Gogol.AndroidPublisher.Inappproducts.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an in-app product (a managed product or a subscription). This method should no longer be used to delete subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.delete@.
module Gogol.AndroidPublisher.Inappproducts.Delete
  ( -- * Resource
    AndroidPublisherInappproductsDeleteResource,

    -- ** Constructing a Request
    AndroidPublisherInappproductsDelete (..),
    newAndroidPublisherInappproductsDelete,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.inappproducts.delete@ method which the
-- 'AndroidPublisherInappproductsDelete' request conforms to.
type AndroidPublisherInappproductsDeleteResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts"
    Core.:> Core.Capture "sku" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "latencyTolerance"
              InappproductsDeleteLatencyTolerance
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes an in-app product (a managed product or a subscription). This method should no longer be used to delete subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ 'newAndroidPublisherInappproductsDelete' smart constructor.
data AndroidPublisherInappproductsDelete = AndroidPublisherInappproductsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive.
    latencyTolerance :: (Core.Maybe InappproductsDeleteLatencyTolerance),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Unique identifier for the in-app product.
    sku :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsDelete' with the minimum fields required to make a request.
newAndroidPublisherInappproductsDelete ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Unique identifier for the in-app product. See 'sku'.
  Core.Text ->
  AndroidPublisherInappproductsDelete
newAndroidPublisherInappproductsDelete packageName sku =
  AndroidPublisherInappproductsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      latencyTolerance = Core.Nothing,
      packageName = packageName,
      sku = sku,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherInappproductsDelete where
  type Rs AndroidPublisherInappproductsDelete = ()
  type
    Scopes AndroidPublisherInappproductsDelete =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherInappproductsDelete {..} =
    go
      packageName
      sku
      xgafv
      accessToken
      callback
      latencyTolerance
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherInappproductsDeleteResource
          )
          Core.mempty

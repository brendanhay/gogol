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
-- Module      : Gogol.AndroidPublisher.Inappproducts.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads multiple in-app products, which can be managed products or subscriptions. This method should not be used to retrieve subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.batchGet@.
module Gogol.AndroidPublisher.Inappproducts.BatchGet
  ( -- * Resource
    AndroidPublisherInappproductsBatchGetResource,

    -- ** Constructing a Request
    AndroidPublisherInappproductsBatchGet (..),
    newAndroidPublisherInappproductsBatchGet,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.inappproducts.batchGet@ method which the
-- 'AndroidPublisherInappproductsBatchGet' request conforms to.
type AndroidPublisherInappproductsBatchGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "inappproducts:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "sku" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] InappproductsBatchGetResponse

-- | Reads multiple in-app products, which can be managed products or subscriptions. This method should not be used to retrieve subscriptions. See <https://android-developers.googleblog.com/2023/06/changes-to-google-play-developer-api-june-2023.html this article> for more information.
--
-- /See:/ 'newAndroidPublisherInappproductsBatchGet' smart constructor.
data AndroidPublisherInappproductsBatchGet = AndroidPublisherInappproductsBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Unique identifier for the in-app products.
    sku :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherInappproductsBatchGet' with the minimum fields required to make a request.
newAndroidPublisherInappproductsBatchGet ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherInappproductsBatchGet
newAndroidPublisherInappproductsBatchGet packageName =
  AndroidPublisherInappproductsBatchGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      sku = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherInappproductsBatchGet where
  type
    Rs AndroidPublisherInappproductsBatchGet =
      InappproductsBatchGetResponse
  type
    Scopes AndroidPublisherInappproductsBatchGet =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherInappproductsBatchGet {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      (sku Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherInappproductsBatchGetResource
          )
          Core.mempty

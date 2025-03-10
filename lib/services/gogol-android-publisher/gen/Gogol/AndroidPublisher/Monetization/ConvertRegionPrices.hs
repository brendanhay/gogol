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
-- Module      : Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Calculates the region prices, using today\'s exchange rate and country-specific pricing patterns, based on the price in the request for a set of regions.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.convertRegionPrices@.
module Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
  ( -- * Resource
    AndroidPublisherMonetizationConvertRegionPricesResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationConvertRegionPrices (..),
    newAndroidPublisherMonetizationConvertRegionPrices,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.convertRegionPrices@ method which the
-- 'AndroidPublisherMonetizationConvertRegionPrices' request conforms to.
type AndroidPublisherMonetizationConvertRegionPricesResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "pricing:convertRegionPrices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ConvertRegionPricesRequest
    Core.:> Core.Post '[Core.JSON] ConvertRegionPricesResponse

-- | Calculates the region prices, using today\'s exchange rate and country-specific pricing patterns, based on the price in the request for a set of regions.
--
-- /See:/ 'newAndroidPublisherMonetizationConvertRegionPrices' smart constructor.
data AndroidPublisherMonetizationConvertRegionPrices = AndroidPublisherMonetizationConvertRegionPrices
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The app package name.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ConvertRegionPricesRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationConvertRegionPrices' with the minimum fields required to make a request.
newAndroidPublisherMonetizationConvertRegionPrices ::
  -- |  Required. The app package name. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ConvertRegionPricesRequest ->
  AndroidPublisherMonetizationConvertRegionPrices
newAndroidPublisherMonetizationConvertRegionPrices
  packageName
  payload =
    AndroidPublisherMonetizationConvertRegionPrices
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationConvertRegionPrices
  where
  type
    Rs AndroidPublisherMonetizationConvertRegionPrices =
      ConvertRegionPricesResponse
  type
    Scopes AndroidPublisherMonetizationConvertRegionPrices =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherMonetizationConvertRegionPrices {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherMonetizationConvertRegionPricesResource
          )
          Core.mempty

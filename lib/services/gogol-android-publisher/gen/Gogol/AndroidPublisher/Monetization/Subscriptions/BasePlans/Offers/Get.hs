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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads a single offer
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.get@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Get
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGetResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersGet,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.get@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.Capture "basePlanId" Core.Text
    Core.:> "offers"
    Core.:> Core.Capture "offerId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SubscriptionOffer

-- | Reads a single offer
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersGet' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet = AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The parent base plan (ID) of the offer to get.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique offer ID of the offer to get.
    offerId :: Core.Text,
    -- | Required. The parent app (package name) of the offer to get.
    packageName :: Core.Text,
    -- | Required. The parent subscription (ID) of the offer to get.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersGet ::
  -- |  Required. The parent base plan (ID) of the offer to get. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The unique offer ID of the offer to get. See 'offerId'.
  Core.Text ->
  -- |  Required. The parent app (package name) of the offer to get. See 'packageName'.
  Core.Text ->
  -- |  Required. The parent subscription (ID) of the offer to get. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersGet
  basePlanId
  offerId
  packageName
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        basePlanId = basePlanId,
        callback = Core.Nothing,
        offerId = offerId,
        packageName = packageName,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet =
      SubscriptionOffer
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersGet {..} =
      go
        packageName
        productId
        basePlanId
        offerId
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersGetResource
            )
            Core.mempty

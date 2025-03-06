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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Activate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a subscription offer. Once activated, subscription offers will be available to new subscribers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.activate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Activate
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivateResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.activate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.Capture "basePlanId" Core.Text
    Core.:> "offers"
    Core.:> Core.CaptureMode "offerId" "activate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ActivateSubscriptionOfferRequest
    Core.:> Core.Post '[Core.JSON] SubscriptionOffer

-- | Activates a subscription offer. Once activated, subscription offers will be available to new subscribers.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate = AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The parent base plan (ID) of the offer to activate.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The unique offer ID of the offer to activate.
    offerId :: Core.Text,
    -- | Required. The parent app (package name) of the offer to activate.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ActivateSubscriptionOfferRequest,
    -- | Required. The parent subscription (ID) of the offer to activate.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate ::
  -- |  Required. The parent base plan (ID) of the offer to activate. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The unique offer ID of the offer to activate. See 'offerId'.
  Core.Text ->
  -- |  Required. The parent app (package name) of the offer to activate. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ActivateSubscriptionOfferRequest ->
  -- |  Required. The parent subscription (ID) of the offer to activate. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate
  basePlanId
  offerId
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        basePlanId = basePlanId,
        callback = Core.Nothing,
        offerId = offerId,
        packageName = packageName,
        payload = payload,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate =
      SubscriptionOffer
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivate {..} =
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
        payload
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersActivateResource
            )
            Core.mempty

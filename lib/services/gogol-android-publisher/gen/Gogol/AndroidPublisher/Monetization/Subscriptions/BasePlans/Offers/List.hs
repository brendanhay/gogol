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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all offers under a given subscription.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.list@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.List
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersListResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersList (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersList,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.list@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersList' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.Capture "basePlanId" Core.Text
    Core.:> "offers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSubscriptionOffersResponse

-- | Lists all offers under a given subscription.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersList' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersList = AndroidPublisherMonetizationSubscriptionsBasePlansOffersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The parent base plan (ID) for which the offers should be read. May be specified as \'-\' to read all offers under a subscription or an app. Must be specified as \'-\' if product_id is specified as \'-\'.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscriptions should be read.
    packageName :: Core.Text,
    -- | The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most 50 subscriptions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListSubscriptionsOffers@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListSubscriptionOffers@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent subscription (ID) for which the offers should be read. May be specified as \'-\' to read all offers under an app.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersList' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersList ::
  -- |  Required. The parent base plan (ID) for which the offers should be read. May be specified as \'-\' to read all offers under a subscription or an app. Must be specified as \'-\' if product_id is specified as \'-\'. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The parent app (package name) for which the subscriptions should be read. See 'packageName'.
  Core.Text ->
  -- |  Required. The parent subscription (ID) for which the offers should be read. May be specified as \'-\' to read all offers under an app. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersList
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersList
  basePlanId
  packageName
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        basePlanId = basePlanId,
        callback = Core.Nothing,
        packageName = packageName,
        pageSize = Core.Nothing,
        pageToken = Core.Nothing,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersList
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersList =
      ListSubscriptionOffersResponse
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersList =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersList {..} =
      go
        packageName
        productId
        basePlanId
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersListResource
            )
            Core.mempty

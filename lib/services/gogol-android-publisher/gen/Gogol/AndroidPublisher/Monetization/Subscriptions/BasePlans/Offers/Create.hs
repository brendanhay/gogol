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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new subscription offer. Only auto-renewing base plans can have subscription offers. The offer state will be DRAFT until it is activated.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.create@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Create
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreateResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.create@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreateResource =
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
    Core.:> Core.QueryParam "offerId" Core.Text
    Core.:> Core.QueryParam
              "regionsVersion.version"
              Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SubscriptionOffer
    Core.:> Core.Post
              '[Core.JSON]
              SubscriptionOffer

-- | Creates a new subscription offer. Only auto-renewing base plans can have subscription offers. The offer state will be DRAFT until it is activated.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate = AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The parent base plan (ID) for which the offer should be created. Must be equal to the base/plan/id field on the SubscriptionOffer resource.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for the offer. For the requirements on this format, see the documentation of the offer_id field on the SubscriptionOffer resource.
    offerId :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the offer should be created. Must be equal to the package_name field on the Subscription resource.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: SubscriptionOffer,
    -- | Required. The parent subscription (ID) for which the offer should be created. Must be equal to the product_id field on the SubscriptionOffer resource.
    productId :: Core.Text,
    -- | Required. A string representing version of the available regions being used for the specified resource. The current version is 2022\/02.
    regionsVersionVersion :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate ::
  -- |  Required. The parent base plan (ID) for which the offer should be created. Must be equal to the base/plan/id field on the SubscriptionOffer resource. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The parent app (package name) for which the offer should be created. Must be equal to the package_name field on the Subscription resource. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SubscriptionOffer ->
  -- |  Required. The parent subscription (ID) for which the offer should be created. Must be equal to the product_id field on the SubscriptionOffer resource. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate basePlanId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      basePlanId = basePlanId,
      callback = Core.Nothing,
      offerId = Core.Nothing,
      packageName = packageName,
      payload = payload,
      productId = productId,
      regionsVersionVersion = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate =
      SubscriptionOffer
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreate {..} =
      go
        packageName
        productId
        basePlanId
        xgafv
        accessToken
        callback
        offerId
        regionsVersionVersion
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersCreateResource
            )
            Core.mempty

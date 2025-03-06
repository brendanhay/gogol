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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription offer.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.patch@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Patch
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatchResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.patch@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatchResource =
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
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "latencyTolerance"
              MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance
    Core.:> Core.QueryParam "regionsVersion.version" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SubscriptionOffer
    Core.:> Core.Patch '[Core.JSON] SubscriptionOffer

-- | Updates an existing subscription offer.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch = AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, and the subscription offer with the given package/name, product/id, base/plan/id and offer/id doesn\'t exist, an offer will be created. If a new offer is created, update/mask is ignored.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | Required. Immutable. The ID of the base plan to which this offer is an extension.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive.
    latencyTolerance ::
      ( Core.Maybe
          MonetizationSubscriptionsBasePlansOffersPatchLatencyTolerance
      ),
    -- | Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan.
    offerId :: Core.Text,
    -- | Required. Immutable. The package name of the app the parent subscription belongs to.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: SubscriptionOffer,
    -- | Required. Immutable. The ID of the parent subscription this offer belongs to.
    productId :: Core.Text,
    -- | Required. A string representing the version of available regions being used for the specified resource. Regional prices for the resource have to be specified according to the information published in <https://support.google.com/googleplay/android-developer/answer/10532353 this article>. Each time the supported locations substantially change, the version will be incremented. Using this field will ensure that creating and updating the resource with an older region\'s version and set of regional prices and currencies will succeed even though a new version is available. The latest version is 2022\/02.
    regionsVersionVersion :: (Core.Maybe Core.Text),
    -- | Required. The list of fields to be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch ::
  -- |  Required. Immutable. The ID of the base plan to which this offer is an extension. See 'basePlanId'.
  Core.Text ->
  -- |  Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan. See 'offerId'.
  Core.Text ->
  -- |  Required. Immutable. The package name of the app the parent subscription belongs to. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SubscriptionOffer ->
  -- |  Required. Immutable. The ID of the parent subscription this offer belongs to. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch
  basePlanId
  offerId
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        allowMissing = Core.Nothing,
        basePlanId = basePlanId,
        callback = Core.Nothing,
        latencyTolerance = Core.Nothing,
        offerId = offerId,
        packageName = packageName,
        payload = payload,
        productId = productId,
        regionsVersionVersion =
          Core.Nothing,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch =
      SubscriptionOffer
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatch {..} =
      go
        packageName
        productId
        basePlanId
        offerId
        xgafv
        accessToken
        allowMissing
        callback
        latencyTolerance
        regionsVersionVersion
        updateMask
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansOffersPatchResource
            )
            Core.mempty

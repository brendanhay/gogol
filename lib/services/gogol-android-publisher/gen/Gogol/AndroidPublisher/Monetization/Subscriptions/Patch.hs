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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing subscription.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.patch@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.Patch
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsPatchResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsPatch (..),
    newAndroidPublisherMonetizationSubscriptionsPatch,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.patch@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsPatch' request conforms to.
type AndroidPublisherMonetizationSubscriptionsPatchResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam
              "latencyTolerance"
              MonetizationSubscriptionsPatchLatencyTolerance
    Core.:> Core.QueryParam "regionsVersion.version" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Subscription
    Core.:> Core.Patch '[Core.JSON] Subscription

-- | Updates an existing subscription.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsPatch' smart constructor.
data AndroidPublisherMonetizationSubscriptionsPatch = AndroidPublisherMonetizationSubscriptionsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. If set to true, and the subscription with the given package/name and product/id doesn\'t exist, the subscription will be created. If a new subscription is created, update_mask is ignored.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The latency tolerance for the propagation of this product update. Defaults to latency-sensitive.
    latencyTolerance :: (Core.Maybe MonetizationSubscriptionsPatchLatencyTolerance),
    -- | Immutable. Package name of the parent app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: Subscription,
    -- | Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length.
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

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsPatch' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsPatch ::
  -- |  Immutable. Package name of the parent app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Subscription ->
  -- |  Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsPatch
newAndroidPublisherMonetizationSubscriptionsPatch
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsPatch
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        allowMissing = Core.Nothing,
        callback = Core.Nothing,
        latencyTolerance = Core.Nothing,
        packageName = packageName,
        payload = payload,
        productId = productId,
        regionsVersionVersion = Core.Nothing,
        updateMask = Core.Nothing,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsPatch
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsPatch =
      Subscription
  type
    Scopes AndroidPublisherMonetizationSubscriptionsPatch =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherMonetizationSubscriptionsPatch {..} =
    go
      packageName
      productId
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
              Core.Proxy AndroidPublisherMonetizationSubscriptionsPatchResource
          )
          Core.mempty

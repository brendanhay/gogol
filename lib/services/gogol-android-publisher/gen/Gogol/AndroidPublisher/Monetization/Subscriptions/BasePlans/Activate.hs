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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Activate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates a base plan. Once activated, base plans will be available to new subscribers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.activate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Activate
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansActivateResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansActivate (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansActivate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.activate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansActivate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansActivateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.CaptureMode "basePlanId" "activate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ActivateBasePlanRequest
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Activates a base plan. Once activated, base plans will be available to new subscribers.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansActivate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansActivate = AndroidPublisherMonetizationSubscriptionsBasePlansActivate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The unique base plan ID of the base plan to activate.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) of the base plan to activate.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ActivateBasePlanRequest,
    -- | Required. The parent subscription (ID) of the base plan to activate.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansActivate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansActivate ::
  -- |  Required. The unique base plan ID of the base plan to activate. See 'basePlanId'.
  Core.Text ->
  -- |  Required. The parent app (package name) of the base plan to activate. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ActivateBasePlanRequest ->
  -- |  Required. The parent subscription (ID) of the base plan to activate. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansActivate
newAndroidPublisherMonetizationSubscriptionsBasePlansActivate
  basePlanId
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansActivate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        basePlanId = basePlanId,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansActivate
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsBasePlansActivate =
      Subscription
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansActivate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansActivate {..} =
      go
        packageName
        productId
        basePlanId
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansActivateResource
            )
            Core.mempty

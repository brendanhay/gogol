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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.MigratePrices
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Migrates subscribers who are receiving an historical subscription price to the currently-offered price for the specified region. Requests will cause price change notifications to be sent to users who are currently receiving an historical price older than the supplied timestamp. Subscribers who do not agree to the new price will have their subscription ended at the next renewal.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.migratePrices@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.MigratePrices
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePricesResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.migratePrices@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansMigratePricesResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans"
    Core.:> Core.CaptureMode
              "basePlanId"
              "migratePrices"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              MigrateBasePlanPricesRequest
    Core.:> Core.Post
              '[Core.JSON]
              MigrateBasePlanPricesResponse

-- | Migrates subscribers who are receiving an historical subscription price to the currently-offered price for the specified region. Requests will cause price change notifications to be sent to users who are currently receiving an historical price older than the supplied timestamp. Subscribers who do not agree to the new price will have their subscription ended at the next renewal.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices = AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The unique base plan ID of the base plan to update prices on.
    basePlanId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Package name of the parent app. Must be equal to the package_name field on the Subscription resource.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: MigrateBasePlanPricesRequest,
    -- | Required. The ID of the subscription to update. Must be equal to the product_id field on the Subscription resource.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices ::
  -- |  Required. The unique base plan ID of the base plan to update prices on. See 'basePlanId'.
  Core.Text ->
  -- |  Required. Package name of the parent app. Must be equal to the package_name field on the Subscription resource. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  MigrateBasePlanPricesRequest ->
  -- |  Required. The ID of the subscription to update. Must be equal to the product_id field on the Subscription resource. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices
newAndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices basePlanId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices
    { xgafv = Core.Nothing,
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
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices =
      MigrateBasePlanPricesResponse
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansMigratePrices {..} =
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansMigratePricesResource
            )
            Core.mempty

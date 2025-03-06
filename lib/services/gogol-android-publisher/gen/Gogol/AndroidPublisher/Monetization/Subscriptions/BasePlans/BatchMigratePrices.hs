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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchMigratePrices
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch variant of the MigrateBasePlanPrices endpoint. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.batchMigratePrices@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchMigratePrices
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePricesResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices (..),
    newAndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.batchMigratePrices@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePricesResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> "basePlans:batchMigratePrices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchMigrateBasePlanPricesRequest
    Core.:> Core.Post '[Core.JSON] BatchMigrateBasePlanPricesResponse

-- | Batch variant of the MigrateBasePlanPrices endpoint. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices = AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscriptions should be created or updated. Must be equal to the package_name field on all the Subscription resources.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchMigrateBasePlanPricesRequest,
    -- | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this batch update spans multiple subscriptions, set this field to \"-\". Must be set.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices ::
  -- |  Required. The parent app (package name) for which the subscriptions should be created or updated. Must be equal to the package_name field on all the Subscription resources. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchMigrateBasePlanPricesRequest ->
  -- |  Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this batch update spans multiple subscriptions, set this field to \"-\". Must be set. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices
newAndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices =
      BatchMigrateBasePlanPricesResponse
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePrices {..} =
      go
        packageName
        productId
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
                  AndroidPublisherMonetizationSubscriptionsBasePlansBatchMigratePricesResource
            )
            Core.mempty

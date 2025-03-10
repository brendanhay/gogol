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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BatchUpdate
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of subscriptions. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.batchUpdate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BatchUpdate
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBatchUpdateResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBatchUpdate (..),
    newAndroidPublisherMonetizationSubscriptionsBatchUpdate,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.batchUpdate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBatchUpdate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBatchUpdateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions:batchUpdate"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchUpdateSubscriptionsRequest
    Core.:> Core.Post '[Core.JSON] BatchUpdateSubscriptionsResponse

-- | Updates a batch of subscriptions. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBatchUpdate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBatchUpdate = AndroidPublisherMonetizationSubscriptionsBatchUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscriptions should be updated. Must be equal to the package_name field on all the Subscription resources.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BatchUpdateSubscriptionsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBatchUpdate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBatchUpdate ::
  -- |  Required. The parent app (package name) for which the subscriptions should be updated. Must be equal to the package_name field on all the Subscription resources. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BatchUpdateSubscriptionsRequest ->
  AndroidPublisherMonetizationSubscriptionsBatchUpdate
newAndroidPublisherMonetizationSubscriptionsBatchUpdate
  packageName
  payload =
    AndroidPublisherMonetizationSubscriptionsBatchUpdate
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
    AndroidPublisherMonetizationSubscriptionsBatchUpdate
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsBatchUpdate =
      BatchUpdateSubscriptionsResponse
  type
    Scopes AndroidPublisherMonetizationSubscriptionsBatchUpdate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsBatchUpdate {..} =
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
                Core.Proxy
                  AndroidPublisherMonetizationSubscriptionsBatchUpdateResource
            )
            Core.mempty

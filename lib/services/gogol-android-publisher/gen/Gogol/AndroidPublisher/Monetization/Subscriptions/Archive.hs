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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.Archive
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated: subscription archiving is not supported.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.archive@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.Archive
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsArchiveResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsArchive (..),
    newAndroidPublisherMonetizationSubscriptionsArchive,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.archive@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsArchive' request conforms to.
type AndroidPublisherMonetizationSubscriptionsArchiveResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.CaptureMode "productId" "archive" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ArchiveSubscriptionRequest
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Deprecated: subscription archiving is not supported.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsArchive' smart constructor.
data AndroidPublisherMonetizationSubscriptionsArchive = AndroidPublisherMonetizationSubscriptionsArchive
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) of the app of the subscription to delete.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: ArchiveSubscriptionRequest,
    -- | Required. The unique product ID of the subscription to delete.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsArchive' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsArchive ::
  -- |  Required. The parent app (package name) of the app of the subscription to delete. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ArchiveSubscriptionRequest ->
  -- |  Required. The unique product ID of the subscription to delete. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsArchive
newAndroidPublisherMonetizationSubscriptionsArchive
  packageName
  payload
  productId =
    AndroidPublisherMonetizationSubscriptionsArchive
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsArchive
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsArchive =
      Subscription
  type
    Scopes AndroidPublisherMonetizationSubscriptionsArchive =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherMonetizationSubscriptionsArchive {..} =
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
                AndroidPublisherMonetizationSubscriptionsArchiveResource
          )
          Core.mempty

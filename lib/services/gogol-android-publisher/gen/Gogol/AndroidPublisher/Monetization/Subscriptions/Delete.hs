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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a subscription. A subscription can only be deleted if it has never had a base plan published.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.delete@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.Delete
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsDeleteResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsDelete (..),
    newAndroidPublisherMonetizationSubscriptionsDelete,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.delete@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsDelete' request conforms to.
type AndroidPublisherMonetizationSubscriptionsDeleteResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.Capture "productId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a subscription. A subscription can only be deleted if it has never had a base plan published.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsDelete' smart constructor.
data AndroidPublisherMonetizationSubscriptionsDelete = AndroidPublisherMonetizationSubscriptionsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) of the app of the subscription to delete.
    packageName :: Core.Text,
    -- | Required. The unique product ID of the subscription to delete.
    productId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsDelete' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsDelete ::
  -- |  Required. The parent app (package name) of the app of the subscription to delete. See 'packageName'.
  Core.Text ->
  -- |  Required. The unique product ID of the subscription to delete. See 'productId'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsDelete
newAndroidPublisherMonetizationSubscriptionsDelete
  packageName
  productId =
    AndroidPublisherMonetizationSubscriptionsDelete
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        productId = productId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsDelete
  where
  type Rs AndroidPublisherMonetizationSubscriptionsDelete = ()
  type
    Scopes AndroidPublisherMonetizationSubscriptionsDelete =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherMonetizationSubscriptionsDelete {..} =
    go
      packageName
      productId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherMonetizationSubscriptionsDeleteResource
          )
          Core.mempty

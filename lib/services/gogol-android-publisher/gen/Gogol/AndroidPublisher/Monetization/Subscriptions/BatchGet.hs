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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BatchGet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads one or more subscriptions.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.batchGet@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BatchGet
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsBatchGetResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsBatchGet (..),
    newAndroidPublisherMonetizationSubscriptionsBatchGet,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.batchGet@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBatchGet' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBatchGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions:batchGet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "productIds" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] BatchGetSubscriptionsResponse

-- | Reads one or more subscriptions.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBatchGet' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBatchGet = AndroidPublisherMonetizationSubscriptionsBatchGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscriptions should be retrieved. Must be equal to the package_name field on all the requests.
    packageName :: Core.Text,
    -- | Required. A list of up to 100 subscription product IDs to retrieve. All the IDs must be different.
    productIds :: (Core.Maybe [Core.Text]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBatchGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBatchGet ::
  -- |  Required. The parent app (package name) for which the subscriptions should be retrieved. Must be equal to the package_name field on all the requests. See 'packageName'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsBatchGet
newAndroidPublisherMonetizationSubscriptionsBatchGet packageName =
  AndroidPublisherMonetizationSubscriptionsBatchGet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      productIds = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsBatchGet
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsBatchGet =
      BatchGetSubscriptionsResponse
  type
    Scopes AndroidPublisherMonetizationSubscriptionsBatchGet =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherMonetizationSubscriptionsBatchGet {..} =
    go
      packageName
      xgafv
      accessToken
      callback
      (productIds Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                AndroidPublisherMonetizationSubscriptionsBatchGetResource
          )
          Core.mempty

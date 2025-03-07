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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Revoke
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revoke a subscription purchase for the user.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptionsv2.revoke@.
module Gogol.AndroidPublisher.Purchases.Subscriptionsv2.Revoke
  ( -- * Resource
    AndroidPublisherPurchasesSubscriptionsv2RevokeResource,

    -- ** Constructing a Request
    AndroidPublisherPurchasesSubscriptionsv2Revoke (..),
    newAndroidPublisherPurchasesSubscriptionsv2Revoke,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.purchases.subscriptionsv2.revoke@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsv2Revoke' request conforms to.
type AndroidPublisherPurchasesSubscriptionsv2RevokeResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "subscriptionsv2"
    Core.:> "tokens"
    Core.:> Core.CaptureMode "token" "revoke" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RevokeSubscriptionPurchaseRequest
    Core.:> Core.Post '[Core.JSON] RevokeSubscriptionPurchaseResponse

-- | Revoke a subscription purchase for the user.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsv2Revoke' smart constructor.
data AndroidPublisherPurchasesSubscriptionsv2Revoke = AndroidPublisherPurchasesSubscriptionsv2Revoke
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The package of the application for which this subscription was purchased (for example, \'com.some.thing\').
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: RevokeSubscriptionPurchaseRequest,
    -- | Required. The token provided to the user\'s device when the subscription was purchased.
    token :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsv2Revoke' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsv2Revoke ::
  -- |  Required. The package of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RevokeSubscriptionPurchaseRequest ->
  -- |  Required. The token provided to the user\'s device when the subscription was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesSubscriptionsv2Revoke
newAndroidPublisherPurchasesSubscriptionsv2Revoke
  packageName
  payload
  token =
    AndroidPublisherPurchasesSubscriptionsv2Revoke
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        token = token,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidPublisherPurchasesSubscriptionsv2Revoke
  where
  type
    Rs AndroidPublisherPurchasesSubscriptionsv2Revoke =
      RevokeSubscriptionPurchaseResponse
  type
    Scopes AndroidPublisherPurchasesSubscriptionsv2Revoke =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherPurchasesSubscriptionsv2Revoke {..} =
    go
      packageName
      token
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
              Core.Proxy AndroidPublisherPurchasesSubscriptionsv2RevokeResource
          )
          Core.mempty

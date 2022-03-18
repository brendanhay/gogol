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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Defers a user\'s subscription purchase until a specified future expiration time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.defer@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
  ( -- * Resource
    AndroidPublisherPurchasesSubscriptionsDeferResource,

    -- ** Constructing a Request
    newAndroidPublisherPurchasesSubscriptionsDefer,
    AndroidPublisherPurchasesSubscriptionsDefer,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.purchases.subscriptions.defer@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsDefer' request conforms to.
type AndroidPublisherPurchasesSubscriptionsDeferResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "tokens"
    Core.:> Core.CaptureMode "token" "defer" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SubscriptionPurchasesDeferRequest
    Core.:> Core.Post
              '[Core.JSON]
              SubscriptionPurchasesDeferResponse

-- | Defers a user\'s subscription purchase until a specified future expiration time.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsDefer' smart constructor.
data AndroidPublisherPurchasesSubscriptionsDefer = AndroidPublisherPurchasesSubscriptionsDefer
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: SubscriptionPurchasesDeferRequest,
    -- | The purchased subscription ID (for example, \'monthly001\').
    subscriptionId :: Core.Text,
    -- | The token provided to the user\'s device when the subscription was purchased.
    token :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsDefer' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsDefer ::
  -- |  The package name of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SubscriptionPurchasesDeferRequest ->
  -- |  The purchased subscription ID (for example, \'monthly001\'). See 'subscriptionId'.
  Core.Text ->
  -- |  The token provided to the user\'s device when the subscription was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesSubscriptionsDefer
newAndroidPublisherPurchasesSubscriptionsDefer packageName payload subscriptionId token =
  AndroidPublisherPurchasesSubscriptionsDefer
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      subscriptionId = subscriptionId,
      token = token,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherPurchasesSubscriptionsDefer
  where
  type
    Rs AndroidPublisherPurchasesSubscriptionsDefer =
      SubscriptionPurchasesDeferResponse
  type
    Scopes
      AndroidPublisherPurchasesSubscriptionsDefer =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient
    AndroidPublisherPurchasesSubscriptionsDefer {..} =
      go
        packageName
        subscriptionId
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
                Core.Proxy
                  AndroidPublisherPurchasesSubscriptionsDeferResource
            )
            Core.mempty

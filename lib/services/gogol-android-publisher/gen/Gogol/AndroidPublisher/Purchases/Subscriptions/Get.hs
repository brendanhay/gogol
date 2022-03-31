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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks whether a user\'s subscription purchase is valid and returns its expiry time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.get@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Get
  ( -- * Resource
    AndroidPublisherPurchasesSubscriptionsGetResource,

    -- ** Constructing a Request
    newAndroidPublisherPurchasesSubscriptionsGet,
    AndroidPublisherPurchasesSubscriptionsGet,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.purchases.subscriptions.get@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsGet' request conforms to.
type AndroidPublisherPurchasesSubscriptionsGetResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "tokens"
    Core.:> Core.Capture "token" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SubscriptionPurchase

-- | Checks whether a user\'s subscription purchase is valid and returns its expiry time.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsGet' smart constructor.
data AndroidPublisherPurchasesSubscriptionsGet = AndroidPublisherPurchasesSubscriptionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
    packageName :: Core.Text,
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

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsGet' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsGet ::
  -- |  The package name of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  The purchased subscription ID (for example, \'monthly001\'). See 'subscriptionId'.
  Core.Text ->
  -- |  The token provided to the user\'s device when the subscription was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesSubscriptionsGet
newAndroidPublisherPurchasesSubscriptionsGet packageName subscriptionId token =
  AndroidPublisherPurchasesSubscriptionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      subscriptionId = subscriptionId,
      token = token,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherPurchasesSubscriptionsGet
  where
  type
    Rs AndroidPublisherPurchasesSubscriptionsGet =
      SubscriptionPurchase
  type
    Scopes AndroidPublisherPurchasesSubscriptionsGet =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherPurchasesSubscriptionsGet {..} =
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
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherPurchasesSubscriptionsGetResource
            )
            Core.mempty

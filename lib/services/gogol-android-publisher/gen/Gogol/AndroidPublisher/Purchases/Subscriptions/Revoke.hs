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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds and immediately revokes a user\'s subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.revoke@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
  ( -- * Resource
    AndroidPublisherPurchasesSubscriptionsRevokeResource,

    -- ** Constructing a Request
    newAndroidPublisherPurchasesSubscriptionsRevoke,
    AndroidPublisherPurchasesSubscriptionsRevoke,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.purchases.subscriptions.revoke@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsRevoke' request conforms to.
type AndroidPublisherPurchasesSubscriptionsRevokeResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "purchases"
    Core.:> "subscriptions"
    Core.:> Core.Capture "subscriptionId" Core.Text
    Core.:> "tokens"
    Core.:> Core.CaptureMode "token" "revoke" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Refunds and immediately revokes a user\'s subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsRevoke' smart constructor.
data AndroidPublisherPurchasesSubscriptionsRevoke = AndroidPublisherPurchasesSubscriptionsRevoke
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

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsRevoke' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsRevoke ::
  -- |  The package name of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
  Core.Text ->
  -- |  The purchased subscription ID (for example, \'monthly001\'). See 'subscriptionId'.
  Core.Text ->
  -- |  The token provided to the user\'s device when the subscription was purchased. See 'token'.
  Core.Text ->
  AndroidPublisherPurchasesSubscriptionsRevoke
newAndroidPublisherPurchasesSubscriptionsRevoke packageName subscriptionId token =
  AndroidPublisherPurchasesSubscriptionsRevoke
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
    AndroidPublisherPurchasesSubscriptionsRevoke
  where
  type
    Rs AndroidPublisherPurchasesSubscriptionsRevoke =
      ()
  type
    Scopes
      AndroidPublisherPurchasesSubscriptionsRevoke =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherPurchasesSubscriptionsRevoke {..} =
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
                  AndroidPublisherPurchasesSubscriptionsRevokeResource
            )
            Core.mempty

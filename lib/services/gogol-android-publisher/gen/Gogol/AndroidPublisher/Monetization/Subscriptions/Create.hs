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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new subscription. Newly added base plans will remain in draft state until activated.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.create@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.Create
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsCreateResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsCreate (..),
    newAndroidPublisherMonetizationSubscriptionsCreate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.create@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsCreate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "productId" Core.Text
    Core.:> Core.QueryParam "regionsVersion.version" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Subscription
    Core.:> Core.Post '[Core.JSON] Subscription

-- | Creates a new subscription. Newly added base plans will remain in draft state until activated.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsCreate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsCreate = AndroidPublisherMonetizationSubscriptionsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscription should be created. Must be equal to the package_name field on the Subscription resource.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: Subscription,
    -- | Required. The ID to use for the subscription. For the requirements on this format, see the documentation of the product_id field on the Subscription resource.
    productId :: (Core.Maybe Core.Text),
    -- | Required. A string representing version of the available regions being used for the specified resource. The current version is 2022\/02.
    regionsVersionVersion :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsCreate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsCreate ::
  -- |  Required. The parent app (package name) for which the subscription should be created. Must be equal to the package_name field on the Subscription resource. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Subscription ->
  AndroidPublisherMonetizationSubscriptionsCreate
newAndroidPublisherMonetizationSubscriptionsCreate packageName payload =
  AndroidPublisherMonetizationSubscriptionsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      productId = Core.Nothing,
      regionsVersionVersion = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsCreate
  where
  type
    Rs
      AndroidPublisherMonetizationSubscriptionsCreate =
      Subscription
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsCreate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsCreate {..} =
      go
        packageName
        xgafv
        accessToken
        callback
        productId
        regionsVersionVersion
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
                  AndroidPublisherMonetizationSubscriptionsCreateResource
            )
            Core.mempty

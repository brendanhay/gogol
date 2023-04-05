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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all subscriptions under a given app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.list@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.List
  ( -- * Resource
    AndroidPublisherMonetizationSubscriptionsListResource,

    -- ** Constructing a Request
    AndroidPublisherMonetizationSubscriptionsList (..),
    newAndroidPublisherMonetizationSubscriptionsList,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.monetization.subscriptions.list@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsList' request conforms to.
type AndroidPublisherMonetizationSubscriptionsListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "subscriptions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "showArchived" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListSubscriptionsResponse

-- | Lists all subscriptions under a given app.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsList' smart constructor.
data AndroidPublisherMonetizationSubscriptionsList = AndroidPublisherMonetizationSubscriptionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent app (package name) for which the subscriptions should be read.
    packageName :: Core.Text,
    -- | The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most 50 subscriptions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListSubscriptions@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @ListSubscriptions@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Whether archived subscriptions should be included in the response. Defaults to false.
    showArchived :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsList' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsList ::
  -- |  Required. The parent app (package name) for which the subscriptions should be read. See 'packageName'.
  Core.Text ->
  AndroidPublisherMonetizationSubscriptionsList
newAndroidPublisherMonetizationSubscriptionsList packageName =
  AndroidPublisherMonetizationSubscriptionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      showArchived = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherMonetizationSubscriptionsList
  where
  type
    Rs AndroidPublisherMonetizationSubscriptionsList =
      ListSubscriptionsResponse
  type
    Scopes
      AndroidPublisherMonetizationSubscriptionsList =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherMonetizationSubscriptionsList {..} =
      go
        packageName
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        showArchived
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherMonetizationSubscriptionsListResource
            )
            Core.mempty

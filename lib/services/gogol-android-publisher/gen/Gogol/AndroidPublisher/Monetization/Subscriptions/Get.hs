{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reads a single subscription.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.get@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.Get
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsGetResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsGet (..)
    , newAndroidPublisherMonetizationSubscriptionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.get@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsGet' request conforms to.
type AndroidPublisherMonetizationSubscriptionsGetResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] Subscription

-- | Reads a single subscription.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsGet' smart constructor.
data AndroidPublisherMonetizationSubscriptionsGet = AndroidPublisherMonetizationSubscriptionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the subscription to get.
    , packageName :: Core.Text
      -- | Required. The unique product ID of the subscription to get.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsGet' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsGet 
    ::  Core.Text
       -- ^  Required. The parent app (package name) of the subscription to get. See 'packageName'.
    -> Core.Text
       -- ^  Required. The unique product ID of the subscription to get. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsGet
newAndroidPublisherMonetizationSubscriptionsGet packageName productId =
  AndroidPublisherMonetizationSubscriptionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherMonetizationSubscriptionsGet
         where
        type Rs AndroidPublisherMonetizationSubscriptionsGet
             = Subscription
        type Scopes
               AndroidPublisherMonetizationSubscriptionsGet
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsGet{..}
          = go packageName productId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationSubscriptionsGetResource)
                      Core.mempty


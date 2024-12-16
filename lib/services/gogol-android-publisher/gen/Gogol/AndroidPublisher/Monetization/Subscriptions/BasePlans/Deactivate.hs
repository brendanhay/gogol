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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Deactivate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribers, but existing subscribers will maintain their subscription
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.deactivate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Deactivate
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsBasePlansDeactivateResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate (..)
    , newAndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.deactivate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansDeactivateResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "basePlans" Core.:>
                   Core.CaptureMode "basePlanId" "deactivate" Core.Text
                     Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "callback" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON]
                                   DeactivateBasePlanRequest
                                   Core.:> Core.Post '[Core.JSON] Subscription

-- | Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribers, but existing subscribers will maintain their subscription
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansDeactivate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate = AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The unique base plan ID of the base plan to deactivate.
    , basePlanId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the base plan to deactivate.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: DeactivateBasePlanRequest
      -- | Required. The parent subscription (ID) of the base plan to deactivate.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansDeactivate 
    ::  Core.Text
       -- ^  Required. The unique base plan ID of the base plan to deactivate. See 'basePlanId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the base plan to deactivate. See 'packageName'.
    -> DeactivateBasePlanRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The parent subscription (ID) of the base plan to deactivate. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
newAndroidPublisherMonetizationSubscriptionsBasePlansDeactivate basePlanId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , basePlanId = basePlanId
    , callback = Core.Nothing
    , packageName = packageName
    , payload = payload
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
         where
        type Rs
               AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
             = Subscription
        type Scopes
               AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsBasePlansDeactivate{..}
          = go packageName productId basePlanId xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationSubscriptionsBasePlansDeactivateResource)
                      Core.mempty


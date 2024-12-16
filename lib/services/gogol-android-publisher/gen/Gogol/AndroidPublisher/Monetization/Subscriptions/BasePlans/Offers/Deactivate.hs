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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Deactivate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deactivates a subscription offer. Once deactivated, existing subscribers will maintain their subscription, but the offer will become unavailable to new subscribers.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.deactivate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.Deactivate
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivateResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate (..)
    , newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.deactivate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivateResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "basePlans" Core.:>
                   Core.Capture "basePlanId" Core.Text Core.:>
                     "offers" Core.:>
                       Core.CaptureMode "offerId" "deactivate" Core.Text
                         Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON]
                                       DeactivateSubscriptionOfferRequest
                                       Core.:>
                                       Core.Post '[Core.JSON] SubscriptionOffer

-- | Deactivates a subscription offer. Once deactivated, existing subscribers will maintain their subscription, but the offer will become unavailable to new subscribers.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate = AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The parent base plan (ID) of the offer to deactivate.
    , basePlanId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The unique offer ID of the offer to deactivate.
    , offerId :: Core.Text
      -- | Required. The parent app (package name) of the offer to deactivate.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: DeactivateSubscriptionOfferRequest
      -- | Required. The parent subscription (ID) of the offer to deactivate.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate 
    ::  Core.Text
       -- ^  Required. The parent base plan (ID) of the offer to deactivate. See 'basePlanId'.
    -> Core.Text
       -- ^  Required. The unique offer ID of the offer to deactivate. See 'offerId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the offer to deactivate. See 'packageName'.
    -> DeactivateSubscriptionOfferRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The parent subscription (ID) of the offer to deactivate. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate basePlanId offerId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , basePlanId = basePlanId
    , callback = Core.Nothing
    , offerId = offerId
    , packageName = packageName
    , payload = payload
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
         where
        type Rs
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
             = SubscriptionOffer
        type Scopes
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivate{..}
          = go packageName productId basePlanId offerId xgafv
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
                           AndroidPublisherMonetizationSubscriptionsBasePlansOffersDeactivateResource)
                      Core.mempty


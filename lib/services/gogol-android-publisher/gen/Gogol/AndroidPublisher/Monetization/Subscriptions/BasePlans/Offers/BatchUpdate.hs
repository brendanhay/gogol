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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of subscription offers. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdate@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdate
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate (..)
    , newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdate@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "basePlans" Core.:>
                   Core.Capture "basePlanId" Core.Text Core.:>
                     "offers:batchUpdate" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     BatchUpdateSubscriptionOffersRequest
                                     Core.:>
                                     Core.Post '[Core.JSON]
                                       BatchUpdateSubscriptionOffersResponse

-- | Updates a batch of subscription offers. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate = AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The parent base plan (ID) for which the offers should be updated. May be specified as \'-\' to update offers from multiple base plans.
    , basePlanId :: Core.Text
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the updated subscription offers. Must be equal to the package_name field on all the updated SubscriptionOffer resources.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchUpdateSubscriptionOffersRequest
      -- | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this request spans multiple subscriptions, set this field to \"-\". Must be set.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate 
    ::  Core.Text
       -- ^  Required. The parent base plan (ID) for which the offers should be updated. May be specified as \'-\' to update offers from multiple base plans. See 'basePlanId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the updated subscription offers. Must be equal to the package_name field on all the updated SubscriptionOffer resources. See 'packageName'.
    -> BatchUpdateSubscriptionOffersRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this request spans multiple subscriptions, set this field to \"-\". Must be set. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate basePlanId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
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
           AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
         where
        type Rs
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
             = BatchUpdateSubscriptionOffersResponse
        type Scopes
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdate{..}
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
                           AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateResource)
                      Core.mempty


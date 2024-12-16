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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdateStates
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a batch of subscription offer states. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdateStates@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.Offers.BatchUpdateStates
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStatesResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates (..)
    , newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.offers.batchUpdateStates@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStatesResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "basePlans" Core.:>
                   Core.Capture "basePlanId" Core.Text Core.:>
                     "offers:batchUpdateStates" Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.ReqBody '[Core.JSON]
                                     BatchUpdateSubscriptionOfferStatesRequest
                                     Core.:>
                                     Core.Post '[Core.JSON]
                                       BatchUpdateSubscriptionOfferStatesResponse

-- | Updates a batch of subscription offer states. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates = AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
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
    , payload :: BatchUpdateSubscriptionOfferStatesRequest
      -- | Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this request spans multiple subscriptions, set this field to \"-\". Must be set.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates 
    ::  Core.Text
       -- ^  Required. The parent base plan (ID) for which the offers should be updated. May be specified as \'-\' to update offers from multiple base plans. See 'basePlanId'.
    -> Core.Text
       -- ^  Required. The parent app (package name) of the updated subscription offers. Must be equal to the package_name field on all the updated SubscriptionOffer resources. See 'packageName'.
    -> BatchUpdateSubscriptionOfferStatesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent subscription, if all updated offers belong to the same subscription. If this request spans multiple subscriptions, set this field to \"-\". Must be set. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
newAndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates basePlanId packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
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
           AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
         where
        type Rs
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
             = BatchUpdateSubscriptionOfferStatesResponse
        type Scopes
               AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStates{..}
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
                           AndroidPublisherMonetizationSubscriptionsBasePlansOffersBatchUpdateStatesResource)
                      Core.mempty


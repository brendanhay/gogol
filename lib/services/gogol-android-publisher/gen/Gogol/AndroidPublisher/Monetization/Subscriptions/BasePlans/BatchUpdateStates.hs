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
-- Module      : Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchUpdateStates
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Activates or deactivates base plans across one or multiple subscriptions. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.subscriptions.basePlans.batchUpdateStates@.
module Gogol.AndroidPublisher.Monetization.Subscriptions.BasePlans.BatchUpdateStates
    (
    -- * Resource
      AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStatesResource

    -- ** Constructing a Request
    , AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates (..)
    , newAndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.monetization.subscriptions.basePlans.batchUpdateStates@ method which the
-- 'AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates' request conforms to.
type AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStatesResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "subscriptions" Core.:>
               Core.Capture "productId" Core.Text Core.:>
                 "basePlans:batchUpdateStates" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON]
                                 BatchUpdateBasePlanStatesRequest
                                 Core.:>
                                 Core.Post '[Core.JSON]
                                   BatchUpdateBasePlanStatesResponse

-- | Activates or deactivates base plans across one or multiple subscriptions. Set the latencyTolerance field on nested requests to PRODUCT/UPDATE/LATENCY/TOLERANCE/LATENCY_TOLERANT to achieve maximum update throughput.
--
-- /See:/ 'newAndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates' smart constructor.
data AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates = AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The parent app (package name) of the updated base plans.
    , packageName :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchUpdateBasePlanStatesRequest
      -- | Required. The product ID of the parent subscription, if all updated base plans belong to the same subscription. If this batch update spans multiple subscriptions, set this field to \"-\". Must be set.
    , productId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates' with the minimum fields required to make a request.
newAndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates 
    ::  Core.Text
       -- ^  Required. The parent app (package name) of the updated base plans. See 'packageName'.
    -> BatchUpdateBasePlanStatesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The product ID of the parent subscription, if all updated base plans belong to the same subscription. If this batch update spans multiple subscriptions, set this field to \"-\". Must be set. See 'productId'.
    -> AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
newAndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates packageName payload productId =
  AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , payload = payload
    , productId = productId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
         where
        type Rs
               AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
             = BatchUpdateBasePlanStatesResponse
        type Scopes
               AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStates{..}
          = go packageName productId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherMonetizationSubscriptionsBasePlansBatchUpdateStatesResource)
                      Core.mempty


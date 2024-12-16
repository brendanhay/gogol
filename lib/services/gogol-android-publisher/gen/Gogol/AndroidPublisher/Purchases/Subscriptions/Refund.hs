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
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Refund
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Refunds a user\'s subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.refund@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Refund
    (
    -- * Resource
      AndroidPublisherPurchasesSubscriptionsRefundResource

    -- ** Constructing a Request
    , AndroidPublisherPurchasesSubscriptionsRefund (..)
    , newAndroidPublisherPurchasesSubscriptionsRefund
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types

-- | A resource alias for @androidpublisher.purchases.subscriptions.refund@ method which the
-- 'AndroidPublisherPurchasesSubscriptionsRefund' request conforms to.
type AndroidPublisherPurchasesSubscriptionsRefundResource
     =
     "androidpublisher" Core.:>
       "v3" Core.:>
         "applications" Core.:>
           Core.Capture "packageName" Core.Text Core.:>
             "purchases" Core.:>
               "subscriptions" Core.:>
                 Core.Capture "subscriptionId" Core.Text Core.:>
                   "tokens" Core.:>
                     Core.CaptureMode "token" "refund" Core.Text Core.:>
                       Core.QueryParam "$.xgafv" Xgafv Core.:>
                         Core.QueryParam "access_token" Core.Text Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] ()

-- | Refunds a user\'s subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.
--
-- /See:/ 'newAndroidPublisherPurchasesSubscriptionsRefund' smart constructor.
data AndroidPublisherPurchasesSubscriptionsRefund = AndroidPublisherPurchasesSubscriptionsRefund
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | \"The purchased subscription ID (for example, \'monthly001\').
    , subscriptionId :: Core.Text
      -- | The token provided to the user\'s device when the subscription was purchased.
    , token :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherPurchasesSubscriptionsRefund' with the minimum fields required to make a request.
newAndroidPublisherPurchasesSubscriptionsRefund 
    ::  Core.Text
       -- ^  The package name of the application for which this subscription was purchased (for example, \'com.some.thing\'). See 'packageName'.
    -> Core.Text
       -- ^  \"The purchased subscription ID (for example, \'monthly001\'). See 'subscriptionId'.
    -> Core.Text
       -- ^  The token provided to the user\'s device when the subscription was purchased. See 'token'.
    -> AndroidPublisherPurchasesSubscriptionsRefund
newAndroidPublisherPurchasesSubscriptionsRefund packageName subscriptionId token =
  AndroidPublisherPurchasesSubscriptionsRefund
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , packageName = packageName
    , subscriptionId = subscriptionId
    , token = token
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidPublisherPurchasesSubscriptionsRefund
         where
        type Rs AndroidPublisherPurchasesSubscriptionsRefund
             = ()
        type Scopes
               AndroidPublisherPurchasesSubscriptionsRefund
             = '[Androidpublisher'FullControl]
        requestClient
          AndroidPublisherPurchasesSubscriptionsRefund{..}
          = go packageName subscriptionId token xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidPublisherService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidPublisherPurchasesSubscriptionsRefundResource)
                      Core.mempty


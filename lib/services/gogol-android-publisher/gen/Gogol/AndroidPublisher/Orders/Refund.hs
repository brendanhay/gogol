-- |
-- Module      : Gogol.AndroidPublisher.Orders.Refund
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.orders.refund@.
module Gogol.AndroidPublisher.Orders.Refund
    (
    -- * Constructing a Request
    AndroidPublisherOrdersRefund (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherOrdersRefund (..),
#endif
    mkAndroidPublisherOrdersRefund,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Refunds a user\'s subscription or in-app purchase order. Orders older than 1 year cannot be refunded.
--
-- Construct a default value using the 'MkAndroidPublisherOrdersRefund' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherOrdersRefund = AndroidPublisherOrdersRefund
    {
      -- | The order ID provided to the user when the subscription or in-app order was purchased.
      orderId :: Core.Text
      -- | The package name of the application for which this subscription or in-app item was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | Whether to revoke the purchased item. If set to true, access to the subscription or in-app item will be terminated immediately. If the item is a recurring subscription, all future payments will also be terminated. Consumed in-app items need to be handled by developer\'s app. (optional).
    , revoke :: Core.Maybe Core.Bool
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherOrdersRefund' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherOrdersRefund :: Core.Text -> Core.Text -> AndroidPublisherOrdersRefund
pattern MkAndroidPublisherOrdersRefund{orderId, packageName} =
        AndroidPublisherOrdersRefund{orderId = orderId, packageName = packageName, revoke = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherOrdersRefund "Please use MkAndroidPublisherOrdersRefund instead" #-}
#endif

-- | Create 'AndroidPublisherOrdersRefund' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherOrdersRefund :: Core.Text -> Core.Text -> AndroidPublisherOrdersRefund
mkAndroidPublisherOrdersRefund orderId packageName
  = AndroidPublisherOrdersRefund{orderId = orderId, packageName = packageName, revoke = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherOrdersRefund where
        type Core.Scopes AndroidPublisherOrdersRefund = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherOrdersRefund = AndroidPublisherService
        type Core.Response AndroidPublisherOrdersRefund = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherOrdersRefund{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/orders/", Core.toPathBuilder orderId, "/:refund"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("revoke",) Core.. Core.toQueryParam Core.<$> revoke, Core.Just ("alt", "json")]}

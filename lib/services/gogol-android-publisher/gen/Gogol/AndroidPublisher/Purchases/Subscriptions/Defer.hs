-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.defer@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Defer
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesSubscriptionsDefer (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Defers a user\'s subscription purchase until a specified future expiration time.
data AndroidPublisherPurchasesSubscriptionsDefer = AndroidPublisherPurchasesSubscriptionsDefer
    {
      -- | Multipart request metadata.
      meta :: SubscriptionPurchasesDeferRequest
      -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | The purchased subscription ID (for example, \'monthly001\').
    , subscriptionId :: Core.Text
      -- | The token provided to the user\'s device when the subscription was purchased.
    , token :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherPurchasesSubscriptionsDefer where
        type Core.Scopes AndroidPublisherPurchasesSubscriptionsDefer = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesSubscriptionsDefer = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesSubscriptionsDefer = SubscriptionPurchasesDeferResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherPurchasesSubscriptionsDefer{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/subscriptions/",
                                Core.toPathBuilder subscriptionId, "/tokens/", Core.toPathBuilder token, "/:defer"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

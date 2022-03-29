-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Acknowledge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.acknowledge@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Acknowledge
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesSubscriptionsAcknowledge (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Acknowledges a subscription purchase.
data AndroidPublisherPurchasesSubscriptionsAcknowledge = AndroidPublisherPurchasesSubscriptionsAcknowledge
    {
      -- | Multipart request metadata.
      meta :: SubscriptionPurchasesAcknowledgeRequest
      -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | The purchased subscription ID (for example, \'monthly001\').
    , subscriptionId :: Core.Text
      -- | The token provided to the user\'s device when the subscription was purchased.
    , token :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherPurchasesSubscriptionsAcknowledge where
        type Core.Scopes AndroidPublisherPurchasesSubscriptionsAcknowledge = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesSubscriptionsAcknowledge = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesSubscriptionsAcknowledge = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherPurchasesSubscriptionsAcknowledge{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/subscriptions/",
                                Core.toPathBuilder subscriptionId, "/tokens/", Core.toPathBuilder token, "/:acknowledge"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

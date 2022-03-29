-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.subscriptions.revoke@.
module Gogol.AndroidPublisher.Purchases.Subscriptions.Revoke
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesSubscriptionsRevoke (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Refunds and immediately revokes a user\'s subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.
data AndroidPublisherPurchasesSubscriptionsRevoke = AndroidPublisherPurchasesSubscriptionsRevoke
    {
      -- | The package name of the application for which this subscription was purchased (for example, \'com.some.thing\').
      packageName :: Core.Text
      -- | The purchased subscription ID (for example, \'monthly001\').
    , subscriptionId :: Core.Text
      -- | The token provided to the user\'s device when the subscription was purchased.
    , token :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherPurchasesSubscriptionsRevoke where
        type Core.Scopes AndroidPublisherPurchasesSubscriptionsRevoke = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesSubscriptionsRevoke = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesSubscriptionsRevoke = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherPurchasesSubscriptionsRevoke{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/subscriptions/",
                                Core.toPathBuilder subscriptionId, "/tokens/", Core.toPathBuilder token, "/:revoke"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

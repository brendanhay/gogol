-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Products.Acknowledge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.acknowledge@.
module Gogol.AndroidPublisher.Purchases.Products.Acknowledge
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesProductsAcknowledge (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Acknowledges a purchase of an inapp item.
data AndroidPublisherPurchasesProductsAcknowledge = AndroidPublisherPurchasesProductsAcknowledge
    {
      -- | Multipart request metadata.
      meta :: ProductPurchasesAcknowledgeRequest
      -- | The package name of the application the inapp product was sold in (for example, \'com.some.thing\').
    , packageName :: Core.Text
      -- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
    , productId :: Core.Text
      -- | The token provided to the user\'s device when the inapp product was purchased.
    , token :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherPurchasesProductsAcknowledge where
        type Core.Scopes AndroidPublisherPurchasesProductsAcknowledge = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesProductsAcknowledge = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesProductsAcknowledge = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherPurchasesProductsAcknowledge{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/products/", Core.toPathBuilder productId,
                                "/tokens/", Core.toPathBuilder token, "/:acknowledge"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

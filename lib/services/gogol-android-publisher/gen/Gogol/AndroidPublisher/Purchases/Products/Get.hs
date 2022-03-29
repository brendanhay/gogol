-- |
-- Module      : Gogol.AndroidPublisher.Purchases.Products.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.purchases.products.get@.
module Gogol.AndroidPublisher.Purchases.Products.Get
    (
    -- * Constructing a Request
    AndroidPublisherPurchasesProductsGet (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Checks the purchase and consumption status of an inapp item.
data AndroidPublisherPurchasesProductsGet = AndroidPublisherPurchasesProductsGet
    {
      -- | The package name of the application the inapp product was sold in (for example, \'com.some.thing\').
      packageName :: Core.Text
      -- | The inapp product SKU (for example, \'com.some.thing.inapp1\').
    , productId :: Core.Text
      -- | The token provided to the user\'s device when the inapp product was purchased.
    , token :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherPurchasesProductsGet where
        type Core.Scopes AndroidPublisherPurchasesProductsGet = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherPurchasesProductsGet = AndroidPublisherService
        type Core.Response AndroidPublisherPurchasesProductsGet = ProductPurchase
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherPurchasesProductsGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/purchases/products/", Core.toPathBuilder productId,
                                "/tokens/", Core.toPathBuilder token],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

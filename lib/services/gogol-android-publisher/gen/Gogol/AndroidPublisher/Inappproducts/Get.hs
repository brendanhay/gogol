-- |
-- Module      : Gogol.AndroidPublisher.Inappproducts.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.get@.
module Gogol.AndroidPublisher.Inappproducts.Get
    (
    -- * Constructing a Request
    AndroidPublisherInappproductsGet (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Gets an in-app product, which can be a managed product or a subscription.
data AndroidPublisherInappproductsGet = AndroidPublisherInappproductsGet
    {
      -- | Package name of the app.
      packageName :: Core.Text
      -- | Unique identifier for the in-app product.
    , sku :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherInappproductsGet where
        type Core.Scopes AndroidPublisherInappproductsGet = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInappproductsGet = AndroidPublisherService
        type Core.Response AndroidPublisherInappproductsGet = InAppProduct
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherInappproductsGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/inappproducts/", Core.toPathBuilder sku],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

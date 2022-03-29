-- |
-- Module      : Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.monetization.convertRegionPrices@.
module Gogol.AndroidPublisher.Monetization.ConvertRegionPrices
    (
    -- * Constructing a Request
    AndroidPublisherMonetizationConvertRegionPrices (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Calculates the region prices, using today\'s exchange rate and country-specific pricing patterns, based on the price in the request for a set of regions.
data AndroidPublisherMonetizationConvertRegionPrices = AndroidPublisherMonetizationConvertRegionPrices
    {
      -- | Multipart request metadata.
      meta :: ConvertRegionPricesRequest
      -- | Required. The app package name.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherMonetizationConvertRegionPrices where
        type Core.Scopes AndroidPublisherMonetizationConvertRegionPrices = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherMonetizationConvertRegionPrices = AndroidPublisherService
        type Core.Response AndroidPublisherMonetizationConvertRegionPrices = ConvertRegionPricesResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherMonetizationConvertRegionPrices{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/pricing:convertRegionPrices"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

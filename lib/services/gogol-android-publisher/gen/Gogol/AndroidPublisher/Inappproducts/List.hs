-- |
-- Module      : Gogol.AndroidPublisher.Inappproducts.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.list@.
module Gogol.AndroidPublisher.Inappproducts.List
    (
    -- * Constructing a Request
    AndroidPublisherInappproductsList (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherInappproductsList (..),
#endif
    mkAndroidPublisherInappproductsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists all in-app products - both managed products and subscriptions. If an app has a large number of in-app products, the response may be paginated. In this case the response field @tokenPagination.nextPageToken@ will be set and the caller should provide its value as a @token@ request parameter to retrieve the next page.
--
-- Construct a default value using the 'MkAndroidPublisherInappproductsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherInappproductsList = AndroidPublisherInappproductsList
    {
      -- | Deprecated and ignored. The page size is determined by the server.
      maxResults :: Core.Maybe Core.Word32
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Deprecated and ignored. Set the @token@ parameter to rertieve the next page.
    , startIndex :: Core.Maybe Core.Word32
      -- | Pagination token. If empty, list starts at the first product.
    , token :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherInappproductsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherInappproductsList :: Core.Text -> AndroidPublisherInappproductsList
pattern MkAndroidPublisherInappproductsList{packageName} =
        AndroidPublisherInappproductsList{maxResults = Core.Nothing, packageName = packageName, startIndex = Core.Nothing,
                                          token = Core.Nothing}

{-# DEPRECATED mkAndroidPublisherInappproductsList "Please use MkAndroidPublisherInappproductsList instead" #-}
#endif

-- | Create 'AndroidPublisherInappproductsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherInappproductsList :: Core.Text -> AndroidPublisherInappproductsList
mkAndroidPublisherInappproductsList packageName
  = AndroidPublisherInappproductsList{maxResults = Core.Nothing, packageName = packageName, startIndex = Core.Nothing,
                                      token = Core.Nothing}
instance Core.GoogleRequest AndroidPublisherInappproductsList where
        type Core.Scopes AndroidPublisherInappproductsList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInappproductsList = AndroidPublisherService
        type Core.Response AndroidPublisherInappproductsList = InappproductsListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherInappproductsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/inappproducts"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("maxResults",) Core.. Core.toQueryParam Core.<$> maxResults,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("startIndex",) Core.. Core.toQueryParam Core.<$> startIndex,
                                  ("token",) Core.. Core.toQueryParam Core.<$> token, Core.Just ("alt", "json")]}

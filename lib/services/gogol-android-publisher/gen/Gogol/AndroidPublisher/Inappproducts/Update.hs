-- |
-- Module      : Gogol.AndroidPublisher.Inappproducts.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.update@.
module Gogol.AndroidPublisher.Inappproducts.Update
    (
    -- * Constructing a Request
    AndroidPublisherInappproductsUpdate (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherInappproductsUpdate (..),
#endif
    mkAndroidPublisherInappproductsUpdate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Updates an in-app product (i.e. a managed product or a subscriptions).
--
-- Construct a default value using the 'MkAndroidPublisherInappproductsUpdate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherInappproductsUpdate = AndroidPublisherInappproductsUpdate
    {
      -- | If set to true, and the in-app product with the given package_name and sku doesn\'t exist, the in-app product will be created.
      allowMissing :: Core.Maybe Core.Bool
      -- | If true the prices for all regions targeted by the parent app that don\'t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
    , autoConvertMissingPrices :: Core.Maybe Core.Bool
      -- | Multipart request metadata.
    , meta :: InAppProduct
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Unique identifier for the in-app product.
    , sku :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherInappproductsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherInappproductsUpdate :: InAppProduct -> Core.Text -> Core.Text -> AndroidPublisherInappproductsUpdate
pattern MkAndroidPublisherInappproductsUpdate{meta, packageName, sku} =
        AndroidPublisherInappproductsUpdate{allowMissing = Core.Nothing, autoConvertMissingPrices = Core.Nothing, meta = meta,
                                            packageName = packageName, sku = sku}

{-# DEPRECATED mkAndroidPublisherInappproductsUpdate "Please use MkAndroidPublisherInappproductsUpdate instead" #-}
#endif

-- | Create 'AndroidPublisherInappproductsUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherInappproductsUpdate :: InAppProduct -> Core.Text -> Core.Text -> AndroidPublisherInappproductsUpdate
mkAndroidPublisherInappproductsUpdate meta packageName sku
  = AndroidPublisherInappproductsUpdate{allowMissing = Core.Nothing, autoConvertMissingPrices = Core.Nothing, meta = meta,
                                        packageName = packageName, sku = sku}
instance Core.GoogleRequest AndroidPublisherInappproductsUpdate where
        type Core.Scopes AndroidPublisherInappproductsUpdate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInappproductsUpdate = AndroidPublisherService
        type Core.Response AndroidPublisherInappproductsUpdate = InAppProduct
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherInappproductsUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/inappproducts/", Core.toPathBuilder sku],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("allowMissing",) Core.. Core.toQueryParam Core.<$> allowMissing,
                                  ("autoConvertMissingPrices",) Core.. Core.toQueryParam Core.<$> autoConvertMissingPrices,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

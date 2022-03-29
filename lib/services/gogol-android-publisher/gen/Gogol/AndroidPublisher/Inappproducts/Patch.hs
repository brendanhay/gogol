-- |
-- Module      : Gogol.AndroidPublisher.Inappproducts.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.patch@.
module Gogol.AndroidPublisher.Inappproducts.Patch
    (
    -- * Constructing a Request
    AndroidPublisherInappproductsPatch (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherInappproductsPatch (..),
#endif
    mkAndroidPublisherInappproductsPatch,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Patches an in-app product (i.e. a managed product or a subscriptions).
--
-- Construct a default value using the 'MkAndroidPublisherInappproductsPatch' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherInappproductsPatch = AndroidPublisherInappproductsPatch
    {
      -- | If true the prices for all regions targeted by the parent app that don\'t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
      autoConvertMissingPrices :: Core.Maybe Core.Bool
      -- | Multipart request metadata.
    , meta :: InAppProduct
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Unique identifier for the in-app product.
    , sku :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherInappproductsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherInappproductsPatch :: InAppProduct -> Core.Text -> Core.Text -> AndroidPublisherInappproductsPatch
pattern MkAndroidPublisherInappproductsPatch{meta, packageName, sku} =
        AndroidPublisherInappproductsPatch{autoConvertMissingPrices = Core.Nothing, meta = meta, packageName = packageName, sku = sku}

{-# DEPRECATED mkAndroidPublisherInappproductsPatch "Please use MkAndroidPublisherInappproductsPatch instead" #-}
#endif

-- | Create 'AndroidPublisherInappproductsPatch' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherInappproductsPatch :: InAppProduct -> Core.Text -> Core.Text -> AndroidPublisherInappproductsPatch
mkAndroidPublisherInappproductsPatch meta packageName sku
  = AndroidPublisherInappproductsPatch{autoConvertMissingPrices = Core.Nothing, meta = meta, packageName = packageName, sku = sku}
instance Core.GoogleRequest AndroidPublisherInappproductsPatch where
        type Core.Scopes AndroidPublisherInappproductsPatch = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInappproductsPatch = AndroidPublisherService
        type Core.Response AndroidPublisherInappproductsPatch = InAppProduct
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherInappproductsPatch{..}
          = serviceRequest{Core.method = "PATCH",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/inappproducts/", Core.toPathBuilder sku],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("autoConvertMissingPrices",) Core.. Core.toQueryParam Core.<$> autoConvertMissingPrices,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

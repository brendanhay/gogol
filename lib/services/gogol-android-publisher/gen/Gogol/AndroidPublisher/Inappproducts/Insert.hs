-- |
-- Module      : Gogol.AndroidPublisher.Inappproducts.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.inappproducts.insert@.
module Gogol.AndroidPublisher.Inappproducts.Insert
    (
    -- * Constructing a Request
    AndroidPublisherInappproductsInsert (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherInappproductsInsert (..),
#endif
    mkAndroidPublisherInappproductsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Creates an in-app product (i.e. a managed product or a subscriptions).
--
-- Construct a default value using the 'MkAndroidPublisherInappproductsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherInappproductsInsert = AndroidPublisherInappproductsInsert
    {
      -- | If true the prices for all regions targeted by the parent app that don\'t have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.
      autoConvertMissingPrices :: Core.Maybe Core.Bool
      -- | Multipart request metadata.
    , meta :: InAppProduct
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherInappproductsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherInappproductsInsert :: InAppProduct -> Core.Text -> AndroidPublisherInappproductsInsert
pattern MkAndroidPublisherInappproductsInsert{meta, packageName} =
        AndroidPublisherInappproductsInsert{autoConvertMissingPrices = Core.Nothing, meta = meta, packageName = packageName}

{-# DEPRECATED mkAndroidPublisherInappproductsInsert "Please use MkAndroidPublisherInappproductsInsert instead" #-}
#endif

-- | Create 'AndroidPublisherInappproductsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherInappproductsInsert :: InAppProduct -> Core.Text -> AndroidPublisherInappproductsInsert
mkAndroidPublisherInappproductsInsert meta packageName
  = AndroidPublisherInappproductsInsert{autoConvertMissingPrices = Core.Nothing, meta = meta, packageName = packageName}
instance Core.GoogleRequest AndroidPublisherInappproductsInsert where
        type Core.Scopes AndroidPublisherInappproductsInsert = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInappproductsInsert = AndroidPublisherService
        type Core.Response AndroidPublisherInappproductsInsert = InAppProduct
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherInappproductsInsert{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/inappproducts"],
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

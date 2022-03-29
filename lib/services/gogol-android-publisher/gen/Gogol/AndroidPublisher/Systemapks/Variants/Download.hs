-- |
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.download@.
module Gogol.AndroidPublisher.Systemapks.Variants.Download
    (
    -- * Constructing a Request
    AndroidPublisherSystemapksVariantsDownload (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Downloads a previously created system APK which is suitable for inclusion in a system image.
data AndroidPublisherSystemapksVariantsDownload = AndroidPublisherSystemapksVariantsDownload
    {
      -- | Package name of the app.
      packageName :: Core.Text
      -- | The ID of a previously created system APK variant.
    , variantId :: Core.Word32
      -- | The version code of the App Bundle.
    , versionCode :: Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherSystemapksVariantsDownload where
        type Core.Scopes AndroidPublisherSystemapksVariantsDownload = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherSystemapksVariantsDownload = AndroidPublisherService
        type Core.Response AndroidPublisherSystemapksVariantsDownload = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherSystemapksVariantsDownload{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/systemApks/", Core.toPathBuilder versionCode,
                                "/variants/", Core.toPathBuilder variantId, "/:download"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}
instance Core.GoogleMediaRequest AndroidPublisherSystemapksVariantsDownload

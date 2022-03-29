-- |
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.create@.
module Gogol.AndroidPublisher.Systemapks.Variants.Create
    (
    -- * Constructing a Request
    AndroidPublisherSystemapksVariantsCreate (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Creates an APK which is suitable for inclusion in a system image from an already uploaded Android App Bundle.
data AndroidPublisherSystemapksVariantsCreate = AndroidPublisherSystemapksVariantsCreate
    {
      -- | Multipart request metadata.
      meta :: Variant
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | The version code of the App Bundle.
    , versionCode :: Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherSystemapksVariantsCreate where
        type Core.Scopes AndroidPublisherSystemapksVariantsCreate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherSystemapksVariantsCreate = AndroidPublisherService
        type Core.Response AndroidPublisherSystemapksVariantsCreate = Variant
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherSystemapksVariantsCreate{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/systemApks/", Core.toPathBuilder versionCode,
                                "/variants"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

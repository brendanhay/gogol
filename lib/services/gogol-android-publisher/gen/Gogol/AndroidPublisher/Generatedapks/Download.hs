-- |
-- Module      : Gogol.AndroidPublisher.Generatedapks.Download
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.generatedapks.download@.
module Gogol.AndroidPublisher.Generatedapks.Download
    (
    -- * Constructing a Request
    AndroidPublisherGeneratedapksDownload (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Downloads a single signed APK generated from an app bundle.
data AndroidPublisherGeneratedapksDownload = AndroidPublisherGeneratedapksDownload
    {
      -- | Download ID, which uniquely identifies the APK to download. Can be obtained from the response of @generatedapks.list@ method.
      downloadId :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Version code of the app bundle.
    , versionCode :: Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherGeneratedapksDownload where
        type Core.Scopes AndroidPublisherGeneratedapksDownload = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherGeneratedapksDownload = AndroidPublisherService
        type Core.Response AndroidPublisherGeneratedapksDownload = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherGeneratedapksDownload{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/generatedApks/", Core.toPathBuilder versionCode,
                                "/downloads/", Core.toPathBuilder downloadId, "/:download"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}
instance Core.GoogleMediaRequest AndroidPublisherGeneratedapksDownload

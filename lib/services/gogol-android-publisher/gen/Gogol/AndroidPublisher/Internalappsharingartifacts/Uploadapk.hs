-- |
-- Module      : Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadapk@.
module Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadapk
    (
    -- * Constructing a Request
    AndroidPublisherInternalappsharingartifactsUploadapk (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Uploads an APK to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
newtype AndroidPublisherInternalappsharingartifactsUploadapk = AndroidPublisherInternalappsharingartifactsUploadapk
    {
      -- | Package name of the app.
      packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherInternalappsharingartifactsUploadapk where
        type Core.Scopes AndroidPublisherInternalappsharingartifactsUploadapk = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInternalappsharingartifactsUploadapk = AndroidPublisherService
        type Core.Response AndroidPublisherInternalappsharingartifactsUploadapk = InternalAppSharingArtifact
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherInternalappsharingartifactsUploadapk{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath ["/androidpublisher/v3/applications/internalappsharing/", Core.toPathBuilder packageName, "/artifacts/apk"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}
instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherInternalappsharingartifactsUploadapk
instance Core.GoogleMultipartRequest
           "application/vnd.android.package-archive" AndroidPublisherInternalappsharingartifactsUploadapk
instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherInternalappsharingartifactsUploadapk
instance Core.GoogleResumableRequest
           "application/vnd.android.package-archive" AndroidPublisherInternalappsharingartifactsUploadapk

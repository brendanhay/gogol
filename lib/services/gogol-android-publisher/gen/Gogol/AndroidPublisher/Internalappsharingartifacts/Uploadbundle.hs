-- |
-- Module      : Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.internalappsharingartifacts.uploadbundle@.
module Gogol.AndroidPublisher.Internalappsharingartifacts.Uploadbundle
    (
    -- * Constructing a Request
    AndroidPublisherInternalappsharingartifactsUploadbundle (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
newtype AndroidPublisherInternalappsharingartifactsUploadbundle = AndroidPublisherInternalappsharingartifactsUploadbundle
    {
      -- | Package name of the app.
      packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherInternalappsharingartifactsUploadbundle where
        type Core.Scopes AndroidPublisherInternalappsharingartifactsUploadbundle = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherInternalappsharingartifactsUploadbundle = AndroidPublisherService
        type Core.Response AndroidPublisherInternalappsharingartifactsUploadbundle = InternalAppSharingArtifact
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}}
          AndroidPublisherInternalappsharingartifactsUploadbundle{..}
          = serviceRequest{Core.method = "POST",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/internalappsharing/", Core.toPathBuilder packageName, "/artifacts/bundle"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}
instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherInternalappsharingartifactsUploadbundle
instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherInternalappsharingartifactsUploadbundle

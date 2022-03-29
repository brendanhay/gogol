-- |
-- Module      : Gogol.AndroidPublisher.Edits.Bundles.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.bundles.upload@.
module Gogol.AndroidPublisher.Edits.Bundles.Upload
  ( -- * Constructing a Request
    AndroidPublisherEditsBundlesUpload (..),
#ifdef NOFIELDSELECTORS
    MkAndroidPublisherEditsBundlesUpload (..),
#endif
    mkAndroidPublisherEditsBundlesUpload,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See <https://developers.google.com/api-client-library/java/google-api-java-client/errors Timeouts and Errors> for an example in java.
--
-- Construct a default value using the 'MkAndroidPublisherEditsBundlesUpload' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data AndroidPublisherEditsBundlesUpload = AndroidPublisherEditsBundlesUpload
  { -- | Must be set to true if the app bundle installation may trigger a warning on user devices (for example, if installation size may be over a threshold, typically 100 MB).
    ackBundleInstallationWarning :: Core.Maybe Core.Bool,
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'AndroidPublisherEditsBundlesUpload' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkAndroidPublisherEditsBundlesUpload :: Core.Text -> Core.Text -> AndroidPublisherEditsBundlesUpload
pattern MkAndroidPublisherEditsBundlesUpload{editId, packageName} =
        AndroidPublisherEditsBundlesUpload{ackBundleInstallationWarning = Core.Nothing, editId = editId, packageName = packageName}

{-# DEPRECATED mkAndroidPublisherEditsBundlesUpload "Please use MkAndroidPublisherEditsBundlesUpload instead" #-}
#endif

-- | Create 'AndroidPublisherEditsBundlesUpload' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkAndroidPublisherEditsBundlesUpload :: Core.Text -> Core.Text -> AndroidPublisherEditsBundlesUpload
mkAndroidPublisherEditsBundlesUpload editId packageName =
  AndroidPublisherEditsBundlesUpload {ackBundleInstallationWarning = Core.Nothing, editId = editId, packageName = packageName}

instance Core.GoogleRequest AndroidPublisherEditsBundlesUpload where
  type Core.Scopes AndroidPublisherEditsBundlesUpload = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsBundlesUpload = AndroidPublisherService
  type Core.Response AndroidPublisherEditsBundlesUpload = Bundle
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsBundlesUpload {..} =
    serviceRequest
      { Core.method = "POST",
        Core.path =
          Core.toRequestPath
            ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/bundles"],
        Core.queryString =
          Core.toRequestQuery $
            Core.catMaybes
              [ ("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv,
                ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                ("ackBundleInstallationWarning",) Core.. Core.toQueryParam Core.<$> ackBundleInstallationWarning,
                ("callback",) Core.. Core.toQueryParam Core.<$> callback,
                ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                ("key",) Core.. Core.toQueryParam Core.<$> key,
                ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                Core.Just ("alt", "json")
              ]
      }

instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherEditsBundlesUpload

instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherEditsBundlesUpload

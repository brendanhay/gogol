-- |
-- Module      : Gogol.AndroidPublisher.Edits.Apks.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.upload@.
module Gogol.AndroidPublisher.Edits.Apks.Upload
  ( -- * Constructing a Request
    AndroidPublisherEditsApksUpload (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Uploads an APK and adds to the current edit.
data AndroidPublisherEditsApksUpload = AndroidPublisherEditsApksUpload
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsApksUpload where
  type Core.Scopes AndroidPublisherEditsApksUpload = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsApksUpload = AndroidPublisherService
  type Core.Response AndroidPublisherEditsApksUpload = Apk
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsApksUpload {..} =
    serviceRequest
      { Core.method = "POST",
        Core.path =
          Core.toRequestPath
            ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/apks"],
        Core.queryString =
          Core.toRequestQuery $
            Core.catMaybes
              [ ("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv,
                ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                ("callback",) Core.. Core.toQueryParam Core.<$> callback,
                ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                ("key",) Core.. Core.toQueryParam Core.<$> key,
                ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                Core.Just ("alt", "json")
              ]
      }

instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherEditsApksUpload

instance Core.GoogleMultipartRequest "application/vnd.android.package-archive" AndroidPublisherEditsApksUpload

instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherEditsApksUpload

instance Core.GoogleResumableRequest "application/vnd.android.package-archive" AndroidPublisherEditsApksUpload

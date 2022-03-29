-- |
-- Module      : Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.apks.addexternallyhosted@.
module Gogol.AndroidPublisher.Edits.Apks.Addexternallyhosted
  ( -- * Constructing a Request
    AndroidPublisherEditsApksAddexternallyhosted (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a specified URL. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.
data AndroidPublisherEditsApksAddexternallyhosted = AndroidPublisherEditsApksAddexternallyhosted
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Multipart request metadata.
    meta :: ApksAddExternallyHostedRequest,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsApksAddexternallyhosted where
  type Core.Scopes AndroidPublisherEditsApksAddexternallyhosted = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsApksAddexternallyhosted = AndroidPublisherService
  type Core.Response AndroidPublisherEditsApksAddexternallyhosted = ApksAddExternallyHostedResponse
  toRequest
    Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}}
    AndroidPublisherEditsApksAddexternallyhosted {..} =
      serviceRequest
        { Core.method = "POST",
          Core.path =
            Core.toRequestPath
              [ "/androidpublisher/v3/applications/",
                Core.toPathBuilder packageName,
                "/edits/",
                Core.toPathBuilder editId,
                "/apks/externallyHosted"
              ],
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
                ],
          Core.requestBody = Core.toRequestBodyJSON payload
        }

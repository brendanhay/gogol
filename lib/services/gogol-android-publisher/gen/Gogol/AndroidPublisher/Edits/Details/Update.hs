-- |
-- Module      : Gogol.AndroidPublisher.Edits.Details.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.details.update@.
module Gogol.AndroidPublisher.Edits.Details.Update
  ( -- * Constructing a Request
    AndroidPublisherEditsDetailsUpdate (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Updates details of an app.
data AndroidPublisherEditsDetailsUpdate = AndroidPublisherEditsDetailsUpdate
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Multipart request metadata.
    meta :: AppDetails,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsDetailsUpdate where
  type Core.Scopes AndroidPublisherEditsDetailsUpdate = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsDetailsUpdate = AndroidPublisherService
  type Core.Response AndroidPublisherEditsDetailsUpdate = AppDetails
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsDetailsUpdate {..} =
    serviceRequest
      { Core.method = "PUT",
        Core.path =
          Core.toRequestPath
            ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/details"],
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

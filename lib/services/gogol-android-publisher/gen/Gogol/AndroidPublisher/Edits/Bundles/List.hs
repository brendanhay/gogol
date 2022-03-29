-- |
-- Module      : Gogol.AndroidPublisher.Edits.Bundles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.bundles.list@.
module Gogol.AndroidPublisher.Edits.Bundles.List
  ( -- * Constructing a Request
    AndroidPublisherEditsBundlesList (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Lists all current Android App Bundles of the app and edit.
data AndroidPublisherEditsBundlesList = AndroidPublisherEditsBundlesList
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsBundlesList where
  type Core.Scopes AndroidPublisherEditsBundlesList = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsBundlesList = AndroidPublisherService
  type Core.Response AndroidPublisherEditsBundlesList = BundlesListResponse
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsBundlesList {..} =
    serviceRequest
      { Core.method = "GET",
        Core.path =
          Core.toRequestPath
            ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/bundles"],
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

-- |
-- Module      : Gogol.AndroidPublisher.Edits.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.insert@.
module Gogol.AndroidPublisher.Edits.Insert
    (
    -- * Constructing a Request
    AndroidPublisherEditsInsert (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Creates a new edit for an app.
data AndroidPublisherEditsInsert = AndroidPublisherEditsInsert
    {
      -- | Multipart request metadata.
      meta :: AppEdit
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsInsert where
        type Core.Scopes AndroidPublisherEditsInsert = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsInsert = AndroidPublisherService
        type Core.Response AndroidPublisherEditsInsert = AppEdit
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsInsert{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

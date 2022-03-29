-- |
-- Module      : Gogol.AndroidPublisher.Edits.Tracks.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.tracks.update@.
module Gogol.AndroidPublisher.Edits.Tracks.Update
    (
    -- * Constructing a Request
    AndroidPublisherEditsTracksUpdate (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Updates a track.
data AndroidPublisherEditsTracksUpdate = AndroidPublisherEditsTracksUpdate
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Multipart request metadata.
    , meta :: Track
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | Identifier of the track.
    , track :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsTracksUpdate where
        type Core.Scopes AndroidPublisherEditsTracksUpdate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsTracksUpdate = AndroidPublisherService
        type Core.Response AndroidPublisherEditsTracksUpdate = Track
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsTracksUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/tracks/",
                                Core.toPathBuilder track],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

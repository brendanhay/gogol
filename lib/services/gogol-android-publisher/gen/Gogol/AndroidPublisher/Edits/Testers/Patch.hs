-- |
-- Module      : Gogol.AndroidPublisher.Edits.Testers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.testers.patch@.
module Gogol.AndroidPublisher.Edits.Testers.Patch
    (
    -- * Constructing a Request
    AndroidPublisherEditsTestersPatch (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Patches testers.
data AndroidPublisherEditsTestersPatch = AndroidPublisherEditsTestersPatch
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Multipart request metadata.
    , meta :: Testers
      -- | Package name of the app.
    , packageName :: Core.Text
      -- | The track to update.
    , track :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsTestersPatch where
        type Core.Scopes AndroidPublisherEditsTestersPatch = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsTestersPatch = AndroidPublisherService
        type Core.Response AndroidPublisherEditsTestersPatch = Testers
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsTestersPatch{..}
          = serviceRequest{Core.method = "PATCH",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/testers/",
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

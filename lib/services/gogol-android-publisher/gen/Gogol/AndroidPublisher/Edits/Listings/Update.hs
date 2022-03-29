-- |
-- Module      : Gogol.AndroidPublisher.Edits.Listings.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.update@.
module Gogol.AndroidPublisher.Edits.Listings.Update
    (
    -- * Constructing a Request
    AndroidPublisherEditsListingsUpdate (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Creates or updates a localized store listing.
data AndroidPublisherEditsListingsUpdate = AndroidPublisherEditsListingsUpdate
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    , language :: Core.Text
      -- | Multipart request metadata.
    , meta :: Listing
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsListingsUpdate where
        type Core.Scopes AndroidPublisherEditsListingsUpdate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsListingsUpdate = AndroidPublisherService
        type Core.Response AndroidPublisherEditsListingsUpdate = Listing
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsListingsUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/listings/",
                                Core.toPathBuilder language],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

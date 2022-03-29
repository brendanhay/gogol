-- |
-- Module      : Gogol.AndroidPublisher.Edits.Listings.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.patch@.
module Gogol.AndroidPublisher.Edits.Listings.Patch
    (
    -- * Constructing a Request
    AndroidPublisherEditsListingsPatch (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Patches a localized store listing.
data AndroidPublisherEditsListingsPatch = AndroidPublisherEditsListingsPatch
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
instance Core.GoogleRequest AndroidPublisherEditsListingsPatch where
        type Core.Scopes AndroidPublisherEditsListingsPatch = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsListingsPatch = AndroidPublisherService
        type Core.Response AndroidPublisherEditsListingsPatch = Listing
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsListingsPatch{..}
          = serviceRequest{Core.method = "PATCH",
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

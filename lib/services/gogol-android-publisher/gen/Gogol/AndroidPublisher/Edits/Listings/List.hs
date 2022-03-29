-- |
-- Module      : Gogol.AndroidPublisher.Edits.Listings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.listings.list@.
module Gogol.AndroidPublisher.Edits.Listings.List
    (
    -- * Constructing a Request
    AndroidPublisherEditsListingsList (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists all localized store listings.
data AndroidPublisherEditsListingsList = AndroidPublisherEditsListingsList
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsListingsList where
        type Core.Scopes AndroidPublisherEditsListingsList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsListingsList = AndroidPublisherService
        type Core.Response AndroidPublisherEditsListingsList = ListingsListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsListingsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/listings"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

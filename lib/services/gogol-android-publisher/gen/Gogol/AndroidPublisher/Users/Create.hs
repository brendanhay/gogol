-- |
-- Module      : Gogol.AndroidPublisher.Users.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.create@.
module Gogol.AndroidPublisher.Users.Create
    (
    -- * Constructing a Request
    AndroidPublisherUsersCreate (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Grant access for a user to the given developer account.
data AndroidPublisherUsersCreate = AndroidPublisherUsersCreate
    {
      -- | Multipart request metadata.
      meta :: User
      -- | Required. The developer account to add the user to. Format: developers\/{developer}.
    , parent :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherUsersCreate where
        type Core.Scopes AndroidPublisherUsersCreate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherUsersCreate = AndroidPublisherService
        type Core.Response AndroidPublisherUsersCreate = User
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherUsersCreate{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder parent, "/users"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

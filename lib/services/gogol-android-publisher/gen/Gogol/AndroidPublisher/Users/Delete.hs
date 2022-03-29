-- |
-- Module      : Gogol.AndroidPublisher.Users.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.delete@.
module Gogol.AndroidPublisher.Users.Delete
    (
    -- * Constructing a Request
    AndroidPublisherUsersDelete (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Removes all access for the user to the given developer account.
newtype AndroidPublisherUsersDelete = AndroidPublisherUsersDelete
    {
      -- | Required. The name of the user to delete. Format: developers\/{developer}\/users\/{email}.
      name :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherUsersDelete where
        type Core.Scopes AndroidPublisherUsersDelete = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherUsersDelete = AndroidPublisherService
        type Core.Response AndroidPublisherUsersDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherUsersDelete{..}
          = serviceRequest{Core.method = "DELETE", Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder name],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

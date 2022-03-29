-- |
-- Module      : Gogol.AndroidPublisher.Grants.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.grants.delete@.
module Gogol.AndroidPublisher.Grants.Delete
    (
    -- * Constructing a Request
    AndroidPublisherGrantsDelete (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Removes all access for the user to the given package or developer account.
newtype AndroidPublisherGrantsDelete = AndroidPublisherGrantsDelete
    {
      -- | Required. The name of the grant to delete. Format: developers\/{developer}\/users\/{email}\/grants\/{package_name}.
      name :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherGrantsDelete where
        type Core.Scopes AndroidPublisherGrantsDelete = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherGrantsDelete = AndroidPublisherService
        type Core.Response AndroidPublisherGrantsDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherGrantsDelete{..}
          = serviceRequest{Core.method = "DELETE", Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder name],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

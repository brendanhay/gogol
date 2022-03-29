-- |
-- Module      : Gogol.AndroidPublisher.Grants.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.grants.create@.
module Gogol.AndroidPublisher.Grants.Create
    (
    -- * Constructing a Request
    AndroidPublisherGrantsCreate (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Grant access for a user to the given package.
data AndroidPublisherGrantsCreate = AndroidPublisherGrantsCreate
    {
      -- | Multipart request metadata.
      meta :: Grant
      -- | Required. The user which needs permission. Format: developers\/{developer}\/users\/{user}.
    , parent :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherGrantsCreate where
        type Core.Scopes AndroidPublisherGrantsCreate = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherGrantsCreate = AndroidPublisherService
        type Core.Response AndroidPublisherGrantsCreate = Grant
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherGrantsCreate{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/androidpublisher/v3/", Core.toPathBuilder parent, "/grants"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}

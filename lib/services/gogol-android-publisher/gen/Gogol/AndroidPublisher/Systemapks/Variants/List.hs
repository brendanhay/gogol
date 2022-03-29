-- |
-- Module      : Gogol.AndroidPublisher.Systemapks.Variants.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.systemapks.variants.list@.
module Gogol.AndroidPublisher.Systemapks.Variants.List
    (
    -- * Constructing a Request
    AndroidPublisherSystemapksVariantsList (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Returns the list of previously created system APK variants.
data AndroidPublisherSystemapksVariantsList = AndroidPublisherSystemapksVariantsList
    {
      -- | Package name of the app.
      packageName :: Core.Text
      -- | The version code of the App Bundle.
    , versionCode :: Core.Int64
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherSystemapksVariantsList where
        type Core.Scopes AndroidPublisherSystemapksVariantsList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherSystemapksVariantsList = AndroidPublisherService
        type Core.Response AndroidPublisherSystemapksVariantsList = SystemApksListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherSystemapksVariantsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/systemApks/", Core.toPathBuilder versionCode,
                                "/variants"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

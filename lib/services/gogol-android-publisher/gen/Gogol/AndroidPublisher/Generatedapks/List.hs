-- |
-- Module      : Gogol.AndroidPublisher.Generatedapks.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.generatedapks.list@.
module Gogol.AndroidPublisher.Generatedapks.List
    (
    -- * Constructing a Request
    AndroidPublisherGeneratedapksList (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Returns download metadata for all APKs that were generated from a given app bundle.
data AndroidPublisherGeneratedapksList = AndroidPublisherGeneratedapksList
    {
      -- | Package name of the app.
      packageName :: Core.Text
      -- | Version code of the app bundle.
    , versionCode :: Core.Int32
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherGeneratedapksList where
        type Core.Scopes AndroidPublisherGeneratedapksList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherGeneratedapksList = AndroidPublisherService
        type Core.Response AndroidPublisherGeneratedapksList = GeneratedApksListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherGeneratedapksList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/generatedApks/", Core.toPathBuilder versionCode],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

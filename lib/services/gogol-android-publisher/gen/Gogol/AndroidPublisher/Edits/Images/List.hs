-- |
-- Module      : Gogol.AndroidPublisher.Edits.Images.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.list@.
module Gogol.AndroidPublisher.Edits.Images.List
    (
    -- * Constructing a Request
    AndroidPublisherEditsImagesList (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Lists all images. The response may be empty.
data AndroidPublisherEditsImagesList = AndroidPublisherEditsImagesList
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Type of the Image. Providing an image type that refers to no images will return an empty response.
    , imageType :: EditsImagesListImageType
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). There must be a store listing for the specified language.
    , language :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsImagesList where
        type Core.Scopes AndroidPublisherEditsImagesList = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsImagesList = AndroidPublisherService
        type Core.Response AndroidPublisherEditsImagesList = ImagesListResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsImagesList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath
                               ["/androidpublisher/v3/applications/", Core.toPathBuilder packageName, "/edits/", Core.toPathBuilder editId, "/listings/",
                                Core.toPathBuilder language, "/", Core.toPathBuilder imageType],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv, ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                                  ("callback",) Core.. Core.toQueryParam Core.<$> callback, ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint), ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  Core.Just ("alt", "json")]}

-- |
-- Module      : Gogol.AndroidPublisher.Edits.Images.Deleteall
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.deleteall@.
module Gogol.AndroidPublisher.Edits.Images.Deleteall
    (
    -- * Constructing a Request
    AndroidPublisherEditsImagesDeleteall (..),
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidPublisher.Types


-- | Deletes all images for the specified language and image type. Returns an empty response if no images are found.
data AndroidPublisherEditsImagesDeleteall = AndroidPublisherEditsImagesDeleteall
    {
      -- | Identifier of the edit.
      editId :: Core.Text
      -- | Type of the Image. Providing an image type that refers to no images is a no-op.
    , imageType :: EditsImagesDeleteallImageType
      -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op.
    , language :: Core.Text
      -- | Package name of the app.
    , packageName :: Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)
instance Core.GoogleRequest AndroidPublisherEditsImagesDeleteall where
        type Core.Scopes AndroidPublisherEditsImagesDeleteall = '[Androidpublisher'FullControl]
        type Core.Config AndroidPublisherEditsImagesDeleteall = AndroidPublisherService
        type Core.Response AndroidPublisherEditsImagesDeleteall = ImagesDeleteAllResponse
        toRequest Core.Service{serviceRequest, serviceParams = AndroidPublisherParams{..}} AndroidPublisherEditsImagesDeleteall{..}
          = serviceRequest{Core.method = "DELETE",
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

-- |
-- Module      : Gogol.AndroidPublisher.Edits.Images.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.images.delete@.
module Gogol.AndroidPublisher.Edits.Images.Delete
  ( -- * Constructing a Request
    AndroidPublisherEditsImagesDelete (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Deletes the image (specified by id) from the edit.
data AndroidPublisherEditsImagesDelete = AndroidPublisherEditsImagesDelete
  { -- | Identifier of the edit.
    editId :: Core.Text,
    -- | Unique identifier an image within the set of images attached to this edit.
    imageId :: Core.Text,
    -- | Type of the Image.
    imageType :: EditsImagesDeleteImageType,
    -- | Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).
    language :: Core.Text,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsImagesDelete where
  type Core.Scopes AndroidPublisherEditsImagesDelete = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsImagesDelete = AndroidPublisherService
  type Core.Response AndroidPublisherEditsImagesDelete = ()
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsImagesDelete {..} =
    serviceRequest
      { Core.method = "DELETE",
        Core.path =
          Core.toRequestPath
            [ "/androidpublisher/v3/applications/",
              Core.toPathBuilder packageName,
              "/edits/",
              Core.toPathBuilder editId,
              "/listings/",
              Core.toPathBuilder language,
              "/",
              Core.toPathBuilder imageType,
              "/",
              Core.toPathBuilder imageId
            ],
        Core.queryString =
          Core.toRequestQuery $
            Core.catMaybes
              [ ("$.xgafv",) Core.. Core.toQueryParam Core.<$> xgafv,
                ("access_token",) Core.. Core.toQueryParam Core.<$> accessToken,
                ("callback",) Core.. Core.toQueryParam Core.<$> callback,
                ("fields",) Core.. Core.toQueryParam Core.<$> fields,
                ("key",) Core.. Core.toQueryParam Core.<$> key,
                ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                Core.Just ("alt", "json")
              ]
      }

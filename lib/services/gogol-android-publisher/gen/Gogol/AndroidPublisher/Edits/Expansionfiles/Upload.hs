-- |
-- Module      : Gogol.AndroidPublisher.Edits.Expansionfiles.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.upload@.
module Gogol.AndroidPublisher.Edits.Expansionfiles.Upload
  ( -- * Constructing a Request
    AndroidPublisherEditsExpansionfilesUpload (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Uploads a new expansion file and attaches to the specified APK.
data AndroidPublisherEditsExpansionfilesUpload = AndroidPublisherEditsExpansionfilesUpload
  { -- | The version code of the APK whose expansion file configuration is being read or modified.
    apkVersionCode :: Core.Int32,
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | The file type of the expansion file configuration which is being updated.
    expansionFileType :: EditsExpansionfilesUploadExpansionFileType,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsExpansionfilesUpload where
  type Core.Scopes AndroidPublisherEditsExpansionfilesUpload = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsExpansionfilesUpload = AndroidPublisherService
  type Core.Response AndroidPublisherEditsExpansionfilesUpload = ExpansionFilesUploadResponse
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsExpansionfilesUpload {..} =
    serviceRequest
      { Core.method = "POST",
        Core.path =
          Core.toRequestPath
            [ "/androidpublisher/v3/applications/",
              Core.toPathBuilder packageName,
              "/edits/",
              Core.toPathBuilder editId,
              "/apks/",
              Core.toPathBuilder apkVersionCode,
              "/expansionFiles/",
              Core.toPathBuilder expansionFileType
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

instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherEditsExpansionfilesUpload

instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherEditsExpansionfilesUpload

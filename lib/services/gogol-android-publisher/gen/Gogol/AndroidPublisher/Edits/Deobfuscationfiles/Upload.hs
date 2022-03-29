-- |
-- Module      : Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.deobfuscationfiles.upload@.
module Gogol.AndroidPublisher.Edits.Deobfuscationfiles.Upload
  ( -- * Constructing a Request
    AndroidPublisherEditsDeobfuscationfilesUpload (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Uploads a new deobfuscation file and attaches to the specified APK.
data AndroidPublisherEditsDeobfuscationfilesUpload = AndroidPublisherEditsDeobfuscationfilesUpload
  { -- | The version code of the APK whose Deobfuscation File is being uploaded.
    apkVersionCode :: Core.Int32,
    -- | The type of the deobfuscation file.
    deobfuscationFileType :: EditsDeobfuscationfilesUploadDeobfuscationFileType,
    -- | Unique identifier for this edit.
    editId :: Core.Text,
    -- | Unique identifier for the Android app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsDeobfuscationfilesUpload where
  type Core.Scopes AndroidPublisherEditsDeobfuscationfilesUpload = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsDeobfuscationfilesUpload = AndroidPublisherService
  type Core.Response AndroidPublisherEditsDeobfuscationfilesUpload = DeobfuscationFilesUploadResponse
  toRequest
    Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}}
    AndroidPublisherEditsDeobfuscationfilesUpload {..} =
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
                "/deobfuscationFiles/",
                Core.toPathBuilder deobfuscationFileType
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

instance Core.GoogleMultipartRequest "application/octet-stream" AndroidPublisherEditsDeobfuscationfilesUpload

instance Core.GoogleResumableRequest "application/octet-stream" AndroidPublisherEditsDeobfuscationfilesUpload

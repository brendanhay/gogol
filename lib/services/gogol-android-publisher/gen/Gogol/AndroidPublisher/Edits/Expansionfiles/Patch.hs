-- |
-- Module      : Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.patch@.
module Gogol.AndroidPublisher.Edits.Expansionfiles.Patch
  ( -- * Constructing a Request
    AndroidPublisherEditsExpansionfilesPatch (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Patches the APK\'s expansion file configuration to reference another APK\'s expansion file. To add a new expansion file use the Upload method.
data AndroidPublisherEditsExpansionfilesPatch = AndroidPublisherEditsExpansionfilesPatch
  { -- | The version code of the APK whose expansion file configuration is being read or modified.
    apkVersionCode :: Core.Int32,
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | The file type of the expansion file configuration which is being updated.
    expansionFileType :: EditsExpansionfilesPatchExpansionFileType,
    -- | Multipart request metadata.
    meta :: ExpansionFile,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsExpansionfilesPatch where
  type Core.Scopes AndroidPublisherEditsExpansionfilesPatch = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsExpansionfilesPatch = AndroidPublisherService
  type Core.Response AndroidPublisherEditsExpansionfilesPatch = ExpansionFile
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsExpansionfilesPatch {..} =
    serviceRequest
      { Core.method = "PATCH",
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
              ],
        Core.requestBody = Core.toRequestBodyJSON payload
      }

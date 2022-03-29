-- |
-- Module      : Gogol.AndroidPublisher.Edits.Expansionfiles.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.edits.expansionfiles.get@.
module Gogol.AndroidPublisher.Edits.Expansionfiles.Get
  ( -- * Constructing a Request
    AndroidPublisherEditsExpansionfilesGet (..),
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | Fetches the expansion file configuration for the specified APK.
data AndroidPublisherEditsExpansionfilesGet = AndroidPublisherEditsExpansionfilesGet
  { -- | The version code of the APK whose expansion file configuration is being read or modified.
    apkVersionCode :: Core.Int32,
    -- | Identifier of the edit.
    editId :: Core.Text,
    -- | The file type of the file configuration which is being read or modified.
    expansionFileType :: EditsExpansionfilesGetExpansionFileType,
    -- | Package name of the app.
    packageName :: Core.Text
  }
  deriving stock (Core.Eq, Core.Show, Core.Generic)

instance Core.GoogleRequest AndroidPublisherEditsExpansionfilesGet where
  type Core.Scopes AndroidPublisherEditsExpansionfilesGet = '[Androidpublisher'FullControl]
  type Core.Config AndroidPublisherEditsExpansionfilesGet = AndroidPublisherService
  type Core.Response AndroidPublisherEditsExpansionfilesGet = ExpansionFile
  toRequest Core.Service {serviceRequest, serviceParams = AndroidPublisherParams {..}} AndroidPublisherEditsExpansionfilesGet {..} =
    serviceRequest
      { Core.method = "GET",
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

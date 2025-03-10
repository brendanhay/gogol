{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Apps.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a user\'s installed apps. For more information, see <https://developers.google.com/drive/api/guides/user-info Return user info>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.apps.list@.
module Gogol.Drive.Apps.List
  ( -- * Resource
    DriveAppsListResource,

    -- ** Constructing a Request
    DriveAppsList (..),
    newDriveAppsList,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.apps.list@ method which the
-- 'DriveAppsList' request conforms to.
type DriveAppsListResource =
  "drive"
    Core.:> "v3"
    Core.:> "apps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "appFilterExtensions" Core.Text
    Core.:> Core.QueryParam "appFilterMimeTypes" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "languageCode" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AppList

-- | Lists a user\'s installed apps. For more information, see <https://developers.google.com/drive/api/guides/user-info Return user info>.
--
-- /See:/ 'newDriveAppsList' smart constructor.
data DriveAppsList = DriveAppsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | A comma-separated list of file extensions to limit returned results. All results within the given app query scope which can open any of the given file extensions are included in the response. If @appFilterMimeTypes@ are provided as well, the result is a union of the two resulting app lists.
    appFilterExtensions :: Core.Text,
    -- | A comma-separated list of file extensions to limit returned results. All results within the given app query scope which can open any of the given MIME types will be included in the response. If @appFilterExtensions@ are provided as well, the result is a union of the two resulting app lists.
    appFilterMimeTypes :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | A language or locale code, as defined by BCP 47, with some extensions from Unicode\'s LDML format (http:\/\/www.unicode.org\/reports\/tr35\/).
    languageCode :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveAppsList' with the minimum fields required to make a request.
newDriveAppsList ::
  DriveAppsList
newDriveAppsList =
  DriveAppsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      appFilterExtensions = "",
      appFilterMimeTypes = "",
      callback = Core.Nothing,
      languageCode = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveAppsList where
  type Rs DriveAppsList = AppList
  type Scopes DriveAppsList = '[Drive'Apps'Readonly]
  requestClient DriveAppsList {..} =
    go
      xgafv
      accessToken
      (Core.Just appFilterExtensions)
      (Core.Just appFilterMimeTypes)
      callback
      languageCode
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveAppsListResource)
          Core.mempty

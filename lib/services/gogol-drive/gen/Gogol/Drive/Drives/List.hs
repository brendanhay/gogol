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
-- Module      : Gogol.Drive.Drives.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s shared drives. This method accepts the @q@ parameter, which is a search query combining one or more search terms. For more information, see the </drive/api/guides/search-shareddrives Search for shared drives> guide.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.drives.list@.
module Gogol.Drive.Drives.List
  ( -- * Resource
    DriveDrivesListResource,

    -- ** Constructing a Request
    DriveDrivesList (..),
    newDriveDrivesList,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.drives.list@ method which the
-- 'DriveDrivesList' request conforms to.
type DriveDrivesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DriveList

-- | Lists the user\'s shared drives. This method accepts the @q@ parameter, which is a search query combining one or more search terms. For more information, see the </drive/api/guides/search-shareddrives Search for shared drives> guide.
--
-- /See:/ 'newDriveDrivesList' smart constructor.
data DriveDrivesList = DriveDrivesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of shared drives to return per page.
    pageSize :: Core.Int32,
    -- | Page token for shared drives.
    pageToken :: (Core.Maybe Core.Text),
    -- | Query string for searching shared drives.
    q :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesList' with the minimum fields required to make a request.
newDriveDrivesList ::
  DriveDrivesList
newDriveDrivesList =
  DriveDrivesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = 10,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveDrivesList where
  type Rs DriveDrivesList = DriveList
  type Scopes DriveDrivesList = '[Drive'FullControl, Drive'Readonly]
  requestClient DriveDrivesList {..} =
    go
      xgafv
      accessToken
      callback
      (Core.Just pageSize)
      pageToken
      q
      uploadType
      uploadProtocol
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesListResource)
          Core.mempty

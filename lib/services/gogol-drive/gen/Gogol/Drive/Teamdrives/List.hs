{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Drive.Teamdrives.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated: Use @drives.list@ instead.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.teamdrives.list@.
module Gogol.Drive.Teamdrives.List
  ( -- * Resource
    DriveTeamdrivesListResource,

    -- ** Constructing a Request
    DriveTeamdrivesList (..),
    newDriveTeamdrivesList,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.teamdrives.list@ method which the
-- 'DriveTeamdrivesList' request conforms to.
type DriveTeamdrivesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
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
    Core.:> Core.Get '[Core.JSON] TeamDriveList

-- | Deprecated: Use @drives.list@ instead.
--
-- /See:/ 'newDriveTeamdrivesList' smart constructor.
data DriveTeamdrivesList = DriveTeamdrivesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Maximum number of Team Drives to return.
    pageSize :: Core.Int32,
    -- | Page token for Team Drives.
    pageToken :: (Core.Maybe Core.Text),
    -- | Query string for searching Team Drives.
    q :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requester is an administrator are returned.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesList' with the minimum fields required to make a request.
newDriveTeamdrivesList ::
  DriveTeamdrivesList
newDriveTeamdrivesList =
  DriveTeamdrivesList
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

instance Core.GoogleRequest DriveTeamdrivesList where
  type Rs DriveTeamdrivesList = TeamDriveList
  type
    Scopes DriveTeamdrivesList =
      '[Drive'FullControl, Drive'Readonly]
  requestClient DriveTeamdrivesList {..} =
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
          (Core.Proxy :: Core.Proxy DriveTeamdrivesListResource)
          Core.mempty

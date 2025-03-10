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
-- Module      : Gogol.Drive.Teamdrives.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated: Use @drives.update@ instead.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.teamdrives.update@.
module Gogol.Drive.Teamdrives.Update
  ( -- * Resource
    DriveTeamdrivesUpdateResource,

    -- ** Constructing a Request
    DriveTeamdrivesUpdate (..),
    newDriveTeamdrivesUpdate,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.teamdrives.update@ method which the
-- 'DriveTeamdrivesUpdate' request conforms to.
type DriveTeamdrivesUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
    Core.:> Core.Capture "teamDriveId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TeamDrive
    Core.:> Core.Patch '[Core.JSON] TeamDrive

-- | Deprecated: Use @drives.update@ instead.
--
-- /See:/ 'newDriveTeamdrivesUpdate' smart constructor.
data DriveTeamdrivesUpdate = DriveTeamdrivesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TeamDrive,
    -- | The ID of the Team Drive
    teamDriveId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesUpdate' with the minimum fields required to make a request.
newDriveTeamdrivesUpdate ::
  -- |  Multipart request metadata. See 'payload'.
  TeamDrive ->
  -- |  The ID of the Team Drive See 'teamDriveId'.
  Core.Text ->
  DriveTeamdrivesUpdate
newDriveTeamdrivesUpdate payload teamDriveId =
  DriveTeamdrivesUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      teamDriveId = teamDriveId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveTeamdrivesUpdate where
  type Rs DriveTeamdrivesUpdate = TeamDrive
  type Scopes DriveTeamdrivesUpdate = '[Drive'FullControl]
  requestClient DriveTeamdrivesUpdate {..} =
    go
      teamDriveId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveTeamdrivesUpdateResource)
          Core.mempty

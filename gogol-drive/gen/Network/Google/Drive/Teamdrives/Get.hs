{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Drive.Teamdrives.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.get instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.get@.
module Network.Google.Drive.Teamdrives.Get
  ( -- * Resource
    DriveTeamdrivesGetResource,

    -- ** Constructing a Request
    newDriveTeamdrivesGet,
    DriveTeamdrivesGet,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.teamdrives.get@ method which the
-- 'DriveTeamdrivesGet' request conforms to.
type DriveTeamdrivesGetResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
    Core.:> Core.Capture "teamDriveId" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TeamDrive

-- | Deprecated use drives.get instead.
--
-- /See:/ 'newDriveTeamdrivesGet' smart constructor.
data DriveTeamdrivesGet = DriveTeamdrivesGet
  { -- | The ID of the Team Drive
    teamDriveId :: Core.Text,
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesGet' with the minimum fields required to make a request.
newDriveTeamdrivesGet ::
  -- |  The ID of the Team Drive See 'teamDriveId'.
  Core.Text ->
  DriveTeamdrivesGet
newDriveTeamdrivesGet teamDriveId =
  DriveTeamdrivesGet
    { teamDriveId = teamDriveId,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveTeamdrivesGet where
  type Rs DriveTeamdrivesGet = TeamDrive
  type
    Scopes DriveTeamdrivesGet =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveTeamdrivesGet {..} =
    go
      teamDriveId
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveTeamdrivesGetResource)
          Core.mempty

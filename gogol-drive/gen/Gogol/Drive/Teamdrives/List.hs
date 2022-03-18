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
-- Module      : Gogol.Drive.Teamdrives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.list instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.list@.
module Gogol.Drive.Teamdrives.List
  ( -- * Resource
    DriveTeamdrivesListResource,

    -- ** Constructing a Request
    newDriveTeamdrivesList,
    DriveTeamdrivesList,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.teamdrives.list@ method which the
-- 'DriveTeamdrivesList' request conforms to.
type DriveTeamdrivesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TeamDriveList

-- | Deprecated use drives.list instead.
--
-- /See:/ 'newDriveTeamdrivesList' smart constructor.
data DriveTeamdrivesList = DriveTeamdrivesList
  { -- | Maximum number of Team Drives to return.
    pageSize :: Core.Int32,
    -- | Page token for Team Drives.
    pageToken :: (Core.Maybe Core.Text),
    -- | Query string for searching Team Drives.
    q :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requester is an administrator are returned.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesList' with the minimum fields required to make a request.
newDriveTeamdrivesList ::
  DriveTeamdrivesList
newDriveTeamdrivesList =
  DriveTeamdrivesList
    { pageSize = 10,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveTeamdrivesList where
  type Rs DriveTeamdrivesList = TeamDriveList
  type
    Scopes DriveTeamdrivesList =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveTeamdrivesList {..} =
    go
      (Core.Just pageSize)
      pageToken
      q
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveTeamdrivesListResource
          )
          Core.mempty

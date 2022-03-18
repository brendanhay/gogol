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
-- Module      : Network.Google.Drive.Teamdrives.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.delete instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.delete@.
module Network.Google.Drive.Teamdrives.Delete
  ( -- * Resource
    DriveTeamdrivesDeleteResource,

    -- ** Constructing a Request
    newDriveTeamdrivesDelete,
    DriveTeamdrivesDelete,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.teamdrives.delete@ method which the
-- 'DriveTeamdrivesDelete' request conforms to.
type DriveTeamdrivesDeleteResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
    Core.:> Core.Capture "teamDriveId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deprecated use drives.delete instead.
--
-- /See:/ 'newDriveTeamdrivesDelete' smart constructor.
newtype DriveTeamdrivesDelete = DriveTeamdrivesDelete
  { -- | The ID of the Team Drive
    teamDriveId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesDelete' with the minimum fields required to make a request.
newDriveTeamdrivesDelete ::
  -- |  The ID of the Team Drive See 'teamDriveId'.
  Core.Text ->
  DriveTeamdrivesDelete
newDriveTeamdrivesDelete teamDriveId =
  DriveTeamdrivesDelete {teamDriveId = teamDriveId}

instance Core.GoogleRequest DriveTeamdrivesDelete where
  type Rs DriveTeamdrivesDelete = ()
  type
    Scopes DriveTeamdrivesDelete =
      '["https://www.googleapis.com/auth/drive"]
  requestClient DriveTeamdrivesDelete {..} =
    go
      teamDriveId
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveTeamdrivesDeleteResource
          )
          Core.mempty

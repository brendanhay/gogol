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
-- Module      : Network.Google.Drive.Changes.GetStartPageToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the starting pageToken for listing future changes.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.getStartPageToken@.
module Network.Google.Drive.Changes.GetStartPageToken
  ( -- * Resource
    DriveChangesGetStartPageTokenResource,

    -- ** Constructing a Request
    newDriveChangesGetStartPageToken,
    DriveChangesGetStartPageToken,
  )
where

import Network.Google.Drive.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @drive.changes.getStartPageToken@ method which the
-- 'DriveChangesGetStartPageToken' request conforms to.
type DriveChangesGetStartPageTokenResource =
  "drive"
    Core.:> "v3"
    Core.:> "changes"
    Core.:> "startPageToken"
    Core.:> Core.QueryParam "driveId" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "teamDriveId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] StartPageToken

-- | Gets the starting pageToken for listing future changes.
--
-- /See:/ 'newDriveChangesGetStartPageToken' smart constructor.
data DriveChangesGetStartPageToken = DriveChangesGetStartPageToken
  { -- | The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive is returned.
    driveId :: (Core.Maybe Core.Text),
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
    -- | Deprecated use driveId instead.
    teamDriveId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveChangesGetStartPageToken' with the minimum fields required to make a request.
newDriveChangesGetStartPageToken ::
  DriveChangesGetStartPageToken
newDriveChangesGetStartPageToken =
  DriveChangesGetStartPageToken
    { driveId = Core.Nothing,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      teamDriveId = Core.Nothing
    }

instance
  Core.GoogleRequest
    DriveChangesGetStartPageToken
  where
  type
    Rs DriveChangesGetStartPageToken =
      StartPageToken
  type
    Scopes DriveChangesGetStartPageToken =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.appdata",
         "https://www.googleapis.com/auth/drive.file",
         "https://www.googleapis.com/auth/drive.metadata",
         "https://www.googleapis.com/auth/drive.metadata.readonly",
         "https://www.googleapis.com/auth/drive.photos.readonly",
         "https://www.googleapis.com/auth/drive.readonly"
       ]
  requestClient DriveChangesGetStartPageToken {..} =
    go
      driveId
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      teamDriveId
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveChangesGetStartPageTokenResource
          )
          Core.mempty

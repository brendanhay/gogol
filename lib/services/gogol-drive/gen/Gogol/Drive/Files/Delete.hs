{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Files.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a shared drive the user must be an organizer on the parent. If the target is a folder, all descendants owned by the user are also deleted.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.delete@.
module Gogol.Drive.Files.Delete
    (
    -- * Resource
      DriveFilesDeleteResource

    -- ** Constructing a Request
    , newDriveFilesDelete
    , DriveFilesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.delete@ method which the
-- 'DriveFilesDelete' request conforms to.
type DriveFilesDeleteResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             Core.QueryParam "enforceSingleParent" Core.Bool
               Core.:>
               Core.QueryParam "supportsAllDrives" Core.Bool Core.:>
                 Core.QueryParam "supportsTeamDrives" Core.Bool
                   Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Delete '[Core.JSON] ()

-- | Permanently deletes a file owned by the user without moving it to the trash. If the file belongs to a shared drive the user must be an organizer on the parent. If the target is a folder, all descendants owned by the user are also deleted.
--
-- /See:/ 'newDriveFilesDelete' smart constructor.
data DriveFilesDelete = DriveFilesDelete
    {
      -- | Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner\'s root.
      enforceSingleParent :: Core.Bool
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated use supportsAllDrives instead.
    , supportsTeamDrives :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesDelete' with the minimum fields required to make a request.
newDriveFilesDelete 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> DriveFilesDelete
newDriveFilesDelete fileId =
  DriveFilesDelete
    { enforceSingleParent = Core.False
    , fileId = fileId
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    }

instance Core.GoogleRequest DriveFilesDelete where
        type Rs DriveFilesDelete = ()
        type Scopes DriveFilesDelete =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DriveFilesDelete{..}
          = go fileId (Core.Just enforceSingleParent)
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveFilesDeleteResource)
                      Core.mempty


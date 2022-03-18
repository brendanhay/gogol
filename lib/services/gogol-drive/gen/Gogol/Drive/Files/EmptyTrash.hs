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
-- Module      : Gogol.Drive.Files.EmptyTrash
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes all of the user\'s trashed files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.emptyTrash@.
module Gogol.Drive.Files.EmptyTrash
  ( -- * Resource
    DriveFilesEmptyTrashResource,

    -- ** Constructing a Request
    newDriveFilesEmptyTrash,
    DriveFilesEmptyTrash,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.files.emptyTrash@ method which the
-- 'DriveFilesEmptyTrash' request conforms to.
type DriveFilesEmptyTrashResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> "trash"
    Core.:> Core.QueryParam "enforceSingleParent" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes all of the user\'s trashed files.
--
-- /See:/ 'newDriveFilesEmptyTrash' smart constructor.
newtype DriveFilesEmptyTrash = DriveFilesEmptyTrash
  { -- | Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner\'s root.
    enforceSingleParent :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesEmptyTrash' with the minimum fields required to make a request.
newDriveFilesEmptyTrash ::
  DriveFilesEmptyTrash
newDriveFilesEmptyTrash =
  DriveFilesEmptyTrash {enforceSingleParent = Core.False}

instance Core.GoogleRequest DriveFilesEmptyTrash where
  type Rs DriveFilesEmptyTrash = ()
  type
    Scopes DriveFilesEmptyTrash =
      '["https://www.googleapis.com/auth/drive"]
  requestClient DriveFilesEmptyTrash {..} =
    go
      (Core.Just enforceSingleParent)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveFilesEmptyTrashResource
          )
          Core.mempty

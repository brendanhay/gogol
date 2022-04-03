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
-- Module      : Gogol.Drive.Permissions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a permission.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.delete@.
module Gogol.Drive.Permissions.Delete
  ( -- * Resource
    DrivePermissionsDeleteResource,

    -- ** Constructing a Request
    DrivePermissionsDelete (..),
    newDrivePermissionsDelete,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.permissions.delete@ method which the
-- 'DrivePermissionsDelete' request conforms to.
type DrivePermissionsDeleteResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "permissions"
    Core.:> Core.Capture "permissionId" Core.Text
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Deletes a permission.
--
-- /See:/ 'newDrivePermissionsDelete' smart constructor.
data DrivePermissionsDelete = DrivePermissionsDelete
  { -- | The ID of the file or shared drive.
    fileId :: Core.Text,
    -- | The ID of the permission.
    permissionId :: Core.Text,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DrivePermissionsDelete' with the minimum fields required to make a request.
newDrivePermissionsDelete ::
  -- |  The ID of the file or shared drive. See 'fileId'.
  Core.Text ->
  -- |  The ID of the permission. See 'permissionId'.
  Core.Text ->
  DrivePermissionsDelete
newDrivePermissionsDelete fileId permissionId =
  DrivePermissionsDelete
    { fileId = fileId,
      permissionId = permissionId,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DrivePermissionsDelete where
  type Rs DrivePermissionsDelete = ()
  type
    Scopes DrivePermissionsDelete =
      '[Drive'FullControl, Drive'File]
  requestClient DrivePermissionsDelete {..} =
    go
      fileId
      permissionId
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DrivePermissionsDeleteResource
          )
          Core.mempty

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
-- Module      : Gogol.Drive.Permissions.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a permission with patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.update@.
module Gogol.Drive.Permissions.Update
  ( -- * Resource
    DrivePermissionsUpdateResource,

    -- ** Constructing a Request
    newDrivePermissionsUpdate,
    DrivePermissionsUpdate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.permissions.update@ method which the
-- 'DrivePermissionsUpdate' request conforms to.
type DrivePermissionsUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "permissions"
    Core.:> Core.Capture "permissionId" Core.Text
    Core.:> Core.QueryParam "removeExpiration" Core.Bool
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "transferOwnership" Core.Bool
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Permission
    Core.:> Core.Patch '[Core.JSON] Permission

-- | Updates a permission with patch semantics.
--
-- /See:/ 'newDrivePermissionsUpdate' smart constructor.
data DrivePermissionsUpdate = DrivePermissionsUpdate
  { -- | The ID of the file or shared drive.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Permission,
    -- | The ID of the permission.
    permissionId :: Core.Text,
    -- | Whether to remove the expiration date.
    removeExpiration :: Core.Bool,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated use supportsAllDrives instead.
    supportsTeamDrives :: Core.Bool,
    -- | Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. File owners can only transfer ownership of files existing on My Drive. Files existing in a shared drive are owned by the organization that owns that shared drive. Ownership transfers are not supported for files and folders in shared drives. Organizers of a shared drive can move items from that shared drive into their My Drive which transfers the ownership to them.
    transferOwnership :: Core.Bool,
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DrivePermissionsUpdate' with the minimum fields required to make a request.
newDrivePermissionsUpdate ::
  -- |  The ID of the file or shared drive. See 'fileId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Permission ->
  -- |  The ID of the permission. See 'permissionId'.
  Core.Text ->
  DrivePermissionsUpdate
newDrivePermissionsUpdate fileId payload permissionId =
  DrivePermissionsUpdate
    { fileId = fileId,
      payload = payload,
      permissionId = permissionId,
      removeExpiration = Core.False,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      transferOwnership = Core.False,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DrivePermissionsUpdate where
  type Rs DrivePermissionsUpdate = Permission
  type
    Scopes DrivePermissionsUpdate =
      '[ "https://www.googleapis.com/auth/drive",
         "https://www.googleapis.com/auth/drive.file"
       ]
  requestClient DrivePermissionsUpdate {..} =
    go
      fileId
      permissionId
      (Core.Just removeExpiration)
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just transferOwnership)
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DrivePermissionsUpdateResource
          )
          Core.mempty

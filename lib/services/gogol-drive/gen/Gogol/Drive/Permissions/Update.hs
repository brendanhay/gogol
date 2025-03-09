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
-- Module      : Gogol.Drive.Permissions.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a permission with patch semantics. __Warning:__ Concurrent permissions operations on the same file are not supported; only the last update is applied.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.permissions.update@.
module Gogol.Drive.Permissions.Update
  ( -- * Resource
    DrivePermissionsUpdateResource,

    -- ** Constructing a Request
    DrivePermissionsUpdate (..),
    newDrivePermissionsUpdate,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.permissions.update@ method which the
-- 'DrivePermissionsUpdate' request conforms to.
type DrivePermissionsUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "files"
    Core.:> Core.Capture "fileId" Core.Text
    Core.:> "permissions"
    Core.:> Core.Capture "permissionId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "enforceExpansiveAccess" Core.Bool
    Core.:> Core.QueryParam "removeExpiration" Core.Bool
    Core.:> Core.QueryParam "supportsAllDrives" Core.Bool
    Core.:> Core.QueryParam "supportsTeamDrives" Core.Bool
    Core.:> Core.QueryParam "transferOwnership" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Permission
    Core.:> Core.Patch '[Core.JSON] Permission

-- | Updates a permission with patch semantics. __Warning:__ Concurrent permissions operations on the same file are not supported; only the last update is applied.
--
-- /See:/ 'newDrivePermissionsUpdate' smart constructor.
data DrivePermissionsUpdate = DrivePermissionsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether the request should enforce expansive access rules.
    enforceExpansiveAccess :: Core.Bool,
    -- | The ID of the file or shared drive.
    fileId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Permission,
    -- | The ID of the permission.
    permissionId :: Core.Text,
    -- | Whether to remove the expiration date.
    removeExpiration :: Core.Bool,
    -- | Whether the requesting application supports both My Drives and shared drives.
    supportsAllDrives :: Core.Bool,
    -- | Deprecated: Use @supportsAllDrives@ instead.
    supportsTeamDrives :: Core.Bool,
    -- | Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect.
    transferOwnership :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
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
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      enforceExpansiveAccess = Core.False,
      fileId = fileId,
      payload = payload,
      permissionId = permissionId,
      removeExpiration = Core.False,
      supportsAllDrives = Core.False,
      supportsTeamDrives = Core.False,
      transferOwnership = Core.False,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DrivePermissionsUpdate where
  type Rs DrivePermissionsUpdate = Permission
  type
    Scopes DrivePermissionsUpdate =
      '[Drive'FullControl, Drive'File]
  requestClient DrivePermissionsUpdate {..} =
    go
      fileId
      permissionId
      xgafv
      accessToken
      callback
      (Core.Just enforceExpansiveAccess)
      (Core.Just removeExpiration)
      (Core.Just supportsAllDrives)
      (Core.Just supportsTeamDrives)
      (Core.Just transferOwnership)
      uploadType
      uploadProtocol
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DrivePermissionsUpdateResource)
          Core.mempty

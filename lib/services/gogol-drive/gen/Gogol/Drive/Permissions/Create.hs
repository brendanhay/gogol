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
-- Module      : Gogol.Drive.Permissions.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a permission for a file or shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.create@.
module Gogol.Drive.Permissions.Create
    (
    -- * Resource
      DrivePermissionsCreateResource

    -- ** Constructing a Request
    , newDrivePermissionsCreate
    , DrivePermissionsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.permissions.create@ method which the
-- 'DrivePermissionsCreate' request conforms to.
type DrivePermissionsCreateResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "permissions" Core.:>
               Core.QueryParam "emailMessage" Core.Text Core.:>
                 Core.QueryParam "enforceSingleParent" Core.Bool
                   Core.:>
                   Core.QueryParam "moveToNewOwnersRoot" Core.Bool
                     Core.:>
                     Core.QueryParam "sendNotificationEmail" Core.Bool
                       Core.:>
                       Core.QueryParam "supportsAllDrives" Core.Bool Core.:>
                         Core.QueryParam "supportsTeamDrives" Core.Bool
                           Core.:>
                           Core.QueryParam "transferOwnership" Core.Bool Core.:>
                             Core.QueryParam "useDomainAdminAccess" Core.Bool
                               Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.ReqBody '[Core.JSON] Permission Core.:>
                                   Core.Post '[Core.JSON] Permission

-- | Creates a permission for a file or shared drive.
--
-- /See:/ 'newDrivePermissionsCreate' smart constructor.
data DrivePermissionsCreate = DrivePermissionsCreate
    {
      -- | A plain text custom message to include in the notification email.
      emailMessage :: (Core.Maybe Core.Text)
      -- | Deprecated. See moveToNewOwnersRoot for details.
    , enforceSingleParent :: Core.Bool
      -- | The ID of the file or shared drive.
    , fileId :: Core.Text
      -- | This parameter will only take effect if the item is not in a shared drive and the request is attempting to transfer the ownership of the item. If set to true, the item will be moved to the new owner\'s My Drive root folder and all prior parents removed. If set to false, parents are not changed.
    , moveToNewOwnersRoot :: Core.Bool
      -- | Multipart request metadata.
    , payload :: Permission
      -- | Whether to send a notification email when sharing to users or groups. This defaults to true for users and groups, and is not allowed for other requests. It must not be disabled for ownership transfers.
    , sendNotificationEmail :: (Core.Maybe Core.Bool)
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated use supportsAllDrives instead.
    , supportsTeamDrives :: Core.Bool
      -- | Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. File owners can only transfer ownership of files existing on My Drive. Files existing in a shared drive are owned by the organization that owns that shared drive. Ownership transfers are not supported for files and folders in shared drives. Organizers of a shared drive can move items from that shared drive into their My Drive which transfers the ownership to them.
    , transferOwnership :: Core.Bool
      -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
    , useDomainAdminAccess :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DrivePermissionsCreate' with the minimum fields required to make a request.
newDrivePermissionsCreate 
    ::  Core.Text
       -- ^  The ID of the file or shared drive. See 'fileId'.
    -> Permission
       -- ^  Multipart request metadata. See 'payload'.
    -> DrivePermissionsCreate
newDrivePermissionsCreate fileId payload =
  DrivePermissionsCreate
    { emailMessage = Core.Nothing
    , enforceSingleParent = Core.False
    , fileId = fileId
    , moveToNewOwnersRoot = Core.False
    , payload = payload
    , sendNotificationEmail = Core.Nothing
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , transferOwnership = Core.False
    , useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DrivePermissionsCreate
         where
        type Rs DrivePermissionsCreate = Permission
        type Scopes DrivePermissionsCreate =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file"]
        requestClient DrivePermissionsCreate{..}
          = go fileId emailMessage
              (Core.Just enforceSingleParent)
              (Core.Just moveToNewOwnersRoot)
              sendNotificationEmail
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              (Core.Just transferOwnership)
              (Core.Just useDomainAdminAccess)
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DrivePermissionsCreateResource)
                      Core.mempty


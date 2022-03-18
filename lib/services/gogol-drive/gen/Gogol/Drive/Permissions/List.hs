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
-- Module      : Gogol.Drive.Permissions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a file\'s or shared drive\'s permissions.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.permissions.list@.
module Gogol.Drive.Permissions.List
    (
    -- * Resource
      DrivePermissionsListResource

    -- ** Constructing a Request
    , newDrivePermissionsList
    , DrivePermissionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.permissions.list@ method which the
-- 'DrivePermissionsList' request conforms to.
type DrivePermissionsListResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "permissions" Core.:>
               Core.QueryParam "includePermissionsForView" Core.Text
                 Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "supportsAllDrives" Core.Bool Core.:>
                       Core.QueryParam "supportsTeamDrives" Core.Bool
                         Core.:>
                         Core.QueryParam "useDomainAdminAccess" Core.Bool
                           Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] PermissionList

-- | Lists a file\'s or shared drive\'s permissions.
--
-- /See:/ 'newDrivePermissionsList' smart constructor.
data DrivePermissionsList = DrivePermissionsList
    {
      -- | The ID of the file or shared drive.
      fileId :: Core.Text
      -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    , includePermissionsForView :: (Core.Maybe Core.Text)
      -- | The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results will be returned. When not set for files that are not in a shared drive, the entire list will be returned.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The token for continuing a previous list request on the next page. This should be set to the value of \'nextPageToken\' from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated use supportsAllDrives instead.
    , supportsTeamDrives :: Core.Bool
      -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.
    , useDomainAdminAccess :: Core.Bool
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DrivePermissionsList' with the minimum fields required to make a request.
newDrivePermissionsList 
    ::  Core.Text
       -- ^  The ID of the file or shared drive. See 'fileId'.
    -> DrivePermissionsList
newDrivePermissionsList fileId =
  DrivePermissionsList
    { fileId = fileId
    , includePermissionsForView = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DrivePermissionsList
         where
        type Rs DrivePermissionsList = PermissionList
        type Scopes DrivePermissionsList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DrivePermissionsList{..}
          = go fileId includePermissionsForView pageSize
              pageToken
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              (Core.Just useDomainAdminAccess)
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DrivePermissionsListResource)
                      Core.mempty


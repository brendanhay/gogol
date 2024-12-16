{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Files.Watch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribes to changes to a file.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.files.watch@.
module Gogol.Drive.Files.Watch
    (
    -- * Resource
      DriveFilesWatchResource

    -- ** Constructing a Request
    , DriveFilesWatch (..)
    , newDriveFilesWatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.files.watch@ method which the
-- 'DriveFilesWatch' request conforms to.
type DriveFilesWatchResource =
     "drive" Core.:>
       "v3" Core.:>
         "files" Core.:>
           Core.Capture "fileId" Core.Text Core.:>
             "watch" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "acknowledgeAbuse" Core.Bool Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "includeLabels" Core.Text Core.:>
                         Core.QueryParam "includePermissionsForView" Core.Text
                           Core.:>
                           Core.QueryParam "supportsAllDrives" Core.Bool Core.:>
                             Core.QueryParam "supportsTeamDrives" Core.Bool
                               Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.ReqBody '[Core.JSON] Channel Core.:>
                                       Core.Post '[Core.JSON] Channel

-- | Subscribes to changes to a file.
--
-- /See:/ 'newDriveFilesWatch' smart constructor.
data DriveFilesWatch = DriveFilesWatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when the @alt@ parameter is set to @media@ and the user is the owner of the file or an organizer of the shared drive in which the file resides.
    , acknowledgeAbuse :: Core.Bool
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the file.
    , fileId :: Core.Text
      -- | A comma-separated list of IDs of labels to include in the @labelInfo@ part of the response.
    , includeLabels :: (Core.Maybe Core.Text)
      -- | Specifies which additional view\'s permissions to include in the response. Only \'published\' is supported.
    , includePermissionsForView :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: Channel
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated: Use @supportsAllDrives@ instead.
    , supportsTeamDrives :: Core.Bool
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveFilesWatch' with the minimum fields required to make a request.
newDriveFilesWatch 
    ::  Core.Text
       -- ^  The ID of the file. See 'fileId'.
    -> Channel
       -- ^  Multipart request metadata. See 'payload'.
    -> DriveFilesWatch
newDriveFilesWatch fileId payload =
  DriveFilesWatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , acknowledgeAbuse = Core.False
    , callback = Core.Nothing
    , fileId = fileId
    , includeLabels = Core.Nothing
    , includePermissionsForView = Core.Nothing
    , payload = payload
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveFilesWatch where
        type Rs DriveFilesWatch = Channel
        type Scopes DriveFilesWatch =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Meet'Readonly, Drive'Metadata,
               Drive'Metadata'Readonly, Drive'Photos'Readonly,
               Drive'Readonly]
        requestClient DriveFilesWatch{..}
          = go fileId xgafv accessToken
              (Core.Just acknowledgeAbuse)
              callback
              includeLabels
              includePermissionsForView
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy DriveFilesWatchResource)
                      Core.mempty


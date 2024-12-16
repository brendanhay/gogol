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
-- Module      : Gogol.Drive.Changes.GetStartPageToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the starting pageToken for listing future changes. For more information, see <https://developers.google.com/drive/api/guides/manage-changes Retrieve changes>.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.changes.getStartPageToken@.
module Gogol.Drive.Changes.GetStartPageToken
    (
    -- * Resource
      DriveChangesGetStartPageTokenResource

    -- ** Constructing a Request
    , DriveChangesGetStartPageToken (..)
    , newDriveChangesGetStartPageToken
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.changes.getStartPageToken@ method which the
-- 'DriveChangesGetStartPageToken' request conforms to.
type DriveChangesGetStartPageTokenResource =
     "drive" Core.:>
       "v3" Core.:>
         "changes" Core.:>
           "startPageToken" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "driveId" Core.Text Core.:>
                     Core.QueryParam "supportsAllDrives" Core.Bool Core.:>
                       Core.QueryParam "supportsTeamDrives" Core.Bool
                         Core.:>
                         Core.QueryParam "teamDriveId" Core.Text Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "alt" Core.AltJSON Core.:>
                                 Core.Get '[Core.JSON] StartPageToken

-- | Gets the starting pageToken for listing future changes. For more information, see <https://developers.google.com/drive/api/guides/manage-changes Retrieve changes>.
--
-- /See:/ 'newDriveChangesGetStartPageToken' smart constructor.
data DriveChangesGetStartPageToken = DriveChangesGetStartPageToken
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive will be returned.
    , driveId :: (Core.Maybe Core.Text)
      -- | Whether the requesting application supports both My Drives and shared drives.
    , supportsAllDrives :: Core.Bool
      -- | Deprecated: Use @supportsAllDrives@ instead.
    , supportsTeamDrives :: Core.Bool
      -- | Deprecated: Use @driveId@ instead.
    , teamDriveId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveChangesGetStartPageToken' with the minimum fields required to make a request.
newDriveChangesGetStartPageToken 
    ::  DriveChangesGetStartPageToken
newDriveChangesGetStartPageToken =
  DriveChangesGetStartPageToken
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , driveId = Core.Nothing
    , supportsAllDrives = Core.False
    , supportsTeamDrives = Core.False
    , teamDriveId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DriveChangesGetStartPageToken
         where
        type Rs DriveChangesGetStartPageToken =
             StartPageToken
        type Scopes DriveChangesGetStartPageToken =
             '[Drive'FullControl, Drive'Appdata, Drive'File,
               Drive'Meet'Readonly, Drive'Metadata,
               Drive'Metadata'Readonly, Drive'Photos'Readonly,
               Drive'Readonly]
        requestClient DriveChangesGetStartPageToken{..}
          = go xgafv accessToken callback driveId
              (Core.Just supportsAllDrives)
              (Core.Just supportsTeamDrives)
              teamDriveId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveChangesGetStartPageTokenResource)
                      Core.mempty


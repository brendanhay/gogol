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
-- Module      : Gogol.Drive.Teamdrives.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated: Use @drives.delete@ instead.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.teamdrives.delete@.
module Gogol.Drive.Teamdrives.Delete
    (
    -- * Resource
      DriveTeamdrivesDeleteResource

    -- ** Constructing a Request
    , DriveTeamdrivesDelete (..)
    , newDriveTeamdrivesDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.teamdrives.delete@ method which the
-- 'DriveTeamdrivesDelete' request conforms to.
type DriveTeamdrivesDeleteResource =
     "drive" Core.:>
       "v3" Core.:>
         "teamdrives" Core.:>
           Core.Capture "teamDriveId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] ()

-- | Deprecated: Use @drives.delete@ instead.
--
-- /See:/ 'newDriveTeamdrivesDelete' smart constructor.
data DriveTeamdrivesDelete = DriveTeamdrivesDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the Team Drive
    , teamDriveId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesDelete' with the minimum fields required to make a request.
newDriveTeamdrivesDelete 
    ::  Core.Text
       -- ^  The ID of the Team Drive See 'teamDriveId'.
    -> DriveTeamdrivesDelete
newDriveTeamdrivesDelete teamDriveId =
  DriveTeamdrivesDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , teamDriveId = teamDriveId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveTeamdrivesDelete
         where
        type Rs DriveTeamdrivesDelete = ()
        type Scopes DriveTeamdrivesDelete =
             '[Drive'FullControl]
        requestClient DriveTeamdrivesDelete{..}
          = go teamDriveId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveTeamdrivesDeleteResource)
                      Core.mempty


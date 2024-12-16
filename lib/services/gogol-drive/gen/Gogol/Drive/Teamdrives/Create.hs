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
-- Module      : Gogol.Drive.Teamdrives.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated: Use @drives.create@ instead.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.teamdrives.create@.
module Gogol.Drive.Teamdrives.Create
    (
    -- * Resource
      DriveTeamdrivesCreateResource

    -- ** Constructing a Request
    , DriveTeamdrivesCreate (..)
    , newDriveTeamdrivesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Drive.Types

-- | A resource alias for @drive.teamdrives.create@ method which the
-- 'DriveTeamdrivesCreate' request conforms to.
type DriveTeamdrivesCreateResource =
     "drive" Core.:>
       "v3" Core.:>
         "teamdrives" Core.:>
           Core.QueryParam "requestId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] TeamDrive Core.:>
                           Core.Post '[Core.JSON] TeamDrive

-- | Deprecated: Use @drives.create@ instead.
--
-- /See:/ 'newDriveTeamdrivesCreate' smart constructor.
data DriveTeamdrivesCreate = DriveTeamdrivesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: TeamDrive
      -- | Required. An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
    , requestId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesCreate' with the minimum fields required to make a request.
newDriveTeamdrivesCreate 
    ::  TeamDrive
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned. See 'requestId'.
    -> DriveTeamdrivesCreate
newDriveTeamdrivesCreate payload requestId =
  DriveTeamdrivesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , requestId = requestId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DriveTeamdrivesCreate
         where
        type Rs DriveTeamdrivesCreate = TeamDrive
        type Scopes DriveTeamdrivesCreate =
             '[Drive'FullControl]
        requestClient DriveTeamdrivesCreate{..}
          = go (Core.Just requestId) xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              driveService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DriveTeamdrivesCreateResource)
                      Core.mempty


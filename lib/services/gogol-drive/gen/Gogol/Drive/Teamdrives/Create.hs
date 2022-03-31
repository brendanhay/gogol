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
-- Module      : Gogol.Drive.Teamdrives.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.create instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.create@.
module Gogol.Drive.Teamdrives.Create
  ( -- * Resource
    DriveTeamdrivesCreateResource,

    -- ** Constructing a Request
    newDriveTeamdrivesCreate,
    DriveTeamdrivesCreate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.teamdrives.create@ method which the
-- 'DriveTeamdrivesCreate' request conforms to.
type DriveTeamdrivesCreateResource =
  "drive"
    Core.:> "v3"
    Core.:> "teamdrives"
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TeamDrive
    Core.:> Core.Post '[Core.JSON] TeamDrive

-- | Deprecated use drives.create instead.
--
-- /See:/ 'newDriveTeamdrivesCreate' smart constructor.
data DriveTeamdrivesCreate = DriveTeamdrivesCreate
  { -- | Multipart request metadata.
    payload :: TeamDrive,
    -- | An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.
    requestId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveTeamdrivesCreate' with the minimum fields required to make a request.
newDriveTeamdrivesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  TeamDrive ->
  -- |  An ID, such as a random UUID, which uniquely identifies this user\'s request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned. See 'requestId'.
  Core.Text ->
  DriveTeamdrivesCreate
newDriveTeamdrivesCreate payload requestId =
  DriveTeamdrivesCreate {payload = payload, requestId = requestId}

instance Core.GoogleRequest DriveTeamdrivesCreate where
  type Rs DriveTeamdrivesCreate = TeamDrive
  type
    Scopes DriveTeamdrivesCreate =
      '[Drive'FullControl]
  requestClient DriveTeamdrivesCreate {..} =
    go
      (Core.Just requestId)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DriveTeamdrivesCreateResource
          )
          Core.mempty

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
-- Module      : Gogol.Drive.Drives.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadate for a shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.update@.
module Gogol.Drive.Drives.Update
  ( -- * Resource
    DriveDrivesUpdateResource,

    -- ** Constructing a Request
    newDriveDrivesUpdate,
    DriveDrivesUpdate,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.drives.update@ method which the
-- 'DriveDrivesUpdate' request conforms to.
type DriveDrivesUpdateResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.Capture "driveId" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Drive
    Core.:> Core.Patch '[Core.JSON] Drive

-- | Updates the metadate for a shared drive.
--
-- /See:/ 'newDriveDrivesUpdate' smart constructor.
data DriveDrivesUpdate = DriveDrivesUpdate
  { -- | The ID of the shared drive.
    driveId :: Core.Text,
    -- | Multipart request metadata.
    payload :: Drive,
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesUpdate' with the minimum fields required to make a request.
newDriveDrivesUpdate ::
  -- |  The ID of the shared drive. See 'driveId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Drive ->
  DriveDrivesUpdate
newDriveDrivesUpdate driveId payload =
  DriveDrivesUpdate
    { driveId = driveId,
      payload = payload,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveDrivesUpdate where
  type Rs DriveDrivesUpdate = Drive
  type Scopes DriveDrivesUpdate = '[Drive'FullControl]
  requestClient DriveDrivesUpdate {..} =
    go
      driveId
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      payload
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesUpdateResource)
          Core.mempty

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
-- Module      : Gogol.Drive.Drives.Unhide
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a shared drive to the default view.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.unhide@.
module Gogol.Drive.Drives.Unhide
  ( -- * Resource
    DriveDrivesUnhideResource,

    -- ** Constructing a Request
    newDriveDrivesUnhide,
    DriveDrivesUnhide,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.drives.unhide@ method which the
-- 'DriveDrivesUnhide' request conforms to.
type DriveDrivesUnhideResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.Capture "driveId" Core.Text
    Core.:> "unhide"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Drive

-- | Restores a shared drive to the default view.
--
-- /See:/ 'newDriveDrivesUnhide' smart constructor.
newtype DriveDrivesUnhide = DriveDrivesUnhide
  { -- | The ID of the shared drive.
    driveId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesUnhide' with the minimum fields required to make a request.
newDriveDrivesUnhide ::
  -- |  The ID of the shared drive. See 'driveId'.
  Core.Text ->
  DriveDrivesUnhide
newDriveDrivesUnhide driveId = DriveDrivesUnhide {driveId = driveId}

instance Core.GoogleRequest DriveDrivesUnhide where
  type Rs DriveDrivesUnhide = Drive
  type
    Scopes DriveDrivesUnhide =
      '["https://www.googleapis.com/auth/drive"]
  requestClient DriveDrivesUnhide {..} =
    go driveId (Core.Just Core.AltJSON) driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesUnhideResource)
          Core.mempty

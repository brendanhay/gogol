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
-- Module      : Gogol.Drive.Drives.Hide
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hides a shared drive from the default view.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.hide@.
module Gogol.Drive.Drives.Hide
  ( -- * Resource
    DriveDrivesHideResource,

    -- ** Constructing a Request
    newDriveDrivesHide,
    DriveDrivesHide,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.drives.hide@ method which the
-- 'DriveDrivesHide' request conforms to.
type DriveDrivesHideResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.Capture "driveId" Core.Text
    Core.:> "hide"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Drive

-- | Hides a shared drive from the default view.
--
-- /See:/ 'newDriveDrivesHide' smart constructor.
newtype DriveDrivesHide = DriveDrivesHide
  { -- | The ID of the shared drive.
    driveId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesHide' with the minimum fields required to make a request.
newDriveDrivesHide ::
  -- |  The ID of the shared drive. See 'driveId'.
  Core.Text ->
  DriveDrivesHide
newDriveDrivesHide driveId = DriveDrivesHide {driveId = driveId}

instance Core.GoogleRequest DriveDrivesHide where
  type Rs DriveDrivesHide = Drive
  type Scopes DriveDrivesHide = '[Drive'FullControl]
  requestClient DriveDrivesHide {..} =
    go driveId (Core.Just Core.AltJSON) driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesHideResource)
          Core.mempty

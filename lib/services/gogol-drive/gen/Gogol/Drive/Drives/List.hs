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
-- Module      : Gogol.Drive.Drives.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s shared drives.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.list@.
module Gogol.Drive.Drives.List
  ( -- * Resource
    DriveDrivesListResource,

    -- ** Constructing a Request
    newDriveDrivesList,
    DriveDrivesList,
  )
where

import Gogol.Drive.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @drive.drives.list@ method which the
-- 'DriveDrivesList' request conforms to.
type DriveDrivesListResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "q" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DriveList

-- | Lists the user\'s shared drives.
--
-- /See:/ 'newDriveDrivesList' smart constructor.
data DriveDrivesList = DriveDrivesList
  { -- | Maximum number of shared drives to return per page.
    pageSize :: Core.Int32,
    -- | Page token for shared drives.
    pageToken :: (Core.Maybe Core.Text),
    -- | Query string for searching shared drives.
    q :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesList' with the minimum fields required to make a request.
newDriveDrivesList ::
  DriveDrivesList
newDriveDrivesList =
  DriveDrivesList
    { pageSize = 10,
      pageToken = Core.Nothing,
      q = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveDrivesList where
  type Rs DriveDrivesList = DriveList
  type
    Scopes DriveDrivesList =
      '[Drive'FullControl, Drive'Readonly]
  requestClient DriveDrivesList {..} =
    go
      (Core.Just pageSize)
      pageToken
      q
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesListResource)
          Core.mempty

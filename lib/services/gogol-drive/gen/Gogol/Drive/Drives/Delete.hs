{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Drive.Drives.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes a shared drive for which the user is an @organizer@. The shared drive cannot contain any untrashed items.
--
-- /See:/ <https://developers.google.com/drive/ Google Drive API Reference> for @drive.drives.delete@.
module Gogol.Drive.Drives.Delete
  ( -- * Resource
    DriveDrivesDeleteResource,

    -- ** Constructing a Request
    DriveDrivesDelete (..),
    newDriveDrivesDelete,
  )
where

import Gogol.Drive.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @drive.drives.delete@ method which the
-- 'DriveDrivesDelete' request conforms to.
type DriveDrivesDeleteResource =
  "drive"
    Core.:> "v3"
    Core.:> "drives"
    Core.:> Core.Capture "driveId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowItemDeletion" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "useDomainAdminAccess" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Permanently deletes a shared drive for which the user is an @organizer@. The shared drive cannot contain any untrashed items.
--
-- /See:/ 'newDriveDrivesDelete' smart constructor.
data DriveDrivesDelete = DriveDrivesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether any items inside the shared drive should also be deleted. This option is only supported when @useDomainAdminAccess@ is also set to @true@.
    allowItemDeletion :: Core.Bool,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the shared drive.
    driveId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
    useDomainAdminAccess :: Core.Bool
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DriveDrivesDelete' with the minimum fields required to make a request.
newDriveDrivesDelete ::
  -- |  The ID of the shared drive. See 'driveId'.
  Core.Text ->
  DriveDrivesDelete
newDriveDrivesDelete driveId =
  DriveDrivesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowItemDeletion = Core.False,
      callback = Core.Nothing,
      driveId = driveId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      useDomainAdminAccess = Core.False
    }

instance Core.GoogleRequest DriveDrivesDelete where
  type Rs DriveDrivesDelete = ()
  type Scopes DriveDrivesDelete = '[Drive'FullControl]
  requestClient DriveDrivesDelete {..} =
    go
      driveId
      xgafv
      accessToken
      (Core.Just allowItemDeletion)
      callback
      uploadType
      uploadProtocol
      (Core.Just useDomainAdminAccess)
      (Core.Just Core.AltJSON)
      driveService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DriveDrivesDeleteResource)
          Core.mempty

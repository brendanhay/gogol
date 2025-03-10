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
-- Module      : Gogol.FireStore.Projects.Locations.Backups.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a backup.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.locations.backups.delete@.
module Gogol.FireStore.Projects.Locations.Backups.Delete
  ( -- * Resource
    FireStoreProjectsLocationsBackupsDeleteResource,

    -- ** Constructing a Request
    FireStoreProjectsLocationsBackupsDelete (..),
    newFireStoreProjectsLocationsBackupsDelete,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.locations.backups.delete@ method which the
-- 'FireStoreProjectsLocationsBackupsDelete' request conforms to.
type FireStoreProjectsLocationsBackupsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a backup.
--
-- /See:/ 'newFireStoreProjectsLocationsBackupsDelete' smart constructor.
data FireStoreProjectsLocationsBackupsDelete = FireStoreProjectsLocationsBackupsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the backup to delete. format is @projects\/{project}\/locations\/{location}\/backups\/{backup}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsLocationsBackupsDelete' with the minimum fields required to make a request.
newFireStoreProjectsLocationsBackupsDelete ::
  -- |  Required. Name of the backup to delete. format is @projects\/{project}\/locations\/{location}\/backups\/{backup}@. See 'name'.
  Core.Text ->
  FireStoreProjectsLocationsBackupsDelete
newFireStoreProjectsLocationsBackupsDelete name =
  FireStoreProjectsLocationsBackupsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsLocationsBackupsDelete where
  type Rs FireStoreProjectsLocationsBackupsDelete = Empty
  type
    Scopes FireStoreProjectsLocationsBackupsDelete =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsLocationsBackupsDelete {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsLocationsBackupsDeleteResource
          )
          Core.mempty

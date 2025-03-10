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
-- Module      : Gogol.FireStore.Projects.Locations.Backups.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a backup.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.locations.backups.get@.
module Gogol.FireStore.Projects.Locations.Backups.Get
  ( -- * Resource
    FireStoreProjectsLocationsBackupsGetResource,

    -- ** Constructing a Request
    FireStoreProjectsLocationsBackupsGet (..),
    newFireStoreProjectsLocationsBackupsGet,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.locations.backups.get@ method which the
-- 'FireStoreProjectsLocationsBackupsGet' request conforms to.
type FireStoreProjectsLocationsBackupsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleFirestoreAdminV1Backup

-- | Gets information about a backup.
--
-- /See:/ 'newFireStoreProjectsLocationsBackupsGet' smart constructor.
data FireStoreProjectsLocationsBackupsGet = FireStoreProjectsLocationsBackupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the backup to fetch. Format is @projects\/{project}\/locations\/{location}\/backups\/{backup}@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsLocationsBackupsGet' with the minimum fields required to make a request.
newFireStoreProjectsLocationsBackupsGet ::
  -- |  Required. Name of the backup to fetch. Format is @projects\/{project}\/locations\/{location}\/backups\/{backup}@. See 'name'.
  Core.Text ->
  FireStoreProjectsLocationsBackupsGet
newFireStoreProjectsLocationsBackupsGet name =
  FireStoreProjectsLocationsBackupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsLocationsBackupsGet where
  type
    Rs FireStoreProjectsLocationsBackupsGet =
      GoogleFirestoreAdminV1Backup
  type
    Scopes FireStoreProjectsLocationsBackupsGet =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsLocationsBackupsGet {..} =
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
              Core.Proxy FireStoreProjectsLocationsBackupsGetResource
          )
          Core.mempty

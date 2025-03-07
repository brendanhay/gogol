{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.FireStore.Projects.Locations.Backups.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the backups.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.locations.backups.list@.
module Gogol.FireStore.Projects.Locations.Backups.List
  ( -- * Resource
    FireStoreProjectsLocationsBackupsListResource,

    -- ** Constructing a Request
    FireStoreProjectsLocationsBackupsList (..),
    newFireStoreProjectsLocationsBackupsList,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.locations.backups.list@ method which the
-- 'FireStoreProjectsLocationsBackupsList' request conforms to.
type FireStoreProjectsLocationsBackupsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "backups"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleFirestoreAdminV1ListBackupsResponse

-- | Lists all the backups.
--
-- /See:/ 'newFireStoreProjectsLocationsBackupsList' smart constructor.
data FireStoreProjectsLocationsBackupsList = FireStoreProjectsLocationsBackupsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An expression that filters the list of returned backups. A filter expression consists of a field name, a comparison operator, and a value for filtering. The value must be a string, a number, or a boolean. The comparison operator must be one of: @\<@, @>@, @\<=@, @>=@, @!=@, @=@, or @:@. Colon @:@ is the contains operator. Filter rules are not case sensitive. The following fields in the Backup are eligible for filtering: * @database_uid@ (supports @=@ only)
    filter :: (Core.Maybe Core.Text),
    -- | Required. The location to list backups from. Format is @projects\/{project}\/locations\/{location}@. Use @{location} = \'-\'@ to list backups from all locations for the given project. This allows listing backups from a single location or from all locations.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsLocationsBackupsList' with the minimum fields required to make a request.
newFireStoreProjectsLocationsBackupsList ::
  -- |  Required. The location to list backups from. Format is @projects\/{project}\/locations\/{location}@. Use @{location} = \'-\'@ to list backups from all locations for the given project. This allows listing backups from a single location or from all locations. See 'parent'.
  Core.Text ->
  FireStoreProjectsLocationsBackupsList
newFireStoreProjectsLocationsBackupsList parent =
  FireStoreProjectsLocationsBackupsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsLocationsBackupsList where
  type
    Rs FireStoreProjectsLocationsBackupsList =
      GoogleFirestoreAdminV1ListBackupsResponse
  type
    Scopes FireStoreProjectsLocationsBackupsList =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsLocationsBackupsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fireStoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy FireStoreProjectsLocationsBackupsListResource
          )
          Core.mempty

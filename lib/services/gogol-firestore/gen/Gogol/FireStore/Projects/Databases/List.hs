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
-- Module      : Gogol.FireStore.Projects.Databases.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all the databases in the project.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.list@.
module Gogol.FireStore.Projects.Databases.List
  ( -- * Resource
    FireStoreProjectsDatabasesListResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesList (..),
    newFireStoreProjectsDatabasesList,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.list@ method which the
-- 'FireStoreProjectsDatabasesList' request conforms to.
type FireStoreProjectsDatabasesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "databases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "showDeleted" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleFirestoreAdminV1ListDatabasesResponse

-- | List all the databases in the project.
--
-- /See:/ 'newFireStoreProjectsDatabasesList' smart constructor.
data FireStoreProjectsDatabasesList = FireStoreProjectsDatabasesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A parent name of the form @projects\/{project_id}@
    parent :: Core.Text,
    -- | If true, also returns deleted resources.
    showDeleted :: (Core.Maybe Core.Bool),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesList ::
  -- |  Required. A parent name of the form @projects\/{project_id}@ See 'parent'.
  Core.Text ->
  FireStoreProjectsDatabasesList
newFireStoreProjectsDatabasesList parent =
  FireStoreProjectsDatabasesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      showDeleted = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsDatabasesList where
  type
    Rs FireStoreProjectsDatabasesList =
      GoogleFirestoreAdminV1ListDatabasesResponse
  type
    Scopes FireStoreProjectsDatabasesList =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      showDeleted
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      fireStoreService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FireStoreProjectsDatabasesListResource)
          Core.mempty

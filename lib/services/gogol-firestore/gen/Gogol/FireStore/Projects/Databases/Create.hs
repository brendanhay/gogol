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
-- Module      : Gogol.FireStore.Projects.Databases.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a database.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.create@.
module Gogol.FireStore.Projects.Databases.Create
  ( -- * Resource
    FireStoreProjectsDatabasesCreateResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesCreate (..),
    newFireStoreProjectsDatabasesCreate,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.create@ method which the
-- 'FireStoreProjectsDatabasesCreate' request conforms to.
type FireStoreProjectsDatabasesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "databases"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "databaseId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1Database
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Create a database.
--
-- /See:/ 'newFireStoreProjectsDatabasesCreate' smart constructor.
data FireStoreProjectsDatabasesCreate = FireStoreProjectsDatabasesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID to use for the database, which will become the final component of the database\'s resource name. This value should be 4-63 characters. Valid characters are \/a-z-\/ with first character a letter and the last a letter or a number. Must not be UUID-like \/[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}\/. \"(default)\" database ID is also valid.
    databaseId :: (Core.Maybe Core.Text),
    -- | Required. A parent name of the form @projects\/{project_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1Database,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesCreate' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesCreate ::
  -- |  Required. A parent name of the form @projects\/{project_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1Database ->
  FireStoreProjectsDatabasesCreate
newFireStoreProjectsDatabasesCreate parent payload =
  FireStoreProjectsDatabasesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      databaseId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest FireStoreProjectsDatabasesCreate where
  type
    Rs FireStoreProjectsDatabasesCreate =
      GoogleLongrunningOperation
  type
    Scopes FireStoreProjectsDatabasesCreate =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient FireStoreProjectsDatabasesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      databaseId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      fireStoreService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy FireStoreProjectsDatabasesCreateResource)
          Core.mempty

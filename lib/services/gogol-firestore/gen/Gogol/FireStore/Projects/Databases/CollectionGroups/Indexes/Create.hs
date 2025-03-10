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
-- Module      : Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.create@.
module Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
  ( -- * Resource
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreateResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreate (..),
    newFireStoreProjectsDatabasesCollectionGroupsIndexesCreate,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.create@ method which the
-- 'FireStoreProjectsDatabasesCollectionGroupsIndexesCreate' request conforms to.
type FireStoreProjectsDatabasesCollectionGroupsIndexesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "indexes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1Index
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a composite index. This returns a google.longrunning.Operation which may be used to track the status of the creation. The metadata for the operation will be the type IndexOperationMetadata.
--
-- /See:/ 'newFireStoreProjectsDatabasesCollectionGroupsIndexesCreate' smart constructor.
data FireStoreProjectsDatabasesCollectionGroupsIndexesCreate = FireStoreProjectsDatabasesCollectionGroupsIndexesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}@
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1Index,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesCollectionGroupsIndexesCreate' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesCollectionGroupsIndexesCreate ::
  -- |  Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}@ See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1Index ->
  FireStoreProjectsDatabasesCollectionGroupsIndexesCreate
newFireStoreProjectsDatabasesCollectionGroupsIndexesCreate
  parent
  payload =
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreate
  where
  type
    Rs FireStoreProjectsDatabasesCollectionGroupsIndexesCreate =
      GoogleLongrunningOperation
  type
    Scopes FireStoreProjectsDatabasesCollectionGroupsIndexesCreate =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesCollectionGroupsIndexesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesCollectionGroupsIndexesCreateResource
            )
            Core.mempty

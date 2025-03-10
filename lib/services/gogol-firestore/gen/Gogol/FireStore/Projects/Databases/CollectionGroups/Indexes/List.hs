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
-- Module      : Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists composite indexes.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.list@.
module Gogol.FireStore.Projects.Databases.CollectionGroups.Indexes.List
  ( -- * Resource
    FireStoreProjectsDatabasesCollectionGroupsIndexesListResource,

    -- ** Constructing a Request
    FireStoreProjectsDatabasesCollectionGroupsIndexesList (..),
    newFireStoreProjectsDatabasesCollectionGroupsIndexesList,
  )
where

import Gogol.FireStore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.list@ method which the
-- 'FireStoreProjectsDatabasesCollectionGroupsIndexesList' request conforms to.
type FireStoreProjectsDatabasesCollectionGroupsIndexesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "indexes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleFirestoreAdminV1ListIndexesResponse

-- | Lists composite indexes.
--
-- /See:/ 'newFireStoreProjectsDatabasesCollectionGroupsIndexesList' smart constructor.
data FireStoreProjectsDatabasesCollectionGroupsIndexesList = FireStoreProjectsDatabasesCollectionGroupsIndexesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter to apply to list results.
    filter :: (Core.Maybe Core.Text),
    -- | The number of results to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, returned from a previous call to FirestoreAdmin.ListIndexes, that may be used to get the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}@
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesCollectionGroupsIndexesList' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesCollectionGroupsIndexesList ::
  -- |  Required. A parent name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}@ See 'parent'.
  Core.Text ->
  FireStoreProjectsDatabasesCollectionGroupsIndexesList
newFireStoreProjectsDatabasesCollectionGroupsIndexesList parent =
  FireStoreProjectsDatabasesCollectionGroupsIndexesList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesCollectionGroupsIndexesList
  where
  type
    Rs FireStoreProjectsDatabasesCollectionGroupsIndexesList =
      GoogleFirestoreAdminV1ListIndexesResponse
  type
    Scopes FireStoreProjectsDatabasesCollectionGroupsIndexesList =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient
    FireStoreProjectsDatabasesCollectionGroupsIndexesList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesCollectionGroupsIndexesListResource
            )
            Core.mempty

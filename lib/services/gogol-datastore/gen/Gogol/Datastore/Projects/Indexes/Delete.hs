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
-- Module      : Gogol.Datastore.Projects.Indexes.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing index. An index can only be deleted if it is in a @READY@ or @ERROR@ state. On successful execution of the request, the index will be in a @DELETING@ state. And on completion of the returned google.longrunning.Operation, the index will be removed. During index deletion, the process could result in an error, in which case the index will move to the @ERROR@ state. The process can be recovered by fixing the data that caused the error, followed by calling delete again.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.delete@.
module Gogol.Datastore.Projects.Indexes.Delete
  ( -- * Resource
    DatastoreProjectsIndexesDeleteResource,

    -- ** Constructing a Request
    newDatastoreProjectsIndexesDelete,
    DatastoreProjectsIndexesDelete,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.indexes.delete@ method which the
-- 'DatastoreProjectsIndexesDelete' request conforms to.
type DatastoreProjectsIndexesDeleteResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "indexes"
    Core.:> Core.Capture "indexId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleLongrunningOperation

-- | Deletes an existing index. An index can only be deleted if it is in a @READY@ or @ERROR@ state. On successful execution of the request, the index will be in a @DELETING@ state. And on completion of the returned google.longrunning.Operation, the index will be removed. During index deletion, the process could result in an error, in which case the index will move to the @ERROR@ state. The process can be recovered by fixing the data that caused the error, followed by calling delete again.
--
-- /See:/ 'newDatastoreProjectsIndexesDelete' smart constructor.
data DatastoreProjectsIndexesDelete = DatastoreProjectsIndexesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource ID of the index to delete.
    indexId :: Core.Text,
    -- | Project ID against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsIndexesDelete' with the minimum fields required to make a request.
newDatastoreProjectsIndexesDelete ::
  -- |  The resource ID of the index to delete. See 'indexId'.
  Core.Text ->
  -- |  Project ID against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsIndexesDelete
newDatastoreProjectsIndexesDelete indexId projectId =
  DatastoreProjectsIndexesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      indexId = indexId,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DatastoreProjectsIndexesDelete
  where
  type
    Rs DatastoreProjectsIndexesDelete =
      GoogleLongrunningOperation
  type
    Scopes DatastoreProjectsIndexesDelete =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient DatastoreProjectsIndexesDelete {..} =
    go
      projectId
      indexId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      datastoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DatastoreProjectsIndexesDeleteResource
          )
          Core.mempty

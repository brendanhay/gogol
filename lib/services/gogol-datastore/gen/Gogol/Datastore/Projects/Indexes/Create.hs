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
-- Module      : Gogol.Datastore.Projects.Indexes.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates the specified index. A newly created index\'s initial state is @CREATING@. On completion of the returned google.longrunning.Operation, the state will be @READY@. If the index already exists, the call will return an @ALREADY_EXISTS@ status. During index creation, the process could result in an error, in which case the index will move to the @ERROR@ state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single property cannot be created.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.create@.
module Gogol.Datastore.Projects.Indexes.Create
  ( -- * Resource
    DatastoreProjectsIndexesCreateResource,

    -- ** Constructing a Request
    newDatastoreProjectsIndexesCreate,
    DatastoreProjectsIndexesCreate,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.indexes.create@ method which the
-- 'DatastoreProjectsIndexesCreate' request conforms to.
type DatastoreProjectsIndexesCreateResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "indexes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleDatastoreAdminV1Index
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates the specified index. A newly created index\'s initial state is @CREATING@. On completion of the returned google.longrunning.Operation, the state will be @READY@. If the index already exists, the call will return an @ALREADY_EXISTS@ status. During index creation, the process could result in an error, in which case the index will move to the @ERROR@ state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single property cannot be created.
--
-- /See:/ 'newDatastoreProjectsIndexesCreate' smart constructor.
data DatastoreProjectsIndexesCreate = DatastoreProjectsIndexesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleDatastoreAdminV1Index,
    -- | Project ID against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsIndexesCreate' with the minimum fields required to make a request.
newDatastoreProjectsIndexesCreate ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleDatastoreAdminV1Index ->
  -- |  Project ID against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsIndexesCreate
newDatastoreProjectsIndexesCreate payload projectId =
  DatastoreProjectsIndexesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DatastoreProjectsIndexesCreate
  where
  type
    Rs DatastoreProjectsIndexesCreate =
      GoogleLongrunningOperation
  type
    Scopes DatastoreProjectsIndexesCreate =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient DatastoreProjectsIndexesCreate {..} =
    go
      projectId
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      datastoreService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DatastoreProjectsIndexesCreateResource
          )
          Core.mempty

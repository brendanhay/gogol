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
-- Module      : Gogol.Datastore.Projects.AllocateIds
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.allocateIds@.
module Gogol.Datastore.Projects.AllocateIds
  ( -- * Resource
    DatastoreProjectsAllocateIdsResource,

    -- ** Constructing a Request
    newDatastoreProjectsAllocateIds,
    DatastoreProjectsAllocateIds,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.allocateIds@ method which the
-- 'DatastoreProjectsAllocateIds' request conforms to.
type DatastoreProjectsAllocateIdsResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "allocateIds" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AllocateIdsRequest
    Core.:> Core.Post '[Core.JSON] AllocateIdsResponse

-- | Allocates IDs for the given keys, which is useful for referencing an entity before it is inserted.
--
-- /See:/ 'newDatastoreProjectsAllocateIds' smart constructor.
data DatastoreProjectsAllocateIds = DatastoreProjectsAllocateIds
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AllocateIdsRequest,
    -- | Required. The ID of the project against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsAllocateIds' with the minimum fields required to make a request.
newDatastoreProjectsAllocateIds ::
  -- |  Multipart request metadata. See 'payload'.
  AllocateIdsRequest ->
  -- |  Required. The ID of the project against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsAllocateIds
newDatastoreProjectsAllocateIds payload projectId =
  DatastoreProjectsAllocateIds
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
    DatastoreProjectsAllocateIds
  where
  type
    Rs DatastoreProjectsAllocateIds =
      AllocateIdsResponse
  type
    Scopes DatastoreProjectsAllocateIds =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient DatastoreProjectsAllocateIds {..} =
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
              Core.Proxy DatastoreProjectsAllocateIdsResource
          )
          Core.mempty

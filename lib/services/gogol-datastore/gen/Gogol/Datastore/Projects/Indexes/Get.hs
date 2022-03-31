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
-- Module      : Gogol.Datastore.Projects.Indexes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an index.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.indexes.get@.
module Gogol.Datastore.Projects.Indexes.Get
  ( -- * Resource
    DatastoreProjectsIndexesGetResource,

    -- ** Constructing a Request
    newDatastoreProjectsIndexesGet,
    DatastoreProjectsIndexesGet,
  )
where

import Gogol.Datastore.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datastore.projects.indexes.get@ method which the
-- 'DatastoreProjectsIndexesGet' request conforms to.
type DatastoreProjectsIndexesGetResource =
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
    Core.:> Core.Get '[Core.JSON] GoogleDatastoreAdminV1Index

-- | Gets an index.
--
-- /See:/ 'newDatastoreProjectsIndexesGet' smart constructor.
data DatastoreProjectsIndexesGet = DatastoreProjectsIndexesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource ID of the index to get.
    indexId :: Core.Text,
    -- | Project ID against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsIndexesGet' with the minimum fields required to make a request.
newDatastoreProjectsIndexesGet ::
  -- |  The resource ID of the index to get. See 'indexId'.
  Core.Text ->
  -- |  Project ID against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsIndexesGet
newDatastoreProjectsIndexesGet indexId projectId =
  DatastoreProjectsIndexesGet
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
    DatastoreProjectsIndexesGet
  where
  type
    Rs DatastoreProjectsIndexesGet =
      GoogleDatastoreAdminV1Index
  type
    Scopes DatastoreProjectsIndexesGet =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient DatastoreProjectsIndexesGet {..} =
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
              Core.Proxy DatastoreProjectsIndexesGetResource
          )
          Core.mempty

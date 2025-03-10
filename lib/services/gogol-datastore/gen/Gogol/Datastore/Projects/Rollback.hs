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
-- Module      : Gogol.Datastore.Projects.Rollback
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a transaction.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.rollback@.
module Gogol.Datastore.Projects.Rollback
  ( -- * Resource
    DatastoreProjectsRollbackResource,

    -- ** Constructing a Request
    DatastoreProjectsRollback (..),
    newDatastoreProjectsRollback,
  )
where

import Gogol.Datastore.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @datastore.projects.rollback@ method which the
-- 'DatastoreProjectsRollback' request conforms to.
type DatastoreProjectsRollbackResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "rollback" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] RollbackRequest
    Core.:> Core.Post '[Core.JSON] RollbackResponse

-- | Rolls back a transaction.
--
-- /See:/ 'newDatastoreProjectsRollback' smart constructor.
data DatastoreProjectsRollback = DatastoreProjectsRollback
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: RollbackRequest,
    -- | Required. The ID of the project against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsRollback' with the minimum fields required to make a request.
newDatastoreProjectsRollback ::
  -- |  Multipart request metadata. See 'payload'.
  RollbackRequest ->
  -- |  Required. The ID of the project against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsRollback
newDatastoreProjectsRollback payload projectId =
  DatastoreProjectsRollback
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatastoreProjectsRollback where
  type Rs DatastoreProjectsRollback = RollbackResponse
  type
    Scopes DatastoreProjectsRollback =
      '[CloudPlatform'FullControl, Datastore'FullControl]
  requestClient DatastoreProjectsRollback {..} =
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
          (Core.Proxy :: Core.Proxy DatastoreProjectsRollbackResource)
          Core.mempty

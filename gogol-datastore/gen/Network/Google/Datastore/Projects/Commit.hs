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
-- Module      : Network.Google.Datastore.Projects.Commit
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Commits a transaction, optionally creating, deleting or modifying some entities.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.commit@.
module Network.Google.Datastore.Projects.Commit
  ( -- * Resource
    DatastoreProjectsCommitResource,

    -- ** Constructing a Request
    newDatastoreProjectsCommit,
    DatastoreProjectsCommit,
  )
where

import Network.Google.Datastore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @datastore.projects.commit@ method which the
-- 'DatastoreProjectsCommit' request conforms to.
type DatastoreProjectsCommitResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.CaptureMode "projectId" "commit" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CommitRequest
    Core.:> Core.Post '[Core.JSON] CommitResponse

-- | Commits a transaction, optionally creating, deleting or modifying some entities.
--
-- /See:/ 'newDatastoreProjectsCommit' smart constructor.
data DatastoreProjectsCommit = DatastoreProjectsCommit
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CommitRequest,
    -- | Required. The ID of the project against which to make the request.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DatastoreProjectsCommit' with the minimum fields required to make a request.
newDatastoreProjectsCommit ::
  -- |  Multipart request metadata. See 'payload'.
  CommitRequest ->
  -- |  Required. The ID of the project against which to make the request. See 'projectId'.
  Core.Text ->
  DatastoreProjectsCommit
newDatastoreProjectsCommit payload projectId =
  DatastoreProjectsCommit
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DatastoreProjectsCommit where
  type Rs DatastoreProjectsCommit = CommitResponse
  type
    Scopes DatastoreProjectsCommit =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient DatastoreProjectsCommit {..} =
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
              Core.Proxy DatastoreProjectsCommitResource
          )
          Core.mempty

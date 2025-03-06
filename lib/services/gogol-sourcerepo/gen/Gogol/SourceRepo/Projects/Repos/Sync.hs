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
-- Module      : Gogol.SourceRepo.Projects.Repos.Sync
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Synchronize a connected repo. The response contains SyncRepoMetadata in the metadata field.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.sync@.
module Gogol.SourceRepo.Projects.Repos.Sync
  ( -- * Resource
    SourceRepoProjectsReposSyncResource,

    -- ** Constructing a Request
    SourceRepoProjectsReposSync (..),
    newSourceRepoProjectsReposSync,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.sync@ method which the
-- 'SourceRepoProjectsReposSync' request conforms to.
type SourceRepoProjectsReposSyncResource =
  "v1"
    Core.:> Core.CaptureMode "name" "sync" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SyncRepoRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Synchronize a connected repo. The response contains SyncRepoMetadata in the metadata field.
--
-- /See:/ 'newSourceRepoProjectsReposSync' smart constructor.
data SourceRepoProjectsReposSync = SourceRepoProjectsReposSync
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the repo to synchronize. Values are of the form @projects\/\/repos\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SyncRepoRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposSync' with the minimum fields required to make a request.
newSourceRepoProjectsReposSync ::
  -- |  The name of the repo to synchronize. Values are of the form @projects\/\/repos\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SyncRepoRequest ->
  SourceRepoProjectsReposSync
newSourceRepoProjectsReposSync name payload =
  SourceRepoProjectsReposSync
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SourceRepoProjectsReposSync where
  type Rs SourceRepoProjectsReposSync = Operation
  type
    Scopes SourceRepoProjectsReposSync =
      '[CloudPlatform'FullControl]
  requestClient SourceRepoProjectsReposSync {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      sourceRepoService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SourceRepoProjectsReposSyncResource)
          Core.mempty

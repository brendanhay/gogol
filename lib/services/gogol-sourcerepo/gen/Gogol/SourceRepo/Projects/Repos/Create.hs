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
-- Module      : Gogol.SourceRepo.Projects.Repos.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a repo in the given project with the given name. If the named repository already exists, @CreateRepo@ returns @ALREADY_EXISTS@.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.create@.
module Gogol.SourceRepo.Projects.Repos.Create
  ( -- * Resource
    SourceRepoProjectsReposCreateResource,

    -- ** Constructing a Request
    SourceRepoProjectsReposCreate (..),
    newSourceRepoProjectsReposCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.create@ method which the
-- 'SourceRepoProjectsReposCreate' request conforms to.
type SourceRepoProjectsReposCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "repos"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Repo
    Core.:> Core.Post '[Core.JSON] Repo

-- | Creates a repo in the given project with the given name. If the named repository already exists, @CreateRepo@ returns @ALREADY_EXISTS@.
--
-- /See:/ 'newSourceRepoProjectsReposCreate' smart constructor.
data SourceRepoProjectsReposCreate = SourceRepoProjectsReposCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project in which to create the repo. Values are of the form @projects\/@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Repo,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposCreate' with the minimum fields required to make a request.
newSourceRepoProjectsReposCreate ::
  -- |  The project in which to create the repo. Values are of the form @projects\/@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Repo ->
  SourceRepoProjectsReposCreate
newSourceRepoProjectsReposCreate parent payload =
  SourceRepoProjectsReposCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SourceRepoProjectsReposCreate where
  type Rs SourceRepoProjectsReposCreate = Repo
  type
    Scopes SourceRepoProjectsReposCreate =
      '[CloudPlatform'FullControl, Source'FullControl]
  requestClient SourceRepoProjectsReposCreate {..} =
    go
      parent
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
          (Core.Proxy :: Core.Proxy SourceRepoProjectsReposCreateResource)
          Core.mempty

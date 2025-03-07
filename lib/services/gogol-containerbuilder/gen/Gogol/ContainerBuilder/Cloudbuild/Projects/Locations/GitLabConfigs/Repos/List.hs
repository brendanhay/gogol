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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Repos.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all repositories for a given @GitLabConfig@. This API is experimental
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.repos.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Repos.List
  ( -- * Resource
    CloudbuildProjectsLocationsGitLabConfigsReposListResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsGitLabConfigsReposList (..),
    newCloudbuildProjectsLocationsGitLabConfigsReposList,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.repos.list@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsReposList' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsReposListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "repos"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGitLabRepositoriesResponse

-- | List all repositories for a given @GitLabConfig@. This API is experimental
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsReposList' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsReposList = CloudbuildProjectsLocationsGitLabConfigsReposList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of repositories to return. The service may return fewer than this value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous ListGitLabRepositoriesRequest@call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to@ListGitLabRepositoriesRequest\` must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the parent resource.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsReposList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsReposList ::
  -- |  Required. Name of the parent resource. See 'parent'.
  Core.Text ->
  CloudbuildProjectsLocationsGitLabConfigsReposList
newCloudbuildProjectsLocationsGitLabConfigsReposList parent =
  CloudbuildProjectsLocationsGitLabConfigsReposList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsGitLabConfigsReposList
  where
  type
    Rs
      CloudbuildProjectsLocationsGitLabConfigsReposList =
      ListGitLabRepositoriesResponse
  type
    Scopes
      CloudbuildProjectsLocationsGitLabConfigsReposList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsGitLabConfigsReposList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsGitLabConfigsReposListResource
            )
            Core.mempty

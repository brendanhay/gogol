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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all GitHubEnterpriseConfigs for a given project.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.githubEnterpriseConfigs.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.List
  ( -- * Resource
    CloudbuildProjectsGithubEnterpriseConfigsListResource,

    -- ** Constructing a Request
    newCloudbuildProjectsGithubEnterpriseConfigsList,
    CloudbuildProjectsGithubEnterpriseConfigsList,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.githubEnterpriseConfigs.list@ method which the
-- 'CloudbuildProjectsGithubEnterpriseConfigsList' request conforms to.
type CloudbuildProjectsGithubEnterpriseConfigsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "githubEnterpriseConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListGithubEnterpriseConfigsResponse

-- | List all GitHubEnterpriseConfigs for a given project.
--
-- /See:/ 'newCloudbuildProjectsGithubEnterpriseConfigsList' smart constructor.
data CloudbuildProjectsGithubEnterpriseConfigsList = CloudbuildProjectsGithubEnterpriseConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id}
    parent :: Core.Text,
    -- | ID of the project
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsGithubEnterpriseConfigsList' with the minimum fields required to make a request.
newCloudbuildProjectsGithubEnterpriseConfigsList ::
  -- |  Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id} See 'parent'.
  Core.Text ->
  CloudbuildProjectsGithubEnterpriseConfigsList
newCloudbuildProjectsGithubEnterpriseConfigsList parent =
  CloudbuildProjectsGithubEnterpriseConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsGithubEnterpriseConfigsList
  where
  type
    Rs CloudbuildProjectsGithubEnterpriseConfigsList =
      ListGithubEnterpriseConfigsResponse
  type
    Scopes
      CloudbuildProjectsGithubEnterpriseConfigsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsGithubEnterpriseConfigsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        projectId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsGithubEnterpriseConfigsListResource
            )
            Core.mempty

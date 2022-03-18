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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a GitHubEnterpriseConfig.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.githubEnterpriseConfigs.get@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Get
  ( -- * Resource
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGetResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet,
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGet,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.githubEnterpriseConfigs.get@ method which the
-- 'CloudbuildProjectsLocationsGithubEnterpriseConfigsGet' request conforms to.
type CloudbuildProjectsLocationsGithubEnterpriseConfigsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "configId" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GitHubEnterpriseConfig

-- | Retrieve a GitHubEnterpriseConfig.
--
-- /See:/ 'newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet' smart constructor.
data CloudbuildProjectsLocationsGithubEnterpriseConfigsGet = CloudbuildProjectsLocationsGithubEnterpriseConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Unique identifier of the @GitHubEnterpriseConfig@
    configId :: (Core.Maybe Core.Text),
    -- | This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\"
    name :: Core.Text,
    -- | ID of the project
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGithubEnterpriseConfigsGet' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet ::
  -- |  This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\" See 'name'.
  Core.Text ->
  CloudbuildProjectsLocationsGithubEnterpriseConfigsGet
newCloudbuildProjectsLocationsGithubEnterpriseConfigsGet name =
  CloudbuildProjectsLocationsGithubEnterpriseConfigsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      configId = Core.Nothing,
      name = name,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGet
  where
  type
    Rs
      CloudbuildProjectsLocationsGithubEnterpriseConfigsGet =
      GitHubEnterpriseConfig
  type
    Scopes
      CloudbuildProjectsLocationsGithubEnterpriseConfigsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsGithubEnterpriseConfigsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        configId
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
                  CloudbuildProjectsLocationsGithubEnterpriseConfigsGetResource
            )
            Core.mempty

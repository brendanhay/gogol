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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.githubEnterpriseConfigs.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Delete
  ( -- * Resource
    CloudbuildProjectsGithubEnterpriseConfigsDeleteResource,

    -- ** Constructing a Request
    CloudbuildProjectsGithubEnterpriseConfigsDelete (..),
    newCloudbuildProjectsGithubEnterpriseConfigsDelete,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.githubEnterpriseConfigs.delete@ method which the
-- 'CloudbuildProjectsGithubEnterpriseConfigsDelete' request conforms to.
type CloudbuildProjectsGithubEnterpriseConfigsDeleteResource =
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
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Delete an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ 'newCloudbuildProjectsGithubEnterpriseConfigsDelete' smart constructor.
data CloudbuildProjectsGithubEnterpriseConfigsDelete = CloudbuildProjectsGithubEnterpriseConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Unique identifier of the @GitHubEnterpriseConfig@
    configId :: (Core.Maybe Core.Text),
    -- | This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/locations\/{$location/id}\/githubEnterpriseConfigs\/{$config_id}\"
    name :: Core.Text,
    -- | ID of the project
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsGithubEnterpriseConfigsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsGithubEnterpriseConfigsDelete ::
  -- |  This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/locations\/{$location/id}\/githubEnterpriseConfigs\/{$config_id}\" See 'name'.
  Core.Text ->
  CloudbuildProjectsGithubEnterpriseConfigsDelete
newCloudbuildProjectsGithubEnterpriseConfigsDelete name =
  CloudbuildProjectsGithubEnterpriseConfigsDelete
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
    CloudbuildProjectsGithubEnterpriseConfigsDelete
  where
  type
    Rs
      CloudbuildProjectsGithubEnterpriseConfigsDelete =
      Operation
  type
    Scopes
      CloudbuildProjectsGithubEnterpriseConfigsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsGithubEnterpriseConfigsDelete {..} =
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
                  CloudbuildProjectsGithubEnterpriseConfigsDeleteResource
            )
            Core.mempty

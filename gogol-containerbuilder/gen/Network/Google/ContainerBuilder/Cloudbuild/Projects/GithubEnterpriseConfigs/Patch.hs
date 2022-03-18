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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.githubEnterpriseConfigs.patch@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.GithubEnterpriseConfigs.Patch
  ( -- * Resource
    CloudbuildProjectsGithubEnterpriseConfigsPatchResource,

    -- ** Constructing a Request
    newCloudbuildProjectsGithubEnterpriseConfigsPatch,
    CloudbuildProjectsGithubEnterpriseConfigsPatch,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.githubEnterpriseConfigs.patch@ method which the
-- 'CloudbuildProjectsGithubEnterpriseConfigsPatch' request conforms to.
type CloudbuildProjectsGithubEnterpriseConfigsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GitHubEnterpriseConfig
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Update an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ 'newCloudbuildProjectsGithubEnterpriseConfigsPatch' smart constructor.
data CloudbuildProjectsGithubEnterpriseConfigsPatch = CloudbuildProjectsGithubEnterpriseConfigsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GitHubEnterpriseConfig,
    -- | Update mask for the resource. If this is set, the server will only update the fields specified in the field mask. Otherwise, a full update of the mutable resource fields will be performed.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsGithubEnterpriseConfigsPatch' with the minimum fields required to make a request.
newCloudbuildProjectsGithubEnterpriseConfigsPatch ::
  -- |  Optional. The full resource name for the GitHubEnterpriseConfig For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GitHubEnterpriseConfig ->
  CloudbuildProjectsGithubEnterpriseConfigsPatch
newCloudbuildProjectsGithubEnterpriseConfigsPatch name payload =
  CloudbuildProjectsGithubEnterpriseConfigsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsGithubEnterpriseConfigsPatch
  where
  type
    Rs
      CloudbuildProjectsGithubEnterpriseConfigsPatch =
      Operation
  type
    Scopes
      CloudbuildProjectsGithubEnterpriseConfigsPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsGithubEnterpriseConfigsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsGithubEnterpriseConfigsPatchResource
            )
            Core.mempty

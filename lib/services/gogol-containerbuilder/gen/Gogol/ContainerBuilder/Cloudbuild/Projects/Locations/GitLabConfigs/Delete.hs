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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a @GitLabConfig@. This API is experimental
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Delete
  ( -- * Resource
    CloudbuildProjectsLocationsGitLabConfigsDeleteResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsGitLabConfigsDelete (..),
    newCloudbuildProjectsLocationsGitLabConfigsDelete,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.delete@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsDelete' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Delete a @GitLabConfig@. This API is experimental
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsDelete' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsDelete = CloudbuildProjectsLocationsGitLabConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The config resource name.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsDelete ::
  -- |  Required. The config resource name. See 'name'.
  Core.Text ->
  CloudbuildProjectsLocationsGitLabConfigsDelete
newCloudbuildProjectsLocationsGitLabConfigsDelete name =
  CloudbuildProjectsLocationsGitLabConfigsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsGitLabConfigsDelete
  where
  type
    Rs
      CloudbuildProjectsLocationsGitLabConfigsDelete =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsGitLabConfigsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsGitLabConfigsDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsGitLabConfigsDeleteResource
            )
            Core.mempty

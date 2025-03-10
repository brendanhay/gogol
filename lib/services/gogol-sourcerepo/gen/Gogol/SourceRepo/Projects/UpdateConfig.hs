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
-- Module      : Gogol.SourceRepo.Projects.UpdateConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Cloud Source Repositories configuration of the project.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference> for @sourcerepo.projects.updateConfig@.
module Gogol.SourceRepo.Projects.UpdateConfig
  ( -- * Resource
    SourceRepoProjectsUpdateConfigResource,

    -- ** Constructing a Request
    SourceRepoProjectsUpdateConfig (..),
    newSourceRepoProjectsUpdateConfig,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.updateConfig@ method which the
-- 'SourceRepoProjectsUpdateConfig' request conforms to.
type SourceRepoProjectsUpdateConfigResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "config"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateProjectConfigRequest
    Core.:> Core.Patch '[Core.JSON] ProjectConfig

-- | Updates the Cloud Source Repositories configuration of the project.
--
-- /See:/ 'newSourceRepoProjectsUpdateConfig' smart constructor.
data SourceRepoProjectsUpdateConfig = SourceRepoProjectsUpdateConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the requested project. Values are of the form @projects\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateProjectConfigRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsUpdateConfig' with the minimum fields required to make a request.
newSourceRepoProjectsUpdateConfig ::
  -- |  The name of the requested project. Values are of the form @projects\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateProjectConfigRequest ->
  SourceRepoProjectsUpdateConfig
newSourceRepoProjectsUpdateConfig name payload =
  SourceRepoProjectsUpdateConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SourceRepoProjectsUpdateConfig where
  type Rs SourceRepoProjectsUpdateConfig = ProjectConfig
  type
    Scopes SourceRepoProjectsUpdateConfig =
      '[CloudPlatform'FullControl]
  requestClient SourceRepoProjectsUpdateConfig {..} =
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
          (Core.Proxy :: Core.Proxy SourceRepoProjectsUpdateConfigResource)
          Core.mempty

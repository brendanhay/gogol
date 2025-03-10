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
-- Module      : Gogol.SourceRepo.Projects.GetConfig
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Cloud Source Repositories configuration of the project.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs Cloud Source Repositories API Reference> for @sourcerepo.projects.getConfig@.
module Gogol.SourceRepo.Projects.GetConfig
  ( -- * Resource
    SourceRepoProjectsGetConfigResource,

    -- ** Constructing a Request
    SourceRepoProjectsGetConfig (..),
    newSourceRepoProjectsGetConfig,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.getConfig@ method which the
-- 'SourceRepoProjectsGetConfig' request conforms to.
type SourceRepoProjectsGetConfigResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "config"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ProjectConfig

-- | Returns the Cloud Source Repositories configuration of the project.
--
-- /See:/ 'newSourceRepoProjectsGetConfig' smart constructor.
data SourceRepoProjectsGetConfig = SourceRepoProjectsGetConfig
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the requested project. Values are of the form @projects\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsGetConfig' with the minimum fields required to make a request.
newSourceRepoProjectsGetConfig ::
  -- |  The name of the requested project. Values are of the form @projects\/@. See 'name'.
  Core.Text ->
  SourceRepoProjectsGetConfig
newSourceRepoProjectsGetConfig name =
  SourceRepoProjectsGetConfig
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest SourceRepoProjectsGetConfig where
  type Rs SourceRepoProjectsGetConfig = ProjectConfig
  type
    Scopes SourceRepoProjectsGetConfig =
      '[CloudPlatform'FullControl]
  requestClient SourceRepoProjectsGetConfig {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sourceRepoService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SourceRepoProjectsGetConfigResource)
          Core.mempty

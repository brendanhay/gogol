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
-- Module      : Network.Google.SourceRepo.Projects.Repos.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about a repo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.patch@.
module Network.Google.SourceRepo.Projects.Repos.Patch
  ( -- * Resource
    SourceRepoProjectsReposPatchResource,

    -- ** Constructing a Request
    newSourceRepoProjectsReposPatch,
    SourceRepoProjectsReposPatch,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.patch@ method which the
-- 'SourceRepoProjectsReposPatch' request conforms to.
type SourceRepoProjectsReposPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UpdateRepoRequest
    Core.:> Core.Patch '[Core.JSON] Repo

-- | Updates information about a repo.
--
-- /See:/ 'newSourceRepoProjectsReposPatch' smart constructor.
data SourceRepoProjectsReposPatch = SourceRepoProjectsReposPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the requested repository. Values are of the form @projects\/\/repos\/@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UpdateRepoRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposPatch' with the minimum fields required to make a request.
newSourceRepoProjectsReposPatch ::
  -- |  The name of the requested repository. Values are of the form @projects\/\/repos\/@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UpdateRepoRequest ->
  SourceRepoProjectsReposPatch
newSourceRepoProjectsReposPatch name payload =
  SourceRepoProjectsReposPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SourceRepoProjectsReposPatch
  where
  type Rs SourceRepoProjectsReposPatch = Repo
  type
    Scopes SourceRepoProjectsReposPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient SourceRepoProjectsReposPatch {..} =
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
          ( Core.Proxy ::
              Core.Proxy SourceRepoProjectsReposPatchResource
          )
          Core.mempty

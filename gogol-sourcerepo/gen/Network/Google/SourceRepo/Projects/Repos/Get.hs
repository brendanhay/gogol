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
-- Module      : Network.Google.SourceRepo.Projects.Repos.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a repo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.get@.
module Network.Google.SourceRepo.Projects.Repos.Get
  ( -- * Resource
    SourceRepoProjectsReposGetResource,

    -- ** Constructing a Request
    newSourceRepoProjectsReposGet,
    SourceRepoProjectsReposGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.get@ method which the
-- 'SourceRepoProjectsReposGet' request conforms to.
type SourceRepoProjectsReposGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Repo

-- | Returns information about a repo.
--
-- /See:/ 'newSourceRepoProjectsReposGet' smart constructor.
data SourceRepoProjectsReposGet = SourceRepoProjectsReposGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the requested repository. Values are of the form @projects\/\/repos\/@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposGet' with the minimum fields required to make a request.
newSourceRepoProjectsReposGet ::
  -- |  The name of the requested repository. Values are of the form @projects\/\/repos\/@. See 'name'.
  Core.Text ->
  SourceRepoProjectsReposGet
newSourceRepoProjectsReposGet name =
  SourceRepoProjectsReposGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SourceRepoProjectsReposGet
  where
  type Rs SourceRepoProjectsReposGet = Repo
  type
    Scopes SourceRepoProjectsReposGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/source.full_control",
         "https://www.googleapis.com/auth/source.read_only",
         "https://www.googleapis.com/auth/source.read_write"
       ]
  requestClient SourceRepoProjectsReposGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy SourceRepoProjectsReposGetResource
          )
          Core.mempty

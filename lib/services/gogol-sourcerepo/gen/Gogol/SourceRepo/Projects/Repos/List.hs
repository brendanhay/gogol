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
-- Module      : Gogol.SourceRepo.Projects.Repos.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all repos belonging to a project. The sizes of the repos are not set by ListRepos. To get the size of a repo, use GetRepo.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.repos.list@.
module Gogol.SourceRepo.Projects.Repos.List
  ( -- * Resource
    SourceRepoProjectsReposListResource,

    -- ** Constructing a Request
    SourceRepoProjectsReposList (..),
    newSourceRepoProjectsReposList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.repos.list@ method which the
-- 'SourceRepoProjectsReposList' request conforms to.
type SourceRepoProjectsReposListResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> "repos"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListReposResponse

-- | Returns all repos belonging to a project. The sizes of the repos are not set by ListRepos. To get the size of a repo, use GetRepo.
--
-- /See:/ 'newSourceRepoProjectsReposList' smart constructor.
data SourceRepoProjectsReposList = SourceRepoProjectsReposList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The project ID whose repos should be listed. Values are of the form @projects\/@.
    name :: Core.Text,
    -- | Maximum number of repositories to return; between 1 and 500. If not set or zero, defaults to 100 at the server.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Resume listing repositories where a prior ListReposResponse left off. This is an opaque token that must be obtained from a recent, prior ListReposResponse\'s next/page/token field.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SourceRepoProjectsReposList' with the minimum fields required to make a request.
newSourceRepoProjectsReposList ::
  -- |  The project ID whose repos should be listed. Values are of the form @projects\/@. See 'name'.
  Core.Text ->
  SourceRepoProjectsReposList
newSourceRepoProjectsReposList name =
  SourceRepoProjectsReposList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SourceRepoProjectsReposList
  where
  type
    Rs SourceRepoProjectsReposList =
      ListReposResponse
  type
    Scopes SourceRepoProjectsReposList =
      '[ CloudPlatform'FullControl,
         Source'FullControl,
         Source'ReadOnly,
         Source'ReadWrite
       ]
  requestClient SourceRepoProjectsReposList {..} =
    go
      name
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      sourceRepoService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SourceRepoProjectsReposListResource
          )
          Core.mempty

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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all @GitLabConfigs@ for a given project. This API is experimental
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.List
  ( -- * Resource
    CloudbuildProjectsLocationsGitLabConfigsListResource,

    -- ** Constructing a Request
    CloudbuildProjectsLocationsGitLabConfigsList (..),
    newCloudbuildProjectsLocationsGitLabConfigsList,
  )
where

import Gogol.ContainerBuilder.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.list@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsList' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "gitLabConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListGitLabConfigsResponse

-- | List all @GitLabConfigs@ for a given project. This API is experimental
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsList' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsList = CloudbuildProjectsLocationsGitLabConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of configs to return. The service may return fewer than this value. If unspecified, at most 50 configs will be returned. The maximum value is 1000;, values above 1000 will be coerced to 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous ‘ListGitlabConfigsRequest’ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to ‘ListGitlabConfigsRequest’ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the parent resource
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsList ::
  -- |  Required. Name of the parent resource See 'parent'.
  Core.Text ->
  CloudbuildProjectsLocationsGitLabConfigsList
newCloudbuildProjectsLocationsGitLabConfigsList parent =
  CloudbuildProjectsLocationsGitLabConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsGitLabConfigsList
  where
  type
    Rs CloudbuildProjectsLocationsGitLabConfigsList =
      ListGitLabConfigsResponse
  type
    Scopes
      CloudbuildProjectsLocationsGitLabConfigsList =
      '[CloudPlatform'FullControl]
  requestClient
    CloudbuildProjectsLocationsGitLabConfigsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsGitLabConfigsListResource
            )
            Core.mempty

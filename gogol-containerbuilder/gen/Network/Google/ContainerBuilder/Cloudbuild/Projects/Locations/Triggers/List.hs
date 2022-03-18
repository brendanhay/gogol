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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists existing @BuildTrigger@s. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.list@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.List
  ( -- * Resource
    CloudbuildProjectsLocationsTriggersListResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsTriggersList,
    CloudbuildProjectsLocationsTriggersList,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.triggers.list@ method which the
-- 'CloudbuildProjectsLocationsTriggersList' request conforms to.
type CloudbuildProjectsLocationsTriggersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "triggers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "projectId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListBuildTriggersResponse

-- | Lists existing @BuildTrigger@s. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersList' smart constructor.
data CloudbuildProjectsLocationsTriggersList = CloudbuildProjectsLocationsTriggersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Number of results to return in the list.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Token to provide to skip to a particular spot in the list.
    pageToken :: (Core.Maybe Core.Text),
    -- | The parent of the collection of @Triggers@. Format: @projects\/{project}\/locations\/{location}@
    parent :: Core.Text,
    -- | Required. ID of the project for which to list BuildTriggers.
    projectId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersList ::
  -- |  The parent of the collection of @Triggers@. Format: @projects\/{project}\/locations\/{location}@ See 'parent'.
  Core.Text ->
  CloudbuildProjectsLocationsTriggersList
newCloudbuildProjectsLocationsTriggersList parent =
  CloudbuildProjectsLocationsTriggersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      projectId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsTriggersList
  where
  type
    Rs CloudbuildProjectsLocationsTriggersList =
      ListBuildTriggersResponse
  type
    Scopes CloudbuildProjectsLocationsTriggersList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsTriggersList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        pageSize
        pageToken
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
                  CloudbuildProjectsLocationsTriggersListResource
            )
            Core.mempty

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
-- Module      : Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a @WorkerPool@.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.create@.
module Network.Google.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Create
  ( -- * Resource
    CloudbuildProjectsLocationsWorkerPoolsCreateResource,

    -- ** Constructing a Request
    newCloudbuildProjectsLocationsWorkerPoolsCreate,
    CloudbuildProjectsLocationsWorkerPoolsCreate,
  )
where

import Network.Google.ContainerBuilder.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudbuild.projects.locations.workerPools.create@ method which the
-- 'CloudbuildProjectsLocationsWorkerPoolsCreate' request conforms to.
type CloudbuildProjectsLocationsWorkerPoolsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workerPools"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "workerPoolId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkerPool
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a @WorkerPool@.
--
-- /See:/ 'newCloudbuildProjectsLocationsWorkerPoolsCreate' smart constructor.
data CloudbuildProjectsLocationsWorkerPoolsCreate = CloudbuildProjectsLocationsWorkerPoolsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource where this worker pool will be created. Format: @projects\/{project}\/locations\/{location}@.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkerPool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | If set, validate the request and preview the response, but do not actually post it.
    validateOnly :: (Core.Maybe Core.Bool),
    -- | Required. Immutable. The ID to use for the @WorkerPool@, which will become the final component of the resource name. This value should be 1-63 characters, and valid characters are \/a-z-\/.
    workerPoolId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsWorkerPoolsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsWorkerPoolsCreate ::
  -- |  Required. The parent resource where this worker pool will be created. Format: @projects\/{project}\/locations\/{location}@. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkerPool ->
  CloudbuildProjectsLocationsWorkerPoolsCreate
newCloudbuildProjectsLocationsWorkerPoolsCreate parent payload =
  CloudbuildProjectsLocationsWorkerPoolsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing,
      workerPoolId = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudbuildProjectsLocationsWorkerPoolsCreate
  where
  type
    Rs CloudbuildProjectsLocationsWorkerPoolsCreate =
      Operation
  type
    Scopes
      CloudbuildProjectsLocationsWorkerPoolsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudbuildProjectsLocationsWorkerPoolsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        validateOnly
        workerPoolId
        (Core.Just Core.AltJSON)
        payload
        containerBuilderService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudbuildProjectsLocationsWorkerPoolsCreateResource
            )
            Core.mempty

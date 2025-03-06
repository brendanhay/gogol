{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.Run.Projects.Locations.Services.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Service in a given project and location.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.create@.
module Gogol.Run.Projects.Locations.Services.Create
  ( -- * Resource
    RunProjectsLocationsServicesCreateResource,

    -- ** Constructing a Request
    RunProjectsLocationsServicesCreate (..),
    newRunProjectsLocationsServicesCreate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.services.create@ method which the
-- 'RunProjectsLocationsServicesCreate' request conforms to.
type RunProjectsLocationsServicesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "services"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "serviceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2Service
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Creates a new Service in a given project and location.
--
-- /See:/ 'newRunProjectsLocationsServicesCreate' smart constructor.
data RunProjectsLocationsServicesCreate = RunProjectsLocationsServicesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The location and project in which this service should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. Only lowercase characters, digits, and hyphens.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2Service,
    -- | Required. The unique identifier for the Service. It must begin with letter, and cannot end with hyphen; must contain fewer than 50 characters. The name of the service becomes {parent}\/services\/{service_id}.
    serviceId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Indicates that the request should be validated and default values populated, without persisting the request or creating any resources.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesCreate' with the minimum fields required to make a request.
newRunProjectsLocationsServicesCreate ::
  -- |  Required. The location and project in which this service should be created. Format: projects\/{project}\/locations\/{location}, where {project} can be project id or number. Only lowercase characters, digits, and hyphens. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2Service ->
  RunProjectsLocationsServicesCreate
newRunProjectsLocationsServicesCreate parent payload =
  RunProjectsLocationsServicesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      serviceId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsServicesCreate where
  type
    Rs RunProjectsLocationsServicesCreate =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsServicesCreate =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsServicesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      serviceId
      uploadType
      uploadProtocol
      validateOnly
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsServicesCreateResource
          )
          Core.mempty

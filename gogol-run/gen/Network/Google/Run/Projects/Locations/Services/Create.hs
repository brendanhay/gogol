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
-- Module      : Network.Google.Run.Projects.Locations.Services.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Service in a given project and location.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.create@.
module Network.Google.Run.Projects.Locations.Services.Create
  ( -- * Resource
    RunProjectsLocationsServicesCreateResource,

    -- ** Constructing a Request
    newRunProjectsLocationsServicesCreate,
    RunProjectsLocationsServicesCreate,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Run.Types

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
    -- | Required. The location and project in which this service should be created. Format: projects\/{projectnumber}\/locations\/{location}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2Service,
    -- | Required. The unique identifier for the Service. The name of the service becomes {parent}\/services\/{service_id}.
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
  -- |  Required. The location and project in which this service should be created. Format: projects\/{projectnumber}\/locations\/{location} See 'parent'.
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

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesCreate
  where
  type
    Rs RunProjectsLocationsServicesCreate =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsServicesCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
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
              Core.Proxy
                RunProjectsLocationsServicesCreateResource
          )
          Core.mempty

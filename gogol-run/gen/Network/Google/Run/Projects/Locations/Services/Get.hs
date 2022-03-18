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
-- Module      : Network.Google.Run.Projects.Locations.Services.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.get@.
module Network.Google.Run.Projects.Locations.Services.Get
  ( -- * Resource
    RunProjectsLocationsServicesGetResource,

    -- ** Constructing a Request
    newRunProjectsLocationsServicesGet,
    RunProjectsLocationsServicesGet,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.get@ method which the
-- 'RunProjectsLocationsServicesGet' request conforms to.
type RunProjectsLocationsServicesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2Service

-- | Gets information about a Service.
--
-- /See:/ 'newRunProjectsLocationsServicesGet' smart constructor.
data RunProjectsLocationsServicesGet = RunProjectsLocationsServicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full name of the Service. Format: projects\/{projectnumber}\/locations\/{location}\/services\/{service}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesGet' with the minimum fields required to make a request.
newRunProjectsLocationsServicesGet ::
  -- |  Required. The full name of the Service. Format: projects\/{projectnumber}\/locations\/{location}\/services\/{service} See 'name'.
  Core.Text ->
  RunProjectsLocationsServicesGet
newRunProjectsLocationsServicesGet name =
  RunProjectsLocationsServicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesGet
  where
  type
    Rs RunProjectsLocationsServicesGet =
      GoogleCloudRunV2Service
  type
    Scopes RunProjectsLocationsServicesGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient RunProjectsLocationsServicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsServicesGetResource
          )
          Core.mempty

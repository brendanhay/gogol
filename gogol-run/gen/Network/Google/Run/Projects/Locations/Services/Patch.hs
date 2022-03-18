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
-- Module      : Network.Google.Run.Projects.Locations.Services.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Service.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.patch@.
module Network.Google.Run.Projects.Locations.Services.Patch
  ( -- * Resource
    RunProjectsLocationsServicesPatchResource,

    -- ** Constructing a Request
    newRunProjectsLocationsServicesPatch,
    RunProjectsLocationsServicesPatch,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.patch@ method which the
-- 'RunProjectsLocationsServicesPatch' request conforms to.
type RunProjectsLocationsServicesPatchResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowMissing" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "validateOnly" Core.Bool
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleCloudRunV2Service
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunningOperation

-- | Updates a Service.
--
-- /See:/ 'newRunProjectsLocationsServicesPatch' smart constructor.
data RunProjectsLocationsServicesPatch = RunProjectsLocationsServicesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | If set to true, and if the Service does not exist, it will create a new one. Caller must have both create and update permissions for this call if this is set to true.
    allowMissing :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service/id. Format: projects\/{project}\/locations\/{location}\/services\/{service/id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleCloudRunV2Service,
    -- | The list of fields to be updated.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Indicates that the request should be validated and default values populated, without persisting the request or updating any resources.
    validateOnly :: (Core.Maybe Core.Bool)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesPatch' with the minimum fields required to make a request.
newRunProjectsLocationsServicesPatch ::
  -- |  The fully qualified name of this Service. In CreateServiceRequest, this field is ignored, and instead composed from CreateServiceRequest.parent and CreateServiceRequest.service/id. Format: projects\/{project}\/locations\/{location}\/services\/{service/id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleCloudRunV2Service ->
  RunProjectsLocationsServicesPatch
newRunProjectsLocationsServicesPatch name payload =
  RunProjectsLocationsServicesPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowMissing = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      validateOnly = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesPatch
  where
  type
    Rs RunProjectsLocationsServicesPatch =
      GoogleLongrunningOperation
  type
    Scopes RunProjectsLocationsServicesPatch =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient RunProjectsLocationsServicesPatch {..} =
    go
      name
      xgafv
      accessToken
      allowMissing
      callback
      updateMask
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
              Core.Proxy RunProjectsLocationsServicesPatchResource
          )
          Core.mempty

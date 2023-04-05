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
-- Module      : Gogol.Run.Projects.Locations.Services.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.testIamPermissions@.
module Gogol.Run.Projects.Locations.Services.TestIamPermissions
  ( -- * Resource
    RunProjectsLocationsServicesTestIamPermissionsResource,

    -- ** Constructing a Request
    RunProjectsLocationsServicesTestIamPermissions (..),
    newRunProjectsLocationsServicesTestIamPermissions,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.services.testIamPermissions@ method which the
-- 'RunProjectsLocationsServicesTestIamPermissions' request conforms to.
type RunProjectsLocationsServicesTestIamPermissionsResource =
  "v2"
    Core.:> Core.CaptureMode
              "resource"
              "testIamPermissions"
              Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleIamV1TestIamPermissionsRequest
    Core.:> Core.Post
              '[Core.JSON]
              GoogleIamV1TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified Project. There are no permissions required for making this API call.
--
-- /See:/ 'newRunProjectsLocationsServicesTestIamPermissions' smart constructor.
data RunProjectsLocationsServicesTestIamPermissions = RunProjectsLocationsServicesTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleIamV1TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesTestIamPermissions' with the minimum fields required to make a request.
newRunProjectsLocationsServicesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV1TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  RunProjectsLocationsServicesTestIamPermissions
newRunProjectsLocationsServicesTestIamPermissions payload resource =
  RunProjectsLocationsServicesTestIamPermissions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesTestIamPermissions
  where
  type
    Rs
      RunProjectsLocationsServicesTestIamPermissions =
      GoogleIamV1TestIamPermissionsResponse
  type
    Scopes
      RunProjectsLocationsServicesTestIamPermissions =
      '[CloudPlatform'FullControl]
  requestClient
    RunProjectsLocationsServicesTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        runService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  RunProjectsLocationsServicesTestIamPermissionsResource
            )
            Core.mempty

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
-- Module      : Gogol.DataFusion.Projects.Locations.Instances.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ <https://cloud.google.com/data-fusion/docs Cloud Data Fusion API Reference> for @datafusion.projects.locations.instances.testIamPermissions@.
module Gogol.DataFusion.Projects.Locations.Instances.TestIamPermissions
  ( -- * Resource
    DataFusionProjectsLocationsInstancesTestIamPermissionsResource,

    -- ** Constructing a Request
    DataFusionProjectsLocationsInstancesTestIamPermissions (..),
    newDataFusionProjectsLocationsInstancesTestIamPermissions,
  )
where

import Gogol.DataFusion.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @datafusion.projects.locations.instances.testIamPermissions@ method which the
-- 'DataFusionProjectsLocationsInstancesTestIamPermissions' request conforms to.
type DataFusionProjectsLocationsInstancesTestIamPermissionsResource =
  "v1"
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
    Core.:> Core.ReqBody '[Core.JSON] TestIamPermissionsRequest
    Core.:> Core.Post '[Core.JSON] TestIamPermissionsResponse

-- | Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a @NOT_FOUND@ error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.
--
-- /See:/ 'newDataFusionProjectsLocationsInstancesTestIamPermissions' smart constructor.
data DataFusionProjectsLocationsInstancesTestIamPermissions = DataFusionProjectsLocationsInstancesTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestIamPermissionsRequest,
    -- | REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataFusionProjectsLocationsInstancesTestIamPermissions' with the minimum fields required to make a request.
newDataFusionProjectsLocationsInstancesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestIamPermissionsRequest ->
  -- |  REQUIRED: The resource for which the policy detail is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  DataFusionProjectsLocationsInstancesTestIamPermissions
newDataFusionProjectsLocationsInstancesTestIamPermissions payload resource =
  DataFusionProjectsLocationsInstancesTestIamPermissions
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
    DataFusionProjectsLocationsInstancesTestIamPermissions
  where
  type
    Rs
      DataFusionProjectsLocationsInstancesTestIamPermissions =
      TestIamPermissionsResponse
  type
    Scopes
      DataFusionProjectsLocationsInstancesTestIamPermissions =
      '[CloudPlatform'FullControl]
  requestClient
    DataFusionProjectsLocationsInstancesTestIamPermissions {..} =
      go
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataFusionService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataFusionProjectsLocationsInstancesTestIamPermissionsResource
            )
            Core.mempty

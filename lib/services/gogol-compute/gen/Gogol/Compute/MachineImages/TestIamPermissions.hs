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
-- Module      : Gogol.Compute.MachineImages.TestIamPermissions
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.machineImages.testIamPermissions@.
module Gogol.Compute.MachineImages.TestIamPermissions
  ( -- * Resource
    ComputeMachineImagesTestIamPermissionsResource,

    -- ** Constructing a Request
    ComputeMachineImagesTestIamPermissions (..),
    newComputeMachineImagesTestIamPermissions,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.machineImages.testIamPermissions@ method which the
-- 'ComputeMachineImagesTestIamPermissions' request conforms to.
type ComputeMachineImagesTestIamPermissionsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "machineImages"
    Core.:> Core.Capture "resource" Core.Text
    Core.:> "testIamPermissions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              TestPermissionsRequest
    Core.:> Core.Post
              '[Core.JSON]
              TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'newComputeMachineImagesTestIamPermissions' smart constructor.
data ComputeMachineImagesTestIamPermissions = ComputeMachineImagesTestIamPermissions
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: TestPermissionsRequest,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name or id of the resource for this request.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeMachineImagesTestIamPermissions' with the minimum fields required to make a request.
newComputeMachineImagesTestIamPermissions ::
  -- |  Multipart request metadata. See 'payload'.
  TestPermissionsRequest ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name or id of the resource for this request. See 'resource'.
  Core.Text ->
  ComputeMachineImagesTestIamPermissions
newComputeMachineImagesTestIamPermissions payload project resource =
  ComputeMachineImagesTestIamPermissions
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      project = project,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeMachineImagesTestIamPermissions
  where
  type
    Rs ComputeMachineImagesTestIamPermissions =
      TestPermissionsResponse
  type
    Scopes ComputeMachineImagesTestIamPermissions =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeMachineImagesTestIamPermissions {..} =
      go
        project
        resource
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        computeService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComputeMachineImagesTestIamPermissionsResource
            )
            Core.mempty

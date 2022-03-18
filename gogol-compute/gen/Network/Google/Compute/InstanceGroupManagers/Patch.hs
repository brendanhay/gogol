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
-- Module      : Network.Google.Compute.InstanceGroupManagers.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a managed instance group using the information that you specify in the request. This operation is marked as DONE when the group is patched even if the instances in the group are still in the process of being patched. You must separately verify the status of the individual instances with the listManagedInstances method. This method supports PATCH semantics and uses the JSON merge patch format and processing rules. If you update your group to specify a new template or instance configuration, it\'s possible that your intended specification for each VM in the group is different from the current state of that VM. To learn how to apply an updated configuration to the VMs in a MIG, see Updating instances in a MIG.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instanceGroupManagers.patch@.
module Network.Google.Compute.InstanceGroupManagers.Patch
  ( -- * Resource
    ComputeInstanceGroupManagersPatchResource,

    -- ** Constructing a Request
    newComputeInstanceGroupManagersPatch,
    ComputeInstanceGroupManagersPatch,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.instanceGroupManagers.patch@ method which the
-- 'ComputeInstanceGroupManagersPatch' request conforms to.
type ComputeInstanceGroupManagersPatchResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              InstanceGroupManager
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates a managed instance group using the information that you specify in the request. This operation is marked as DONE when the group is patched even if the instances in the group are still in the process of being patched. You must separately verify the status of the individual instances with the listManagedInstances method. This method supports PATCH semantics and uses the JSON merge patch format and processing rules. If you update your group to specify a new template or instance configuration, it\'s possible that your intended specification for each VM in the group is different from the current state of that VM. To learn how to apply an updated configuration to the VMs in a MIG, see Updating instances in a MIG.
--
-- /See:/ 'newComputeInstanceGroupManagersPatch' smart constructor.
data ComputeInstanceGroupManagersPatch = ComputeInstanceGroupManagersPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the instance group manager.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: InstanceGroupManager,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone where you want to create the managed instance group.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstanceGroupManagersPatch' with the minimum fields required to make a request.
newComputeInstanceGroupManagersPatch ::
  -- |  The name of the instance group manager. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  InstanceGroupManager ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone where you want to create the managed instance group. See 'zone'.
  Core.Text ->
  ComputeInstanceGroupManagersPatch
newComputeInstanceGroupManagersPatch instanceGroupManager payload project zone =
  ComputeInstanceGroupManagersPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceGroupManager = instanceGroupManager,
      payload = payload,
      project = project,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstanceGroupManagersPatch
  where
  type Rs ComputeInstanceGroupManagersPatch = Operation
  type
    Scopes ComputeInstanceGroupManagersPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient ComputeInstanceGroupManagersPatch {..} =
    go
      project
      zone
      instanceGroupManager
      xgafv
      accessToken
      callback
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeInstanceGroupManagersPatchResource
          )
          Core.mempty

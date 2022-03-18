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
-- Module      : Gogol.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionInstanceGroupManagers.deletePerInstanceConfigs@.
module Gogol.Compute.RegionInstanceGroupManagers.DeletePerInstanceConfigs
  ( -- * Resource
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigsResource,

    -- ** Constructing a Request
    newComputeRegionInstanceGroupManagersDeletePerInstanceConfigs,
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionInstanceGroupManagers.deletePerInstanceConfigs@ method which the
-- 'ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs' request conforms to.
type ComputeRegionInstanceGroupManagersDeletePerInstanceConfigsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "instanceGroupManagers"
    Core.:> Core.Capture "instanceGroupManager" Core.Text
    Core.:> "deletePerInstanceConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              RegionInstanceGroupManagerDeleteInstanceConfigReq
    Core.:> Core.Post '[Core.JSON] Operation

-- | Deletes selected per-instance configs for the managed instance group.
--
-- /See:/ 'newComputeRegionInstanceGroupManagersDeletePerInstanceConfigs' smart constructor.
data ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs = ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the managed instance group. It should conform to RFC1035.
    instanceGroupManager :: Core.Text,
    -- | Multipart request metadata.
    payload :: RegionInstanceGroupManagerDeleteInstanceConfigReq,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request, should conform to RFC1035.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs' with the minimum fields required to make a request.
newComputeRegionInstanceGroupManagersDeletePerInstanceConfigs ::
  -- |  The name of the managed instance group. It should conform to RFC1035. See 'instanceGroupManager'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  RegionInstanceGroupManagerDeleteInstanceConfigReq ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request, should conform to RFC1035. See 'region'.
  Core.Text ->
  ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs
newComputeRegionInstanceGroupManagersDeletePerInstanceConfigs instanceGroupManager payload project region =
  ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceGroupManager = instanceGroupManager,
      payload = payload,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs
  where
  type
    Rs
      ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs =
      Operation
  type
    Scopes
      ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute"
       ]
  requestClient
    ComputeRegionInstanceGroupManagersDeletePerInstanceConfigs {..} =
      go
        project
        region
        instanceGroupManager
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
                  ComputeRegionInstanceGroupManagersDeletePerInstanceConfigsResource
            )
            Core.mempty

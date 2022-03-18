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
-- Module      : Network.Google.Compute.NodeGroups.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the \"nodes\" field should not be used. Use nodeGroups.listNodes instead.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.nodeGroups.get@.
module Network.Google.Compute.NodeGroups.Get
  ( -- * Resource
    ComputeNodeGroupsGetResource,

    -- ** Constructing a Request
    newComputeNodeGroupsGet,
    ComputeNodeGroupsGet,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.nodeGroups.get@ method which the
-- 'ComputeNodeGroupsGet' request conforms to.
type ComputeNodeGroupsGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "nodeGroups"
    Core.:> Core.Capture "nodeGroup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] NodeGroup

-- | Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the \"nodes\" field should not be used. Use nodeGroups.listNodes instead.
--
-- /See:/ 'newComputeNodeGroupsGet' smart constructor.
data ComputeNodeGroupsGet = ComputeNodeGroupsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the node group to return.
    nodeGroup :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNodeGroupsGet' with the minimum fields required to make a request.
newComputeNodeGroupsGet ::
  -- |  Name of the node group to return. See 'nodeGroup'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeNodeGroupsGet
newComputeNodeGroupsGet nodeGroup project zone =
  ComputeNodeGroupsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      nodeGroup = nodeGroup,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance Core.GoogleRequest ComputeNodeGroupsGet where
  type Rs ComputeNodeGroupsGet = NodeGroup
  type
    Scopes ComputeNodeGroupsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient ComputeNodeGroupsGet {..} =
    go
      project
      zone
      nodeGroup
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy ComputeNodeGroupsGetResource
          )
          Core.mempty

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
-- Module      : Gogol.Compute.Instances.GetShieldedInstanceIdentity
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Shielded Instance Identity of an instance
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.getShieldedInstanceIdentity@.
module Gogol.Compute.Instances.GetShieldedInstanceIdentity
  ( -- * Resource
    ComputeInstancesGetShieldedInstanceIdentityResource,

    -- ** Constructing a Request
    newComputeInstancesGetShieldedInstanceIdentity,
    ComputeInstancesGetShieldedInstanceIdentity,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.instances.getShieldedInstanceIdentity@ method which the
-- 'ComputeInstancesGetShieldedInstanceIdentity' request conforms to.
type ComputeInstancesGetShieldedInstanceIdentityResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "getShieldedInstanceIdentity"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ShieldedInstanceIdentity

-- | Returns the Shielded Instance Identity of an instance
--
-- /See:/ 'newComputeInstancesGetShieldedInstanceIdentity' smart constructor.
data ComputeInstancesGetShieldedInstanceIdentity = ComputeInstancesGetShieldedInstanceIdentity
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name or id of the instance scoping this request.
    instance' :: Core.Text,
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

-- | Creates a value of 'ComputeInstancesGetShieldedInstanceIdentity' with the minimum fields required to make a request.
newComputeInstancesGetShieldedInstanceIdentity ::
  -- |  Name or id of the instance scoping this request. See 'instance''.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesGetShieldedInstanceIdentity
newComputeInstancesGetShieldedInstanceIdentity instance' project zone =
  ComputeInstancesGetShieldedInstanceIdentity
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstancesGetShieldedInstanceIdentity
  where
  type
    Rs ComputeInstancesGetShieldedInstanceIdentity =
      ShieldedInstanceIdentity
  type
    Scopes
      ComputeInstancesGetShieldedInstanceIdentity =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeInstancesGetShieldedInstanceIdentity {..} =
      go
        project
        zone
        instance'
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
                Core.Proxy
                  ComputeInstancesGetShieldedInstanceIdentityResource
            )
            Core.mempty

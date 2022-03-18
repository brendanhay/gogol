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
-- Module      : Network.Google.Compute.Instances.GetGuestAttributes
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified guest attributes entry.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.instances.getGuestAttributes@.
module Network.Google.Compute.Instances.GetGuestAttributes
  ( -- * Resource
    ComputeInstancesGetGuestAttributesResource,

    -- ** Constructing a Request
    newComputeInstancesGetGuestAttributes,
    ComputeInstancesGetGuestAttributes,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.instances.getGuestAttributes@ method which the
-- 'ComputeInstancesGetGuestAttributes' request conforms to.
type ComputeInstancesGetGuestAttributesResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "instances"
    Core.:> Core.Capture "instance" Core.Text
    Core.:> "getGuestAttributes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "queryPath" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "variableKey" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GuestAttributes

-- | Returns the specified guest attributes entry.
--
-- /See:/ 'newComputeInstancesGetGuestAttributes' smart constructor.
data ComputeInstancesGetGuestAttributes = ComputeInstancesGetGuestAttributes
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the instance scoping this request.
    instance' :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Specifies the guest attributes path to be queried.
    queryPath :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Specifies the key for the guest attributes entry.
    variableKey :: (Core.Maybe Core.Text),
    -- | The name of the zone for this request.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInstancesGetGuestAttributes' with the minimum fields required to make a request.
newComputeInstancesGetGuestAttributes ::
  -- |  Name of the instance scoping this request. See 'instance''.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  The name of the zone for this request. See 'zone'.
  Core.Text ->
  ComputeInstancesGetGuestAttributes
newComputeInstancesGetGuestAttributes instance' project zone =
  ComputeInstancesGetGuestAttributes
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instance' = instance',
      project = project,
      queryPath = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      variableKey = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ComputeInstancesGetGuestAttributes
  where
  type
    Rs ComputeInstancesGetGuestAttributes =
      GuestAttributes
  type
    Scopes ComputeInstancesGetGuestAttributes =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient ComputeInstancesGetGuestAttributes {..} =
    go
      project
      zone
      instance'
      xgafv
      accessToken
      callback
      queryPath
      uploadType
      uploadProtocol
      variableKey
      (Core.Just Core.AltJSON)
      computeService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ComputeInstancesGetGuestAttributesResource
          )
          Core.mempty

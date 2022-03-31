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
-- Module      : Gogol.Compute.TargetTcpProxies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetTcpProxy resource. Gets a list of available target TCP proxies by making a list() request.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetTcpProxies.get@.
module Gogol.Compute.TargetTcpProxies.Get
  ( -- * Resource
    ComputeTargetTcpProxiesGetResource,

    -- ** Constructing a Request
    newComputeTargetTcpProxiesGet,
    ComputeTargetTcpProxiesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetTcpProxies.get@ method which the
-- 'ComputeTargetTcpProxiesGet' request conforms to.
type ComputeTargetTcpProxiesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "targetTcpProxies"
    Core.:> Core.Capture "targetTcpProxy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TargetTcpProxy

-- | Returns the specified TargetTcpProxy resource. Gets a list of available target TCP proxies by making a list() request.
--
-- /See:/ 'newComputeTargetTcpProxiesGet' smart constructor.
data ComputeTargetTcpProxiesGet = ComputeTargetTcpProxiesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the TargetTcpProxy resource to return.
    targetTcpProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetTcpProxiesGet' with the minimum fields required to make a request.
newComputeTargetTcpProxiesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the TargetTcpProxy resource to return. See 'targetTcpProxy'.
  Core.Text ->
  ComputeTargetTcpProxiesGet
newComputeTargetTcpProxiesGet project targetTcpProxy =
  ComputeTargetTcpProxiesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      targetTcpProxy = targetTcpProxy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetTcpProxiesGet
  where
  type Rs ComputeTargetTcpProxiesGet = TargetTcpProxy
  type
    Scopes ComputeTargetTcpProxiesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeTargetTcpProxiesGet {..} =
    go
      project
      targetTcpProxy
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
              Core.Proxy ComputeTargetTcpProxiesGetResource
          )
          Core.mempty

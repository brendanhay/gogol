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
-- Module      : Gogol.Compute.TargetHttpsProxies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpsProxy resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetHttpsProxies.get@.
module Gogol.Compute.TargetHttpsProxies.Get
  ( -- * Resource
    ComputeTargetHttpsProxiesGetResource,

    -- ** Constructing a Request
    ComputeTargetHttpsProxiesGet (..),
    newComputeTargetHttpsProxiesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.targetHttpsProxies.get@ method which the
-- 'ComputeTargetHttpsProxiesGet' request conforms to.
type ComputeTargetHttpsProxiesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "targetHttpsProxies"
    Core.:> Core.Capture "targetHttpsProxy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TargetHttpsProxy

-- | Returns the specified TargetHttpsProxy resource.
--
-- /See:/ 'newComputeTargetHttpsProxiesGet' smart constructor.
data ComputeTargetHttpsProxiesGet = ComputeTargetHttpsProxiesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the TargetHttpsProxy resource to return.
    targetHttpsProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetHttpsProxiesGet' with the minimum fields required to make a request.
newComputeTargetHttpsProxiesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the TargetHttpsProxy resource to return. See 'targetHttpsProxy'.
  Core.Text ->
  ComputeTargetHttpsProxiesGet
newComputeTargetHttpsProxiesGet project targetHttpsProxy =
  ComputeTargetHttpsProxiesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      targetHttpsProxy = targetHttpsProxy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetHttpsProxiesGet
  where
  type
    Rs ComputeTargetHttpsProxiesGet =
      TargetHttpsProxy
  type
    Scopes ComputeTargetHttpsProxiesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeTargetHttpsProxiesGet {..} =
    go
      project
      targetHttpsProxy
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
              Core.Proxy ComputeTargetHttpsProxiesGetResource
          )
          Core.mempty

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
-- Module      : Network.Google.Compute.TargetGrpcProxies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetGrpcProxy resource in the given scope.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.targetGrpcProxies.get@.
module Network.Google.Compute.TargetGrpcProxies.Get
  ( -- * Resource
    ComputeTargetGrpcProxiesGetResource,

    -- ** Constructing a Request
    newComputeTargetGrpcProxiesGet,
    ComputeTargetGrpcProxiesGet,
  )
where

import Network.Google.Compute.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @compute.targetGrpcProxies.get@ method which the
-- 'ComputeTargetGrpcProxiesGet' request conforms to.
type ComputeTargetGrpcProxiesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "targetGrpcProxies"
    Core.:> Core.Capture "targetGrpcProxy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] TargetGrpcProxy

-- | Returns the specified TargetGrpcProxy resource in the given scope.
--
-- /See:/ 'newComputeTargetGrpcProxiesGet' smart constructor.
data ComputeTargetGrpcProxiesGet = ComputeTargetGrpcProxiesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the TargetGrpcProxy resource to return.
    targetGrpcProxy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeTargetGrpcProxiesGet' with the minimum fields required to make a request.
newComputeTargetGrpcProxiesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the TargetGrpcProxy resource to return. See 'targetGrpcProxy'.
  Core.Text ->
  ComputeTargetGrpcProxiesGet
newComputeTargetGrpcProxiesGet project targetGrpcProxy =
  ComputeTargetGrpcProxiesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      targetGrpcProxy = targetGrpcProxy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeTargetGrpcProxiesGet
  where
  type Rs ComputeTargetGrpcProxiesGet = TargetGrpcProxy
  type
    Scopes ComputeTargetGrpcProxiesGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/compute",
         "https://www.googleapis.com/auth/compute.readonly"
       ]
  requestClient ComputeTargetGrpcProxiesGet {..} =
    go
      project
      targetGrpcProxy
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
              Core.Proxy ComputeTargetGrpcProxiesGetResource
          )
          Core.mempty

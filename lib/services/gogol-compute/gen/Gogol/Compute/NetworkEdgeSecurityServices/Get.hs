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
-- Module      : Gogol.Compute.NetworkEdgeSecurityServices.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specified NetworkEdgeSecurityService.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.networkEdgeSecurityServices.get@.
module Gogol.Compute.NetworkEdgeSecurityServices.Get
  ( -- * Resource
    ComputeNetworkEdgeSecurityServicesGetResource,

    -- ** Constructing a Request
    ComputeNetworkEdgeSecurityServicesGet (..),
    newComputeNetworkEdgeSecurityServicesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.networkEdgeSecurityServices.get@ method which the
-- 'ComputeNetworkEdgeSecurityServicesGet' request conforms to.
type ComputeNetworkEdgeSecurityServicesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "networkEdgeSecurityServices"
    Core.:> Core.Capture "networkEdgeSecurityService" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              NetworkEdgeSecurityService

-- | Gets a specified NetworkEdgeSecurityService.
--
-- /See:/ 'newComputeNetworkEdgeSecurityServicesGet' smart constructor.
data ComputeNetworkEdgeSecurityServicesGet = ComputeNetworkEdgeSecurityServicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the network edge security service to get.
    networkEdgeSecurityService :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeNetworkEdgeSecurityServicesGet' with the minimum fields required to make a request.
newComputeNetworkEdgeSecurityServicesGet ::
  -- |  Name of the network edge security service to get. See 'networkEdgeSecurityService'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  ComputeNetworkEdgeSecurityServicesGet
newComputeNetworkEdgeSecurityServicesGet networkEdgeSecurityService project region =
  ComputeNetworkEdgeSecurityServicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      networkEdgeSecurityService = networkEdgeSecurityService,
      project = project,
      region = region,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeNetworkEdgeSecurityServicesGet
  where
  type
    Rs ComputeNetworkEdgeSecurityServicesGet =
      NetworkEdgeSecurityService
  type
    Scopes ComputeNetworkEdgeSecurityServicesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient
    ComputeNetworkEdgeSecurityServicesGet {..} =
      go
        project
        region
        networkEdgeSecurityService
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
                  ComputeNetworkEdgeSecurityServicesGetResource
            )
            Core.mempty

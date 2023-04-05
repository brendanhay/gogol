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
-- Module      : Gogol.Compute.RegionSslPolicies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the ordered rules present in a single specified policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.regionSslPolicies.get@.
module Gogol.Compute.RegionSslPolicies.Get
  ( -- * Resource
    ComputeRegionSslPoliciesGetResource,

    -- ** Constructing a Request
    ComputeRegionSslPoliciesGet (..),
    newComputeRegionSslPoliciesGet,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.regionSslPolicies.get@ method which the
-- 'ComputeRegionSslPoliciesGet' request conforms to.
type ComputeRegionSslPoliciesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "regions"
    Core.:> Core.Capture "region" Core.Text
    Core.:> "sslPolicies"
    Core.:> Core.Capture "sslPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SslPolicy

-- | Lists all of the ordered rules present in a single specified policy.
--
-- /See:/ 'newComputeRegionSslPoliciesGet' smart constructor.
data ComputeRegionSslPoliciesGet = ComputeRegionSslPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the region scoping this request.
    region :: Core.Text,
    -- | Name of the SSL policy to update. The name must be 1-63 characters long, and comply with RFC1035.
    sslPolicy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeRegionSslPoliciesGet' with the minimum fields required to make a request.
newComputeRegionSslPoliciesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the region scoping this request. See 'region'.
  Core.Text ->
  -- |  Name of the SSL policy to update. The name must be 1-63 characters long, and comply with RFC1035. See 'sslPolicy'.
  Core.Text ->
  ComputeRegionSslPoliciesGet
newComputeRegionSslPoliciesGet project region sslPolicy =
  ComputeRegionSslPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      region = region,
      sslPolicy = sslPolicy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeRegionSslPoliciesGet
  where
  type Rs ComputeRegionSslPoliciesGet = SslPolicy
  type
    Scopes ComputeRegionSslPoliciesGet =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeRegionSslPoliciesGet {..} =
    go
      project
      region
      sslPolicy
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
              Core.Proxy ComputeRegionSslPoliciesGetResource
          )
          Core.mempty

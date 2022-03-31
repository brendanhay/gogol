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
-- Module      : Gogol.Compute.Interconnects.GetDiagnostics
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the interconnectDiagnostics for the specified interconnect.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.interconnects.getDiagnostics@.
module Gogol.Compute.Interconnects.GetDiagnostics
  ( -- * Resource
    ComputeInterconnectsGetDiagnosticsResource,

    -- ** Constructing a Request
    newComputeInterconnectsGetDiagnostics,
    ComputeInterconnectsGetDiagnostics,
  )
where

import Gogol.Compute.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @compute.interconnects.getDiagnostics@ method which the
-- 'ComputeInterconnectsGetDiagnostics' request conforms to.
type ComputeInterconnectsGetDiagnosticsResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "interconnects"
    Core.:> Core.Capture "interconnect" Core.Text
    Core.:> "getDiagnostics"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              InterconnectsGetDiagnosticsResponse

-- | Returns the interconnectDiagnostics for the specified interconnect.
--
-- /See:/ 'newComputeInterconnectsGetDiagnostics' smart constructor.
data ComputeInterconnectsGetDiagnostics = ComputeInterconnectsGetDiagnostics
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the interconnect resource to query.
    interconnect :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeInterconnectsGetDiagnostics' with the minimum fields required to make a request.
newComputeInterconnectsGetDiagnostics ::
  -- |  Name of the interconnect resource to query. See 'interconnect'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeInterconnectsGetDiagnostics
newComputeInterconnectsGetDiagnostics interconnect project =
  ComputeInterconnectsGetDiagnostics
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      interconnect = interconnect,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComputeInterconnectsGetDiagnostics
  where
  type
    Rs ComputeInterconnectsGetDiagnostics =
      InterconnectsGetDiagnosticsResponse
  type
    Scopes ComputeInterconnectsGetDiagnostics =
      '[ CloudPlatform'FullControl,
         Compute'FullControl,
         Compute'Readonly
       ]
  requestClient ComputeInterconnectsGetDiagnostics {..} =
    go
      project
      interconnect
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
                ComputeInterconnectsGetDiagnosticsResource
          )
          Core.mempty

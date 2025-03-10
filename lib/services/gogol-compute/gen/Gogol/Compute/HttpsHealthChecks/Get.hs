{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Compute.HttpsHealthChecks.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HttpsHealthCheck resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.httpsHealthChecks.get@.
module Gogol.Compute.HttpsHealthChecks.Get
  ( -- * Resource
    ComputeHttpsHealthChecksGetResource,

    -- ** Constructing a Request
    ComputeHttpsHealthChecksGet (..),
    newComputeHttpsHealthChecksGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.httpsHealthChecks.get@ method which the
-- 'ComputeHttpsHealthChecksGet' request conforms to.
type ComputeHttpsHealthChecksGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "httpsHealthChecks"
    Core.:> Core.Capture "httpsHealthCheck" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] HttpsHealthCheck

-- | Returns the specified HttpsHealthCheck resource.
--
-- /See:/ 'newComputeHttpsHealthChecksGet' smart constructor.
data ComputeHttpsHealthChecksGet = ComputeHttpsHealthChecksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Name of the HttpsHealthCheck resource to return.
    httpsHealthCheck :: Core.Text,
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeHttpsHealthChecksGet' with the minimum fields required to make a request.
newComputeHttpsHealthChecksGet ::
  -- |  Name of the HttpsHealthCheck resource to return. See 'httpsHealthCheck'.
  Core.Text ->
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  ComputeHttpsHealthChecksGet
newComputeHttpsHealthChecksGet httpsHealthCheck project =
  ComputeHttpsHealthChecksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      httpsHealthCheck = httpsHealthCheck,
      project = project,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeHttpsHealthChecksGet where
  type Rs ComputeHttpsHealthChecksGet = HttpsHealthCheck
  type
    Scopes ComputeHttpsHealthChecksGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeHttpsHealthChecksGet {..} =
    go
      project
      httpsHealthCheck
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
          (Core.Proxy :: Core.Proxy ComputeHttpsHealthChecksGetResource)
          Core.mempty

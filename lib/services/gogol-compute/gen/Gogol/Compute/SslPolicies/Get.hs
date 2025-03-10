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
-- Module      : Gogol.Compute.SslPolicies.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all of the ordered rules present in a single specified policy.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.sslPolicies.get@.
module Gogol.Compute.SslPolicies.Get
  ( -- * Resource
    ComputeSslPoliciesGetResource,

    -- ** Constructing a Request
    ComputeSslPoliciesGet (..),
    newComputeSslPoliciesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.sslPolicies.get@ method which the
-- 'ComputeSslPoliciesGet' request conforms to.
type ComputeSslPoliciesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
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
-- /See:/ 'newComputeSslPoliciesGet' smart constructor.
data ComputeSslPoliciesGet = ComputeSslPoliciesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the SSL policy to update. The name must be 1-63 characters long, and comply with RFC1035.
    sslPolicy :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSslPoliciesGet' with the minimum fields required to make a request.
newComputeSslPoliciesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the SSL policy to update. The name must be 1-63 characters long, and comply with RFC1035. See 'sslPolicy'.
  Core.Text ->
  ComputeSslPoliciesGet
newComputeSslPoliciesGet project sslPolicy =
  ComputeSslPoliciesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      sslPolicy = sslPolicy,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeSslPoliciesGet where
  type Rs ComputeSslPoliciesGet = SslPolicy
  type
    Scopes ComputeSslPoliciesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeSslPoliciesGet {..} =
    go
      project
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
          (Core.Proxy :: Core.Proxy ComputeSslPoliciesGetResource)
          Core.mempty

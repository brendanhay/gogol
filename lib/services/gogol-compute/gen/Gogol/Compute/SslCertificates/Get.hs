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
-- Module      : Gogol.Compute.SslCertificates.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified SslCertificate resource.
--
-- /See:/ <https://cloud.google.com/compute/ Compute Engine API Reference> for @compute.sslCertificates.get@.
module Gogol.Compute.SslCertificates.Get
  ( -- * Resource
    ComputeSslCertificatesGetResource,

    -- ** Constructing a Request
    ComputeSslCertificatesGet (..),
    newComputeSslCertificatesGet,
  )
where

import Gogol.Compute.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @compute.sslCertificates.get@ method which the
-- 'ComputeSslCertificatesGet' request conforms to.
type ComputeSslCertificatesGetResource =
  "compute"
    Core.:> "v1"
    Core.:> "projects"
    Core.:> Core.Capture "project" Core.Text
    Core.:> "global"
    Core.:> "sslCertificates"
    Core.:> Core.Capture "sslCertificate" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SslCertificate

-- | Returns the specified SslCertificate resource.
--
-- /See:/ 'newComputeSslCertificatesGet' smart constructor.
data ComputeSslCertificatesGet = ComputeSslCertificatesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Project ID for this request.
    project :: Core.Text,
    -- | Name of the SslCertificate resource to return.
    sslCertificate :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComputeSslCertificatesGet' with the minimum fields required to make a request.
newComputeSslCertificatesGet ::
  -- |  Project ID for this request. See 'project'.
  Core.Text ->
  -- |  Name of the SslCertificate resource to return. See 'sslCertificate'.
  Core.Text ->
  ComputeSslCertificatesGet
newComputeSslCertificatesGet project sslCertificate =
  ComputeSslCertificatesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      project = project,
      sslCertificate = sslCertificate,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest ComputeSslCertificatesGet where
  type Rs ComputeSslCertificatesGet = SslCertificate
  type
    Scopes ComputeSslCertificatesGet =
      '[CloudPlatform'FullControl, Compute'FullControl, Compute'Readonly]
  requestClient ComputeSslCertificatesGet {..} =
    go
      project
      sslCertificate
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
          (Core.Proxy :: Core.Proxy ComputeSslCertificatesGetResource)
          Core.mempty

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AccessContextManager.Services.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a VPC-SC supported service based on the service name.
--
-- /See:/ <https://cloud.google.com/access-context-manager/docs/reference/rest/ Access Context Manager API Reference> for @accesscontextmanager.services.get@.
module Gogol.AccessContextManager.Services.Get
  ( -- * Resource
    AccessContextManagerServicesGetResource,

    -- ** Constructing a Request
    AccessContextManagerServicesGet (..),
    newAccessContextManagerServicesGet,
  )
where

import Gogol.AccessContextManager.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @accesscontextmanager.services.get@ method which the
-- 'AccessContextManagerServicesGet' request conforms to.
type AccessContextManagerServicesGetResource =
  "v1"
    Core.:> "services"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] SupportedService

-- | Returns a VPC-SC supported service based on the service name.
--
-- /See:/ 'newAccessContextManagerServicesGet' smart constructor.
data AccessContextManagerServicesGet = AccessContextManagerServicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name of the service to get information about. The names must be in the same format as used in defining a service perimeter, for example, @storage.googleapis.com@.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AccessContextManagerServicesGet' with the minimum fields required to make a request.
newAccessContextManagerServicesGet ::
  -- |  The name of the service to get information about. The names must be in the same format as used in defining a service perimeter, for example, @storage.googleapis.com@. See 'name'.
  Core.Text ->
  AccessContextManagerServicesGet
newAccessContextManagerServicesGet name =
  AccessContextManagerServicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AccessContextManagerServicesGet where
  type Rs AccessContextManagerServicesGet = SupportedService
  type
    Scopes AccessContextManagerServicesGet =
      '[CloudPlatform'FullControl]
  requestClient AccessContextManagerServicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      accessContextManagerService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy AccessContextManagerServicesGetResource)
          Core.mempty

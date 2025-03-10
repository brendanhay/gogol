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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.get@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.Get
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsGetResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsGet (..),
    newWebSecurityScannerProjectsScanConfigsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.get@ method which the
-- 'WebSecurityScannerProjectsScanConfigsGet' request conforms to.
type WebSecurityScannerProjectsScanConfigsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ScanConfig

-- | Gets a ScanConfig.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsGet' smart constructor.
data WebSecurityScannerProjectsScanConfigsGet = WebSecurityScannerProjectsScanConfigsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the ScanConfig to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsGet' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsGet ::
  -- |  Required. The resource name of the ScanConfig to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. See 'name'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsGet
newWebSecurityScannerProjectsScanConfigsGet name =
  WebSecurityScannerProjectsScanConfigsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsGet
  where
  type Rs WebSecurityScannerProjectsScanConfigsGet = ScanConfig
  type
    Scopes WebSecurityScannerProjectsScanConfigsGet =
      '[CloudPlatform'FullControl]
  requestClient WebSecurityScannerProjectsScanConfigsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      webSecurityScannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebSecurityScannerProjectsScanConfigsGetResource
          )
          Core.mempty

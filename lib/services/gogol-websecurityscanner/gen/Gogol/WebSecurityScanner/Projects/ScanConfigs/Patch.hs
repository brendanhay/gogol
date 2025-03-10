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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a ScanConfig. This method support partial update of a ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.patch@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.Patch
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsPatchResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsPatch (..),
    newWebSecurityScannerProjectsScanConfigsPatch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.patch@ method which the
-- 'WebSecurityScannerProjectsScanConfigsPatch' request conforms to.
type WebSecurityScannerProjectsScanConfigsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ScanConfig
    Core.:> Core.Patch '[Core.JSON] ScanConfig

-- | Updates a ScanConfig. This method support partial update of a ScanConfig.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsPatch' smart constructor.
data WebSecurityScannerProjectsScanConfigsPatch = WebSecurityScannerProjectsScanConfigsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name of the ScanConfig. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. The ScanConfig IDs are generated by the system.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: ScanConfig,
    -- | Required. The update mask applies to the resource. For the @FieldMask@ definition, see https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf#fieldmask
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsPatch' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsPatch ::
  -- |  Identifier. The resource name of the ScanConfig. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. The ScanConfig IDs are generated by the system. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ScanConfig ->
  WebSecurityScannerProjectsScanConfigsPatch
newWebSecurityScannerProjectsScanConfigsPatch name payload =
  WebSecurityScannerProjectsScanConfigsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsPatch
  where
  type Rs WebSecurityScannerProjectsScanConfigsPatch = ScanConfig
  type
    Scopes WebSecurityScannerProjectsScanConfigsPatch =
      '[CloudPlatform'FullControl]
  requestClient WebSecurityScannerProjectsScanConfigsPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      webSecurityScannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebSecurityScannerProjectsScanConfigsPatchResource
          )
          Core.mempty

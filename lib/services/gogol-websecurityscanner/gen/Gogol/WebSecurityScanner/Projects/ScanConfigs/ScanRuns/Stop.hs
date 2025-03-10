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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a ScanRun. The stopped ScanRun is returned.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.stop@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Stop
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsStopResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsScanRunsStop (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsStop,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.stop@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsStop' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsStopResource =
  "v1"
    Core.:> Core.CaptureMode "name" "stop" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StopScanRunRequest
    Core.:> Core.Post '[Core.JSON] ScanRun

-- | Stops a ScanRun. The stopped ScanRun is returned.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsStop' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsStop = WebSecurityScannerProjectsScanConfigsScanRunsStop
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the ScanRun to be stopped. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StopScanRunRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsStop' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsStop ::
  -- |  Required. The resource name of the ScanRun to be stopped. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StopScanRunRequest ->
  WebSecurityScannerProjectsScanConfigsScanRunsStop
newWebSecurityScannerProjectsScanConfigsScanRunsStop name payload =
  WebSecurityScannerProjectsScanConfigsScanRunsStop
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsStop
  where
  type Rs WebSecurityScannerProjectsScanConfigsScanRunsStop = ScanRun
  type
    Scopes WebSecurityScannerProjectsScanConfigsScanRunsStop =
      '[CloudPlatform'FullControl]
  requestClient WebSecurityScannerProjectsScanConfigsScanRunsStop {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      webSecurityScannerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                WebSecurityScannerProjectsScanConfigsScanRunsStopResource
          )
          Core.mempty

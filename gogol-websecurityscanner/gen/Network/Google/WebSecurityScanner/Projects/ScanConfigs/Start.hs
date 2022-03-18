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
-- Module      : Network.Google.WebSecurityScanner.Projects.ScanConfigs.Start
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Start a ScanRun according to the given ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.start@.
module Network.Google.WebSecurityScanner.Projects.ScanConfigs.Start
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsStartResource,

    -- ** Constructing a Request
    newWebSecurityScannerProjectsScanConfigsStart,
    WebSecurityScannerProjectsScanConfigsStart,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.start@ method which the
-- 'WebSecurityScannerProjectsScanConfigsStart' request conforms to.
type WebSecurityScannerProjectsScanConfigsStartResource =
  "v1"
    Core.:> Core.CaptureMode "name" "start" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StartScanRunRequest
    Core.:> Core.Post '[Core.JSON] ScanRun

-- | Start a ScanRun according to the given ScanConfig.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsStart' smart constructor.
data WebSecurityScannerProjectsScanConfigsStart = WebSecurityScannerProjectsScanConfigsStart
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the ScanConfig to be used. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StartScanRunRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsStart' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsStart ::
  -- |  Required. The resource name of the ScanConfig to be used. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StartScanRunRequest ->
  WebSecurityScannerProjectsScanConfigsStart
newWebSecurityScannerProjectsScanConfigsStart name payload =
  WebSecurityScannerProjectsScanConfigsStart
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsStart
  where
  type
    Rs WebSecurityScannerProjectsScanConfigsStart =
      ScanRun
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsStart =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    WebSecurityScannerProjectsScanConfigsStart {..} =
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
                  WebSecurityScannerProjectsScanConfigsStartResource
            )
            Core.mempty

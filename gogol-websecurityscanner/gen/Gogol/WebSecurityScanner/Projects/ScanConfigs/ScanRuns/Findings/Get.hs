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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a Finding.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findings.get@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.Get
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGetResource,

    -- ** Constructing a Request
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingsGet,
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findings.get@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsFindingsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Finding

-- | Gets a Finding.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsFindingsGet' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet = WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Finding to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\/findings\/{findingId}\'.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsFindingsGet ::
  -- |  Required. The resource name of the Finding to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\/findings\/{findingId}\'. See 'name'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet
newWebSecurityScannerProjectsScanConfigsScanRunsFindingsGet name =
  WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet
  where
  type
    Rs
      WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet =
      Finding
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsGet {..} =
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
                Core.Proxy
                  WebSecurityScannerProjectsScanConfigsScanRunsFindingsGetResource
            )
            Core.mempty

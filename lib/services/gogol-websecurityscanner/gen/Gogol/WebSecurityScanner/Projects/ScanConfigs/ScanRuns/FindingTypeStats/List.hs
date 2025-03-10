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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all FindingTypeStats under a given ScanRun.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.FindingTypeStats.List
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsListResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findingTypeStats.list@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "findingTypeStats"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFindingTypeStatsResponse

-- | List all FindingTypeStats under a given ScanRun.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList = WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name, which should be a scan run resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList ::
  -- |  Required. The parent resource name, which should be a scan run resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'. See 'parent'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList
newWebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList
  parent =
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList
  where
  type
    Rs
      WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList =
      ListFindingTypeStatsResponse
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList =
      '[CloudPlatform'FullControl]
  requestClient
    WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsList {..} =
      go
        parent
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
                  WebSecurityScannerProjectsScanConfigsScanRunsFindingTypeStatsListResource
            )
            Core.mempty

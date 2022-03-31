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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Findings under a given ScanRun.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.findings.list@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Findings.List
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsListResource,

    -- ** Constructing a Request
    newWebSecurityScannerProjectsScanConfigsScanRunsFindingsList,
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.findings.list@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsFindingsList' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsFindingsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "findings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListFindingsResponse

-- | List Findings under a given ScanRun.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsFindingsList' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsFindingsList = WebSecurityScannerProjectsScanConfigsScanRunsFindingsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The filter expression. The expression must be in the format: . Supported field: \'finding_type\'. Supported operator: \'=\'.
    filter :: (Core.Maybe Core.Text),
    -- | The maximum number of Findings to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to be returned. This should be a @next_page_token@ value returned from a previous List request. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name, which should be a scan run resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsFindingsList' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsFindingsList ::
  -- |  Required. The parent resource name, which should be a scan run resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'. See 'parent'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsScanRunsFindingsList
newWebSecurityScannerProjectsScanConfigsScanRunsFindingsList parent =
  WebSecurityScannerProjectsScanConfigsScanRunsFindingsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsList
  where
  type
    Rs
      WebSecurityScannerProjectsScanConfigsScanRunsFindingsList =
      ListFindingsResponse
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsScanRunsFindingsList =
      '[CloudPlatform'FullControl]
  requestClient
    WebSecurityScannerProjectsScanConfigsScanRunsFindingsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        webSecurityScannerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  WebSecurityScannerProjectsScanConfigsScanRunsFindingsListResource
            )
            Core.mempty

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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.list@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.List
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsListResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsScanRunsList (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.list@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsList' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "scanRuns"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListScanRunsResponse

-- | Lists ScanRuns under a given ScanConfig, in descending order of ScanRun stop time.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsList' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsList = WebSecurityScannerProjectsScanConfigsScanRunsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of ScanRuns to return, can be limited by server. If not specified or not positive, the implementation will select a reasonable value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results to be returned. This should be a @next_page_token@ value returned from a previous List request. If unspecified, the first page of results is returned.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name, which should be a scan resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsList' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsList ::
  -- |  Required. The parent resource name, which should be a scan resource name in the format \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. See 'parent'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsScanRunsList
newWebSecurityScannerProjectsScanConfigsScanRunsList parent =
  WebSecurityScannerProjectsScanConfigsScanRunsList
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsList
  where
  type
    Rs WebSecurityScannerProjectsScanConfigsScanRunsList =
      ListScanRunsResponse
  type
    Scopes WebSecurityScannerProjectsScanConfigsScanRunsList =
      '[CloudPlatform'FullControl]
  requestClient WebSecurityScannerProjectsScanConfigsScanRunsList {..} =
    go
      parent
      xgafv
      accessToken
      callback
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
                WebSecurityScannerProjectsScanConfigsScanRunsListResource
          )
          Core.mempty

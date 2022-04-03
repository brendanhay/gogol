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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a ScanRun.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.scanRuns.get@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.ScanRuns.Get
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsScanRunsGetResource,

    -- ** Constructing a Request
    WebSecurityScannerProjectsScanConfigsScanRunsGet (..),
    newWebSecurityScannerProjectsScanConfigsScanRunsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.scanRuns.get@ method which the
-- 'WebSecurityScannerProjectsScanConfigsScanRunsGet' request conforms to.
type WebSecurityScannerProjectsScanConfigsScanRunsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ScanRun

-- | Gets a ScanRun.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsScanRunsGet' smart constructor.
data WebSecurityScannerProjectsScanConfigsScanRunsGet = WebSecurityScannerProjectsScanConfigsScanRunsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the ScanRun to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsScanRunsGet' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsScanRunsGet ::
  -- |  Required. The resource name of the ScanRun to be returned. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\/scanRuns\/{scanRunId}\'. See 'name'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsScanRunsGet
newWebSecurityScannerProjectsScanConfigsScanRunsGet name =
  WebSecurityScannerProjectsScanConfigsScanRunsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsScanRunsGet
  where
  type
    Rs
      WebSecurityScannerProjectsScanConfigsScanRunsGet =
      ScanRun
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsScanRunsGet =
      '[CloudPlatform'FullControl]
  requestClient
    WebSecurityScannerProjectsScanConfigsScanRunsGet {..} =
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
                  WebSecurityScannerProjectsScanConfigsScanRunsGetResource
            )
            Core.mempty

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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ScanConfig.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.create@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.Create
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsCreateResource,

    -- ** Constructing a Request
    newWebSecurityScannerProjectsScanConfigsCreate,
    WebSecurityScannerProjectsScanConfigsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.create@ method which the
-- 'WebSecurityScannerProjectsScanConfigsCreate' request conforms to.
type WebSecurityScannerProjectsScanConfigsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "scanConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ScanConfig
    Core.:> Core.Post '[Core.JSON] ScanConfig

-- | Creates a new ScanConfig.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsCreate' smart constructor.
data WebSecurityScannerProjectsScanConfigsCreate = WebSecurityScannerProjectsScanConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name where the scan is created, which should be a project resource name in the format \'projects\/{projectId}\'.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: ScanConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsCreate' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsCreate ::
  -- |  Required. The parent resource name where the scan is created, which should be a project resource name in the format \'projects\/{projectId}\'. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  ScanConfig ->
  WebSecurityScannerProjectsScanConfigsCreate
newWebSecurityScannerProjectsScanConfigsCreate parent payload =
  WebSecurityScannerProjectsScanConfigsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsCreate
  where
  type
    Rs WebSecurityScannerProjectsScanConfigsCreate =
      ScanConfig
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    WebSecurityScannerProjectsScanConfigsCreate {..} =
      go
        parent
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
                  WebSecurityScannerProjectsScanConfigsCreateResource
            )
            Core.mempty

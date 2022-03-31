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
-- Module      : Gogol.WebSecurityScanner.Projects.ScanConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing ScanConfig and its child resources.
--
-- /See:/ <https://cloud.google.com/security-command-center/docs/concepts-web-security-scanner-overview/ Web Security Scanner API Reference> for @websecurityscanner.projects.scanConfigs.delete@.
module Gogol.WebSecurityScanner.Projects.ScanConfigs.Delete
  ( -- * Resource
    WebSecurityScannerProjectsScanConfigsDeleteResource,

    -- ** Constructing a Request
    newWebSecurityScannerProjectsScanConfigsDelete,
    WebSecurityScannerProjectsScanConfigsDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebSecurityScanner.Types

-- | A resource alias for @websecurityscanner.projects.scanConfigs.delete@ method which the
-- 'WebSecurityScannerProjectsScanConfigsDelete' request conforms to.
type WebSecurityScannerProjectsScanConfigsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an existing ScanConfig and its child resources.
--
-- /See:/ 'newWebSecurityScannerProjectsScanConfigsDelete' smart constructor.
data WebSecurityScannerProjectsScanConfigsDelete = WebSecurityScannerProjectsScanConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the ScanConfig to be deleted. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebSecurityScannerProjectsScanConfigsDelete' with the minimum fields required to make a request.
newWebSecurityScannerProjectsScanConfigsDelete ::
  -- |  Required. The resource name of the ScanConfig to be deleted. The name follows the format of \'projects\/{projectId}\/scanConfigs\/{scanConfigId}\'. See 'name'.
  Core.Text ->
  WebSecurityScannerProjectsScanConfigsDelete
newWebSecurityScannerProjectsScanConfigsDelete name =
  WebSecurityScannerProjectsScanConfigsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    WebSecurityScannerProjectsScanConfigsDelete
  where
  type
    Rs WebSecurityScannerProjectsScanConfigsDelete =
      Empty
  type
    Scopes
      WebSecurityScannerProjectsScanConfigsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    WebSecurityScannerProjectsScanConfigsDelete {..} =
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
                  WebSecurityScannerProjectsScanConfigsDeleteResource
            )
            Core.mempty

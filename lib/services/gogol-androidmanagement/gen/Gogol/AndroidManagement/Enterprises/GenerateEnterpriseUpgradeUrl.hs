{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.AndroidManagement.Enterprises.GenerateEnterpriseUpgradeUrl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain.Note: This feature is not generally available.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.generateEnterpriseUpgradeUrl@.
module Gogol.AndroidManagement.Enterprises.GenerateEnterpriseUpgradeUrl
  ( -- * Resource
    AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrlResource,

    -- ** Constructing a Request
    AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl (..),
    newAndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl,
  )
where

import Gogol.AndroidManagement.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidmanagement.enterprises.generateEnterpriseUpgradeUrl@ method which the
-- 'AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl' request conforms to.
type AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrlResource =
  "v1"
    Core.:> Core.CaptureMode "name" "generateEnterpriseUpgradeUrl" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GenerateEnterpriseUpgradeUrlRequest
    Core.:> Core.Post '[Core.JSON] GenerateEnterpriseUpgradeUrlResponse

-- | Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain.Note: This feature is not generally available.
--
-- /See:/ 'newAndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl' smart constructor.
data AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl = AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the enterprise to be upgraded in the form enterprises\/{enterpriseId}.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GenerateEnterpriseUpgradeUrlRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl' with the minimum fields required to make a request.
newAndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl ::
  -- |  Required. The name of the enterprise to be upgraded in the form enterprises\/{enterpriseId}. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GenerateEnterpriseUpgradeUrlRequest ->
  AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl
newAndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl
  name
  payload =
    AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl
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
    AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl
  where
  type
    Rs AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl =
      GenerateEnterpriseUpgradeUrlResponse
  type
    Scopes
      AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl =
      '[Androidmanagement'FullControl]
  requestClient
    AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrl {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesGenerateEnterpriseUpgradeUrlResource
            )
            Core.mempty

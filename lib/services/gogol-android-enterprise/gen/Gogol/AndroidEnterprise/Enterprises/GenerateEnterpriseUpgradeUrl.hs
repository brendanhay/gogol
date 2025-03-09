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
-- Module      : Gogol.AndroidEnterprise.Enterprises.GenerateEnterpriseUpgradeUrl
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain. __Note:__ This feature is not generally available.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.generateEnterpriseUpgradeUrl@.
module Gogol.AndroidEnterprise.Enterprises.GenerateEnterpriseUpgradeUrl
  ( -- * Resource
    AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrlResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl (..),
    newAndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.enterprises.generateEnterpriseUpgradeUrl@ method which the
-- 'AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl' request conforms to.
type AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrlResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> Core.Capture "enterpriseId" Core.Text
    Core.:> "generateEnterpriseUpgradeUrl"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "adminEmail" Core.Text
    Core.:> Core.QueryParams "allowedDomains" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] GenerateEnterpriseUpgradeUrlResponse

-- | Generates an enterprise upgrade URL to upgrade an existing managed Google Play Accounts enterprise to a managed Google domain. __Note:__ This feature is not generally available.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl' smart constructor.
data AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl = AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Optional. Email address used to prefill the admin field of the enterprise signup form as part of the upgrade process. This value is a hint only and can be altered by the user. Personal email addresses are not allowed. If @allowedDomains@ is non-empty then this must belong to one of the @allowedDomains@.
    adminEmail :: (Core.Maybe Core.Text),
    -- | Optional. A list of domains that are permitted for the admin email. The IT admin cannot enter an email address with a domain name that is not in this list. Subdomains of domains in this list are not allowed but can be allowed by adding a second entry which has @*.@ prefixed to the domain name (e.g. *.example.com). If the field is not present or is an empty list then the IT admin is free to use any valid domain name. Personal email domains are not allowed.
    allowedDomains :: (Core.Maybe [Core.Text]),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The ID of the enterprise.
    enterpriseId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl ::
  -- |  Required. The ID of the enterprise. See 'enterpriseId'.
  Core.Text ->
  AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl
newAndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl
  enterpriseId =
    AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        adminEmail = Core.Nothing,
        allowedDomains = Core.Nothing,
        callback = Core.Nothing,
        enterpriseId = enterpriseId,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl
  where
  type
    Rs AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl =
      GenerateEnterpriseUpgradeUrlResponse
  type
    Scopes
      AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrl {..} =
      go
        enterpriseId
        xgafv
        accessToken
        adminEmail
        (allowedDomains Core.^. Core._Default)
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseEnterprisesGenerateEnterpriseUpgradeUrlResource
            )
            Core.mempty

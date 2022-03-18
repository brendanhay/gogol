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
-- Module      : Network.Google.SecurityCenter.Organizations.GetOrganizationSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the settings for an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.getOrganizationSettings@.
module Network.Google.SecurityCenter.Organizations.GetOrganizationSettings
  ( -- * Resource
    SecurityCenterOrganizationsGetOrganizationSettingsResource,

    -- ** Constructing a Request
    newSecurityCenterOrganizationsGetOrganizationSettings,
    SecurityCenterOrganizationsGetOrganizationSettings,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.getOrganizationSettings@ method which the
-- 'SecurityCenterOrganizationsGetOrganizationSettings' request conforms to.
type SecurityCenterOrganizationsGetOrganizationSettingsResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] OrganizationSettings

-- | Gets the settings for an organization.
--
-- /See:/ 'newSecurityCenterOrganizationsGetOrganizationSettings' smart constructor.
data SecurityCenterOrganizationsGetOrganizationSettings = SecurityCenterOrganizationsGetOrganizationSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the organization to get organization settings for. Its format is \"organizations\/[organization_id]\/organizationSettings\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsGetOrganizationSettings' with the minimum fields required to make a request.
newSecurityCenterOrganizationsGetOrganizationSettings ::
  -- |  Required. Name of the organization to get organization settings for. Its format is \"organizations\/[organization_id]\/organizationSettings\". See 'name'.
  Core.Text ->
  SecurityCenterOrganizationsGetOrganizationSettings
newSecurityCenterOrganizationsGetOrganizationSettings name =
  SecurityCenterOrganizationsGetOrganizationSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsGetOrganizationSettings
  where
  type
    Rs
      SecurityCenterOrganizationsGetOrganizationSettings =
      OrganizationSettings
  type
    Scopes
      SecurityCenterOrganizationsGetOrganizationSettings =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    SecurityCenterOrganizationsGetOrganizationSettings {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        securityCenterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsGetOrganizationSettingsResource
            )
            Core.mempty

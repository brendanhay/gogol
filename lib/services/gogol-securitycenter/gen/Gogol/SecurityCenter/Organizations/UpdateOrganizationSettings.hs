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
-- Module      : Gogol.SecurityCenter.Organizations.UpdateOrganizationSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organization\'s settings.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.updateOrganizationSettings@.
module Gogol.SecurityCenter.Organizations.UpdateOrganizationSettings
  ( -- * Resource
    SecurityCenterOrganizationsUpdateOrganizationSettingsResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsUpdateOrganizationSettings (..),
    newSecurityCenterOrganizationsUpdateOrganizationSettings,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.updateOrganizationSettings@ method which the
-- 'SecurityCenterOrganizationsUpdateOrganizationSettings' request conforms to.
type SecurityCenterOrganizationsUpdateOrganizationSettingsResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] OrganizationSettings
    Core.:> Core.Patch '[Core.JSON] OrganizationSettings

-- | Updates an organization\'s settings.
--
-- /See:/ 'newSecurityCenterOrganizationsUpdateOrganizationSettings' smart constructor.
data SecurityCenterOrganizationsUpdateOrganizationSettings = SecurityCenterOrganizationsUpdateOrganizationSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The relative resource name of the settings. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/organizationSettings\".
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: OrganizationSettings,
    -- | The FieldMask to use when updating the settings resource. If empty all mutable fields will be updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsUpdateOrganizationSettings' with the minimum fields required to make a request.
newSecurityCenterOrganizationsUpdateOrganizationSettings ::
  -- |  The relative resource name of the settings. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/organizationSettings\". See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  OrganizationSettings ->
  SecurityCenterOrganizationsUpdateOrganizationSettings
newSecurityCenterOrganizationsUpdateOrganizationSettings name payload =
  SecurityCenterOrganizationsUpdateOrganizationSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsUpdateOrganizationSettings
  where
  type
    Rs
      SecurityCenterOrganizationsUpdateOrganizationSettings =
      OrganizationSettings
  type
    Scopes
      SecurityCenterOrganizationsUpdateOrganizationSettings =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsUpdateOrganizationSettings {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        securityCenterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsUpdateOrganizationSettingsResource
            )
            Core.mempty

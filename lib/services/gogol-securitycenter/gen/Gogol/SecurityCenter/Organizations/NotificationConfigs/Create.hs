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
-- Module      : Gogol.SecurityCenter.Organizations.NotificationConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.create@.
module Gogol.SecurityCenter.Organizations.NotificationConfigs.Create
  ( -- * Resource
    SecurityCenterOrganizationsNotificationConfigsCreateResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsNotificationConfigsCreate (..),
    newSecurityCenterOrganizationsNotificationConfigsCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.create@ method which the
-- 'SecurityCenterOrganizationsNotificationConfigsCreate' request conforms to.
type SecurityCenterOrganizationsNotificationConfigsCreateResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "notificationConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "configId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] NotificationConfig
    Core.:> Core.Post '[Core.JSON] NotificationConfig

-- | Creates a notification config.
--
-- /See:/ 'newSecurityCenterOrganizationsNotificationConfigsCreate' smart constructor.
data SecurityCenterOrganizationsNotificationConfigsCreate = SecurityCenterOrganizationsNotificationConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Unique identifier provided by the client within the parent scope. It must be between 1 and 128 characters, and contains alphanumeric characters, underscores or hyphens only.
    configId :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the new notification config\'s parent. Its format is \"organizations\/[organization_id]\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: NotificationConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsNotificationConfigsCreate' with the minimum fields required to make a request.
newSecurityCenterOrganizationsNotificationConfigsCreate ::
  -- |  Required. Resource name of the new notification config\'s parent. Its format is \"organizations\/[organization_id]\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  NotificationConfig ->
  SecurityCenterOrganizationsNotificationConfigsCreate
newSecurityCenterOrganizationsNotificationConfigsCreate parent payload =
  SecurityCenterOrganizationsNotificationConfigsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      configId = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsNotificationConfigsCreate
  where
  type
    Rs
      SecurityCenterOrganizationsNotificationConfigsCreate =
      NotificationConfig
  type
    Scopes
      SecurityCenterOrganizationsNotificationConfigsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsNotificationConfigsCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        configId
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
                  SecurityCenterOrganizationsNotificationConfigsCreateResource
            )
            Core.mempty

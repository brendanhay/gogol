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
-- Module      : Gogol.SecurityCenter.Organizations.NotificationConfigs.Delete
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.delete@.
module Gogol.SecurityCenter.Organizations.NotificationConfigs.Delete
  ( -- * Resource
    SecurityCenterOrganizationsNotificationConfigsDeleteResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsNotificationConfigsDelete (..),
    newSecurityCenterOrganizationsNotificationConfigsDelete,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.delete@ method which the
-- 'SecurityCenterOrganizationsNotificationConfigsDelete' request conforms to.
type SecurityCenterOrganizationsNotificationConfigsDeleteResource =
  "v1p1beta1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes a notification config.
--
-- /See:/ 'newSecurityCenterOrganizationsNotificationConfigsDelete' smart constructor.
data SecurityCenterOrganizationsNotificationConfigsDelete = SecurityCenterOrganizationsNotificationConfigsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Name of the notification config to delete. Its format is \"organizations\/[organization/id]\/notificationConfigs\/[config/id]\".
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsNotificationConfigsDelete' with the minimum fields required to make a request.
newSecurityCenterOrganizationsNotificationConfigsDelete ::
  -- |  Required. Name of the notification config to delete. Its format is \"organizations\/[organization/id]\/notificationConfigs\/[config/id]\". See 'name'.
  Core.Text ->
  SecurityCenterOrganizationsNotificationConfigsDelete
newSecurityCenterOrganizationsNotificationConfigsDelete name =
  SecurityCenterOrganizationsNotificationConfigsDelete
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    SecurityCenterOrganizationsNotificationConfigsDelete
  where
  type
    Rs SecurityCenterOrganizationsNotificationConfigsDelete =
      Empty
  type
    Scopes SecurityCenterOrganizationsNotificationConfigsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsNotificationConfigsDelete {..} =
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
                  SecurityCenterOrganizationsNotificationConfigsDeleteResource
            )
            Core.mempty

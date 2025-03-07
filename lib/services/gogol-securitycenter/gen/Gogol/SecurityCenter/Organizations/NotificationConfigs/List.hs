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
-- Module      : Gogol.SecurityCenter.Organizations.NotificationConfigs.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists notification configs.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.list@.
module Gogol.SecurityCenter.Organizations.NotificationConfigs.List
  ( -- * Resource
    SecurityCenterOrganizationsNotificationConfigsListResource,

    -- ** Constructing a Request
    SecurityCenterOrganizationsNotificationConfigsList (..),
    newSecurityCenterOrganizationsNotificationConfigsList,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.list@ method which the
-- 'SecurityCenterOrganizationsNotificationConfigsList' request conforms to.
type SecurityCenterOrganizationsNotificationConfigsListResource =
  "v1p1beta1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "notificationConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListNotificationConfigsResponse

-- | Lists notification configs.
--
-- /See:/ 'newSecurityCenterOrganizationsNotificationConfigsList' smart constructor.
data SecurityCenterOrganizationsNotificationConfigsList = SecurityCenterOrganizationsNotificationConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return in a single response. Default is 10, minimum is 1, maximum is 1000.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The value returned by the last @ListNotificationConfigsResponse@; indicates that this is a continuation of a prior @ListNotificationConfigs@ call, and that the system should return the next page of data.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Name of the organization to list notification configs. Its format is \"organizations\/[organization_id]\".
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsNotificationConfigsList' with the minimum fields required to make a request.
newSecurityCenterOrganizationsNotificationConfigsList ::
  -- |  Required. Name of the organization to list notification configs. Its format is \"organizations\/[organization_id]\". See 'parent'.
  Core.Text ->
  SecurityCenterOrganizationsNotificationConfigsList
newSecurityCenterOrganizationsNotificationConfigsList parent =
  SecurityCenterOrganizationsNotificationConfigsList
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
    SecurityCenterOrganizationsNotificationConfigsList
  where
  type
    Rs SecurityCenterOrganizationsNotificationConfigsList =
      ListNotificationConfigsResponse
  type
    Scopes SecurityCenterOrganizationsNotificationConfigsList =
      '[CloudPlatform'FullControl]
  requestClient
    SecurityCenterOrganizationsNotificationConfigsList {..} =
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
        securityCenterService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  SecurityCenterOrganizationsNotificationConfigsListResource
            )
            Core.mempty

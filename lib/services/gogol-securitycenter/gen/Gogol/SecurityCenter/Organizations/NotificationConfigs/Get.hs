{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SecurityCenter.Organizations.NotificationConfigs.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a notification config.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.get@.
module Gogol.SecurityCenter.Organizations.NotificationConfigs.Get
    (
    -- * Resource
      SecurityCenterOrganizationsNotificationConfigsGetResource

    -- ** Constructing a Request
    , SecurityCenterOrganizationsNotificationConfigsGet (..)
    , newSecurityCenterOrganizationsNotificationConfigsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.get@ method which the
-- 'SecurityCenterOrganizationsNotificationConfigsGet' request conforms to.
type SecurityCenterOrganizationsNotificationConfigsGetResource
     =
     "v1p1beta1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] NotificationConfig

-- | Gets a notification config.
--
-- /See:/ 'newSecurityCenterOrganizationsNotificationConfigsGet' smart constructor.
data SecurityCenterOrganizationsNotificationConfigsGet = SecurityCenterOrganizationsNotificationConfigsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. Name of the notification config to get. Its format is \"organizations\/[organization/id]\/notificationConfigs\/[config/id]\".
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsNotificationConfigsGet' with the minimum fields required to make a request.
newSecurityCenterOrganizationsNotificationConfigsGet 
    ::  Core.Text
       -- ^  Required. Name of the notification config to get. Its format is \"organizations\/[organization/id]\/notificationConfigs\/[config/id]\". See 'name'.
    -> SecurityCenterOrganizationsNotificationConfigsGet
newSecurityCenterOrganizationsNotificationConfigsGet name =
  SecurityCenterOrganizationsNotificationConfigsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecurityCenterOrganizationsNotificationConfigsGet
         where
        type Rs
               SecurityCenterOrganizationsNotificationConfigsGet
             = NotificationConfig
        type Scopes
               SecurityCenterOrganizationsNotificationConfigsGet
             = '[CloudPlatform'FullControl]
        requestClient
          SecurityCenterOrganizationsNotificationConfigsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsNotificationConfigsGetResource)
                      Core.mempty


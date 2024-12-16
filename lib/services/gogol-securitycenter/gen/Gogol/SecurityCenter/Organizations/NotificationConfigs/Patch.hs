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
-- Module      : Gogol.SecurityCenter.Organizations.NotificationConfigs.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a notification config. The following update fields are allowed: description, pubsub/topic, streaming/config.filter
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.notificationConfigs.patch@.
module Gogol.SecurityCenter.Organizations.NotificationConfigs.Patch
    (
    -- * Resource
      SecurityCenterOrganizationsNotificationConfigsPatchResource

    -- ** Constructing a Request
    , SecurityCenterOrganizationsNotificationConfigsPatch (..)
    , newSecurityCenterOrganizationsNotificationConfigsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.notificationConfigs.patch@ method which the
-- 'SecurityCenterOrganizationsNotificationConfigsPatch' request conforms to.
type SecurityCenterOrganizationsNotificationConfigsPatchResource
     =
     "v1p1beta1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "updateMask" Core.FieldMask Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] NotificationConfig Core.:>
                         Core.Patch '[Core.JSON] NotificationConfig

-- | Updates a notification config. The following update fields are allowed: description, pubsub/topic, streaming/config.filter
--
-- /See:/ 'newSecurityCenterOrganizationsNotificationConfigsPatch' smart constructor.
data SecurityCenterOrganizationsNotificationConfigsPatch = SecurityCenterOrganizationsNotificationConfigsPatch
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The relative resource name of this notification config. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/notificationConfigs\/notify/public/bucket\".
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: NotificationConfig
      -- | The FieldMask to use when updating the notification config. If empty all mutable fields will be updated.
    , updateMask :: (Core.Maybe Core.FieldMask)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SecurityCenterOrganizationsNotificationConfigsPatch' with the minimum fields required to make a request.
newSecurityCenterOrganizationsNotificationConfigsPatch 
    ::  Core.Text
       -- ^  The relative resource name of this notification config. See: https:\/\/cloud.google.com\/apis\/design\/resource/names#relative/resource/name Example: \"organizations\/{organization/id}\/notificationConfigs\/notify/public/bucket\". See 'name'.
    -> NotificationConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> SecurityCenterOrganizationsNotificationConfigsPatch
newSecurityCenterOrganizationsNotificationConfigsPatch name payload =
  SecurityCenterOrganizationsNotificationConfigsPatch
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , updateMask = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SecurityCenterOrganizationsNotificationConfigsPatch
         where
        type Rs
               SecurityCenterOrganizationsNotificationConfigsPatch
             = NotificationConfig
        type Scopes
               SecurityCenterOrganizationsNotificationConfigsPatch
             = '[CloudPlatform'FullControl]
        requestClient
          SecurityCenterOrganizationsNotificationConfigsPatch{..}
          = go name xgafv accessToken callback updateMask
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              securityCenterService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           SecurityCenterOrganizationsNotificationConfigsPatchResource)
                      Core.mempty


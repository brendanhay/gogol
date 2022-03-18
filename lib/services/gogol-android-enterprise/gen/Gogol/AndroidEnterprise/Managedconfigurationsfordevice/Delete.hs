{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a per-device managed configuration for an app for the specified device.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsfordevice.delete@.
module Gogol.AndroidEnterprise.Managedconfigurationsfordevice.Delete
    (
    -- * Resource
      AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource

    -- ** Constructing a Request
    , newAndroidEnterpriseManagedconfigurationsfordeviceDelete
    , AndroidEnterpriseManagedconfigurationsfordeviceDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.managedconfigurationsfordevice.delete@ method which the
-- 'AndroidEnterpriseManagedconfigurationsfordeviceDelete' request conforms to.
type AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "users" Core.:>
               Core.Capture "userId" Core.Text Core.:>
                 "devices" Core.:>
                   Core.Capture "deviceId" Core.Text Core.:>
                     "managedConfigurationsForDevice" Core.:>
                       Core.Capture "managedConfigurationForDeviceId"
                         Core.Text
                         Core.:>
                         Core.QueryParam "$.xgafv" Xgafv Core.:>
                           Core.QueryParam "access_token" Core.Text Core.:>
                             Core.QueryParam "callback" Core.Text Core.:>
                               Core.QueryParam "uploadType" Core.Text Core.:>
                                 Core.QueryParam "upload_protocol" Core.Text
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Delete '[Core.JSON] ()

-- | Removes a per-device managed configuration for an app for the specified device.
--
-- /See:/ 'newAndroidEnterpriseManagedconfigurationsfordeviceDelete' smart constructor.
data AndroidEnterpriseManagedconfigurationsfordeviceDelete = AndroidEnterpriseManagedconfigurationsfordeviceDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The Android ID of the device.
    , deviceId :: Core.Text
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".
    , managedConfigurationForDeviceId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The ID of the user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseManagedconfigurationsfordeviceDelete' with the minimum fields required to make a request.
newAndroidEnterpriseManagedconfigurationsfordeviceDelete 
    ::  Core.Text
       -- ^  The Android ID of the device. See 'deviceId'.
    -> Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> Core.Text
       -- ^  The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\". See 'managedConfigurationForDeviceId'.
    -> Core.Text
       -- ^  The ID of the user. See 'userId'.
    -> AndroidEnterpriseManagedconfigurationsfordeviceDelete
newAndroidEnterpriseManagedconfigurationsfordeviceDelete deviceId enterpriseId managedConfigurationForDeviceId userId =
  AndroidEnterpriseManagedconfigurationsfordeviceDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , deviceId = deviceId
    , enterpriseId = enterpriseId
    , managedConfigurationForDeviceId = managedConfigurationForDeviceId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest
           AndroidEnterpriseManagedconfigurationsfordeviceDelete
         where
        type Rs
               AndroidEnterpriseManagedconfigurationsfordeviceDelete
             = ()
        type Scopes
               AndroidEnterpriseManagedconfigurationsfordeviceDelete
             =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          AndroidEnterpriseManagedconfigurationsfordeviceDelete{..}
          = go enterpriseId userId deviceId
              managedConfigurationForDeviceId
              xgafv
              accessToken
              callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseManagedconfigurationsfordeviceDeleteResource)
                      Core.mempty


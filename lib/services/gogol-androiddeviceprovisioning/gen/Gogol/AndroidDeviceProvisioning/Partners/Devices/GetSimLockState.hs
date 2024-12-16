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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Devices.GetSimLockState
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a device\'s SIM lock state.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.devices.getSimLockState@.
module Gogol.AndroidDeviceProvisioning.Partners.Devices.GetSimLockState
    (
    -- * Resource
      AndroidDeviceProvisioningPartnersDevicesGetSimLockStateResource

    -- ** Constructing a Request
    , AndroidDeviceProvisioningPartnersDevicesGetSimLockState (..)
    , newAndroidDeviceProvisioningPartnersDevicesGetSimLockState
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidDeviceProvisioning.Types

-- | A resource alias for @androiddeviceprovisioning.partners.devices.getSimLockState@ method which the
-- 'AndroidDeviceProvisioningPartnersDevicesGetSimLockState' request conforms to.
type AndroidDeviceProvisioningPartnersDevicesGetSimLockStateResource
     =
     "v1" Core.:>
       "partners" Core.:>
         Core.Capture "partnerId" Core.Int64 Core.:>
           "devices:getSimLockState" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON]
                           GetDeviceSimLockStateRequest
                           Core.:>
                           Core.Post '[Core.JSON] GetDeviceSimLockStateResponse

-- | Gets a device\'s SIM lock state.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersDevicesGetSimLockState' smart constructor.
data AndroidDeviceProvisioningPartnersDevicesGetSimLockState = AndroidDeviceProvisioningPartnersDevicesGetSimLockState
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The ID of the partner.
    , partnerId :: Core.Int64
      -- | Multipart request metadata.
    , payload :: GetDeviceSimLockStateRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersDevicesGetSimLockState' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersDevicesGetSimLockState 
    ::  Core.Int64
       -- ^  Required. The ID of the partner. See 'partnerId'.
    -> GetDeviceSimLockStateRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidDeviceProvisioningPartnersDevicesGetSimLockState
newAndroidDeviceProvisioningPartnersDevicesGetSimLockState partnerId payload =
  AndroidDeviceProvisioningPartnersDevicesGetSimLockState
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , partnerId = partnerId
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidDeviceProvisioningPartnersDevicesGetSimLockState
         where
        type Rs
               AndroidDeviceProvisioningPartnersDevicesGetSimLockState
             = GetDeviceSimLockStateResponse
        type Scopes
               AndroidDeviceProvisioningPartnersDevicesGetSimLockState
             = '[]
        requestClient
          AndroidDeviceProvisioningPartnersDevicesGetSimLockState{..}
          = go partnerId xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidDeviceProvisioningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidDeviceProvisioningPartnersDevicesGetSimLockStateResource)
                      Core.mempty


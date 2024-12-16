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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Configurations.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new configuration. Once created, a customer can apply the configuration to devices.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.create@.
module Gogol.AndroidDeviceProvisioning.Customers.Configurations.Create
    (
    -- * Resource
      AndroidDeviceProvisioningCustomersConfigurationsCreateResource

    -- ** Constructing a Request
    , AndroidDeviceProvisioningCustomersConfigurationsCreate (..)
    , newAndroidDeviceProvisioningCustomersConfigurationsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidDeviceProvisioning.Types

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.create@ method which the
-- 'AndroidDeviceProvisioningCustomersConfigurationsCreate' request conforms to.
type AndroidDeviceProvisioningCustomersConfigurationsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "configurations" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] Configuration Core.:>
                         Core.Post '[Core.JSON] Configuration

-- | Creates a new configuration. Once created, a customer can apply the configuration to devices.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersConfigurationsCreate' smart constructor.
data AndroidDeviceProvisioningCustomersConfigurationsCreate = AndroidDeviceProvisioningCustomersConfigurationsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The customer that manages the configuration. An API resource name in the format @customers\/[CUSTOMER_ID]@. This field has custom validation in CreateConfigurationRequestValidator
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Configuration
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersConfigurationsCreate' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersConfigurationsCreate 
    ::  Core.Text
       -- ^  Required. The customer that manages the configuration. An API resource name in the format @customers\/[CUSTOMER_ID]@. This field has custom validation in CreateConfigurationRequestValidator See 'parent'.
    -> Configuration
       -- ^  Multipart request metadata. See 'payload'.
    -> AndroidDeviceProvisioningCustomersConfigurationsCreate
newAndroidDeviceProvisioningCustomersConfigurationsCreate parent payload =
  AndroidDeviceProvisioningCustomersConfigurationsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidDeviceProvisioningCustomersConfigurationsCreate
         where
        type Rs
               AndroidDeviceProvisioningCustomersConfigurationsCreate
             = Configuration
        type Scopes
               AndroidDeviceProvisioningCustomersConfigurationsCreate
             = '[]
        requestClient
          AndroidDeviceProvisioningCustomersConfigurationsCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              androidDeviceProvisioningService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidDeviceProvisioningCustomersConfigurationsCreateResource)
                      Core.mempty


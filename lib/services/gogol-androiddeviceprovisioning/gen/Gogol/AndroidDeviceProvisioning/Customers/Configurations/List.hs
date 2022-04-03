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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Configurations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a customer\'s configurations.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.configurations.list@.
module Gogol.AndroidDeviceProvisioning.Customers.Configurations.List
  ( -- * Resource
    AndroidDeviceProvisioningCustomersConfigurationsListResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersConfigurationsList (..),
    newAndroidDeviceProvisioningCustomersConfigurationsList,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.customers.configurations.list@ method which the
-- 'AndroidDeviceProvisioningCustomersConfigurationsList' request conforms to.
type AndroidDeviceProvisioningCustomersConfigurationsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "configurations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              CustomerListConfigurationsResponse

-- | Lists a customer\'s configurations.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersConfigurationsList' smart constructor.
data AndroidDeviceProvisioningCustomersConfigurationsList = AndroidDeviceProvisioningCustomersConfigurationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The customer that manages the listed configurations. An API resource name in the format @customers\/[CUSTOMER_ID]@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersConfigurationsList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersConfigurationsList ::
  -- |  Required. The customer that manages the listed configurations. An API resource name in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
  Core.Text ->
  AndroidDeviceProvisioningCustomersConfigurationsList
newAndroidDeviceProvisioningCustomersConfigurationsList parent =
  AndroidDeviceProvisioningCustomersConfigurationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningCustomersConfigurationsList
  where
  type
    Rs
      AndroidDeviceProvisioningCustomersConfigurationsList =
      CustomerListConfigurationsResponse
  type
    Scopes
      AndroidDeviceProvisioningCustomersConfigurationsList =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersConfigurationsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningCustomersConfigurationsListResource
            )
            Core.mempty

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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.Dpcs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the DPCs (device policy controllers) that support zero-touch enrollment.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.dpcs.list@.
module Gogol.AndroidDeviceProvisioning.Customers.Dpcs.List
  ( -- * Resource
    AndroidDeviceProvisioningCustomersDpcsListResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersDpcsList (..),
    newAndroidDeviceProvisioningCustomersDpcsList,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.customers.dpcs.list@ method which the
-- 'AndroidDeviceProvisioningCustomersDpcsList' request conforms to.
type AndroidDeviceProvisioningCustomersDpcsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dpcs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomerListDpcsResponse

-- | Lists the DPCs (device policy controllers) that support zero-touch enrollment.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersDpcsList' smart constructor.
data AndroidDeviceProvisioningCustomersDpcsList = AndroidDeviceProvisioningCustomersDpcsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The customer that can use the DPCs in configurations. An API resource name in the format @customers\/[CUSTOMER_ID]@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersDpcsList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersDpcsList ::
  -- |  Required. The customer that can use the DPCs in configurations. An API resource name in the format @customers\/[CUSTOMER_ID]@. See 'parent'.
  Core.Text ->
  AndroidDeviceProvisioningCustomersDpcsList
newAndroidDeviceProvisioningCustomersDpcsList parent =
  AndroidDeviceProvisioningCustomersDpcsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningCustomersDpcsList
  where
  type
    Rs AndroidDeviceProvisioningCustomersDpcsList =
      CustomerListDpcsResponse
  type
    Scopes
      AndroidDeviceProvisioningCustomersDpcsList =
      '[]
  requestClient
    AndroidDeviceProvisioningCustomersDpcsList {..} =
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
                  AndroidDeviceProvisioningCustomersDpcsListResource
            )
            Core.mempty

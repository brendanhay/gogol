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
-- Module      : Gogol.AndroidDeviceProvisioning.Customers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s customer accounts.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.customers.list@.
module Gogol.AndroidDeviceProvisioning.Customers.List
  ( -- * Resource
    AndroidDeviceProvisioningCustomersListResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningCustomersList (..),
    newAndroidDeviceProvisioningCustomersList,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.customers.list@ method which the
-- 'AndroidDeviceProvisioningCustomersList' request conforms to.
type AndroidDeviceProvisioningCustomersListResource =
  "v1"
    Core.:> "customers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CustomerListCustomersResponse

-- | Lists the user\'s customer accounts.
--
-- /See:/ 'newAndroidDeviceProvisioningCustomersList' smart constructor.
data AndroidDeviceProvisioningCustomersList = AndroidDeviceProvisioningCustomersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The maximum number of customers to show in a page of results. A number between 1 and 100 (inclusive).
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token specifying which result page to return. This field has custom validations in ListCustomersRequestValidator
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningCustomersList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningCustomersList ::
  AndroidDeviceProvisioningCustomersList
newAndroidDeviceProvisioningCustomersList =
  AndroidDeviceProvisioningCustomersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidDeviceProvisioningCustomersList where
  type
    Rs AndroidDeviceProvisioningCustomersList =
      CustomerListCustomersResponse
  type Scopes AndroidDeviceProvisioningCustomersList = '[]
  requestClient AndroidDeviceProvisioningCustomersList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidDeviceProvisioningService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidDeviceProvisioningCustomersListResource
          )
          Core.mempty

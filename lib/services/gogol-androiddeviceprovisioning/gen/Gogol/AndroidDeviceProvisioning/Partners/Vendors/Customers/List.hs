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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the customers of the vendor.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.vendors.customers.list@.
module Gogol.AndroidDeviceProvisioning.Partners.Vendors.Customers.List
  ( -- * Resource
    AndroidDeviceProvisioningPartnersVendorsCustomersListResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersVendorsCustomersList (..),
    newAndroidDeviceProvisioningPartnersVendorsCustomersList,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androiddeviceprovisioning.partners.vendors.customers.list@ method which the
-- 'AndroidDeviceProvisioningPartnersVendorsCustomersList' request conforms to.
type AndroidDeviceProvisioningPartnersVendorsCustomersListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "customers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListVendorCustomersResponse

-- | Lists the customers of the vendor.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersVendorsCustomersList' smart constructor.
data AndroidDeviceProvisioningPartnersVendorsCustomersList = AndroidDeviceProvisioningPartnersVendorsCustomersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to be returned.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results returned by the server.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The resource name in the format @partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]@.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersVendorsCustomersList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersVendorsCustomersList ::
  -- |  Required. The resource name in the format @partners\/[PARTNER_ID]\/vendors\/[VENDOR_ID]@. See 'parent'.
  Core.Text ->
  AndroidDeviceProvisioningPartnersVendorsCustomersList
newAndroidDeviceProvisioningPartnersVendorsCustomersList parent =
  AndroidDeviceProvisioningPartnersVendorsCustomersList
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
    AndroidDeviceProvisioningPartnersVendorsCustomersList
  where
  type
    Rs AndroidDeviceProvisioningPartnersVendorsCustomersList =
      ListVendorCustomersResponse
  type
    Scopes AndroidDeviceProvisioningPartnersVendorsCustomersList =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersVendorsCustomersList {..} =
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
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningPartnersVendorsCustomersListResource
            )
            Core.mempty

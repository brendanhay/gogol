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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Customers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the customers that are enrolled to the reseller identified by the @partnerId@ argument. This list includes customers that the reseller created and customers that enrolled themselves using the portal.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.customers.list@.
module Gogol.AndroidDeviceProvisioning.Partners.Customers.List
  ( -- * Resource
    AndroidDeviceProvisioningPartnersCustomersListResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersCustomersList (..),
    newAndroidDeviceProvisioningPartnersCustomersList,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.customers.list@ method which the
-- 'AndroidDeviceProvisioningPartnersCustomersList' request conforms to.
type AndroidDeviceProvisioningPartnersCustomersListResource =
  "v1"
    Core.:> "partners"
    Core.:> Core.Capture "partnerId" Core.Int64
    Core.:> "customers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListCustomersResponse

-- | Lists the customers that are enrolled to the reseller identified by the @partnerId@ argument. This list includes customers that the reseller created and customers that enrolled themselves using the portal.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersCustomersList' smart constructor.
data AndroidDeviceProvisioningPartnersCustomersList = AndroidDeviceProvisioningPartnersCustomersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to be returned. If not specified or 0, all the records are returned.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results returned by the server.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The ID of the reseller partner.
    partnerId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersCustomersList' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersCustomersList ::
  -- |  Required. The ID of the reseller partner. See 'partnerId'.
  Core.Int64 ->
  AndroidDeviceProvisioningPartnersCustomersList
newAndroidDeviceProvisioningPartnersCustomersList partnerId =
  AndroidDeviceProvisioningPartnersCustomersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      partnerId = partnerId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersCustomersList
  where
  type
    Rs
      AndroidDeviceProvisioningPartnersCustomersList =
      ListCustomersResponse
  type
    Scopes
      AndroidDeviceProvisioningPartnersCustomersList =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersCustomersList {..} =
      go
        partnerId
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
                  AndroidDeviceProvisioningPartnersCustomersListResource
            )
            Core.mempty

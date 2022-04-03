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
-- Module      : Gogol.AndroidDeviceProvisioning.Partners.Customers.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a customer for zero-touch enrollment. After the method returns successfully, admin and owner roles can manage devices and EMM configs by calling API methods or using their zero-touch enrollment portal. The customer receives an email that welcomes them to zero-touch enrollment and explains how to sign into the portal.
--
-- /See:/ <https://developers.google.com/zero-touch/ Android Device Provisioning Partner API Reference> for @androiddeviceprovisioning.partners.customers.create@.
module Gogol.AndroidDeviceProvisioning.Partners.Customers.Create
  ( -- * Resource
    AndroidDeviceProvisioningPartnersCustomersCreateResource,

    -- ** Constructing a Request
    AndroidDeviceProvisioningPartnersCustomersCreate (..),
    newAndroidDeviceProvisioningPartnersCustomersCreate,
  )
where

import Gogol.AndroidDeviceProvisioning.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androiddeviceprovisioning.partners.customers.create@ method which the
-- 'AndroidDeviceProvisioningPartnersCustomersCreate' request conforms to.
type AndroidDeviceProvisioningPartnersCustomersCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "customers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CreateCustomerRequest
    Core.:> Core.Post '[Core.JSON] Company

-- | Creates a customer for zero-touch enrollment. After the method returns successfully, admin and owner roles can manage devices and EMM configs by calling API methods or using their zero-touch enrollment portal. The customer receives an email that welcomes them to zero-touch enrollment and explains how to sign into the portal.
--
-- /See:/ 'newAndroidDeviceProvisioningPartnersCustomersCreate' smart constructor.
data AndroidDeviceProvisioningPartnersCustomersCreate = AndroidDeviceProvisioningPartnersCustomersCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The parent resource ID in the format @partners\/[PARTNER_ID]@ that identifies the reseller.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: CreateCustomerRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidDeviceProvisioningPartnersCustomersCreate' with the minimum fields required to make a request.
newAndroidDeviceProvisioningPartnersCustomersCreate ::
  -- |  Required. The parent resource ID in the format @partners\/[PARTNER_ID]@ that identifies the reseller. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CreateCustomerRequest ->
  AndroidDeviceProvisioningPartnersCustomersCreate
newAndroidDeviceProvisioningPartnersCustomersCreate parent payload =
  AndroidDeviceProvisioningPartnersCustomersCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidDeviceProvisioningPartnersCustomersCreate
  where
  type
    Rs
      AndroidDeviceProvisioningPartnersCustomersCreate =
      Company
  type
    Scopes
      AndroidDeviceProvisioningPartnersCustomersCreate =
      '[]
  requestClient
    AndroidDeviceProvisioningPartnersCustomersCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidDeviceProvisioningService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidDeviceProvisioningPartnersCustomersCreateResource
            )
            Core.mempty

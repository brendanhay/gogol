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
-- Module      : Gogol.CloudIdentity.Devices.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified device.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.get@.
module Gogol.CloudIdentity.Devices.Get
  ( -- * Resource
    CloudIdentityDevicesGetResource,

    -- ** Constructing a Request
    CloudIdentityDevicesGet (..),
    newCloudIdentityDevicesGet,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.devices.get@ method which the
-- 'CloudIdentityDevicesGet' request conforms to.
type CloudIdentityDevicesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleAppsCloudidentityDevicesV1Device

-- | Retrieves the specified device.
--
-- /See:/ 'newCloudIdentityDevicesGet' smart constructor.
data CloudIdentityDevicesGet = CloudIdentityDevicesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the Customer in the format: @customers\/{customer}@, where customer is the customer to whom the device belongs. If you\'re using this API for your own organization, use @customers\/my_customer@. If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in the format: @devices\/{device}@, where device is the unique ID assigned to the Device.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesGet' with the minimum fields required to make a request.
newCloudIdentityDevicesGet ::
  -- |  Required. <https://cloud.google.com/apis/design/resource_names Resource name> of the Device in the format: @devices\/{device}@, where device is the unique ID assigned to the Device. See 'name'.
  Core.Text ->
  CloudIdentityDevicesGet
newCloudIdentityDevicesGet name =
  CloudIdentityDevicesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityDevicesGet where
  type
    Rs CloudIdentityDevicesGet =
      GoogleAppsCloudidentityDevicesV1Device
  type
    Scopes CloudIdentityDevicesGet =
      '[CloudIdentity'Devices, CloudIdentity'Devices'Readonly]
  requestClient CloudIdentityDevicesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      customer
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CloudIdentityDevicesGetResource)
          Core.mempty

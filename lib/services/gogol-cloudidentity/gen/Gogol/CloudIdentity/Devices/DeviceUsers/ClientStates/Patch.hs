{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the client state for the device user __Note__: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.clientStates.patch@.
module Gogol.CloudIdentity.Devices.DeviceUsers.ClientStates.Patch
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersClientStatesPatchResource,

    -- ** Constructing a Request
    CloudIdentityDevicesDeviceUsersClientStatesPatch (..),
    newCloudIdentityDevicesDeviceUsersClientStatesPatch,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.clientStates.patch@ method which the
-- 'CloudIdentityDevicesDeviceUsersClientStatesPatch' request conforms to.
type CloudIdentityDevicesDeviceUsersClientStatesPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customer" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.FieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1ClientState
    Core.:> Core.Patch '[Core.JSON] Operation

-- | Updates the client state for the device user __Note__: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersClientStatesPatch' smart constructor.
data CloudIdentityDevicesDeviceUsersClientStatesPatch = CloudIdentityDevicesDeviceUsersClientStatesPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. <https://cloud.google.com/apis/design/resource_names Resource name> of the customer. If you\'re using this API for your own organization, use @customers\/my_customer@ If you\'re using this API to manage another organization, use @customers\/{customer}@, where customer is the customer to whom the device belongs.
    customer :: (Core.Maybe Core.Text),
    -- | Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientState\/{partner}@, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: @{customer}-suffix@, where @customer@ is your customer ID. The /suffix/ is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization\'s customer ID can be obtained from the URL: @GET https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer@ The @id@ field in the response contains the customer ID starting with the letter \'C\'. The customer ID to be used in this API is the string after the letter \'C\' (not including \'C\')
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleAppsCloudidentityDevicesV1ClientState,
    -- | Optional. Comma-separated list of fully qualified names of fields to be updated. If not specified, all updatable fields in ClientState are updated.
    updateMask :: (Core.Maybe Core.FieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersClientStatesPatch' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersClientStatesPatch ::
  -- |  Output only. <https://cloud.google.com/apis/design/resource_names Resource name> of the ClientState in format: @devices\/{device}\/deviceUsers\/{device_user}\/clientState\/{partner}@, where partner corresponds to the partner storing the data. For partners belonging to the \"BeyondCorp Alliance\", this is the partner ID specified to you by Google. For all other callers, this is a string of the form: @{customer}-suffix@, where @customer@ is your customer ID. The /suffix/ is any string the caller specifies. This string will be displayed verbatim in the administration console. This suffix is used in setting up Custom Access Levels in Context-Aware Access. Your organization\'s customer ID can be obtained from the URL: @GET https:\/\/www.googleapis.com\/admin\/directory\/v1\/customers\/my_customer@ The @id@ field in the response contains the customer ID starting with the letter \'C\'. The customer ID to be used in this API is the string after the letter \'C\' (not including \'C\') See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleAppsCloudidentityDevicesV1ClientState ->
  CloudIdentityDevicesDeviceUsersClientStatesPatch
newCloudIdentityDevicesDeviceUsersClientStatesPatch name payload =
  CloudIdentityDevicesDeviceUsersClientStatesPatch
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      customer = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudIdentityDevicesDeviceUsersClientStatesPatch
  where
  type
    Rs CloudIdentityDevicesDeviceUsersClientStatesPatch =
      Operation
  type
    Scopes CloudIdentityDevicesDeviceUsersClientStatesPatch =
      '[CloudIdentity'Devices]
  requestClient CloudIdentityDevicesDeviceUsersClientStatesPatch {..} =
    go
      name
      xgafv
      accessToken
      callback
      customer
      updateMask
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                CloudIdentityDevicesDeviceUsersClientStatesPatchResource
          )
          Core.mempty

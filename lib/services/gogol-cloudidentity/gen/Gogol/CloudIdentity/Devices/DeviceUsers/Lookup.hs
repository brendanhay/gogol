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
-- Module      : Gogol.CloudIdentity.Devices.DeviceUsers.Lookup
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up resource names of the DeviceUsers associated with the caller\'s credentials, as well as the properties provided in the request. This method must be called with end-user credentials with the scope: https:\/\/www.googleapis.com\/auth\/cloud-identity.devices.lookup If multiple properties are provided, only DeviceUsers having all of these properties are considered as matches - i.e. the query behaves like an AND. Different platforms require different amounts of information from the caller to ensure that the DeviceUser is uniquely identified. - iOS: No properties need to be passed, the caller\'s credentials are sufficient to identify the corresponding DeviceUser. - Android: Specifying the \'android/id\' field is required. - Desktop: Specifying the \'raw/resource_id\' field is required.
--
-- /See:/ <https://cloud.google.com/identity/ Cloud Identity API Reference> for @cloudidentity.devices.deviceUsers.lookup@.
module Gogol.CloudIdentity.Devices.DeviceUsers.Lookup
  ( -- * Resource
    CloudIdentityDevicesDeviceUsersLookupResource,

    -- ** Constructing a Request
    CloudIdentityDevicesDeviceUsersLookup (..),
    newCloudIdentityDevicesDeviceUsersLookup,
  )
where

import Gogol.CloudIdentity.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @cloudidentity.devices.deviceUsers.lookup@ method which the
-- 'CloudIdentityDevicesDeviceUsersLookup' request conforms to.
type CloudIdentityDevicesDeviceUsersLookupResource =
  "v1"
    Core.:> Core.CaptureMode "parent" "lookup" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "androidId" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "rawResourceId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "userId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse

-- | Looks up resource names of the DeviceUsers associated with the caller\'s credentials, as well as the properties provided in the request. This method must be called with end-user credentials with the scope: https:\/\/www.googleapis.com\/auth\/cloud-identity.devices.lookup If multiple properties are provided, only DeviceUsers having all of these properties are considered as matches - i.e. the query behaves like an AND. Different platforms require different amounts of information from the caller to ensure that the DeviceUser is uniquely identified. - iOS: No properties need to be passed, the caller\'s credentials are sufficient to identify the corresponding DeviceUser. - Android: Specifying the \'android/id\' field is required. - Desktop: Specifying the \'raw/resource_id\' field is required.
--
-- /See:/ 'newCloudIdentityDevicesDeviceUsersLookup' smart constructor.
data CloudIdentityDevicesDeviceUsersLookup = CloudIdentityDevicesDeviceUsersLookup
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Android Id returned by <https://developer.android.com/reference/android/provider/Settings.Secure.html#ANDROID_ID Settings.Secure#ANDROID_ID>.
    androidId :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of DeviceUsers to return. If unspecified, at most 20 DeviceUsers will be returned. The maximum value is 20; values above 20 will be coerced to 20.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @LookupDeviceUsers@ call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to @LookupDeviceUsers@ must match the call that provided the page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Must be set to \"devices\/-\/deviceUsers\" to search across all DeviceUser belonging to the user.
    parent :: Core.Text,
    -- | Raw Resource Id used by Google Endpoint Verification. If the user is enrolled into Google Endpoint Verification, this id will be saved as the \'device/resource/id\' field in the following platform dependent files. * macOS: ~\/.secureConnect\/context/aware/config.json * Windows: %USERPROFILE%\\AppData\\Local\\Google\\Endpoint Verification\\accounts.json * Linux: ~\/.secureConnect\/context/aware/config.json
    rawResourceId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The user whose DeviceUser\'s resource name will be fetched. Must be set to \'me\' to fetch the DeviceUser\'s resource name for the calling user.
    userId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudIdentityDevicesDeviceUsersLookup' with the minimum fields required to make a request.
newCloudIdentityDevicesDeviceUsersLookup ::
  -- |  Must be set to \"devices\/-\/deviceUsers\" to search across all DeviceUser belonging to the user. See 'parent'.
  Core.Text ->
  CloudIdentityDevicesDeviceUsersLookup
newCloudIdentityDevicesDeviceUsersLookup parent =
  CloudIdentityDevicesDeviceUsersLookup
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      androidId = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      rawResourceId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = Core.Nothing
    }

instance Core.GoogleRequest CloudIdentityDevicesDeviceUsersLookup where
  type
    Rs CloudIdentityDevicesDeviceUsersLookup =
      GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
  type
    Scopes CloudIdentityDevicesDeviceUsersLookup =
      '[CloudIdentity'Devices'Lookup]
  requestClient CloudIdentityDevicesDeviceUsersLookup {..} =
    go
      parent
      xgafv
      accessToken
      androidId
      callback
      pageSize
      pageToken
      rawResourceId
      uploadType
      uploadProtocol
      userId
      (Core.Just Core.AltJSON)
      cloudIdentityService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudIdentityDevicesDeviceUsersLookupResource
          )
          Core.mempty

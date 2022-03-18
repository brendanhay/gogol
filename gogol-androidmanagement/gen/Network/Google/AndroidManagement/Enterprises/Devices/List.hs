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
-- Module      : Network.Google.AndroidManagement.Enterprises.Devices.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists devices for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.devices.list@.
module Network.Google.AndroidManagement.Enterprises.Devices.List
  ( -- * Resource
    AndroidManagementEnterprisesDevicesListResource,

    -- ** Constructing a Request
    newAndroidManagementEnterprisesDevicesList,
    AndroidManagementEnterprisesDevicesList,
  )
where

import Network.Google.AndroidManagement.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidmanagement.enterprises.devices.list@ method which the
-- 'AndroidManagementEnterprisesDevicesList' request conforms to.
type AndroidManagementEnterprisesDevicesListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "devices"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListDevicesResponse

-- | Lists devices for a given enterprise.
--
-- /See:/ 'newAndroidManagementEnterprisesDevicesList' smart constructor.
data AndroidManagementEnterprisesDevicesList = AndroidManagementEnterprisesDevicesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The requested page size. The actual page size may be fixed to a min or max value.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results returned by the server.
    pageToken :: (Core.Maybe Core.Text),
    -- | The name of the enterprise in the form enterprises\/{enterpriseId}.
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidManagementEnterprisesDevicesList' with the minimum fields required to make a request.
newAndroidManagementEnterprisesDevicesList ::
  -- |  The name of the enterprise in the form enterprises\/{enterpriseId}. See 'parent'.
  Core.Text ->
  AndroidManagementEnterprisesDevicesList
newAndroidManagementEnterprisesDevicesList parent =
  AndroidManagementEnterprisesDevicesList
    { xgafv = Core.Nothing,
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
    AndroidManagementEnterprisesDevicesList
  where
  type
    Rs AndroidManagementEnterprisesDevicesList =
      ListDevicesResponse
  type
    Scopes AndroidManagementEnterprisesDevicesList =
      '["https://www.googleapis.com/auth/androidmanagement"]
  requestClient
    AndroidManagementEnterprisesDevicesList {..} =
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
        androidManagementService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidManagementEnterprisesDevicesListResource
            )
            Core.mempty

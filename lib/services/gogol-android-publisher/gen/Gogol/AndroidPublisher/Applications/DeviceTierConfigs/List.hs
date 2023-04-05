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
-- Module      : Gogol.AndroidPublisher.Applications.DeviceTierConfigs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns created device tier configs, ordered by descending creation time.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.applications.deviceTierConfigs.list@.
module Gogol.AndroidPublisher.Applications.DeviceTierConfigs.List
  ( -- * Resource
    AndroidPublisherApplicationsDeviceTierConfigsListResource,

    -- ** Constructing a Request
    AndroidPublisherApplicationsDeviceTierConfigsList (..),
    newAndroidPublisherApplicationsDeviceTierConfigsList,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.applications.deviceTierConfigs.list@ method which the
-- 'AndroidPublisherApplicationsDeviceTierConfigsList' request conforms to.
type AndroidPublisherApplicationsDeviceTierConfigsListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "deviceTierConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              ListDeviceTierConfigsResponse

-- | Returns created device tier configs, ordered by descending creation time.
--
-- /See:/ 'newAndroidPublisherApplicationsDeviceTierConfigsList' smart constructor.
data AndroidPublisherApplicationsDeviceTierConfigsList = AndroidPublisherApplicationsDeviceTierConfigsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | The maximum number of device tier configs to return. The service may return fewer than this value. If unspecified, at most 10 device tier configs will be returned. The maximum value for this field is 100; values above 100 will be coerced to 100. Device tier configs will be ordered by descending creation time.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A page token, received from a previous @ListDeviceTierConfigs@ call. Provide this to retrieve the subsequent page.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApplicationsDeviceTierConfigsList' with the minimum fields required to make a request.
newAndroidPublisherApplicationsDeviceTierConfigsList ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  AndroidPublisherApplicationsDeviceTierConfigsList
newAndroidPublisherApplicationsDeviceTierConfigsList packageName =
  AndroidPublisherApplicationsDeviceTierConfigsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherApplicationsDeviceTierConfigsList
  where
  type
    Rs
      AndroidPublisherApplicationsDeviceTierConfigsList =
      ListDeviceTierConfigsResponse
  type
    Scopes
      AndroidPublisherApplicationsDeviceTierConfigsList =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherApplicationsDeviceTierConfigsList {..} =
      go
        packageName
        xgafv
        accessToken
        callback
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherApplicationsDeviceTierConfigsListResource
            )
            Core.mempty

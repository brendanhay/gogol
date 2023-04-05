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
-- Module      : Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new device tier config for an app.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.applications.deviceTierConfigs.create@.
module Gogol.AndroidPublisher.Applications.DeviceTierConfigs.Create
  ( -- * Resource
    AndroidPublisherApplicationsDeviceTierConfigsCreateResource,

    -- ** Constructing a Request
    AndroidPublisherApplicationsDeviceTierConfigsCreate (..),
    newAndroidPublisherApplicationsDeviceTierConfigsCreate,
  )
where

import Gogol.AndroidPublisher.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @androidpublisher.applications.deviceTierConfigs.create@ method which the
-- 'AndroidPublisherApplicationsDeviceTierConfigsCreate' request conforms to.
type AndroidPublisherApplicationsDeviceTierConfigsCreateResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "deviceTierConfigs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "allowUnknownDevices" Core.Bool
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeviceTierConfig
    Core.:> Core.Post '[Core.JSON] DeviceTierConfig

-- | Creates a new device tier config for an app.
--
-- /See:/ 'newAndroidPublisherApplicationsDeviceTierConfigsCreate' smart constructor.
data AndroidPublisherApplicationsDeviceTierConfigsCreate = AndroidPublisherApplicationsDeviceTierConfigsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Whether the service should accept device IDs that are unknown to Play\'s device catalog.
    allowUnknownDevices :: (Core.Maybe Core.Bool),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Package name of the app.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeviceTierConfig,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApplicationsDeviceTierConfigsCreate' with the minimum fields required to make a request.
newAndroidPublisherApplicationsDeviceTierConfigsCreate ::
  -- |  Package name of the app. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeviceTierConfig ->
  AndroidPublisherApplicationsDeviceTierConfigsCreate
newAndroidPublisherApplicationsDeviceTierConfigsCreate packageName payload =
  AndroidPublisherApplicationsDeviceTierConfigsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      allowUnknownDevices = Core.Nothing,
      callback = Core.Nothing,
      packageName = packageName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidPublisherApplicationsDeviceTierConfigsCreate
  where
  type
    Rs
      AndroidPublisherApplicationsDeviceTierConfigsCreate =
      DeviceTierConfig
  type
    Scopes
      AndroidPublisherApplicationsDeviceTierConfigsCreate =
      '[Androidpublisher'FullControl]
  requestClient
    AndroidPublisherApplicationsDeviceTierConfigsCreate {..} =
      go
        packageName
        xgafv
        accessToken
        allowUnknownDevices
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        androidPublisherService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidPublisherApplicationsDeviceTierConfigsCreateResource
            )
            Core.mempty

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
-- Module      : Gogol.AndroidPublisher.Apprecovery.AddTargeting
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Incrementally update targeting for a recovery action. Note that only the criteria selected during the creation of recovery action can be expanded.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.apprecovery.addTargeting@.
module Gogol.AndroidPublisher.Apprecovery.AddTargeting
  ( -- * Resource
    AndroidPublisherApprecoveryAddTargetingResource,

    -- ** Constructing a Request
    AndroidPublisherApprecoveryAddTargeting (..),
    newAndroidPublisherApprecoveryAddTargeting,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.apprecovery.addTargeting@ method which the
-- 'AndroidPublisherApprecoveryAddTargeting' request conforms to.
type AndroidPublisherApprecoveryAddTargetingResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "appRecoveries"
    Core.:> Core.CaptureMode "appRecoveryId" "addTargeting" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AddTargetingRequest
    Core.:> Core.Post '[Core.JSON] AddTargetingResponse

-- | Incrementally update targeting for a recovery action. Note that only the criteria selected during the creation of recovery action can be expanded.
--
-- /See:/ 'newAndroidPublisherApprecoveryAddTargeting' smart constructor.
data AndroidPublisherApprecoveryAddTargeting = AndroidPublisherApprecoveryAddTargeting
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. ID corresponding to the app recovery action.
    appRecoveryId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Package name of the app for which recovery action is to be updated.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: AddTargetingRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApprecoveryAddTargeting' with the minimum fields required to make a request.
newAndroidPublisherApprecoveryAddTargeting ::
  -- |  Required. ID corresponding to the app recovery action. See 'appRecoveryId'.
  Core.Int64 ->
  -- |  Required. Package name of the app for which recovery action is to be updated. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AddTargetingRequest ->
  AndroidPublisherApprecoveryAddTargeting
newAndroidPublisherApprecoveryAddTargeting
  appRecoveryId
  packageName
  payload =
    AndroidPublisherApprecoveryAddTargeting
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        appRecoveryId = appRecoveryId,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest AndroidPublisherApprecoveryAddTargeting where
  type
    Rs AndroidPublisherApprecoveryAddTargeting =
      AddTargetingResponse
  type
    Scopes AndroidPublisherApprecoveryAddTargeting =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherApprecoveryAddTargeting {..} =
    go
      packageName
      appRecoveryId
      xgafv
      accessToken
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
              Core.Proxy AndroidPublisherApprecoveryAddTargetingResource
          )
          Core.mempty

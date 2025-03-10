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
-- Module      : Gogol.AndroidPublisher.Apprecovery.Deploy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploy an already created app recovery action with recovery status DRAFT. Note that this action activates the recovery action for all targeted users and changes its status to ACTIVE.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.apprecovery.deploy@.
module Gogol.AndroidPublisher.Apprecovery.Deploy
  ( -- * Resource
    AndroidPublisherApprecoveryDeployResource,

    -- ** Constructing a Request
    AndroidPublisherApprecoveryDeploy (..),
    newAndroidPublisherApprecoveryDeploy,
  )
where

import Gogol.AndroidPublisher.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidpublisher.apprecovery.deploy@ method which the
-- 'AndroidPublisherApprecoveryDeploy' request conforms to.
type AndroidPublisherApprecoveryDeployResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> "applications"
    Core.:> Core.Capture "packageName" Core.Text
    Core.:> "appRecoveries"
    Core.:> Core.CaptureMode "appRecoveryId" "deploy" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] DeployAppRecoveryRequest
    Core.:> Core.Post '[Core.JSON] DeployAppRecoveryResponse

-- | Deploy an already created app recovery action with recovery status DRAFT. Note that this action activates the recovery action for all targeted users and changes its status to ACTIVE.
--
-- /See:/ 'newAndroidPublisherApprecoveryDeploy' smart constructor.
data AndroidPublisherApprecoveryDeploy = AndroidPublisherApprecoveryDeploy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. ID corresponding to the app recovery action to deploy.
    appRecoveryId :: Core.Int64,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Package name of the app for which recovery action is deployed.
    packageName :: Core.Text,
    -- | Multipart request metadata.
    payload :: DeployAppRecoveryRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherApprecoveryDeploy' with the minimum fields required to make a request.
newAndroidPublisherApprecoveryDeploy ::
  -- |  Required. ID corresponding to the app recovery action to deploy. See 'appRecoveryId'.
  Core.Int64 ->
  -- |  Required. Package name of the app for which recovery action is deployed. See 'packageName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  DeployAppRecoveryRequest ->
  AndroidPublisherApprecoveryDeploy
newAndroidPublisherApprecoveryDeploy
  appRecoveryId
  packageName
  payload =
    AndroidPublisherApprecoveryDeploy
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        appRecoveryId = appRecoveryId,
        callback = Core.Nothing,
        packageName = packageName,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest AndroidPublisherApprecoveryDeploy where
  type
    Rs AndroidPublisherApprecoveryDeploy =
      DeployAppRecoveryResponse
  type
    Scopes AndroidPublisherApprecoveryDeploy =
      '[Androidpublisher'FullControl]
  requestClient AndroidPublisherApprecoveryDeploy {..} =
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
              Core.Proxy AndroidPublisherApprecoveryDeployResource
          )
          Core.mempty

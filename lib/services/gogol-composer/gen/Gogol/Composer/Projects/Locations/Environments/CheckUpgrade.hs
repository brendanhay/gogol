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
-- Module      : Gogol.Composer.Projects.Locations.Environments.CheckUpgrade
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Check if an upgrade operation on the environment will succeed. In case of problems detailed info can be found in the returned Operation.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.checkUpgrade@.
module Gogol.Composer.Projects.Locations.Environments.CheckUpgrade
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsCheckUpgradeResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsCheckUpgrade (..),
    newComposerProjectsLocationsEnvironmentsCheckUpgrade,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.checkUpgrade@ method which the
-- 'ComposerProjectsLocationsEnvironmentsCheckUpgrade' request conforms to.
type ComposerProjectsLocationsEnvironmentsCheckUpgradeResource =
  "v1"
    Core.:> Core.CaptureMode "environment" "checkUpgrade" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CheckUpgradeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Check if an upgrade operation on the environment will succeed. In case of problems detailed info can be found in the returned Operation.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsCheckUpgrade' smart constructor.
data ComposerProjectsLocationsEnvironmentsCheckUpgrade = ComposerProjectsLocationsEnvironmentsCheckUpgrade
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the environment to check upgrade for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    environment :: Core.Text,
    -- | Multipart request metadata.
    payload :: CheckUpgradeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsCheckUpgrade' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsCheckUpgrade ::
  -- |  Required. The resource name of the environment to check upgrade for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'environment'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CheckUpgradeRequest ->
  ComposerProjectsLocationsEnvironmentsCheckUpgrade
newComposerProjectsLocationsEnvironmentsCheckUpgrade
  environment
  payload =
    ComposerProjectsLocationsEnvironmentsCheckUpgrade
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        environment = environment,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsCheckUpgrade
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsCheckUpgrade =
      Operation
  type
    Scopes ComposerProjectsLocationsEnvironmentsCheckUpgrade =
      '[CloudPlatform'FullControl]
  requestClient ComposerProjectsLocationsEnvironmentsCheckUpgrade {..} =
    go
      environment
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      composerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                ComposerProjectsLocationsEnvironmentsCheckUpgradeResource
          )
          Core.mempty

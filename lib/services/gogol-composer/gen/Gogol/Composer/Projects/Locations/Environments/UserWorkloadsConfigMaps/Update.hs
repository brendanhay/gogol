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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsConfigMaps.update@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Update
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdateResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsConfigMaps.update@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserWorkloadsConfigMap
    Core.:> Core.Put '[Core.JSON] UserWorkloadsConfigMap

-- | Updates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate = ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name of the ConfigMap, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsConfigMaps\/{userWorkloadsConfigMapId}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserWorkloadsConfigMap,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate ::
  -- |  Identifier. The resource name of the ConfigMap, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsConfigMaps\/{userWorkloadsConfigMapId}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserWorkloadsConfigMap ->
  ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate
newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate
  name
  payload =
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate =
      UserWorkloadsConfigMap
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdate {..} =
      go
        name
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
                  ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsUpdateResource
            )
            Core.mempty

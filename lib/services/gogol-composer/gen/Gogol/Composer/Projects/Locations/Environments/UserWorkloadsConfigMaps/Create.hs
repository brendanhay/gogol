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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Create
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsConfigMaps.create@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsConfigMaps.Create
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreateResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsConfigMaps.create@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "userWorkloadsConfigMaps"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserWorkloadsConfigMap
    Core.:> Core.Post '[Core.JSON] UserWorkloadsConfigMap

-- | Creates a user workloads ConfigMap. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate = ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The environment name to create a ConfigMap for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserWorkloadsConfigMap,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate ::
  -- |  Required. The environment name to create a ConfigMap for, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserWorkloadsConfigMap ->
  ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate
newComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate
  parent
  payload =
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        parent = parent,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol =
          Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate =
      UserWorkloadsConfigMap
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreate {..} =
      go
        parent
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
                  ComposerProjectsLocationsEnvironmentsUserWorkloadsConfigMapsCreateResource
            )
            Core.mempty

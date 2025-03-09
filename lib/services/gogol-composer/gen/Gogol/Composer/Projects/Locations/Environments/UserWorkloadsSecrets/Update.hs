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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsSecrets.update@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Update
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdateResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsSecrets.update@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UserWorkloadsSecret
    Core.:> Core.Put '[Core.JSON] UserWorkloadsSecret

-- | Updates a user workloads Secret. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate = ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Identifier. The resource name of the Secret, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsSecrets\/{userWorkloadsSecretId}\"
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: UserWorkloadsSecret,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate ::
  -- |  Identifier. The resource name of the Secret, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsSecrets\/{userWorkloadsSecretId}\" See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  UserWorkloadsSecret ->
  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate
  name
  payload =
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        payload = payload,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate =
      UserWorkloadsSecret
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdate {..} =
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
                  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsUpdateResource
            )
            Core.mempty

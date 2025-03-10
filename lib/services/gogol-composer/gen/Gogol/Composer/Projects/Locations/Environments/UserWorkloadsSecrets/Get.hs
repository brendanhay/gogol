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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing user workloads Secret. Values of the \"data\" field in the response are cleared. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsSecrets.get@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.Get
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGetResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsSecrets.get@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UserWorkloadsSecret

-- | Gets an existing user workloads Secret. Values of the \"data\" field in the response are cleared. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet = ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the Secret to get, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsSecrets\/{userWorkloadsSecretId}\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet ::
  -- |  Required. The resource name of the Secret to get, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\/userWorkloadsSecrets\/{userWorkloadsSecretId}\" See 'name'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet
  name =
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet
      { xgafv =
          Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        name = name,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet =
      UserWorkloadsSecret
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsGetResource
            )
            Core.mempty

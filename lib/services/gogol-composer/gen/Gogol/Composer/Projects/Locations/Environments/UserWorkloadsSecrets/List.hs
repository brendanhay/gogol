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
-- Module      : Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists user workloads Secrets. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.userWorkloadsSecrets.list@.
module Gogol.Composer.Projects.Locations.Environments.UserWorkloadsSecrets.List
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsListResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList (..),
    newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList,
  )
where

import Gogol.Composer.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @composer.projects.locations.environments.userWorkloadsSecrets.list@ method which the
-- 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList' request conforms to.
type ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "userWorkloadsSecrets"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUserWorkloadsSecretsResponse

-- | Lists user workloads Secrets. This method is supported for Cloud Composer environments in versions composer-3-airflow-/././-build./ and newer.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList' smart constructor.
data ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList = ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The maximum number of Secrets to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Optional. The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. List Secrets in the given environment, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList ::
  -- |  Required. List Secrets in the given environment, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'parent'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList
newComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList
  parent =
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList
      { xgafv =
          Core.Nothing,
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
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList
  where
  type
    Rs
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList =
      ListUserWorkloadsSecretsResponse
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsList {..} =
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
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsEnvironmentsUserWorkloadsSecretsListResource
            )
            Core.mempty

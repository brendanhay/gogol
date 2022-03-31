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
-- Module      : Gogol.Composer.Projects.Locations.Environments.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get an existing environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.get@.
module Gogol.Composer.Projects.Locations.Environments.Get
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsGetResource,

    -- ** Constructing a Request
    newComposerProjectsLocationsEnvironmentsGet,
    ComposerProjectsLocationsEnvironmentsGet,
  )
where

import Gogol.Composer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @composer.projects.locations.environments.get@ method which the
-- 'ComposerProjectsLocationsEnvironmentsGet' request conforms to.
type ComposerProjectsLocationsEnvironmentsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Environment

-- | Get an existing environment.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsGet' smart constructor.
data ComposerProjectsLocationsEnvironmentsGet = ComposerProjectsLocationsEnvironmentsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name of the environment to get, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsGet' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsGet ::
  -- |  The resource name of the environment to get, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'name'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsGet
newComposerProjectsLocationsEnvironmentsGet name =
  ComposerProjectsLocationsEnvironmentsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsGet
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsGet =
      Environment
  type
    Scopes ComposerProjectsLocationsEnvironmentsGet =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsGet {..} =
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
                  ComposerProjectsLocationsEnvironmentsGetResource
            )
            Core.mempty

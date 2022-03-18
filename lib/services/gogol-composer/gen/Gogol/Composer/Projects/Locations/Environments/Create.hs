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
-- Module      : Gogol.Composer.Projects.Locations.Environments.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.create@.
module Gogol.Composer.Projects.Locations.Environments.Create
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsCreateResource,

    -- ** Constructing a Request
    newComposerProjectsLocationsEnvironmentsCreate,
    ComposerProjectsLocationsEnvironmentsCreate,
  )
where

import Gogol.Composer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @composer.projects.locations.environments.create@ method which the
-- 'ComposerProjectsLocationsEnvironmentsCreate' request conforms to.
type ComposerProjectsLocationsEnvironmentsCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "environments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Environment
    Core.:> Core.Post '[Core.JSON] Operation

-- | Create a new environment.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsCreate' smart constructor.
data ComposerProjectsLocationsEnvironmentsCreate = ComposerProjectsLocationsEnvironmentsCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The parent must be of the form \"projects\/{projectId}\/locations\/{locationId}\".
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Environment,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsCreate' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsCreate ::
  -- |  The parent must be of the form \"projects\/{projectId}\/locations\/{locationId}\". See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Environment ->
  ComposerProjectsLocationsEnvironmentsCreate
newComposerProjectsLocationsEnvironmentsCreate parent payload =
  ComposerProjectsLocationsEnvironmentsCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsCreate
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsCreate =
      Operation
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ComposerProjectsLocationsEnvironmentsCreate {..} =
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
                  ComposerProjectsLocationsEnvironmentsCreateResource
            )
            Core.mempty

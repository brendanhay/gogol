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
-- Module      : Gogol.Composer.Projects.Locations.Environments.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an environment.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.environments.delete@.
module Gogol.Composer.Projects.Locations.Environments.Delete
  ( -- * Resource
    ComposerProjectsLocationsEnvironmentsDeleteResource,

    -- ** Constructing a Request
    newComposerProjectsLocationsEnvironmentsDelete,
    ComposerProjectsLocationsEnvironmentsDelete,
  )
where

import Gogol.Composer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @composer.projects.locations.environments.delete@ method which the
-- 'ComposerProjectsLocationsEnvironmentsDelete' request conforms to.
type ComposerProjectsLocationsEnvironmentsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Operation

-- | Delete an environment.
--
-- /See:/ 'newComposerProjectsLocationsEnvironmentsDelete' smart constructor.
data ComposerProjectsLocationsEnvironmentsDelete = ComposerProjectsLocationsEnvironmentsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The environment to delete, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\"
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsEnvironmentsDelete' with the minimum fields required to make a request.
newComposerProjectsLocationsEnvironmentsDelete ::
  -- |  The environment to delete, in the form: \"projects\/{projectId}\/locations\/{locationId}\/environments\/{environmentId}\" See 'name'.
  Core.Text ->
  ComposerProjectsLocationsEnvironmentsDelete
newComposerProjectsLocationsEnvironmentsDelete name =
  ComposerProjectsLocationsEnvironmentsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsEnvironmentsDelete
  where
  type
    Rs ComposerProjectsLocationsEnvironmentsDelete =
      Operation
  type
    Scopes
      ComposerProjectsLocationsEnvironmentsDelete =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsEnvironmentsDelete {..} =
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
                  ComposerProjectsLocationsEnvironmentsDeleteResource
            )
            Core.mempty

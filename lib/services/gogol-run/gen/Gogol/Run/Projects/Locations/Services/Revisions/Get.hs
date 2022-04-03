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
-- Module      : Gogol.Run.Projects.Locations.Services.Revisions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a Revision.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.revisions.get@.
module Gogol.Run.Projects.Locations.Services.Revisions.Get
  ( -- * Resource
    RunProjectsLocationsServicesRevisionsGetResource,

    -- ** Constructing a Request
    RunProjectsLocationsServicesRevisionsGet (..),
    newRunProjectsLocationsServicesRevisionsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.services.revisions.get@ method which the
-- 'RunProjectsLocationsServicesRevisionsGet' request conforms to.
type RunProjectsLocationsServicesRevisionsGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleCloudRunV2Revision

-- | Gets information about a Revision.
--
-- /See:/ 'newRunProjectsLocationsServicesRevisionsGet' smart constructor.
data RunProjectsLocationsServicesRevisionsGet = RunProjectsLocationsServicesRevisionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The full name of the Revision. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesRevisionsGet' with the minimum fields required to make a request.
newRunProjectsLocationsServicesRevisionsGet ::
  -- |  Required. The full name of the Revision. Format: projects\/{project}\/locations\/{location}\/services\/{service}\/revisions\/{revision} See 'name'.
  Core.Text ->
  RunProjectsLocationsServicesRevisionsGet
newRunProjectsLocationsServicesRevisionsGet name =
  RunProjectsLocationsServicesRevisionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RunProjectsLocationsServicesRevisionsGet
  where
  type
    Rs RunProjectsLocationsServicesRevisionsGet =
      GoogleCloudRunV2Revision
  type
    Scopes RunProjectsLocationsServicesRevisionsGet =
      '[CloudPlatform'FullControl]
  requestClient
    RunProjectsLocationsServicesRevisionsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        runService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  RunProjectsLocationsServicesRevisionsGetResource
            )
            Core.mempty

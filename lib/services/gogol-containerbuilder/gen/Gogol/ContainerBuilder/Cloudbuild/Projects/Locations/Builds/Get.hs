{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a previously requested build. The @Build@ that is returned includes its status (such as @SUCCESS@, @FAILURE@, or @WORKING@), and timing information.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Get
    (
    -- * Resource
      CloudbuildProjectsLocationsBuildsGetResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsBuildsGet
    , CloudbuildProjectsLocationsBuildsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.builds.get@ method which the
-- 'CloudbuildProjectsLocationsBuildsGet' request conforms to.
type CloudbuildProjectsLocationsBuildsGetResource =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "id" Core.Text Core.:>
                 Core.QueryParam "projectId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] Build

-- | Returns information about a previously requested build. The @Build@ that is returned includes its status (such as @SUCCESS@, @FAILURE@, or @WORKING@), and timing information.
--
-- /See:/ 'newCloudbuildProjectsLocationsBuildsGet' smart constructor.
data CloudbuildProjectsLocationsBuildsGet = CloudbuildProjectsLocationsBuildsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. ID of the build.
    , id :: (Core.Maybe Core.Text)
      -- | The name of the @Build@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    , name :: Core.Text
      -- | Required. ID of the project.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBuildsGet' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBuildsGet 
    ::  Core.Text
       -- ^  The name of the @Build@ to retrieve. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@ See 'name'.
    -> CloudbuildProjectsLocationsBuildsGet
newCloudbuildProjectsLocationsBuildsGet name =
  CloudbuildProjectsLocationsBuildsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , id = Core.Nothing
    , name = name
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsBuildsGet
         where
        type Rs CloudbuildProjectsLocationsBuildsGet = Build
        type Scopes CloudbuildProjectsLocationsBuildsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbuildProjectsLocationsBuildsGet{..}
          = go name xgafv accessToken callback id projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsBuildsGetResource)
                      Core.mempty


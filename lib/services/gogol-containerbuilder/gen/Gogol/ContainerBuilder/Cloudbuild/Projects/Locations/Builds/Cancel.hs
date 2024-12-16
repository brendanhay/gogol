{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a build in progress.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.builds.cancel@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Builds.Cancel
    (
    -- * Resource
      CloudbuildProjectsLocationsBuildsCancelResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsBuildsCancel (..)
    , newCloudbuildProjectsLocationsBuildsCancel
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.builds.cancel@ method which the
-- 'CloudbuildProjectsLocationsBuildsCancel' request conforms to.
type CloudbuildProjectsLocationsBuildsCancelResource
     =
     "v1" Core.:>
       Core.CaptureMode "name" "cancel" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] CancelBuildRequest Core.:>
                       Core.Post '[Core.JSON] Build

-- | Cancels a build in progress.
--
-- /See:/ 'newCloudbuildProjectsLocationsBuildsCancel' smart constructor.
data CloudbuildProjectsLocationsBuildsCancel = CloudbuildProjectsLocationsBuildsCancel
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @Build@ to cancel. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@
    , name :: Core.Text
      -- | Multipart request metadata.
    , payload :: CancelBuildRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsBuildsCancel' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsBuildsCancel 
    ::  Core.Text
       -- ^  The name of the @Build@ to cancel. Format: @projects\/{project}\/locations\/{location}\/builds\/{build}@ See 'name'.
    -> CancelBuildRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsBuildsCancel
newCloudbuildProjectsLocationsBuildsCancel name payload =
  CloudbuildProjectsLocationsBuildsCancel
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsBuildsCancel
         where
        type Rs CloudbuildProjectsLocationsBuildsCancel =
             Build
        type Scopes CloudbuildProjectsLocationsBuildsCancel =
             '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsBuildsCancel{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsBuildsCancelResource)
                      Core.mempty


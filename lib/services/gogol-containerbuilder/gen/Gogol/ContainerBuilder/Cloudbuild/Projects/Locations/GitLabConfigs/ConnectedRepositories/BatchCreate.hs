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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.ConnectedRepositories.BatchCreate
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batch connecting GitLab repositories to Cloud Build. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.connectedRepositories.batchCreate@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.ConnectedRepositories.BatchCreate
    (
    -- * Resource
      CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreateResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate (..)
    , newCloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.connectedRepositories.batchCreate@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "connectedRepositories:batchCreate" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON]
                         BatchCreateGitLabConnectedRepositoriesRequest
                         Core.:> Core.Post '[Core.JSON] Operation

-- | Batch connecting GitLab repositories to Cloud Build. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate = CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @GitLabConfig@ that adds connected repositories. Format: @projects\/{project}\/locations\/{location}\/gitLabConfigs\/{config}@
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: BatchCreateGitLabConnectedRepositoriesRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate 
    ::  Core.Text
       -- ^  The name of the @GitLabConfig@ that adds connected repositories. Format: @projects\/{project}\/locations\/{location}\/gitLabConfigs\/{config}@ See 'parent'.
    -> BatchCreateGitLabConnectedRepositoriesRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
newCloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate parent payload =
  CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
         where
        type Rs
               CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGitLabConfigsConnectedRepositoriesBatchCreateResource)
                      Core.mempty


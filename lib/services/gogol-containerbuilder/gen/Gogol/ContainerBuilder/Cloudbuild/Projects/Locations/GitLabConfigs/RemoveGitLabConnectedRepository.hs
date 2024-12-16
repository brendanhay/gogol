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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.RemoveGitLabConnectedRepository
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove a GitLab repository from a given GitLabConfig\'s connected repositories. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.removeGitLabConnectedRepository@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.RemoveGitLabConnectedRepository
    (
    -- * Resource
      CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepositoryResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository (..)
    , newCloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.removeGitLabConnectedRepository@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepositoryResource
     =
     "v1" Core.:>
       Core.CaptureMode "config"
         "removeGitLabConnectedRepository"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON]
                       RemoveGitLabConnectedRepositoryRequest
                       Core.:> Core.Post '[Core.JSON] Empty

-- | Remove a GitLab repository from a given GitLabConfig\'s connected repositories. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository = CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the @GitLabConfig@ to remove a connected repository. Format: @projects\/{project}\/locations\/{location}\/gitLabConfigs\/{config}@
    , config :: Core.Text
      -- | Multipart request metadata.
    , payload :: RemoveGitLabConnectedRepositoryRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository 
    ::  Core.Text
       -- ^  Required. The name of the @GitLabConfig@ to remove a connected repository. Format: @projects\/{project}\/locations\/{location}\/gitLabConfigs\/{config}@ See 'config'.
    -> RemoveGitLabConnectedRepositoryRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
newCloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository config payload =
  CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , config = config
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
         where
        type Rs
               CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
             = Empty
        type Scopes
               CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepository{..}
          = go config xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGitLabConfigsRemoveGitLabConnectedRepositoryResource)
                      Core.mempty


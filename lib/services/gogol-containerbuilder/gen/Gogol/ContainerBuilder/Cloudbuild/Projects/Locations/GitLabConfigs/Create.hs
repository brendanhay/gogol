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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new @GitLabConfig@. This API is experimental
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.gitLabConfigs.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GitLabConfigs.Create
    (
    -- * Resource
      CloudbuildProjectsLocationsGitLabConfigsCreateResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsGitLabConfigsCreate (..)
    , newCloudbuildProjectsLocationsGitLabConfigsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.gitLabConfigs.create@ method which the
-- 'CloudbuildProjectsLocationsGitLabConfigsCreate' request conforms to.
type CloudbuildProjectsLocationsGitLabConfigsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "gitLabConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "gitlabConfigId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] GitLabConfig Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a new @GitLabConfig@. This API is experimental
--
-- /See:/ 'newCloudbuildProjectsLocationsGitLabConfigsCreate' smart constructor.
data CloudbuildProjectsLocationsGitLabConfigsCreate = CloudbuildProjectsLocationsGitLabConfigsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The ID to use for the GitLabConfig, which will become the final component of the GitLabConfig’s resource name. gitlab/config/id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
    , gitlabConfigId :: (Core.Maybe Core.Text)
      -- | Required. Name of the parent resource.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GitLabConfig
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGitLabConfigsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGitLabConfigsCreate 
    ::  Core.Text
       -- ^  Required. Name of the parent resource. See 'parent'.
    -> GitLabConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsGitLabConfigsCreate
newCloudbuildProjectsLocationsGitLabConfigsCreate parent payload =
  CloudbuildProjectsLocationsGitLabConfigsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , gitlabConfigId = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGitLabConfigsCreate
         where
        type Rs
               CloudbuildProjectsLocationsGitLabConfigsCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsGitLabConfigsCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsGitLabConfigsCreate{..}
          = go parent xgafv accessToken callback gitlabConfigId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGitLabConfigsCreateResource)
                      Core.mempty


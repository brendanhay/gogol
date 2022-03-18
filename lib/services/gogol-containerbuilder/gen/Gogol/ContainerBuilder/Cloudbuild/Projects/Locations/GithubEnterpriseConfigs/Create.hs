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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.githubEnterpriseConfigs.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Create
    (
    -- * Resource
      CloudbuildProjectsLocationsGithubEnterpriseConfigsCreateResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
    , CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.githubEnterpriseConfigs.create@ method which the
-- 'CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate' request conforms to.
type CloudbuildProjectsLocationsGithubEnterpriseConfigsCreateResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "githubEnterpriseConfigs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "gheConfigId" Core.Text Core.:>
                   Core.QueryParam "projectId" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] GitHubEnterpriseConfig
                             Core.:> Core.Post '[Core.JSON] Operation

-- | Create an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ 'newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate' smart constructor.
data CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate = CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. The ID to use for the GithubEnterpriseConfig, which will become the final component of the GithubEnterpriseConfig’s resource name. ghe/config/id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character
    , gheConfigId :: (Core.Maybe Core.Text)
      -- | Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id}
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: GitHubEnterpriseConfig
      -- | ID of the project.
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate 
    ::  Core.Text
       -- ^  Name of the parent project. For example: projects\/{$project/number} or projects\/{$project/id} See 'parent'.
    -> GitHubEnterpriseConfig
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
newCloudbuildProjectsLocationsGithubEnterpriseConfigsCreate parent payload =
  CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , gheConfigId = Core.Nothing
    , parent = parent
    , payload = payload
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
         where
        type Rs
               CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbuildProjectsLocationsGithubEnterpriseConfigsCreate{..}
          = go parent xgafv accessToken callback gheConfigId
              projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGithubEnterpriseConfigsCreateResource)
                      Core.mempty


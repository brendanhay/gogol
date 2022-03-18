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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.githubEnterpriseConfigs.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.GithubEnterpriseConfigs.Delete
    (
    -- * Resource
      CloudbuildProjectsLocationsGithubEnterpriseConfigsDeleteResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
    , CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.githubEnterpriseConfigs.delete@ method which the
-- 'CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete' request conforms to.
type CloudbuildProjectsLocationsGithubEnterpriseConfigsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "configId" Core.Text Core.:>
                 Core.QueryParam "projectId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Operation

-- | Delete an association between a GCP project and a GitHub Enterprise server.
--
-- /See:/ 'newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete' smart constructor.
data CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete = CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Unique identifier of the @GitHubEnterpriseConfig@
    , configId :: (Core.Maybe Core.Text)
      -- | This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\"
    , name :: Core.Text
      -- | ID of the project
    , projectId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete 
    ::  Core.Text
       -- ^  This field should contain the name of the enterprise config resource. For example: \"projects\/{$project/id}\/githubEnterpriseConfigs\/{$config/id}\" See 'name'.
    -> CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
newCloudbuildProjectsLocationsGithubEnterpriseConfigsDelete name =
  CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , configId = Core.Nothing
    , name = name
    , projectId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
         where
        type Rs
               CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
             = Operation
        type Scopes
               CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbuildProjectsLocationsGithubEnterpriseConfigsDelete{..}
          = go name xgafv accessToken callback configId
              projectId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsGithubEnterpriseConfigsDeleteResource)
                      Core.mempty


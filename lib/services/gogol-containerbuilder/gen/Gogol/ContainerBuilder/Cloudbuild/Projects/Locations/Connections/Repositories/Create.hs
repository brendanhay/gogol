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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Repository.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.repositories.create@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Repositories.Create
    (
    -- * Resource
      CloudbuildProjectsLocationsConnectionsRepositoriesCreateResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsConnectionsRepositoriesCreate (..)
    , newCloudbuildProjectsLocationsConnectionsRepositoriesCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.connections.repositories.create@ method which the
-- 'CloudbuildProjectsLocationsConnectionsRepositoriesCreate' request conforms to.
type CloudbuildProjectsLocationsConnectionsRepositoriesCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "repositories" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "repositoryId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Repository Core.:>
                           Core.Post '[Core.JSON] Operation

-- | Creates a Repository.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsRepositoriesCreate' smart constructor.
data CloudbuildProjectsLocationsConnectionsRepositoriesCreate = CloudbuildProjectsLocationsConnectionsRepositoriesCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The connection to contain the repository. If the request is part of a BatchCreateRepositoriesRequest, this field should be empty or match the parent specified there.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: Repository
      -- | Required. The ID to use for the repository, which will become the final component of the repository\'s resource name. This ID should be unique in the connection. Allows alphanumeric characters and any of -._~%!$&\'()*+,;=\@.
    , repositoryId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsRepositoriesCreate' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsRepositoriesCreate 
    ::  Core.Text
       -- ^  Required. The connection to contain the repository. If the request is part of a BatchCreateRepositoriesRequest, this field should be empty or match the parent specified there. See 'parent'.
    -> Repository
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudbuildProjectsLocationsConnectionsRepositoriesCreate
newCloudbuildProjectsLocationsConnectionsRepositoriesCreate parent payload =
  CloudbuildProjectsLocationsConnectionsRepositoriesCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , repositoryId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsConnectionsRepositoriesCreate
         where
        type Rs
               CloudbuildProjectsLocationsConnectionsRepositoriesCreate
             = Operation
        type Scopes
               CloudbuildProjectsLocationsConnectionsRepositoriesCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsConnectionsRepositoriesCreate{..}
          = go parent xgafv accessToken callback repositoryId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsConnectionsRepositoriesCreateResource)
                      Core.mempty


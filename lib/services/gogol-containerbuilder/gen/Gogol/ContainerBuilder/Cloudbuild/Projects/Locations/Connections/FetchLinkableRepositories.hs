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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.FetchLinkableRepositories
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- FetchLinkableRepositories get repositories from SCM that are accessible and could be added to the connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.fetchLinkableRepositories@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.FetchLinkableRepositories
    (
    -- * Resource
      CloudbuildProjectsLocationsConnectionsFetchLinkableRepositoriesResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories (..)
    , newCloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.connections.fetchLinkableRepositories@ method which the
-- 'CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories' request conforms to.
type CloudbuildProjectsLocationsConnectionsFetchLinkableRepositoriesResource
     =
     "v2" Core.:>
       Core.CaptureMode "connection"
         "fetchLinkableRepositories"
         Core.Text
         Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "pageSize" Core.Int32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON]
                           FetchLinkableRepositoriesResponse

-- | FetchLinkableRepositories get repositories from SCM that are accessible and could be added to the connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsFetchLinkableRepositories' smart constructor.
data CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories = CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Connection. Format: @projects\/*\/locations\/*\/connections\/*@.
    , connection :: Core.Text
      -- | Number of results to return in the list. Default to 20.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Page start.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsFetchLinkableRepositories 
    ::  Core.Text
       -- ^  Required. The name of the Connection. Format: @projects\/*\/locations\/*\/connections\/*@. See 'connection'.
    -> CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
newCloudbuildProjectsLocationsConnectionsFetchLinkableRepositories connection =
  CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , connection = connection
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
         where
        type Rs
               CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
             = FetchLinkableRepositoriesResponse
        type Scopes
               CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsConnectionsFetchLinkableRepositories{..}
          = go connection xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsConnectionsFetchLinkableRepositoriesResource)
                      Core.mempty

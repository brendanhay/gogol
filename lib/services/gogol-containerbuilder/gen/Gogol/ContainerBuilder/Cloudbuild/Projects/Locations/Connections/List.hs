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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Connections in a given project and location.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.List
    (
    -- * Resource
      CloudbuildProjectsLocationsConnectionsListResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsConnectionsList (..)
    , newCloudbuildProjectsLocationsConnectionsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.connections.list@ method which the
-- 'CloudbuildProjectsLocationsConnectionsList' request conforms to.
type CloudbuildProjectsLocationsConnectionsListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "connections" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListConnectionsResponse

-- | Lists Connections in a given project and location.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsList' smart constructor.
data CloudbuildProjectsLocationsConnectionsList = CloudbuildProjectsLocationsConnectionsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Number of results to return in the list.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Page start.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent, which owns this collection of Connections. Format: @projects\/*\/locations\/*@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsList 
    ::  Core.Text
       -- ^  Required. The parent, which owns this collection of Connections. Format: @projects\/*\/locations\/*@. See 'parent'.
    -> CloudbuildProjectsLocationsConnectionsList
newCloudbuildProjectsLocationsConnectionsList parent =
  CloudbuildProjectsLocationsConnectionsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsConnectionsList
         where
        type Rs CloudbuildProjectsLocationsConnectionsList =
             ListConnectionsResponse
        type Scopes
               CloudbuildProjectsLocationsConnectionsList
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsConnectionsList{..}
          = go parent xgafv accessToken callback pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsConnectionsListResource)
                      Core.mempty

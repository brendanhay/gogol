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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets details of a single connection.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.connections.get@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Connections.Get
    (
    -- * Resource
      CloudbuildProjectsLocationsConnectionsGetResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsConnectionsGet (..)
    , newCloudbuildProjectsLocationsConnectionsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.connections.get@ method which the
-- 'CloudbuildProjectsLocationsConnectionsGet' request conforms to.
type CloudbuildProjectsLocationsConnectionsGetResource
     =
     "v2" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "upload_protocol" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] Connection

-- | Gets details of a single connection.
--
-- /See:/ 'newCloudbuildProjectsLocationsConnectionsGet' smart constructor.
data CloudbuildProjectsLocationsConnectionsGet = CloudbuildProjectsLocationsConnectionsGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The name of the Connection to retrieve. Format: @projects\/*\/locations\/*\/connections\/*@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsConnectionsGet' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsConnectionsGet 
    ::  Core.Text
       -- ^  Required. The name of the Connection to retrieve. Format: @projects\/*\/locations\/*\/connections\/*@. See 'name'.
    -> CloudbuildProjectsLocationsConnectionsGet
newCloudbuildProjectsLocationsConnectionsGet name =
  CloudbuildProjectsLocationsConnectionsGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsConnectionsGet
         where
        type Rs CloudbuildProjectsLocationsConnectionsGet =
             Connection
        type Scopes CloudbuildProjectsLocationsConnectionsGet
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsConnectionsGet{..}
          = go name xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsConnectionsGetResource)
                      Core.mempty

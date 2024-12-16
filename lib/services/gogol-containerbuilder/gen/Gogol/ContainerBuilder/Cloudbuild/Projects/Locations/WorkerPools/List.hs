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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists @WorkerPool@s.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.list@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.List
    (
    -- * Resource
      CloudbuildProjectsLocationsWorkerPoolsListResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsWorkerPoolsList (..)
    , newCloudbuildProjectsLocationsWorkerPoolsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.workerPools.list@ method which the
-- 'CloudbuildProjectsLocationsWorkerPoolsList' request conforms to.
type CloudbuildProjectsLocationsWorkerPoolsListResource
     =
     "v1" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "workerPools" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "pageSize" Core.Int32 Core.:>
                   Core.QueryParam "pageToken" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] ListWorkerPoolsResponse

-- | Lists @WorkerPool@s.
--
-- /See:/ 'newCloudbuildProjectsLocationsWorkerPoolsList' smart constructor.
data CloudbuildProjectsLocationsWorkerPoolsList = CloudbuildProjectsLocationsWorkerPoolsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The maximum number of @WorkerPool@s to return. The service may return fewer than this value. If omitted, the server will use a sensible default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A page token, received from a previous @ListWorkerPools@ call. Provide this to retrieve the subsequent page.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. The parent of the collection of @WorkerPools@. Format: @projects\/{project}\/locations\/{location}@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsWorkerPoolsList' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsWorkerPoolsList 
    ::  Core.Text
       -- ^  Required. The parent of the collection of @WorkerPools@. Format: @projects\/{project}\/locations\/{location}@. See 'parent'.
    -> CloudbuildProjectsLocationsWorkerPoolsList
newCloudbuildProjectsLocationsWorkerPoolsList parent =
  CloudbuildProjectsLocationsWorkerPoolsList
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
           CloudbuildProjectsLocationsWorkerPoolsList
         where
        type Rs CloudbuildProjectsLocationsWorkerPoolsList =
             ListWorkerPoolsResponse
        type Scopes
               CloudbuildProjectsLocationsWorkerPoolsList
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsWorkerPoolsList{..}
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
                           CloudbuildProjectsLocationsWorkerPoolsListResource)
                      Core.mempty


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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @WorkerPool@.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.workerPools.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.WorkerPools.Delete
    (
    -- * Resource
      CloudbuildProjectsLocationsWorkerPoolsDeleteResource

    -- ** Constructing a Request
    , newCloudbuildProjectsLocationsWorkerPoolsDelete
    , CloudbuildProjectsLocationsWorkerPoolsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.workerPools.delete@ method which the
-- 'CloudbuildProjectsLocationsWorkerPoolsDelete' request conforms to.
type CloudbuildProjectsLocationsWorkerPoolsDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "allowMissing" Core.Bool Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "etag" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "validateOnly" Core.Bool Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Delete '[Core.JSON] Operation

-- | Deletes a @WorkerPool@.
--
-- /See:/ 'newCloudbuildProjectsLocationsWorkerPoolsDelete' smart constructor.
data CloudbuildProjectsLocationsWorkerPoolsDelete = CloudbuildProjectsLocationsWorkerPoolsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | If set to true, and the @WorkerPool@ is not found, the request will succeed but no action will be taken on the server.
    , allowMissing :: (Core.Maybe Core.Bool)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. If provided, it must match the server\'s etag on the workerpool for the request to be processed.
    , etag :: (Core.Maybe Core.Text)
      -- | Required. The name of the @WorkerPool@ to delete. Format: @projects\/{project}\/locations\/{workerPool}\/workerPools\/{workerPool}@.
    , name :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | If set, validate the request and preview the response, but do not actually post it.
    , validateOnly :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsWorkerPoolsDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsWorkerPoolsDelete 
    ::  Core.Text
       -- ^  Required. The name of the @WorkerPool@ to delete. Format: @projects\/{project}\/locations\/{workerPool}\/workerPools\/{workerPool}@. See 'name'.
    -> CloudbuildProjectsLocationsWorkerPoolsDelete
newCloudbuildProjectsLocationsWorkerPoolsDelete name =
  CloudbuildProjectsLocationsWorkerPoolsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , allowMissing = Core.Nothing
    , callback = Core.Nothing
    , etag = Core.Nothing
    , name = name
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , validateOnly = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsWorkerPoolsDelete
         where
        type Rs CloudbuildProjectsLocationsWorkerPoolsDelete
             = Operation
        type Scopes
               CloudbuildProjectsLocationsWorkerPoolsDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          CloudbuildProjectsLocationsWorkerPoolsDelete{..}
          = go name xgafv accessToken allowMissing callback
              etag
              uploadType
              uploadProtocol
              validateOnly
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsWorkerPoolsDeleteResource)
                      Core.mempty


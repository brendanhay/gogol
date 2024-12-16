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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.locations.triggers.delete@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Locations.Triggers.Delete
    (
    -- * Resource
      CloudbuildProjectsLocationsTriggersDeleteResource

    -- ** Constructing a Request
    , CloudbuildProjectsLocationsTriggersDelete (..)
    , newCloudbuildProjectsLocationsTriggersDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.locations.triggers.delete@ method which the
-- 'CloudbuildProjectsLocationsTriggersDelete' request conforms to.
type CloudbuildProjectsLocationsTriggersDeleteResource
     =
     "v1" Core.:>
       Core.Capture "name" Core.Text Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "callback" Core.Text Core.:>
               Core.QueryParam "projectId" Core.Text Core.:>
                 Core.QueryParam "triggerId" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Delete '[Core.JSON] Empty

-- | Deletes a @BuildTrigger@ by its project ID and trigger ID. This API is experimental.
--
-- /See:/ 'newCloudbuildProjectsLocationsTriggersDelete' smart constructor.
data CloudbuildProjectsLocationsTriggersDelete = CloudbuildProjectsLocationsTriggersDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @Trigger@ to delete. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    , name :: Core.Text
      -- | Required. ID of the project that owns the trigger.
    , projectId :: (Core.Maybe Core.Text)
      -- | Required. ID of the @BuildTrigger@ to delete.
    , triggerId :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsLocationsTriggersDelete' with the minimum fields required to make a request.
newCloudbuildProjectsLocationsTriggersDelete 
    ::  Core.Text
       -- ^  The name of the @Trigger@ to delete. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@ See 'name'.
    -> CloudbuildProjectsLocationsTriggersDelete
newCloudbuildProjectsLocationsTriggersDelete name =
  CloudbuildProjectsLocationsTriggersDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = name
    , projectId = Core.Nothing
    , triggerId = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsLocationsTriggersDelete
         where
        type Rs CloudbuildProjectsLocationsTriggersDelete =
             Empty
        type Scopes CloudbuildProjectsLocationsTriggersDelete
             = '[CloudPlatform'FullControl]
        requestClient
          CloudbuildProjectsLocationsTriggersDelete{..}
          = go name xgafv accessToken callback projectId
              triggerId
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudbuildProjectsLocationsTriggersDeleteResource)
                      Core.mempty


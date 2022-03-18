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
-- Module      : Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Run
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a @BuildTrigger@ at a particular source revision.
--
-- /See:/ <https://cloud.google.com/cloud-build/docs/ Cloud Build API Reference> for @cloudbuild.projects.triggers.run@.
module Gogol.ContainerBuilder.Cloudbuild.Projects.Triggers.Run
    (
    -- * Resource
      CloudbuildProjectsTriggersRunResource

    -- ** Constructing a Request
    , newCloudbuildProjectsTriggersRun
    , CloudbuildProjectsTriggersRun
    ) where

import qualified Gogol.Prelude as Core
import Gogol.ContainerBuilder.Types

-- | A resource alias for @cloudbuild.projects.triggers.run@ method which the
-- 'CloudbuildProjectsTriggersRun' request conforms to.
type CloudbuildProjectsTriggersRunResource =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "triggers" Core.:>
             Core.CaptureMode "triggerId" "run" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "name" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] RepoSource Core.:>
                               Core.Post '[Core.JSON] Operation

-- | Runs a @BuildTrigger@ at a particular source revision.
--
-- /See:/ 'newCloudbuildProjectsTriggersRun' smart constructor.
data CloudbuildProjectsTriggersRun = CloudbuildProjectsTriggersRun
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The name of the @Trigger@ to run. Format: @projects\/{project}\/locations\/{location}\/triggers\/{trigger}@
    , name :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: RepoSource
      -- | Required. ID of the project.
    , projectId :: Core.Text
      -- | Required. ID of the trigger.
    , triggerId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudbuildProjectsTriggersRun' with the minimum fields required to make a request.
newCloudbuildProjectsTriggersRun 
    ::  RepoSource
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. ID of the project. See 'projectId'.
    -> Core.Text
       -- ^  Required. ID of the trigger. See 'triggerId'.
    -> CloudbuildProjectsTriggersRun
newCloudbuildProjectsTriggersRun payload projectId triggerId =
  CloudbuildProjectsTriggersRun
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , name = Core.Nothing
    , payload = payload
    , projectId = projectId
    , triggerId = triggerId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudbuildProjectsTriggersRun
         where
        type Rs CloudbuildProjectsTriggersRun = Operation
        type Scopes CloudbuildProjectsTriggersRun =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient CloudbuildProjectsTriggersRun{..}
          = go projectId triggerId xgafv accessToken callback
              name
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              containerBuilderService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy CloudbuildProjectsTriggersRunResource)
                      Core.mempty


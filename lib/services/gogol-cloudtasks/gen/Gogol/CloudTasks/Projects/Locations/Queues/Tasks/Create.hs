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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no UpdateTask command. * The maximum task size is 100KB.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.tasks.create@.
module Gogol.CloudTasks.Projects.Locations.Queues.Tasks.Create
    (
    -- * Resource
      CloudTasksProjectsLocationsQueuesTasksCreateResource

    -- ** Constructing a Request
    , CloudTasksProjectsLocationsQueuesTasksCreate (..)
    , newCloudTasksProjectsLocationsQueuesTasksCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.CloudTasks.Types

-- | A resource alias for @cloudtasks.projects.locations.queues.tasks.create@ method which the
-- 'CloudTasksProjectsLocationsQueuesTasksCreate' request conforms to.
type CloudTasksProjectsLocationsQueuesTasksCreateResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "tasks" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] CreateTaskRequest Core.:>
                         Core.Post '[Core.JSON] Task

-- | Creates a task and adds it to a queue. Tasks cannot be updated after creation; there is no UpdateTask command. * The maximum task size is 100KB.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesTasksCreate' smart constructor.
data CloudTasksProjectsLocationsQueuesTasksCreate = CloudTasksProjectsLocationsQueuesTasksCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ The queue must already exist.
    , parent :: Core.Text
      -- | Multipart request metadata.
    , payload :: CreateTaskRequest
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesTasksCreate' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesTasksCreate 
    ::  Core.Text
       -- ^  Required. The queue name. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ The queue must already exist. See 'parent'.
    -> CreateTaskRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> CloudTasksProjectsLocationsQueuesTasksCreate
newCloudTasksProjectsLocationsQueuesTasksCreate parent payload =
  CloudTasksProjectsLocationsQueuesTasksCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , parent = parent
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           CloudTasksProjectsLocationsQueuesTasksCreate
         where
        type Rs CloudTasksProjectsLocationsQueuesTasksCreate
             = Task
        type Scopes
               CloudTasksProjectsLocationsQueuesTasksCreate
             = '[CloudPlatform'FullControl]
        requestClient
          CloudTasksProjectsLocationsQueuesTasksCreate{..}
          = go parent xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              cloudTasksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           CloudTasksProjectsLocationsQueuesTasksCreateResource)
                      Core.mempty


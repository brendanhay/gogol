{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a queue.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.get@.
module Gogol.CloudTasks.Projects.Locations.Queues.Get
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesGetResource,

    -- ** Constructing a Request
    newCloudTasksProjectsLocationsQueuesGet,
    CloudTasksProjectsLocationsQueuesGet,
  )
where

import Gogol.CloudTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.get@ method which the
-- 'CloudTasksProjectsLocationsQueuesGet' request conforms to.
type CloudTasksProjectsLocationsQueuesGetResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Queue

-- | Gets a queue.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesGet' smart constructor.
data CloudTasksProjectsLocationsQueuesGet = CloudTasksProjectsLocationsQueuesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the queue. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesGet' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesGet ::
  -- |  Required. The resource name of the queue. For example: @projects\/PROJECT_ID\/locations\/LOCATION_ID\/queues\/QUEUE_ID@ See 'name'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesGet
newCloudTasksProjectsLocationsQueuesGet name =
  CloudTasksProjectsLocationsQueuesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesGet
  where
  type Rs CloudTasksProjectsLocationsQueuesGet = Queue
  type
    Scopes CloudTasksProjectsLocationsQueuesGet =
      '[CloudPlatform'FullControl]
  requestClient
    CloudTasksProjectsLocationsQueuesGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        cloudTasksService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudTasksProjectsLocationsQueuesGetResource
            )
            Core.mempty

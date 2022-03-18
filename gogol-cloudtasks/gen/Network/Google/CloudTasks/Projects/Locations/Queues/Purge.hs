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
-- Module      : Network.Google.CloudTasks.Projects.Locations.Queues.Purge
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Purges a queue by deleting all of its tasks. All tasks created before this method is called are permanently deleted. Purge operations can take up to one minute to take effect. Tasks might be dispatched before the purge takes effect. A purge is irreversible.
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.purge@.
module Network.Google.CloudTasks.Projects.Locations.Queues.Purge
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesPurgeResource,

    -- ** Constructing a Request
    newCloudTasksProjectsLocationsQueuesPurge,
    CloudTasksProjectsLocationsQueuesPurge,
  )
where

import Network.Google.CloudTasks.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.purge@ method which the
-- 'CloudTasksProjectsLocationsQueuesPurge' request conforms to.
type CloudTasksProjectsLocationsQueuesPurgeResource =
  "v2"
    Core.:> Core.CaptureMode "name" "purge" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PurgeQueueRequest
    Core.:> Core.Post '[Core.JSON] Queue

-- | Purges a queue by deleting all of its tasks. All tasks created before this method is called are permanently deleted. Purge operations can take up to one minute to take effect. Tasks might be dispatched before the purge takes effect. A purge is irreversible.
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesPurge' smart constructor.
data CloudTasksProjectsLocationsQueuesPurge = CloudTasksProjectsLocationsQueuesPurge
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: PurgeQueueRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesPurge' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesPurge ::
  -- |  Required. The queue name. For example: @projects\/PROJECT_ID\/location\/LOCATION_ID\/queues\/QUEUE_ID@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  PurgeQueueRequest ->
  CloudTasksProjectsLocationsQueuesPurge
newCloudTasksProjectsLocationsQueuesPurge name payload =
  CloudTasksProjectsLocationsQueuesPurge
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesPurge
  where
  type
    Rs CloudTasksProjectsLocationsQueuesPurge =
      Queue
  type
    Scopes CloudTasksProjectsLocationsQueuesPurge =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    CloudTasksProjectsLocationsQueuesPurge {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        cloudTasksService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CloudTasksProjectsLocationsQueuesPurgeResource
            )
            Core.mempty

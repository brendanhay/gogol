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
-- Module      : Gogol.CloudTasks.Projects.Locations.Queues.GetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission on the specified resource parent: * @cloudtasks.queues.getIamPolicy@
--
-- /See:/ <https://cloud.google.com/tasks/ Cloud Tasks API Reference> for @cloudtasks.projects.locations.queues.getIamPolicy@.
module Gogol.CloudTasks.Projects.Locations.Queues.GetIamPolicy
  ( -- * Resource
    CloudTasksProjectsLocationsQueuesGetIamPolicyResource,

    -- ** Constructing a Request
    newCloudTasksProjectsLocationsQueuesGetIamPolicy,
    CloudTasksProjectsLocationsQueuesGetIamPolicy,
  )
where

import Gogol.CloudTasks.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @cloudtasks.projects.locations.queues.getIamPolicy@ method which the
-- 'CloudTasksProjectsLocationsQueuesGetIamPolicy' request conforms to.
type CloudTasksProjectsLocationsQueuesGetIamPolicyResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "getIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] Policy

-- | Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following <https://cloud.google.com/iam Google IAM> permission on the specified resource parent: * @cloudtasks.queues.getIamPolicy@
--
-- /See:/ 'newCloudTasksProjectsLocationsQueuesGetIamPolicy' smart constructor.
data CloudTasksProjectsLocationsQueuesGetIamPolicy = CloudTasksProjectsLocationsQueuesGetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudTasksProjectsLocationsQueuesGetIamPolicy' with the minimum fields required to make a request.
newCloudTasksProjectsLocationsQueuesGetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being requested. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  CloudTasksProjectsLocationsQueuesGetIamPolicy
newCloudTasksProjectsLocationsQueuesGetIamPolicy payload resource =
  CloudTasksProjectsLocationsQueuesGetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CloudTasksProjectsLocationsQueuesGetIamPolicy
  where
  type
    Rs CloudTasksProjectsLocationsQueuesGetIamPolicy =
      Policy
  type
    Scopes
      CloudTasksProjectsLocationsQueuesGetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient
    CloudTasksProjectsLocationsQueuesGetIamPolicy {..} =
      go
        resource
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
                  CloudTasksProjectsLocationsQueuesGetIamPolicyResource
            )
            Core.mempty

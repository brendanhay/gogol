{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Run.Projects.Locations.Jobs.SetIamPolicy
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.jobs.setIamPolicy@.
module Gogol.Run.Projects.Locations.Jobs.SetIamPolicy
  ( -- * Resource
    RunProjectsLocationsJobsSetIamPolicyResource,

    -- ** Constructing a Request
    RunProjectsLocationsJobsSetIamPolicy (..),
    newRunProjectsLocationsJobsSetIamPolicy,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Run.Types

-- | A resource alias for @run.projects.locations.jobs.setIamPolicy@ method which the
-- 'RunProjectsLocationsJobsSetIamPolicy' request conforms to.
type RunProjectsLocationsJobsSetIamPolicyResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleIamV1SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] GoogleIamV1Policy

-- | Sets the IAM Access control policy for the specified Job. Overwrites any existing policy.
--
-- /See:/ 'newRunProjectsLocationsJobsSetIamPolicy' smart constructor.
data RunProjectsLocationsJobsSetIamPolicy = RunProjectsLocationsJobsSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleIamV1SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsJobsSetIamPolicy' with the minimum fields required to make a request.
newRunProjectsLocationsJobsSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV1SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See <https://cloud.google.com/apis/design/resource_names Resource names> for the appropriate value for this field. See 'resource'.
  Core.Text ->
  RunProjectsLocationsJobsSetIamPolicy
newRunProjectsLocationsJobsSetIamPolicy payload resource =
  RunProjectsLocationsJobsSetIamPolicy
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      resource = resource,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest RunProjectsLocationsJobsSetIamPolicy where
  type Rs RunProjectsLocationsJobsSetIamPolicy = GoogleIamV1Policy
  type
    Scopes RunProjectsLocationsJobsSetIamPolicy =
      '[CloudPlatform'FullControl]
  requestClient RunProjectsLocationsJobsSetIamPolicy {..} =
    go
      resource
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      runService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RunProjectsLocationsJobsSetIamPolicyResource
          )
          Core.mempty

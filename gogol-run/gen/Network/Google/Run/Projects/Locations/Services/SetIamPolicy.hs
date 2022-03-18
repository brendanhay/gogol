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
-- Module      : Network.Google.Run.Projects.Locations.Services.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.
--
-- /See:/ <https://cloud.google.com/run/ Cloud Run Admin API Reference> for @run.projects.locations.services.setIamPolicy@.
module Network.Google.Run.Projects.Locations.Services.SetIamPolicy
  ( -- * Resource
    RunProjectsLocationsServicesSetIamPolicyResource,

    -- ** Constructing a Request
    newRunProjectsLocationsServicesSetIamPolicy,
    RunProjectsLocationsServicesSetIamPolicy,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Run.Types

-- | A resource alias for @run.projects.locations.services.setIamPolicy@ method which the
-- 'RunProjectsLocationsServicesSetIamPolicy' request conforms to.
type RunProjectsLocationsServicesSetIamPolicyResource =
  "v2"
    Core.:> Core.CaptureMode "resource" "setIamPolicy" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GoogleIamV1SetIamPolicyRequest
    Core.:> Core.Post '[Core.JSON] GoogleIamV1Policy

-- | Sets the IAM Access control policy for the specified Service. Overwrites any existing policy.
--
-- /See:/ 'newRunProjectsLocationsServicesSetIamPolicy' smart constructor.
data RunProjectsLocationsServicesSetIamPolicy = RunProjectsLocationsServicesSetIamPolicy
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: GoogleIamV1SetIamPolicyRequest,
    -- | REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field.
    resource :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RunProjectsLocationsServicesSetIamPolicy' with the minimum fields required to make a request.
newRunProjectsLocationsServicesSetIamPolicy ::
  -- |  Multipart request metadata. See 'payload'.
  GoogleIamV1SetIamPolicyRequest ->
  -- |  REQUIRED: The resource for which the policy is being specified. See the operation documentation for the appropriate value for this field. See 'resource'.
  Core.Text ->
  RunProjectsLocationsServicesSetIamPolicy
newRunProjectsLocationsServicesSetIamPolicy payload resource =
  RunProjectsLocationsServicesSetIamPolicy
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
    RunProjectsLocationsServicesSetIamPolicy
  where
  type
    Rs RunProjectsLocationsServicesSetIamPolicy =
      GoogleIamV1Policy
  type
    Scopes RunProjectsLocationsServicesSetIamPolicy =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    RunProjectsLocationsServicesSetIamPolicy {..} =
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
                Core.Proxy
                  RunProjectsLocationsServicesSetIamPolicyResource
            )
            Core.mempty

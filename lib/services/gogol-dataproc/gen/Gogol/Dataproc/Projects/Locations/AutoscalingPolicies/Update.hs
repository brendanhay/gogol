{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.locations.autoscalingPolicies.update@.
module Gogol.Dataproc.Projects.Locations.AutoscalingPolicies.Update
  ( -- * Resource
    DataprocProjectsLocationsAutoscalingPoliciesUpdateResource,

    -- ** Constructing a Request
    DataprocProjectsLocationsAutoscalingPoliciesUpdate (..),
    newDataprocProjectsLocationsAutoscalingPoliciesUpdate,
  )
where

import Gogol.Dataproc.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dataproc.projects.locations.autoscalingPolicies.update@ method which the
-- 'DataprocProjectsLocationsAutoscalingPoliciesUpdate' request conforms to.
type DataprocProjectsLocationsAutoscalingPoliciesUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AutoscalingPolicy
    Core.:> Core.Put '[Core.JSON] AutoscalingPolicy

-- | Updates (replaces) autoscaling policy.Disabled check for update_mask, because all updates will be full replacements.
--
-- /See:/ 'newDataprocProjectsLocationsAutoscalingPoliciesUpdate' smart constructor.
data DataprocProjectsLocationsAutoscalingPoliciesUpdate = DataprocProjectsLocationsAutoscalingPoliciesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AutoscalingPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsLocationsAutoscalingPoliciesUpdate' with the minimum fields required to make a request.
newDataprocProjectsLocationsAutoscalingPoliciesUpdate ::
  -- |  Output only. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AutoscalingPolicy ->
  DataprocProjectsLocationsAutoscalingPoliciesUpdate
newDataprocProjectsLocationsAutoscalingPoliciesUpdate name payload =
  DataprocProjectsLocationsAutoscalingPoliciesUpdate
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsLocationsAutoscalingPoliciesUpdate
  where
  type
    Rs DataprocProjectsLocationsAutoscalingPoliciesUpdate =
      AutoscalingPolicy
  type
    Scopes DataprocProjectsLocationsAutoscalingPoliciesUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsLocationsAutoscalingPoliciesUpdate {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsLocationsAutoscalingPoliciesUpdateResource
            )
            Core.mempty

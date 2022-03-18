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
-- Module      : Network.Google.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.delete@.
module Network.Google.Dataproc.Projects.Regions.AutoscalingPolicies.Delete
  ( -- * Resource
    DataprocProjectsRegionsAutoscalingPoliciesDeleteResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsAutoscalingPoliciesDelete,
    DataprocProjectsRegionsAutoscalingPoliciesDelete,
  )
where

import Network.Google.Dataproc.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.delete@ method which the
-- 'DataprocProjectsRegionsAutoscalingPoliciesDelete' request conforms to.
type DataprocProjectsRegionsAutoscalingPoliciesDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an autoscaling policy. It is an error to delete an autoscaling policy that is in use by one or more clusters.
--
-- /See:/ 'newDataprocProjectsRegionsAutoscalingPoliciesDelete' smart constructor.
data DataprocProjectsRegionsAutoscalingPoliciesDelete = DataprocProjectsRegionsAutoscalingPoliciesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.delete, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies.delete, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id}
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsAutoscalingPoliciesDelete' with the minimum fields required to make a request.
newDataprocProjectsRegionsAutoscalingPoliciesDelete ::
  -- |  Required. The \"resource name\" of the autoscaling policy, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.delete, the resource name of the policy has the following format: projects\/{project/id}\/regions\/{region}\/autoscalingPolicies\/{policy/id} For projects.locations.autoscalingPolicies.delete, the resource name of the policy has the following format: projects\/{project/id}\/locations\/{location}\/autoscalingPolicies\/{policy_id} See 'name'.
  Core.Text ->
  DataprocProjectsRegionsAutoscalingPoliciesDelete
newDataprocProjectsRegionsAutoscalingPoliciesDelete name =
  DataprocProjectsRegionsAutoscalingPoliciesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsAutoscalingPoliciesDelete
  where
  type
    Rs
      DataprocProjectsRegionsAutoscalingPoliciesDelete =
      Empty
  type
    Scopes
      DataprocProjectsRegionsAutoscalingPoliciesDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DataprocProjectsRegionsAutoscalingPoliciesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dataprocService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DataprocProjectsRegionsAutoscalingPoliciesDeleteResource
            )
            Core.mempty

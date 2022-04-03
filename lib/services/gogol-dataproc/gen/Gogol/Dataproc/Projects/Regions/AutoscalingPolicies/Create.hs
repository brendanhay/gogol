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
-- Module      : Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new autoscaling policy.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.autoscalingPolicies.create@.
module Gogol.Dataproc.Projects.Regions.AutoscalingPolicies.Create
  ( -- * Resource
    DataprocProjectsRegionsAutoscalingPoliciesCreateResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsAutoscalingPoliciesCreate (..),
    newDataprocProjectsRegionsAutoscalingPoliciesCreate,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.autoscalingPolicies.create@ method which the
-- 'DataprocProjectsRegionsAutoscalingPoliciesCreate' request conforms to.
type DataprocProjectsRegionsAutoscalingPoliciesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "autoscalingPolicies"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AutoscalingPolicy
    Core.:> Core.Post '[Core.JSON] AutoscalingPolicy

-- | Creates new autoscaling policy.
--
-- /See:/ 'newDataprocProjectsRegionsAutoscalingPoliciesCreate' smart constructor.
data DataprocProjectsRegionsAutoscalingPoliciesCreate = DataprocProjectsRegionsAutoscalingPoliciesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The \"resource name\" of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.create, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.autoscalingPolicies.create, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: AutoscalingPolicy,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsAutoscalingPoliciesCreate' with the minimum fields required to make a request.
newDataprocProjectsRegionsAutoscalingPoliciesCreate ::
  -- |  Required. The \"resource name\" of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.autoscalingPolicies.create, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.autoscalingPolicies.create, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AutoscalingPolicy ->
  DataprocProjectsRegionsAutoscalingPoliciesCreate
newDataprocProjectsRegionsAutoscalingPoliciesCreate parent payload =
  DataprocProjectsRegionsAutoscalingPoliciesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DataprocProjectsRegionsAutoscalingPoliciesCreate
  where
  type
    Rs
      DataprocProjectsRegionsAutoscalingPoliciesCreate =
      AutoscalingPolicy
  type
    Scopes
      DataprocProjectsRegionsAutoscalingPoliciesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsAutoscalingPoliciesCreate {..} =
      go
        parent
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
                  DataprocProjectsRegionsAutoscalingPoliciesCreateResource
            )
            Core.mempty

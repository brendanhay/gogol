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
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates (replaces) workflow template. The updated template must contain version that matches the current server version.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.update@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Update
  ( -- * Resource
    DataprocProjectsRegionsWorkflowTemplatesUpdateResource,

    -- ** Constructing a Request
    newDataprocProjectsRegionsWorkflowTemplatesUpdate,
    DataprocProjectsRegionsWorkflowTemplatesUpdate,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.update@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesUpdate' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesUpdateResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkflowTemplate
    Core.:> Core.Put '[Core.JSON] WorkflowTemplate

-- | Updates (replaces) workflow template. The updated template must contain version that matches the current server version.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesUpdate' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesUpdate = DataprocProjectsRegionsWorkflowTemplatesUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id}
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkflowTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesUpdate' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesUpdate ::
  -- |  Output only. The resource name of the workflow template, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/regions\/{region}\/workflowTemplates\/{template/id} For projects.locations.workflowTemplates, the resource name of the template has the following format: projects\/{project/id}\/locations\/{location}\/workflowTemplates\/{template_id} See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkflowTemplate ->
  DataprocProjectsRegionsWorkflowTemplatesUpdate
newDataprocProjectsRegionsWorkflowTemplatesUpdate name payload =
  DataprocProjectsRegionsWorkflowTemplatesUpdate
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
    DataprocProjectsRegionsWorkflowTemplatesUpdate
  where
  type
    Rs
      DataprocProjectsRegionsWorkflowTemplatesUpdate =
      WorkflowTemplate
  type
    Scopes
      DataprocProjectsRegionsWorkflowTemplatesUpdate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsWorkflowTemplatesUpdate {..} =
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
                  DataprocProjectsRegionsWorkflowTemplatesUpdateResource
            )
            Core.mempty

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
-- Module      : Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new workflow template.
--
-- /See:/ <https://cloud.google.com/dataproc/ Cloud Dataproc API Reference> for @dataproc.projects.regions.workflowTemplates.create@.
module Gogol.Dataproc.Projects.Regions.WorkflowTemplates.Create
  ( -- * Resource
    DataprocProjectsRegionsWorkflowTemplatesCreateResource,

    -- ** Constructing a Request
    DataprocProjectsRegionsWorkflowTemplatesCreate (..),
    newDataprocProjectsRegionsWorkflowTemplatesCreate,
  )
where

import Gogol.Dataproc.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dataproc.projects.regions.workflowTemplates.create@ method which the
-- 'DataprocProjectsRegionsWorkflowTemplatesCreate' request conforms to.
type DataprocProjectsRegionsWorkflowTemplatesCreateResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "workflowTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] WorkflowTemplate
    Core.:> Core.Post '[Core.JSON] WorkflowTemplate

-- | Creates new workflow template.
--
-- /See:/ 'newDataprocProjectsRegionsWorkflowTemplatesCreate' smart constructor.
data DataprocProjectsRegionsWorkflowTemplatesCreate = DataprocProjectsRegionsWorkflowTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.create, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.create, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location}
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: WorkflowTemplate,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DataprocProjectsRegionsWorkflowTemplatesCreate' with the minimum fields required to make a request.
newDataprocProjectsRegionsWorkflowTemplatesCreate ::
  -- |  Required. The resource name of the region or location, as described in https:\/\/cloud.google.com\/apis\/design\/resource/names. For projects.regions.workflowTemplates.create, the resource name of the region has the following format: projects\/{project/id}\/regions\/{region} For projects.locations.workflowTemplates.create, the resource name of the location has the following format: projects\/{project_id}\/locations\/{location} See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  WorkflowTemplate ->
  DataprocProjectsRegionsWorkflowTemplatesCreate
newDataprocProjectsRegionsWorkflowTemplatesCreate parent payload =
  DataprocProjectsRegionsWorkflowTemplatesCreate
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
    DataprocProjectsRegionsWorkflowTemplatesCreate
  where
  type
    Rs
      DataprocProjectsRegionsWorkflowTemplatesCreate =
      WorkflowTemplate
  type
    Scopes
      DataprocProjectsRegionsWorkflowTemplatesCreate =
      '[CloudPlatform'FullControl]
  requestClient
    DataprocProjectsRegionsWorkflowTemplatesCreate {..} =
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
                  DataprocProjectsRegionsWorkflowTemplatesCreateResource
            )
            Core.mempty

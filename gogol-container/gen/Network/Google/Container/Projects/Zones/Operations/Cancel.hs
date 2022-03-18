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
-- Module      : Network.Google.Container.Projects.Zones.Operations.Cancel
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels the specified operation.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.zones.operations.cancel@.
module Network.Google.Container.Projects.Zones.Operations.Cancel
  ( -- * Resource
    ContainerProjectsZonesOperationsCancelResource,

    -- ** Constructing a Request
    newContainerProjectsZonesOperationsCancel,
    ContainerProjectsZonesOperationsCancel,
  )
where

import Network.Google.Container.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @container.projects.zones.operations.cancel@ method which the
-- 'ContainerProjectsZonesOperationsCancel' request conforms to.
type ContainerProjectsZonesOperationsCancelResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "zones"
    Core.:> Core.Capture "zone" Core.Text
    Core.:> "operations"
    Core.:> Core.CaptureMode "operationId" "cancel" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CancelOperationRequest
    Core.:> Core.Post '[Core.JSON] Empty

-- | Cancels the specified operation.
--
-- /See:/ 'newContainerProjectsZonesOperationsCancel' smart constructor.
data ContainerProjectsZonesOperationsCancel = ContainerProjectsZonesOperationsCancel
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field.
    operationId :: Core.Text,
    -- | Multipart request metadata.
    payload :: CancelOperationRequest,
    -- | Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the operation resides. This field has been deprecated and replaced by the name field.
    zone :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsZonesOperationsCancel' with the minimum fields required to make a request.
newContainerProjectsZonesOperationsCancel ::
  -- |  Deprecated. The server-assigned @name@ of the operation. This field has been deprecated and replaced by the name field. See 'operationId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  CancelOperationRequest ->
  -- |  Deprecated. The Google Developers Console <https://support.google.com/cloud/answer/6158840 project ID or project number>. This field has been deprecated and replaced by the name field. See 'projectId'.
  Core.Text ->
  -- |  Deprecated. The name of the Google Compute Engine <https://cloud.google.com/compute/docs/zones#available zone> in which the operation resides. This field has been deprecated and replaced by the name field. See 'zone'.
  Core.Text ->
  ContainerProjectsZonesOperationsCancel
newContainerProjectsZonesOperationsCancel operationId payload projectId zone =
  ContainerProjectsZonesOperationsCancel
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      operationId = operationId,
      payload = payload,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      zone = zone
    }

instance
  Core.GoogleRequest
    ContainerProjectsZonesOperationsCancel
  where
  type
    Rs ContainerProjectsZonesOperationsCancel =
      Empty
  type
    Scopes ContainerProjectsZonesOperationsCancel =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsZonesOperationsCancel {..} =
      go
        projectId
        zone
        operationId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        containerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContainerProjectsZonesOperationsCancelResource
            )
            Core.mempty

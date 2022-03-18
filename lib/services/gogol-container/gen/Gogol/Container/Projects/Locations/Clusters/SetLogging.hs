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
-- Module      : Gogol.Container.Projects.Locations.Clusters.SetLogging
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the logging service for a specific cluster.
--
-- /See:/ <https://cloud.google.com/container-engine/ Kubernetes Engine API Reference> for @container.projects.locations.clusters.setLogging@.
module Gogol.Container.Projects.Locations.Clusters.SetLogging
  ( -- * Resource
    ContainerProjectsLocationsClustersSetLoggingResource,

    -- ** Constructing a Request
    newContainerProjectsLocationsClustersSetLogging,
    ContainerProjectsLocationsClustersSetLogging,
  )
where

import Gogol.Container.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @container.projects.locations.clusters.setLogging@ method which the
-- 'ContainerProjectsLocationsClustersSetLogging' request conforms to.
type ContainerProjectsLocationsClustersSetLoggingResource =
  "v1"
    Core.:> Core.CaptureMode "name" "setLogging" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] SetLoggingServiceRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Sets the logging service for a specific cluster.
--
-- /See:/ 'newContainerProjectsLocationsClustersSetLogging' smart constructor.
data ContainerProjectsLocationsClustersSetLogging = ContainerProjectsLocationsClustersSetLogging
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The name (project, location, cluster) of the cluster to set logging. Specified in the format @projects\/*\/locations\/*\/clusters\/*@.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: SetLoggingServiceRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContainerProjectsLocationsClustersSetLogging' with the minimum fields required to make a request.
newContainerProjectsLocationsClustersSetLogging ::
  -- |  The name (project, location, cluster) of the cluster to set logging. Specified in the format @projects\/*\/locations\/*\/clusters\/*@. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SetLoggingServiceRequest ->
  ContainerProjectsLocationsClustersSetLogging
newContainerProjectsLocationsClustersSetLogging name payload =
  ContainerProjectsLocationsClustersSetLogging
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
    ContainerProjectsLocationsClustersSetLogging
  where
  type
    Rs ContainerProjectsLocationsClustersSetLogging =
      Operation
  type
    Scopes
      ContainerProjectsLocationsClustersSetLogging =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    ContainerProjectsLocationsClustersSetLogging {..} =
      go
        name
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
                  ContainerProjectsLocationsClustersSetLoggingResource
            )
            Core.mempty

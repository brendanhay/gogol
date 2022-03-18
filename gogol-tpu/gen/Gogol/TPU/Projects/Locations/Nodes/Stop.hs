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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Stop
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a node. This operation is only available with single TPU nodes.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.stop@.
module Gogol.TPU.Projects.Locations.Nodes.Stop
  ( -- * Resource
    TPUProjectsLocationsNodesStopResource,

    -- ** Constructing a Request
    newTPUProjectsLocationsNodesStop,
    TPUProjectsLocationsNodesStop,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.stop@ method which the
-- 'TPUProjectsLocationsNodesStop' request conforms to.
type TPUProjectsLocationsNodesStopResource =
  "v2alpha1"
    Core.:> Core.CaptureMode "name" "stop" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] StopNodeRequest
    Core.:> Core.Post '[Core.JSON] Operation

-- | Stops a node. This operation is only available with single TPU nodes.
--
-- /See:/ 'newTPUProjectsLocationsNodesStop' smart constructor.
data TPUProjectsLocationsNodesStop = TPUProjectsLocationsNodesStop
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The resource name.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: StopNodeRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesStop' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesStop ::
  -- |  The resource name. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  StopNodeRequest ->
  TPUProjectsLocationsNodesStop
newTPUProjectsLocationsNodesStop name payload =
  TPUProjectsLocationsNodesStop
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
    TPUProjectsLocationsNodesStop
  where
  type Rs TPUProjectsLocationsNodesStop = Operation
  type
    Scopes TPUProjectsLocationsNodesStop =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient TPUProjectsLocationsNodesStop {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tPUService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TPUProjectsLocationsNodesStopResource
          )
          Core.mempty

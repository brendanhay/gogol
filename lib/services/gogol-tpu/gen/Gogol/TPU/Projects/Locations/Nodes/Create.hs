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
-- Module      : Gogol.TPU.Projects.Locations.Nodes.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a node.
--
-- /See:/ <https://cloud.google.com/tpu/ Cloud TPU API Reference> for @tpu.projects.locations.nodes.create@.
module Gogol.TPU.Projects.Locations.Nodes.Create
  ( -- * Resource
    TPUProjectsLocationsNodesCreateResource,

    -- ** Constructing a Request
    TPUProjectsLocationsNodesCreate (..),
    newTPUProjectsLocationsNodesCreate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TPU.Types

-- | A resource alias for @tpu.projects.locations.nodes.create@ method which the
-- 'TPUProjectsLocationsNodesCreate' request conforms to.
type TPUProjectsLocationsNodesCreateResource =
  "v2alpha1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "nodes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "nodeId" Core.Text
    Core.:> Core.QueryParam "requestId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Node
    Core.:> Core.Post '[Core.JSON] Operation

-- | Creates a node.
--
-- /See:/ 'newTPUProjectsLocationsNodesCreate' smart constructor.
data TPUProjectsLocationsNodesCreate = TPUProjectsLocationsNodesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The unqualified resource name.
    nodeId :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name.
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: Node,
    -- | Idempotent request UUID.
    requestId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TPUProjectsLocationsNodesCreate' with the minimum fields required to make a request.
newTPUProjectsLocationsNodesCreate ::
  -- |  Required. The parent resource name. See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  Node ->
  TPUProjectsLocationsNodesCreate
newTPUProjectsLocationsNodesCreate parent payload =
  TPUProjectsLocationsNodesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      nodeId = Core.Nothing,
      parent = parent,
      payload = payload,
      requestId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TPUProjectsLocationsNodesCreate
  where
  type Rs TPUProjectsLocationsNodesCreate = Operation
  type
    Scopes TPUProjectsLocationsNodesCreate =
      '[CloudPlatform'FullControl]
  requestClient TPUProjectsLocationsNodesCreate {..} =
    go
      parent
      xgafv
      accessToken
      callback
      nodeId
      requestId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      tPUService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy TPUProjectsLocationsNodesCreateResource
          )
          Core.mempty

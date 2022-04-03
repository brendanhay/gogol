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
-- Module      : Gogol.StorageTransfer.Projects.AgentPools.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing agent pool resource.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.projects.agentPools.patch@.
module Gogol.StorageTransfer.Projects.AgentPools.Patch
  ( -- * Resource
    StorageTransferProjectsAgentPoolsPatchResource,

    -- ** Constructing a Request
    StorageTransferProjectsAgentPoolsPatch (..),
    newStorageTransferProjectsAgentPoolsPatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.projects.agentPools.patch@ method which the
-- 'StorageTransferProjectsAgentPoolsPatch' request conforms to.
type StorageTransferProjectsAgentPoolsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AgentPool
    Core.:> Core.Patch '[Core.JSON] AgentPool

-- | Updates an existing agent pool resource.
--
-- /See:/ 'newStorageTransferProjectsAgentPoolsPatch' smart constructor.
data StorageTransferProjectsAgentPoolsPatch = StorageTransferProjectsAgentPoolsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Specifies a unique string that identifies the agent pool. Format: @projects\/{project_id}\/agentPools\/{agent_pool_id}@
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: AgentPool,
    -- | The [field mask] (https:\/\/developers.google.com\/protocol-buffers\/docs\/reference\/google.protobuf) of the fields in @agentPool@ to update in this request. The following @agentPool@ fields can be updated: * display/name * bandwidth/limit
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferProjectsAgentPoolsPatch' with the minimum fields required to make a request.
newStorageTransferProjectsAgentPoolsPatch ::
  -- |  Required. Specifies a unique string that identifies the agent pool. Format: @projects\/{project_id}\/agentPools\/{agent_pool_id}@ See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AgentPool ->
  StorageTransferProjectsAgentPoolsPatch
newStorageTransferProjectsAgentPoolsPatch name payload =
  StorageTransferProjectsAgentPoolsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferProjectsAgentPoolsPatch
  where
  type
    Rs StorageTransferProjectsAgentPoolsPatch =
      AgentPool
  type
    Scopes StorageTransferProjectsAgentPoolsPatch =
      '[CloudPlatform'FullControl]
  requestClient
    StorageTransferProjectsAgentPoolsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        storageTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  StorageTransferProjectsAgentPoolsPatchResource
            )
            Core.mempty

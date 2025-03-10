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
-- Module      : Gogol.StorageTransfer.Projects.AgentPools.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an agent pool.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.projects.agentPools.get@.
module Gogol.StorageTransfer.Projects.AgentPools.Get
  ( -- * Resource
    StorageTransferProjectsAgentPoolsGetResource,

    -- ** Constructing a Request
    StorageTransferProjectsAgentPoolsGet (..),
    newStorageTransferProjectsAgentPoolsGet,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.projects.agentPools.get@ method which the
-- 'StorageTransferProjectsAgentPoolsGet' request conforms to.
type StorageTransferProjectsAgentPoolsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AgentPool

-- | Gets an agent pool.
--
-- /See:/ 'newStorageTransferProjectsAgentPoolsGet' smart constructor.
data StorageTransferProjectsAgentPoolsGet = StorageTransferProjectsAgentPoolsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the agent pool to get.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferProjectsAgentPoolsGet' with the minimum fields required to make a request.
newStorageTransferProjectsAgentPoolsGet ::
  -- |  Required. The name of the agent pool to get. See 'name'.
  Core.Text ->
  StorageTransferProjectsAgentPoolsGet
newStorageTransferProjectsAgentPoolsGet name =
  StorageTransferProjectsAgentPoolsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest StorageTransferProjectsAgentPoolsGet where
  type Rs StorageTransferProjectsAgentPoolsGet = AgentPool
  type
    Scopes StorageTransferProjectsAgentPoolsGet =
      '[CloudPlatform'FullControl]
  requestClient StorageTransferProjectsAgentPoolsGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      storageTransferService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy StorageTransferProjectsAgentPoolsGetResource
          )
          Core.mempty

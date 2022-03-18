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
-- Module      : Gogol.StorageTransfer.Projects.AgentPools.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an agent pool.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.projects.agentPools.delete@.
module Gogol.StorageTransfer.Projects.AgentPools.Delete
  ( -- * Resource
    StorageTransferProjectsAgentPoolsDeleteResource,

    -- ** Constructing a Request
    newStorageTransferProjectsAgentPoolsDelete,
    StorageTransferProjectsAgentPoolsDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.projects.agentPools.delete@ method which the
-- 'StorageTransferProjectsAgentPoolsDelete' request conforms to.
type StorageTransferProjectsAgentPoolsDeleteResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] Empty

-- | Deletes an agent pool.
--
-- /See:/ 'newStorageTransferProjectsAgentPoolsDelete' smart constructor.
data StorageTransferProjectsAgentPoolsDelete = StorageTransferProjectsAgentPoolsDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the agent pool to delete.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferProjectsAgentPoolsDelete' with the minimum fields required to make a request.
newStorageTransferProjectsAgentPoolsDelete ::
  -- |  Required. The name of the agent pool to delete. See 'name'.
  Core.Text ->
  StorageTransferProjectsAgentPoolsDelete
newStorageTransferProjectsAgentPoolsDelete name =
  StorageTransferProjectsAgentPoolsDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferProjectsAgentPoolsDelete
  where
  type
    Rs StorageTransferProjectsAgentPoolsDelete =
      Empty
  type
    Scopes StorageTransferProjectsAgentPoolsDelete =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    StorageTransferProjectsAgentPoolsDelete {..} =
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
                Core.Proxy
                  StorageTransferProjectsAgentPoolsDeleteResource
            )
            Core.mempty

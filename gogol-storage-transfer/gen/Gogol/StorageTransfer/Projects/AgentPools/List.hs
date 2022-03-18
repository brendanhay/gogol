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
-- Module      : Gogol.StorageTransfer.Projects.AgentPools.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists agent pools.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.projects.agentPools.list@.
module Gogol.StorageTransfer.Projects.AgentPools.List
  ( -- * Resource
    StorageTransferProjectsAgentPoolsListResource,

    -- ** Constructing a Request
    newStorageTransferProjectsAgentPoolsList,
    StorageTransferProjectsAgentPoolsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.projects.agentPools.list@ method which the
-- 'StorageTransferProjectsAgentPoolsList' request conforms to.
type StorageTransferProjectsAgentPoolsListResource =
  "v1"
    Core.:> "projects"
    Core.:> Core.Capture "projectId" Core.Text
    Core.:> "agentPools"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAgentPoolsResponse

-- | Lists agent pools.
--
-- /See:/ 'newStorageTransferProjectsAgentPoolsList' smart constructor.
data StorageTransferProjectsAgentPoolsList = StorageTransferProjectsAgentPoolsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | An optional list of query parameters specified as JSON text in the form of: @{\"agentPoolNames\":[\"agentpool1\",\"agentpool2\",...]}@ Since @agentPoolNames@ support multiple values, its values must be specified with array notation. When the filter is either empty or not provided, the list returns all agent pools for the project.
    filter :: (Core.Maybe Core.Text),
    -- | The list page size. The max allowed value is @256@.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The ID of the Google Cloud project that owns the job.
    projectId :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferProjectsAgentPoolsList' with the minimum fields required to make a request.
newStorageTransferProjectsAgentPoolsList ::
  -- |  Required. The ID of the Google Cloud project that owns the job. See 'projectId'.
  Core.Text ->
  StorageTransferProjectsAgentPoolsList
newStorageTransferProjectsAgentPoolsList projectId =
  StorageTransferProjectsAgentPoolsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      projectId = projectId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    StorageTransferProjectsAgentPoolsList
  where
  type
    Rs StorageTransferProjectsAgentPoolsList =
      ListAgentPoolsResponse
  type
    Scopes StorageTransferProjectsAgentPoolsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    StorageTransferProjectsAgentPoolsList {..} =
      go
        projectId
        xgafv
        accessToken
        callback
        filter
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        storageTransferService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  StorageTransferProjectsAgentPoolsListResource
            )
            Core.mempty

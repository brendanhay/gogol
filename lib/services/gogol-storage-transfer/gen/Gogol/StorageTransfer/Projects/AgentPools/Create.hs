{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.StorageTransfer.Projects.AgentPools.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an agent pool resource.
--
-- /See:/ <https://cloud.google.com/storage-transfer/docs Storage Transfer API Reference> for @storagetransfer.projects.agentPools.create@.
module Gogol.StorageTransfer.Projects.AgentPools.Create
    (
    -- * Resource
      StorageTransferProjectsAgentPoolsCreateResource

    -- ** Constructing a Request
    , newStorageTransferProjectsAgentPoolsCreate
    , StorageTransferProjectsAgentPoolsCreate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.StorageTransfer.Types

-- | A resource alias for @storagetransfer.projects.agentPools.create@ method which the
-- 'StorageTransferProjectsAgentPoolsCreate' request conforms to.
type StorageTransferProjectsAgentPoolsCreateResource
     =
     "v1" Core.:>
       "projects" Core.:>
         Core.Capture "projectId" Core.Text Core.:>
           "agentPools" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "agentPoolId" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] AgentPool Core.:>
                             Core.Post '[Core.JSON] AgentPool

-- | Creates an agent pool resource.
--
-- /See:/ 'newStorageTransferProjectsAgentPoolsCreate' smart constructor.
data StorageTransferProjectsAgentPoolsCreate = StorageTransferProjectsAgentPoolsCreate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Required. The ID of the agent pool to create. The @agent_pool_id@ must meet the following requirements: * Length of 128 characters or less. * Not start with the string @goog@. * Start with a lowercase ASCII character, followed by: * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (@-@), periods (@.@), underscores (@_@), or tildes (@~@). * One or more numerals or lowercase ASCII characters. As expressed by the regular expression: @^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$@.
    , agentPoolId :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Multipart request metadata.
    , payload :: AgentPool
      -- | Required. The ID of the Google Cloud project that owns the agent pool.
    , projectId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageTransferProjectsAgentPoolsCreate' with the minimum fields required to make a request.
newStorageTransferProjectsAgentPoolsCreate 
    ::  AgentPool
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Required. The ID of the Google Cloud project that owns the agent pool. See 'projectId'.
    -> StorageTransferProjectsAgentPoolsCreate
newStorageTransferProjectsAgentPoolsCreate payload projectId =
  StorageTransferProjectsAgentPoolsCreate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , agentPoolId = Core.Nothing
    , callback = Core.Nothing
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           StorageTransferProjectsAgentPoolsCreate
         where
        type Rs StorageTransferProjectsAgentPoolsCreate =
             AgentPool
        type Scopes StorageTransferProjectsAgentPoolsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          StorageTransferProjectsAgentPoolsCreate{..}
          = go projectId xgafv accessToken agentPoolId callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              storageTransferService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           StorageTransferProjectsAgentPoolsCreateResource)
                      Core.mempty


{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.RemoteBuildExecution.ActionResults.Update
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload a new execution result. In order to allow the server to perform access control based on the type of action, and to assist with client debugging, the client MUST first upload the Action that produced the result, along with its Command, into the @ContentAddressableStorage@. Server implementations MAY modify the @UpdateActionResultRequest.action_result@ and return an equivalent value. Errors: * @INVALID_ARGUMENT@: One or more arguments are invalid. * @FAILED_PRECONDITION@: One or more errors occurred in updating the action result, such as a missing command or action. * @RESOURCE_EXHAUSTED@: There is insufficient storage space to add the entry to the cache.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.actionResults.update@.
module Gogol.RemoteBuildExecution.ActionResults.Update
  ( -- * Resource
    RemoteBuildExecutionActionResultsUpdateResource,

    -- ** Constructing a Request
    RemoteBuildExecutionActionResultsUpdate (..),
    newRemoteBuildExecutionActionResultsUpdate,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.actionResults.update@ method which the
-- 'RemoteBuildExecutionActionResultsUpdate' request conforms to.
type RemoteBuildExecutionActionResultsUpdateResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "actionResults"
    Core.:> Core.Capture "hash" Core.Text
    Core.:> Core.Capture "sizeBytes" Core.Int64
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "resultsCachePolicy.priority" Core.Int32
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BuildBazelRemoteExecutionV2ActionResult
    Core.:> Core.Put '[Core.JSON] BuildBazelRemoteExecutionV2ActionResult

-- | Upload a new execution result. In order to allow the server to perform access control based on the type of action, and to assist with client debugging, the client MUST first upload the Action that produced the result, along with its Command, into the @ContentAddressableStorage@. Server implementations MAY modify the @UpdateActionResultRequest.action_result@ and return an equivalent value. Errors: * @INVALID_ARGUMENT@: One or more arguments are invalid. * @FAILED_PRECONDITION@: One or more errors occurred in updating the action result, such as a missing command or action. * @RESOURCE_EXHAUSTED@: There is insufficient storage space to add the entry to the cache.
--
-- /See:/ 'newRemoteBuildExecutionActionResultsUpdate' smart constructor.
data RemoteBuildExecutionActionResultsUpdate = RemoteBuildExecutionActionResultsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long.
    hash :: Core.Text,
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2ActionResult,
    -- | The priority (relative importance) of this content in the overall cache. Generally, a lower value means a longer retention time or other advantage, but the interpretation of a given value is server-dependent. A priority of 0 means a /default/ value, decided by the server. The particular semantics of this field is up to the server. In particular, every server will have their own supported range of priorities, and will decide how these map into retention\/eviction policy.
    resultsCachePolicyPriority :: (Core.Maybe Core.Int32),
    -- | The size of the blob, in bytes.
    sizeBytes :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionActionResultsUpdate' with the minimum fields required to make a request.
newRemoteBuildExecutionActionResultsUpdate ::
  -- |  The hash. In the case of SHA-256, it will always be a lowercase hex string exactly 64 characters long. See 'hash'.
  Core.Text ->
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2ActionResult ->
  -- |  The size of the blob, in bytes. See 'sizeBytes'.
  Core.Int64 ->
  RemoteBuildExecutionActionResultsUpdate
newRemoteBuildExecutionActionResultsUpdate
  hash
  instanceName
  payload
  sizeBytes =
    RemoteBuildExecutionActionResultsUpdate
      { xgafv = Core.Nothing,
        accessToken = Core.Nothing,
        callback = Core.Nothing,
        hash = hash,
        instanceName = instanceName,
        payload = payload,
        resultsCachePolicyPriority = Core.Nothing,
        sizeBytes = sizeBytes,
        uploadType = Core.Nothing,
        uploadProtocol = Core.Nothing
      }

instance Core.GoogleRequest RemoteBuildExecutionActionResultsUpdate where
  type
    Rs RemoteBuildExecutionActionResultsUpdate =
      BuildBazelRemoteExecutionV2ActionResult
  type
    Scopes RemoteBuildExecutionActionResultsUpdate =
      '[CloudPlatform'FullControl]
  requestClient RemoteBuildExecutionActionResultsUpdate {..} =
    go
      instanceName
      hash
      sizeBytes
      xgafv
      accessToken
      callback
      resultsCachePolicyPriority
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      remoteBuildExecutionService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy RemoteBuildExecutionActionResultsUpdateResource
          )
          Core.mempty

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
-- Module      : Network.Google.RemoteBuildExecution.Actions.Execute
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Execute an action remotely. In order to execute an action, the client must first upload all of the inputs, the Command to run, and the Action into the ContentAddressableStorage. It then calls @Execute@ with an @action_digest@ referring to them. The server will run the action and eventually return the result. The input @Action@\'s fields MUST meet the various canonicalization requirements specified in the documentation for their types so that it has the same digest as other logically equivalent @Action@s. The server MAY enforce the requirements and return errors if a non-canonical input is received. It MAY also proceed without verifying some or all of the requirements, such as for performance reasons. If the server does not verify the requirement, then it will treat the @Action@ as distinct from another logically equivalent action if they hash differently. Returns a stream of google.longrunning.Operation messages describing the resulting execution, with eventual @response@ ExecuteResponse. The @metadata@ on
-- the operation is of type ExecuteOperationMetadata. If the client remains connected after the first response is returned after the server, then updates are streamed as if the client had called WaitExecution until the execution completes or the request reaches an error. The operation can also be queried using Operations API. The server NEED NOT implement other methods or functionality of the Operations API. Errors discovered during creation of the @Operation@ will be reported as gRPC Status errors, while errors that occurred while running the action will be reported in the @status@ field of the @ExecuteResponse@. The server MUST NOT set the @error@ field of the @Operation@ proto. The possible errors include: * @INVALID_ARGUMENT@: One or more arguments are invalid. * @FAILED_PRECONDITION@: One or more errors occurred in setting up the action requested, such as a missing input or command or no worker being available. The client may be able to fix the errors and retry. * @RESOURCE_EXHAUSTED@: There is insufficient
-- quota of some resource to run the action. * @UNAVAILABLE@: Due to a transient condition, such as all workers being occupied (and the server does not support a queue), the action could not be started. The client should retry. * @INTERNAL@: An internal error occurred in the execution engine or the worker. * @DEADLINE_EXCEEDED@: The execution timed out. * @CANCELLED@: The operation was cancelled by the client. This status is only possible if the server implements the Operations API CancelOperation method, and it was called for the current execution. In the case of a missing input or command, the server SHOULD additionally send a PreconditionFailure error detail where, for each requested blob not present in the CAS, there is a @Violation@ with a @type@ of @MISSING@ and a @subject@ of @\"blobs\/{hash}\/{size}\"@ indicating the digest of the missing blob. The server does not need to guarantee that a call to this method leads to at most one execution of the action. The server MAY execute the action multiple times,
-- potentially in parallel. These redundant executions MAY continue to run, even if the operation is completed.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.actions.execute@.
module Network.Google.RemoteBuildExecution.Actions.Execute
  ( -- * Resource
    RemoteBuildExecutionActionsExecuteResource,

    -- ** Constructing a Request
    newRemoteBuildExecutionActionsExecute,
    RemoteBuildExecutionActionsExecute,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.actions.execute@ method which the
-- 'RemoteBuildExecutionActionsExecute' request conforms to.
type RemoteBuildExecutionActionsExecuteResource =
  "v2"
    Core.:> Core.Capture "instanceName" Core.Text
    Core.:> "actions:execute"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              BuildBazelRemoteExecutionV2ExecuteRequest
    Core.:> Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Execute an action remotely. In order to execute an action, the client must first upload all of the inputs, the Command to run, and the Action into the ContentAddressableStorage. It then calls @Execute@ with an @action_digest@ referring to them. The server will run the action and eventually return the result. The input @Action@\'s fields MUST meet the various canonicalization requirements specified in the documentation for their types so that it has the same digest as other logically equivalent @Action@s. The server MAY enforce the requirements and return errors if a non-canonical input is received. It MAY also proceed without verifying some or all of the requirements, such as for performance reasons. If the server does not verify the requirement, then it will treat the @Action@ as distinct from another logically equivalent action if they hash differently. Returns a stream of google.longrunning.Operation messages describing the resulting execution, with eventual @response@ ExecuteResponse. The @metadata@ on
-- the operation is of type ExecuteOperationMetadata. If the client remains connected after the first response is returned after the server, then updates are streamed as if the client had called WaitExecution until the execution completes or the request reaches an error. The operation can also be queried using Operations API. The server NEED NOT implement other methods or functionality of the Operations API. Errors discovered during creation of the @Operation@ will be reported as gRPC Status errors, while errors that occurred while running the action will be reported in the @status@ field of the @ExecuteResponse@. The server MUST NOT set the @error@ field of the @Operation@ proto. The possible errors include: * @INVALID_ARGUMENT@: One or more arguments are invalid. * @FAILED_PRECONDITION@: One or more errors occurred in setting up the action requested, such as a missing input or command or no worker being available. The client may be able to fix the errors and retry. * @RESOURCE_EXHAUSTED@: There is insufficient
-- quota of some resource to run the action. * @UNAVAILABLE@: Due to a transient condition, such as all workers being occupied (and the server does not support a queue), the action could not be started. The client should retry. * @INTERNAL@: An internal error occurred in the execution engine or the worker. * @DEADLINE_EXCEEDED@: The execution timed out. * @CANCELLED@: The operation was cancelled by the client. This status is only possible if the server implements the Operations API CancelOperation method, and it was called for the current execution. In the case of a missing input or command, the server SHOULD additionally send a PreconditionFailure error detail where, for each requested blob not present in the CAS, there is a @Violation@ with a @type@ of @MISSING@ and a @subject@ of @\"blobs\/{hash}\/{size}\"@ indicating the digest of the missing blob. The server does not need to guarantee that a call to this method leads to at most one execution of the action. The server MAY execute the action multiple times,
-- potentially in parallel. These redundant executions MAY continue to run, even if the operation is completed.
--
-- /See:/ 'newRemoteBuildExecutionActionsExecute' smart constructor.
data RemoteBuildExecutionActionsExecute = RemoteBuildExecutionActionsExecute
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted.
    instanceName :: Core.Text,
    -- | Multipart request metadata.
    payload :: BuildBazelRemoteExecutionV2ExecuteRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'RemoteBuildExecutionActionsExecute' with the minimum fields required to make a request.
newRemoteBuildExecutionActionsExecute ::
  -- |  The instance of the execution system to operate against. A server may support multiple instances of the execution system (with their own workers, storage, caches, etc.). The server MAY require use of this field to select between them in an implementation-defined fashion, otherwise it can be omitted. See 'instanceName'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  BuildBazelRemoteExecutionV2ExecuteRequest ->
  RemoteBuildExecutionActionsExecute
newRemoteBuildExecutionActionsExecute instanceName payload =
  RemoteBuildExecutionActionsExecute
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      instanceName = instanceName,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    RemoteBuildExecutionActionsExecute
  where
  type
    Rs RemoteBuildExecutionActionsExecute =
      GoogleLongrunningOperation
  type
    Scopes RemoteBuildExecutionActionsExecute =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient RemoteBuildExecutionActionsExecute {..} =
    go
      instanceName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      remoteBuildExecutionService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                RemoteBuildExecutionActionsExecuteResource
          )
          Core.mempty

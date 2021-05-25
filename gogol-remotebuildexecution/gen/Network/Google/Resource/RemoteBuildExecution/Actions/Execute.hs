{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.RemoteBuildExecution.Actions.Execute
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Execute an action remotely. In order to execute an action, the client
-- must first upload all of the inputs, the Command to run, and the Action
-- into the ContentAddressableStorage. It then calls \`Execute\` with an
-- \`action_digest\` referring to them. The server will run the action and
-- eventually return the result. The input \`Action\`\'s fields MUST meet
-- the various canonicalization requirements specified in the documentation
-- for their types so that it has the same digest as other logically
-- equivalent \`Action\`s. The server MAY enforce the requirements and
-- return errors if a non-canonical input is received. It MAY also proceed
-- without verifying some or all of the requirements, such as for
-- performance reasons. If the server does not verify the requirement, then
-- it will treat the \`Action\` as distinct from another logically
-- equivalent action if they hash differently. Returns a stream of
-- google.longrunning.Operation messages describing the resulting
-- execution, with eventual \`response\` ExecuteResponse. The \`metadata\`
-- on the operation is of type ExecuteOperationMetadata. If the client
-- remains connected after the first response is returned after the server,
-- then updates are streamed as if the client had called WaitExecution
-- until the execution completes or the request reaches an error. The
-- operation can also be queried using Operations API. The server NEED NOT
-- implement other methods or functionality of the Operations API. Errors
-- discovered during creation of the \`Operation\` will be reported as gRPC
-- Status errors, while errors that occurred while running the action will
-- be reported in the \`status\` field of the \`ExecuteResponse\`. The
-- server MUST NOT set the \`error\` field of the \`Operation\` proto. The
-- possible errors include: * \`INVALID_ARGUMENT\`: One or more arguments
-- are invalid. * \`FAILED_PRECONDITION\`: One or more errors occurred in
-- setting up the action requested, such as a missing input or command or
-- no worker being available. The client may be able to fix the errors and
-- retry. * \`RESOURCE_EXHAUSTED\`: There is insufficient quota of some
-- resource to run the action. * \`UNAVAILABLE\`: Due to a transient
-- condition, such as all workers being occupied (and the server does not
-- support a queue), the action could not be started. The client should
-- retry. * \`INTERNAL\`: An internal error occurred in the execution
-- engine or the worker. * \`DEADLINE_EXCEEDED\`: The execution timed out.
-- * \`CANCELLED\`: The operation was cancelled by the client. This status
-- is only possible if the server implements the Operations API
-- CancelOperation method, and it was called for the current execution. In
-- the case of a missing input or command, the server SHOULD additionally
-- send a PreconditionFailure error detail where, for each requested blob
-- not present in the CAS, there is a \`Violation\` with a \`type\` of
-- \`MISSING\` and a \`subject\` of \`\"blobs\/{hash}\/{size}\"\`
-- indicating the digest of the missing blob. The server does not need to
-- guarantee that a call to this method leads to at most one execution of
-- the action. The server MAY execute the action multiple times,
-- potentially in parallel. These redundant executions MAY continue to run,
-- even if the operation is completed.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.actions.execute@.
module Network.Google.Resource.RemoteBuildExecution.Actions.Execute
    (
    -- * REST Resource
      ActionsExecuteResource

    -- * Creating a Request
    , actionsExecute
    , ActionsExecute

    -- * Request Lenses
    , aeXgafv
    , aeUploadProtocol
    , aeAccessToken
    , aeUploadType
    , aePayload
    , aeInstanceName
    , aeCallback
    ) where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.actions.execute@ method which the
-- 'ActionsExecute' request conforms to.
type ActionsExecuteResource =
     "v2" :>
       Capture "instanceName" Text :>
         "actions:execute" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         BuildBazelRemoteExecutionV2ExecuteRequest
                         :> Post '[JSON] GoogleLongrunningOperation

-- | Execute an action remotely. In order to execute an action, the client
-- must first upload all of the inputs, the Command to run, and the Action
-- into the ContentAddressableStorage. It then calls \`Execute\` with an
-- \`action_digest\` referring to them. The server will run the action and
-- eventually return the result. The input \`Action\`\'s fields MUST meet
-- the various canonicalization requirements specified in the documentation
-- for their types so that it has the same digest as other logically
-- equivalent \`Action\`s. The server MAY enforce the requirements and
-- return errors if a non-canonical input is received. It MAY also proceed
-- without verifying some or all of the requirements, such as for
-- performance reasons. If the server does not verify the requirement, then
-- it will treat the \`Action\` as distinct from another logically
-- equivalent action if they hash differently. Returns a stream of
-- google.longrunning.Operation messages describing the resulting
-- execution, with eventual \`response\` ExecuteResponse. The \`metadata\`
-- on the operation is of type ExecuteOperationMetadata. If the client
-- remains connected after the first response is returned after the server,
-- then updates are streamed as if the client had called WaitExecution
-- until the execution completes or the request reaches an error. The
-- operation can also be queried using Operations API. The server NEED NOT
-- implement other methods or functionality of the Operations API. Errors
-- discovered during creation of the \`Operation\` will be reported as gRPC
-- Status errors, while errors that occurred while running the action will
-- be reported in the \`status\` field of the \`ExecuteResponse\`. The
-- server MUST NOT set the \`error\` field of the \`Operation\` proto. The
-- possible errors include: * \`INVALID_ARGUMENT\`: One or more arguments
-- are invalid. * \`FAILED_PRECONDITION\`: One or more errors occurred in
-- setting up the action requested, such as a missing input or command or
-- no worker being available. The client may be able to fix the errors and
-- retry. * \`RESOURCE_EXHAUSTED\`: There is insufficient quota of some
-- resource to run the action. * \`UNAVAILABLE\`: Due to a transient
-- condition, such as all workers being occupied (and the server does not
-- support a queue), the action could not be started. The client should
-- retry. * \`INTERNAL\`: An internal error occurred in the execution
-- engine or the worker. * \`DEADLINE_EXCEEDED\`: The execution timed out.
-- * \`CANCELLED\`: The operation was cancelled by the client. This status
-- is only possible if the server implements the Operations API
-- CancelOperation method, and it was called for the current execution. In
-- the case of a missing input or command, the server SHOULD additionally
-- send a PreconditionFailure error detail where, for each requested blob
-- not present in the CAS, there is a \`Violation\` with a \`type\` of
-- \`MISSING\` and a \`subject\` of \`\"blobs\/{hash}\/{size}\"\`
-- indicating the digest of the missing blob. The server does not need to
-- guarantee that a call to this method leads to at most one execution of
-- the action. The server MAY execute the action multiple times,
-- potentially in parallel. These redundant executions MAY continue to run,
-- even if the operation is completed.
--
-- /See:/ 'actionsExecute' smart constructor.
data ActionsExecute =
  ActionsExecute'
    { _aeXgafv :: !(Maybe Xgafv)
    , _aeUploadProtocol :: !(Maybe Text)
    , _aeAccessToken :: !(Maybe Text)
    , _aeUploadType :: !(Maybe Text)
    , _aePayload :: !BuildBazelRemoteExecutionV2ExecuteRequest
    , _aeInstanceName :: !Text
    , _aeCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionsExecute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aeXgafv'
--
-- * 'aeUploadProtocol'
--
-- * 'aeAccessToken'
--
-- * 'aeUploadType'
--
-- * 'aePayload'
--
-- * 'aeInstanceName'
--
-- * 'aeCallback'
actionsExecute
    :: BuildBazelRemoteExecutionV2ExecuteRequest -- ^ 'aePayload'
    -> Text -- ^ 'aeInstanceName'
    -> ActionsExecute
actionsExecute pAePayload_ pAeInstanceName_ =
  ActionsExecute'
    { _aeXgafv = Nothing
    , _aeUploadProtocol = Nothing
    , _aeAccessToken = Nothing
    , _aeUploadType = Nothing
    , _aePayload = pAePayload_
    , _aeInstanceName = pAeInstanceName_
    , _aeCallback = Nothing
    }


-- | V1 error format.
aeXgafv :: Lens' ActionsExecute (Maybe Xgafv)
aeXgafv = lens _aeXgafv (\ s a -> s{_aeXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aeUploadProtocol :: Lens' ActionsExecute (Maybe Text)
aeUploadProtocol
  = lens _aeUploadProtocol
      (\ s a -> s{_aeUploadProtocol = a})

-- | OAuth access token.
aeAccessToken :: Lens' ActionsExecute (Maybe Text)
aeAccessToken
  = lens _aeAccessToken
      (\ s a -> s{_aeAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aeUploadType :: Lens' ActionsExecute (Maybe Text)
aeUploadType
  = lens _aeUploadType (\ s a -> s{_aeUploadType = a})

-- | Multipart request metadata.
aePayload :: Lens' ActionsExecute BuildBazelRemoteExecutionV2ExecuteRequest
aePayload
  = lens _aePayload (\ s a -> s{_aePayload = a})

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
aeInstanceName :: Lens' ActionsExecute Text
aeInstanceName
  = lens _aeInstanceName
      (\ s a -> s{_aeInstanceName = a})

-- | JSONP
aeCallback :: Lens' ActionsExecute (Maybe Text)
aeCallback
  = lens _aeCallback (\ s a -> s{_aeCallback = a})

instance GoogleRequest ActionsExecute where
        type Rs ActionsExecute = GoogleLongrunningOperation
        type Scopes ActionsExecute =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ActionsExecute'{..}
          = go _aeInstanceName _aeXgafv _aeUploadProtocol
              _aeAccessToken
              _aeUploadType
              _aeCallback
              (Just AltJSON)
              _aePayload
              remoteBuildExecutionService
          where go
                  = buildClient (Proxy :: Proxy ActionsExecuteResource)
                      mempty

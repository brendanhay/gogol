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
-- Module      : Network.Google.Resource.RemoteBuildExecution.Operations.WaitExecution
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Wait for an execution operation to complete. When the client initially
-- makes the request, the server immediately responds with the current
-- status of the execution. The server will leave the request stream open
-- until the operation completes, and then respond with the completed
-- operation. The server MAY choose to stream additional updates as
-- execution progresses, such as to provide an update as to the state of
-- the execution.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.operations.waitExecution@.
module Network.Google.Resource.RemoteBuildExecution.Operations.WaitExecution
    (
    -- * REST Resource
      OperationsWaitExecutionResource

    -- * Creating a Request
    , operationsWaitExecution
    , OperationsWaitExecution

    -- * Request Lenses
    , oweXgafv
    , oweUploadProtocol
    , oweAccessToken
    , oweUploadType
    , owePayload
    , oweName
    , oweCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.operations.waitExecution@ method which the
-- 'OperationsWaitExecution' request conforms to.
type OperationsWaitExecutionResource =
     "v2" :>
       CaptureMode "name" "waitExecution" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       BuildBazelRemoteExecutionV2WaitExecutionRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Wait for an execution operation to complete. When the client initially
-- makes the request, the server immediately responds with the current
-- status of the execution. The server will leave the request stream open
-- until the operation completes, and then respond with the completed
-- operation. The server MAY choose to stream additional updates as
-- execution progresses, such as to provide an update as to the state of
-- the execution.
--
-- /See:/ 'operationsWaitExecution' smart constructor.
data OperationsWaitExecution =
  OperationsWaitExecution'
    { _oweXgafv          :: !(Maybe Xgafv)
    , _oweUploadProtocol :: !(Maybe Text)
    , _oweAccessToken    :: !(Maybe Text)
    , _oweUploadType     :: !(Maybe Text)
    , _owePayload        :: !BuildBazelRemoteExecutionV2WaitExecutionRequest
    , _oweName           :: !Text
    , _oweCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OperationsWaitExecution' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oweXgafv'
--
-- * 'oweUploadProtocol'
--
-- * 'oweAccessToken'
--
-- * 'oweUploadType'
--
-- * 'owePayload'
--
-- * 'oweName'
--
-- * 'oweCallback'
operationsWaitExecution
    :: BuildBazelRemoteExecutionV2WaitExecutionRequest -- ^ 'owePayload'
    -> Text -- ^ 'oweName'
    -> OperationsWaitExecution
operationsWaitExecution pOwePayload_ pOweName_ =
  OperationsWaitExecution'
    { _oweXgafv = Nothing
    , _oweUploadProtocol = Nothing
    , _oweAccessToken = Nothing
    , _oweUploadType = Nothing
    , _owePayload = pOwePayload_
    , _oweName = pOweName_
    , _oweCallback = Nothing
    }

-- | V1 error format.
oweXgafv :: Lens' OperationsWaitExecution (Maybe Xgafv)
oweXgafv = lens _oweXgafv (\ s a -> s{_oweXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oweUploadProtocol :: Lens' OperationsWaitExecution (Maybe Text)
oweUploadProtocol
  = lens _oweUploadProtocol
      (\ s a -> s{_oweUploadProtocol = a})

-- | OAuth access token.
oweAccessToken :: Lens' OperationsWaitExecution (Maybe Text)
oweAccessToken
  = lens _oweAccessToken
      (\ s a -> s{_oweAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oweUploadType :: Lens' OperationsWaitExecution (Maybe Text)
oweUploadType
  = lens _oweUploadType
      (\ s a -> s{_oweUploadType = a})

-- | Multipart request metadata.
owePayload :: Lens' OperationsWaitExecution BuildBazelRemoteExecutionV2WaitExecutionRequest
owePayload
  = lens _owePayload (\ s a -> s{_owePayload = a})

-- | The name of the Operation returned by Execute.
oweName :: Lens' OperationsWaitExecution Text
oweName = lens _oweName (\ s a -> s{_oweName = a})

-- | JSONP
oweCallback :: Lens' OperationsWaitExecution (Maybe Text)
oweCallback
  = lens _oweCallback (\ s a -> s{_oweCallback = a})

instance GoogleRequest OperationsWaitExecution where
        type Rs OperationsWaitExecution =
             GoogleLongrunningOperation
        type Scopes OperationsWaitExecution =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OperationsWaitExecution'{..}
          = go _oweName _oweXgafv _oweUploadProtocol
              _oweAccessToken
              _oweUploadType
              _oweCallback
              (Just AltJSON)
              _owePayload
              remoteBuildExecutionService
          where go
                  = buildClient
                      (Proxy :: Proxy OperationsWaitExecutionResource)
                      mempty

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
-- Module      : Network.Google.Resource.RemoteBuildExecution.ActionResults.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload a new execution result. In order to allow the server to perform
-- access control based on the type of action, and to assist with client
-- debugging, the client MUST first upload the Action that produced the
-- result, along with its Command, into the \`ContentAddressableStorage\`.
-- Errors: * \`INVALID_ARGUMENT\`: One or more arguments are invalid. *
-- \`FAILED_PRECONDITION\`: One or more errors occurred in updating the
-- action result, such as a missing command or action. *
-- \`RESOURCE_EXHAUSTED\`: There is insufficient storage space to add the
-- entry to the cache.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.actionResults.update@.
module Network.Google.Resource.RemoteBuildExecution.ActionResults.Update
    (
    -- * REST Resource
      ActionResultsUpdateResource

    -- * Creating a Request
    , actionResultsUpdate
    , ActionResultsUpdate

    -- * Request Lenses
    , aruSizeBytes
    , aruXgafv
    , aruHash
    , aruUploadProtocol
    , aruAccessToken
    , aruUploadType
    , aruPayload
    , aruResultsCachePolicyPriority
    , aruInstanceName
    , aruCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.actionResults.update@ method which the
-- 'ActionResultsUpdate' request conforms to.
type ActionResultsUpdateResource =
     "v2" :>
       Capture "instanceName" Text :>
         "actionResults" :>
           Capture "hash" Text :>
             Capture "sizeBytes" (Textual Int64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "resultsCachePolicy.priority"
                         (Textual Int32)
                         :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON]
                               BuildBazelRemoteExecutionV2ActionResult
                               :>
                               Put '[JSON]
                                 BuildBazelRemoteExecutionV2ActionResult

-- | Upload a new execution result. In order to allow the server to perform
-- access control based on the type of action, and to assist with client
-- debugging, the client MUST first upload the Action that produced the
-- result, along with its Command, into the \`ContentAddressableStorage\`.
-- Errors: * \`INVALID_ARGUMENT\`: One or more arguments are invalid. *
-- \`FAILED_PRECONDITION\`: One or more errors occurred in updating the
-- action result, such as a missing command or action. *
-- \`RESOURCE_EXHAUSTED\`: There is insufficient storage space to add the
-- entry to the cache.
--
-- /See:/ 'actionResultsUpdate' smart constructor.
data ActionResultsUpdate =
  ActionResultsUpdate'
    { _aruSizeBytes                  :: !(Textual Int64)
    , _aruXgafv                      :: !(Maybe Xgafv)
    , _aruHash                       :: !Text
    , _aruUploadProtocol             :: !(Maybe Text)
    , _aruAccessToken                :: !(Maybe Text)
    , _aruUploadType                 :: !(Maybe Text)
    , _aruPayload                    :: !BuildBazelRemoteExecutionV2ActionResult
    , _aruResultsCachePolicyPriority :: !(Maybe (Textual Int32))
    , _aruInstanceName               :: !Text
    , _aruCallback                   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionResultsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aruSizeBytes'
--
-- * 'aruXgafv'
--
-- * 'aruHash'
--
-- * 'aruUploadProtocol'
--
-- * 'aruAccessToken'
--
-- * 'aruUploadType'
--
-- * 'aruPayload'
--
-- * 'aruResultsCachePolicyPriority'
--
-- * 'aruInstanceName'
--
-- * 'aruCallback'
actionResultsUpdate
    :: Int64 -- ^ 'aruSizeBytes'
    -> Text -- ^ 'aruHash'
    -> BuildBazelRemoteExecutionV2ActionResult -- ^ 'aruPayload'
    -> Text -- ^ 'aruInstanceName'
    -> ActionResultsUpdate
actionResultsUpdate pAruSizeBytes_ pAruHash_ pAruPayload_ pAruInstanceName_ =
  ActionResultsUpdate'
    { _aruSizeBytes = _Coerce # pAruSizeBytes_
    , _aruXgafv = Nothing
    , _aruHash = pAruHash_
    , _aruUploadProtocol = Nothing
    , _aruAccessToken = Nothing
    , _aruUploadType = Nothing
    , _aruPayload = pAruPayload_
    , _aruResultsCachePolicyPriority = Nothing
    , _aruInstanceName = pAruInstanceName_
    , _aruCallback = Nothing
    }


-- | The size of the blob, in bytes.
aruSizeBytes :: Lens' ActionResultsUpdate Int64
aruSizeBytes
  = lens _aruSizeBytes (\ s a -> s{_aruSizeBytes = a})
      . _Coerce

-- | V1 error format.
aruXgafv :: Lens' ActionResultsUpdate (Maybe Xgafv)
aruXgafv = lens _aruXgafv (\ s a -> s{_aruXgafv = a})

-- | The hash. In the case of SHA-256, it will always be a lowercase hex
-- string exactly 64 characters long.
aruHash :: Lens' ActionResultsUpdate Text
aruHash = lens _aruHash (\ s a -> s{_aruHash = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aruUploadProtocol :: Lens' ActionResultsUpdate (Maybe Text)
aruUploadProtocol
  = lens _aruUploadProtocol
      (\ s a -> s{_aruUploadProtocol = a})

-- | OAuth access token.
aruAccessToken :: Lens' ActionResultsUpdate (Maybe Text)
aruAccessToken
  = lens _aruAccessToken
      (\ s a -> s{_aruAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aruUploadType :: Lens' ActionResultsUpdate (Maybe Text)
aruUploadType
  = lens _aruUploadType
      (\ s a -> s{_aruUploadType = a})

-- | Multipart request metadata.
aruPayload :: Lens' ActionResultsUpdate BuildBazelRemoteExecutionV2ActionResult
aruPayload
  = lens _aruPayload (\ s a -> s{_aruPayload = a})

-- | The priority (relative importance) of this content in the overall cache.
-- Generally, a lower value means a longer retention time or other
-- advantage, but the interpretation of a given value is server-dependent.
-- A priority of 0 means a *default* value, decided by the server. The
-- particular semantics of this field is up to the server. In particular,
-- every server will have their own supported range of priorities, and will
-- decide how these map into retention\/eviction policy.
aruResultsCachePolicyPriority :: Lens' ActionResultsUpdate (Maybe Int32)
aruResultsCachePolicyPriority
  = lens _aruResultsCachePolicyPriority
      (\ s a -> s{_aruResultsCachePolicyPriority = a})
      . mapping _Coerce

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
aruInstanceName :: Lens' ActionResultsUpdate Text
aruInstanceName
  = lens _aruInstanceName
      (\ s a -> s{_aruInstanceName = a})

-- | JSONP
aruCallback :: Lens' ActionResultsUpdate (Maybe Text)
aruCallback
  = lens _aruCallback (\ s a -> s{_aruCallback = a})

instance GoogleRequest ActionResultsUpdate where
        type Rs ActionResultsUpdate =
             BuildBazelRemoteExecutionV2ActionResult
        type Scopes ActionResultsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ActionResultsUpdate'{..}
          = go _aruInstanceName _aruHash _aruSizeBytes
              _aruXgafv
              _aruUploadProtocol
              _aruAccessToken
              _aruUploadType
              _aruResultsCachePolicyPriority
              _aruCallback
              (Just AltJSON)
              _aruPayload
              remoteBuildExecutionService
          where go
                  = buildClient
                      (Proxy :: Proxy ActionResultsUpdateResource)
                      mempty

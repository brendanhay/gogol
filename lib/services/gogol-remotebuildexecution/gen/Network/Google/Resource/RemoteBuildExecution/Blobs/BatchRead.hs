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
-- Module      : Network.Google.Resource.RemoteBuildExecution.Blobs.BatchRead
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Download many blobs at once. The server may enforce a limit of the
-- combined total size of blobs to be downloaded using this API. This limit
-- may be obtained using the Capabilities API. Requests exceeding the limit
-- should either be split into smaller chunks or downloaded using the
-- ByteStream API, as appropriate. This request is equivalent to calling a
-- Bytestream \`Read\` request on each individual blob, in parallel. The
-- requests may succeed or fail independently. Errors: *
-- \`INVALID_ARGUMENT\`: The client attempted to read more than the server
-- supported limit. Every error on individual read will be returned in the
-- corresponding digest status.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.batchRead@.
module Network.Google.Resource.RemoteBuildExecution.Blobs.BatchRead
    (
    -- * REST Resource
      BlobsBatchReadResource

    -- * Creating a Request
    , blobsBatchRead
    , BlobsBatchRead

    -- * Request Lenses
    , bbrXgafv
    , bbrUploadProtocol
    , bbrAccessToken
    , bbrUploadType
    , bbrPayload
    , bbrInstanceName
    , bbrCallback
    ) where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.batchRead@ method which the
-- 'BlobsBatchRead' request conforms to.
type BlobsBatchReadResource =
     "v2" :>
       Capture "instanceName" Text :>
         "blobs:batchRead" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         BuildBazelRemoteExecutionV2BatchReadBlobsRequest
                         :>
                         Post '[JSON]
                           BuildBazelRemoteExecutionV2BatchReadBlobsResponse

-- | Download many blobs at once. The server may enforce a limit of the
-- combined total size of blobs to be downloaded using this API. This limit
-- may be obtained using the Capabilities API. Requests exceeding the limit
-- should either be split into smaller chunks or downloaded using the
-- ByteStream API, as appropriate. This request is equivalent to calling a
-- Bytestream \`Read\` request on each individual blob, in parallel. The
-- requests may succeed or fail independently. Errors: *
-- \`INVALID_ARGUMENT\`: The client attempted to read more than the server
-- supported limit. Every error on individual read will be returned in the
-- corresponding digest status.
--
-- /See:/ 'blobsBatchRead' smart constructor.
data BlobsBatchRead =
  BlobsBatchRead'
    { _bbrXgafv :: !(Maybe Xgafv)
    , _bbrUploadProtocol :: !(Maybe Text)
    , _bbrAccessToken :: !(Maybe Text)
    , _bbrUploadType :: !(Maybe Text)
    , _bbrPayload :: !BuildBazelRemoteExecutionV2BatchReadBlobsRequest
    , _bbrInstanceName :: !Text
    , _bbrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlobsBatchRead' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbrXgafv'
--
-- * 'bbrUploadProtocol'
--
-- * 'bbrAccessToken'
--
-- * 'bbrUploadType'
--
-- * 'bbrPayload'
--
-- * 'bbrInstanceName'
--
-- * 'bbrCallback'
blobsBatchRead
    :: BuildBazelRemoteExecutionV2BatchReadBlobsRequest -- ^ 'bbrPayload'
    -> Text -- ^ 'bbrInstanceName'
    -> BlobsBatchRead
blobsBatchRead pBbrPayload_ pBbrInstanceName_ =
  BlobsBatchRead'
    { _bbrXgafv = Nothing
    , _bbrUploadProtocol = Nothing
    , _bbrAccessToken = Nothing
    , _bbrUploadType = Nothing
    , _bbrPayload = pBbrPayload_
    , _bbrInstanceName = pBbrInstanceName_
    , _bbrCallback = Nothing
    }


-- | V1 error format.
bbrXgafv :: Lens' BlobsBatchRead (Maybe Xgafv)
bbrXgafv = lens _bbrXgafv (\ s a -> s{_bbrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bbrUploadProtocol :: Lens' BlobsBatchRead (Maybe Text)
bbrUploadProtocol
  = lens _bbrUploadProtocol
      (\ s a -> s{_bbrUploadProtocol = a})

-- | OAuth access token.
bbrAccessToken :: Lens' BlobsBatchRead (Maybe Text)
bbrAccessToken
  = lens _bbrAccessToken
      (\ s a -> s{_bbrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bbrUploadType :: Lens' BlobsBatchRead (Maybe Text)
bbrUploadType
  = lens _bbrUploadType
      (\ s a -> s{_bbrUploadType = a})

-- | Multipart request metadata.
bbrPayload :: Lens' BlobsBatchRead BuildBazelRemoteExecutionV2BatchReadBlobsRequest
bbrPayload
  = lens _bbrPayload (\ s a -> s{_bbrPayload = a})

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
bbrInstanceName :: Lens' BlobsBatchRead Text
bbrInstanceName
  = lens _bbrInstanceName
      (\ s a -> s{_bbrInstanceName = a})

-- | JSONP
bbrCallback :: Lens' BlobsBatchRead (Maybe Text)
bbrCallback
  = lens _bbrCallback (\ s a -> s{_bbrCallback = a})

instance GoogleRequest BlobsBatchRead where
        type Rs BlobsBatchRead =
             BuildBazelRemoteExecutionV2BatchReadBlobsResponse
        type Scopes BlobsBatchRead =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BlobsBatchRead'{..}
          = go _bbrInstanceName _bbrXgafv _bbrUploadProtocol
              _bbrAccessToken
              _bbrUploadType
              _bbrCallback
              (Just AltJSON)
              _bbrPayload
              remoteBuildExecutionService
          where go
                  = buildClient (Proxy :: Proxy BlobsBatchReadResource)
                      mempty

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
-- Module      : Network.Google.Resource.RemoteBuildExecution.Blobs.BatchUpdate
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Upload many blobs at once. The server may enforce a limit of the
-- combined total size of blobs to be uploaded using this API. This limit
-- may be obtained using the Capabilities API. Requests exceeding the limit
-- should either be split into smaller chunks or uploaded using the
-- ByteStream API, as appropriate. This request is equivalent to calling a
-- Bytestream \`Write\` request on each individual blob, in parallel. The
-- requests may succeed or fail independently. Errors: *
-- \`INVALID_ARGUMENT\`: The client attempted to upload more than the
-- server supported limit. Individual requests may return the following
-- errors, additionally: * \`RESOURCE_EXHAUSTED\`: There is insufficient
-- disk quota to store the blob. * \`INVALID_ARGUMENT\`: The Digest does
-- not match the provided data.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.batchUpdate@.
module Network.Google.Resource.RemoteBuildExecution.Blobs.BatchUpdate
    (
    -- * REST Resource
      BlobsBatchUpdateResource

    -- * Creating a Request
    , blobsBatchUpdate
    , BlobsBatchUpdate

    -- * Request Lenses
    , bbuXgafv
    , bbuUploadProtocol
    , bbuAccessToken
    , bbuUploadType
    , bbuPayload
    , bbuInstanceName
    , bbuCallback
    ) where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.batchUpdate@ method which the
-- 'BlobsBatchUpdate' request conforms to.
type BlobsBatchUpdateResource =
     "v2" :>
       Capture "instanceName" Text :>
         "blobs:batchUpdate" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
                         :>
                         Post '[JSON]
                           BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse

-- | Upload many blobs at once. The server may enforce a limit of the
-- combined total size of blobs to be uploaded using this API. This limit
-- may be obtained using the Capabilities API. Requests exceeding the limit
-- should either be split into smaller chunks or uploaded using the
-- ByteStream API, as appropriate. This request is equivalent to calling a
-- Bytestream \`Write\` request on each individual blob, in parallel. The
-- requests may succeed or fail independently. Errors: *
-- \`INVALID_ARGUMENT\`: The client attempted to upload more than the
-- server supported limit. Individual requests may return the following
-- errors, additionally: * \`RESOURCE_EXHAUSTED\`: There is insufficient
-- disk quota to store the blob. * \`INVALID_ARGUMENT\`: The Digest does
-- not match the provided data.
--
-- /See:/ 'blobsBatchUpdate' smart constructor.
data BlobsBatchUpdate =
  BlobsBatchUpdate'
    { _bbuXgafv :: !(Maybe Xgafv)
    , _bbuUploadProtocol :: !(Maybe Text)
    , _bbuAccessToken :: !(Maybe Text)
    , _bbuUploadType :: !(Maybe Text)
    , _bbuPayload :: !BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
    , _bbuInstanceName :: !Text
    , _bbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlobsBatchUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbuXgafv'
--
-- * 'bbuUploadProtocol'
--
-- * 'bbuAccessToken'
--
-- * 'bbuUploadType'
--
-- * 'bbuPayload'
--
-- * 'bbuInstanceName'
--
-- * 'bbuCallback'
blobsBatchUpdate
    :: BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest -- ^ 'bbuPayload'
    -> Text -- ^ 'bbuInstanceName'
    -> BlobsBatchUpdate
blobsBatchUpdate pBbuPayload_ pBbuInstanceName_ =
  BlobsBatchUpdate'
    { _bbuXgafv = Nothing
    , _bbuUploadProtocol = Nothing
    , _bbuAccessToken = Nothing
    , _bbuUploadType = Nothing
    , _bbuPayload = pBbuPayload_
    , _bbuInstanceName = pBbuInstanceName_
    , _bbuCallback = Nothing
    }


-- | V1 error format.
bbuXgafv :: Lens' BlobsBatchUpdate (Maybe Xgafv)
bbuXgafv = lens _bbuXgafv (\ s a -> s{_bbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bbuUploadProtocol :: Lens' BlobsBatchUpdate (Maybe Text)
bbuUploadProtocol
  = lens _bbuUploadProtocol
      (\ s a -> s{_bbuUploadProtocol = a})

-- | OAuth access token.
bbuAccessToken :: Lens' BlobsBatchUpdate (Maybe Text)
bbuAccessToken
  = lens _bbuAccessToken
      (\ s a -> s{_bbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bbuUploadType :: Lens' BlobsBatchUpdate (Maybe Text)
bbuUploadType
  = lens _bbuUploadType
      (\ s a -> s{_bbuUploadType = a})

-- | Multipart request metadata.
bbuPayload :: Lens' BlobsBatchUpdate BuildBazelRemoteExecutionV2BatchUpdateBlobsRequest
bbuPayload
  = lens _bbuPayload (\ s a -> s{_bbuPayload = a})

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
bbuInstanceName :: Lens' BlobsBatchUpdate Text
bbuInstanceName
  = lens _bbuInstanceName
      (\ s a -> s{_bbuInstanceName = a})

-- | JSONP
bbuCallback :: Lens' BlobsBatchUpdate (Maybe Text)
bbuCallback
  = lens _bbuCallback (\ s a -> s{_bbuCallback = a})

instance GoogleRequest BlobsBatchUpdate where
        type Rs BlobsBatchUpdate =
             BuildBazelRemoteExecutionV2BatchUpdateBlobsResponse
        type Scopes BlobsBatchUpdate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BlobsBatchUpdate'{..}
          = go _bbuInstanceName _bbuXgafv _bbuUploadProtocol
              _bbuAccessToken
              _bbuUploadType
              _bbuCallback
              (Just AltJSON)
              _bbuPayload
              remoteBuildExecutionService
          where go
                  = buildClient
                      (Proxy :: Proxy BlobsBatchUpdateResource)
                      mempty

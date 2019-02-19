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
-- Module      : Network.Google.Resource.RemoteBuildExecution.Blobs.FindMissing
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Determine if blobs are present in the CAS. Clients can use this API
-- before uploading blobs to determine which ones are already present in
-- the CAS and do not need to be uploaded again. There are no
-- method-specific errors.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.findMissing@.
module Network.Google.Resource.RemoteBuildExecution.Blobs.FindMissing
    (
    -- * REST Resource
      BlobsFindMissingResource

    -- * Creating a Request
    , blobsFindMissing
    , BlobsFindMissing

    -- * Request Lenses
    , bfmXgafv
    , bfmUploadProtocol
    , bfmAccessToken
    , bfmUploadType
    , bfmPayload
    , bfmInstanceName
    , bfmCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.findMissing@ method which the
-- 'BlobsFindMissing' request conforms to.
type BlobsFindMissingResource =
     "v2" :>
       Capture "instanceName" Text :>
         "blobs:findMissing" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         BuildBazelRemoteExecutionV2FindMissingBlobsRequest
                         :>
                         Post '[JSON]
                           BuildBazelRemoteExecutionV2FindMissingBlobsResponse

-- | Determine if blobs are present in the CAS. Clients can use this API
-- before uploading blobs to determine which ones are already present in
-- the CAS and do not need to be uploaded again. There are no
-- method-specific errors.
--
-- /See:/ 'blobsFindMissing' smart constructor.
data BlobsFindMissing =
  BlobsFindMissing'
    { _bfmXgafv          :: !(Maybe Xgafv)
    , _bfmUploadProtocol :: !(Maybe Text)
    , _bfmAccessToken    :: !(Maybe Text)
    , _bfmUploadType     :: !(Maybe Text)
    , _bfmPayload        :: !BuildBazelRemoteExecutionV2FindMissingBlobsRequest
    , _bfmInstanceName   :: !Text
    , _bfmCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlobsFindMissing' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bfmXgafv'
--
-- * 'bfmUploadProtocol'
--
-- * 'bfmAccessToken'
--
-- * 'bfmUploadType'
--
-- * 'bfmPayload'
--
-- * 'bfmInstanceName'
--
-- * 'bfmCallback'
blobsFindMissing
    :: BuildBazelRemoteExecutionV2FindMissingBlobsRequest -- ^ 'bfmPayload'
    -> Text -- ^ 'bfmInstanceName'
    -> BlobsFindMissing
blobsFindMissing pBfmPayload_ pBfmInstanceName_ =
  BlobsFindMissing'
    { _bfmXgafv = Nothing
    , _bfmUploadProtocol = Nothing
    , _bfmAccessToken = Nothing
    , _bfmUploadType = Nothing
    , _bfmPayload = pBfmPayload_
    , _bfmInstanceName = pBfmInstanceName_
    , _bfmCallback = Nothing
    }


-- | V1 error format.
bfmXgafv :: Lens' BlobsFindMissing (Maybe Xgafv)
bfmXgafv = lens _bfmXgafv (\ s a -> s{_bfmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bfmUploadProtocol :: Lens' BlobsFindMissing (Maybe Text)
bfmUploadProtocol
  = lens _bfmUploadProtocol
      (\ s a -> s{_bfmUploadProtocol = a})

-- | OAuth access token.
bfmAccessToken :: Lens' BlobsFindMissing (Maybe Text)
bfmAccessToken
  = lens _bfmAccessToken
      (\ s a -> s{_bfmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bfmUploadType :: Lens' BlobsFindMissing (Maybe Text)
bfmUploadType
  = lens _bfmUploadType
      (\ s a -> s{_bfmUploadType = a})

-- | Multipart request metadata.
bfmPayload :: Lens' BlobsFindMissing BuildBazelRemoteExecutionV2FindMissingBlobsRequest
bfmPayload
  = lens _bfmPayload (\ s a -> s{_bfmPayload = a})

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
bfmInstanceName :: Lens' BlobsFindMissing Text
bfmInstanceName
  = lens _bfmInstanceName
      (\ s a -> s{_bfmInstanceName = a})

-- | JSONP
bfmCallback :: Lens' BlobsFindMissing (Maybe Text)
bfmCallback
  = lens _bfmCallback (\ s a -> s{_bfmCallback = a})

instance GoogleRequest BlobsFindMissing where
        type Rs BlobsFindMissing =
             BuildBazelRemoteExecutionV2FindMissingBlobsResponse
        type Scopes BlobsFindMissing =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BlobsFindMissing'{..}
          = go _bfmInstanceName _bfmXgafv _bfmUploadProtocol
              _bfmAccessToken
              _bfmUploadType
              _bfmCallback
              (Just AltJSON)
              _bfmPayload
              remoteBuildExecutionService
          where go
                  = buildClient
                      (Proxy :: Proxy BlobsFindMissingResource)
                      mempty

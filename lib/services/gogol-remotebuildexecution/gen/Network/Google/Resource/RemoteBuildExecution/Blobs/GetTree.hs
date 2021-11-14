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
-- Module      : Network.Google.Resource.RemoteBuildExecution.Blobs.GetTree
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the entire directory tree rooted at a node. This request must be
-- targeted at a Directory stored in the ContentAddressableStorage (CAS).
-- The server will enumerate the \`Directory\` tree recursively and return
-- every node descended from the root. The GetTreeRequest.page_token
-- parameter can be used to skip ahead in the stream (e.g. when retrying a
-- partially completed and aborted request), by setting it to a value taken
-- from GetTreeResponse.next_page_token of the last successfully processed
-- GetTreeResponse). The exact traversal order is unspecified and, unless
-- retrieving subsequent pages from an earlier request, is not guaranteed
-- to be stable across multiple invocations of \`GetTree\`. If part of the
-- tree is missing from the CAS, the server will return the portion present
-- and omit the rest. Errors: * \`NOT_FOUND\`: The requested tree root is
-- not present in the CAS.
--
-- /See:/ <https://cloud.google.com/remote-build-execution/docs/ Remote Build Execution API Reference> for @remotebuildexecution.blobs.getTree@.
module Network.Google.Resource.RemoteBuildExecution.Blobs.GetTree
    (
    -- * REST Resource
      BlobsGetTreeResource

    -- * Creating a Request
    , blobsGetTree
    , BlobsGetTree

    -- * Request Lenses
    , bgtSizeBytes
    , bgtXgafv
    , bgtHash
    , bgtUploadProtocol
    , bgtAccessToken
    , bgtUploadType
    , bgtPageToken
    , bgtPageSize
    , bgtInstanceName
    , bgtCallback
    ) where

import Network.Google.Prelude
import Network.Google.RemoteBuildExecution.Types

-- | A resource alias for @remotebuildexecution.blobs.getTree@ method which the
-- 'BlobsGetTree' request conforms to.
type BlobsGetTreeResource =
     "v2" :>
       Capture "instanceName" Text :>
         "blobs" :>
           Capture "hash" Text :>
             CaptureMode "sizeBytes" "getTree" (Textual Int64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 BuildBazelRemoteExecutionV2GetTreeResponse

-- | Fetch the entire directory tree rooted at a node. This request must be
-- targeted at a Directory stored in the ContentAddressableStorage (CAS).
-- The server will enumerate the \`Directory\` tree recursively and return
-- every node descended from the root. The GetTreeRequest.page_token
-- parameter can be used to skip ahead in the stream (e.g. when retrying a
-- partially completed and aborted request), by setting it to a value taken
-- from GetTreeResponse.next_page_token of the last successfully processed
-- GetTreeResponse). The exact traversal order is unspecified and, unless
-- retrieving subsequent pages from an earlier request, is not guaranteed
-- to be stable across multiple invocations of \`GetTree\`. If part of the
-- tree is missing from the CAS, the server will return the portion present
-- and omit the rest. Errors: * \`NOT_FOUND\`: The requested tree root is
-- not present in the CAS.
--
-- /See:/ 'blobsGetTree' smart constructor.
data BlobsGetTree =
  BlobsGetTree'
    { _bgtSizeBytes :: !(Textual Int64)
    , _bgtXgafv :: !(Maybe Xgafv)
    , _bgtHash :: !Text
    , _bgtUploadProtocol :: !(Maybe Text)
    , _bgtAccessToken :: !(Maybe Text)
    , _bgtUploadType :: !(Maybe Text)
    , _bgtPageToken :: !(Maybe Text)
    , _bgtPageSize :: !(Maybe (Textual Int32))
    , _bgtInstanceName :: !Text
    , _bgtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BlobsGetTree' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgtSizeBytes'
--
-- * 'bgtXgafv'
--
-- * 'bgtHash'
--
-- * 'bgtUploadProtocol'
--
-- * 'bgtAccessToken'
--
-- * 'bgtUploadType'
--
-- * 'bgtPageToken'
--
-- * 'bgtPageSize'
--
-- * 'bgtInstanceName'
--
-- * 'bgtCallback'
blobsGetTree
    :: Int64 -- ^ 'bgtSizeBytes'
    -> Text -- ^ 'bgtHash'
    -> Text -- ^ 'bgtInstanceName'
    -> BlobsGetTree
blobsGetTree pBgtSizeBytes_ pBgtHash_ pBgtInstanceName_ =
  BlobsGetTree'
    { _bgtSizeBytes = _Coerce # pBgtSizeBytes_
    , _bgtXgafv = Nothing
    , _bgtHash = pBgtHash_
    , _bgtUploadProtocol = Nothing
    , _bgtAccessToken = Nothing
    , _bgtUploadType = Nothing
    , _bgtPageToken = Nothing
    , _bgtPageSize = Nothing
    , _bgtInstanceName = pBgtInstanceName_
    , _bgtCallback = Nothing
    }


-- | The size of the blob, in bytes.
bgtSizeBytes :: Lens' BlobsGetTree Int64
bgtSizeBytes
  = lens _bgtSizeBytes (\ s a -> s{_bgtSizeBytes = a})
      . _Coerce

-- | V1 error format.
bgtXgafv :: Lens' BlobsGetTree (Maybe Xgafv)
bgtXgafv = lens _bgtXgafv (\ s a -> s{_bgtXgafv = a})

-- | The hash. In the case of SHA-256, it will always be a lowercase hex
-- string exactly 64 characters long.
bgtHash :: Lens' BlobsGetTree Text
bgtHash = lens _bgtHash (\ s a -> s{_bgtHash = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
bgtUploadProtocol :: Lens' BlobsGetTree (Maybe Text)
bgtUploadProtocol
  = lens _bgtUploadProtocol
      (\ s a -> s{_bgtUploadProtocol = a})

-- | OAuth access token.
bgtAccessToken :: Lens' BlobsGetTree (Maybe Text)
bgtAccessToken
  = lens _bgtAccessToken
      (\ s a -> s{_bgtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
bgtUploadType :: Lens' BlobsGetTree (Maybe Text)
bgtUploadType
  = lens _bgtUploadType
      (\ s a -> s{_bgtUploadType = a})

-- | A page token, which must be a value received in a previous
-- GetTreeResponse. If present, the server will use that token as an
-- offset, returning only that page and the ones that succeed it.
bgtPageToken :: Lens' BlobsGetTree (Maybe Text)
bgtPageToken
  = lens _bgtPageToken (\ s a -> s{_bgtPageToken = a})

-- | A maximum page size to request. If present, the server will request no
-- more than this many items. Regardless of whether a page size is
-- specified, the server may place its own limit on the number of items to
-- be returned and require the client to retrieve more items using a
-- subsequent request.
bgtPageSize :: Lens' BlobsGetTree (Maybe Int32)
bgtPageSize
  = lens _bgtPageSize (\ s a -> s{_bgtPageSize = a}) .
      mapping _Coerce

-- | The instance of the execution system to operate against. A server may
-- support multiple instances of the execution system (with their own
-- workers, storage, caches, etc.). The server MAY require use of this
-- field to select between them in an implementation-defined fashion,
-- otherwise it can be omitted.
bgtInstanceName :: Lens' BlobsGetTree Text
bgtInstanceName
  = lens _bgtInstanceName
      (\ s a -> s{_bgtInstanceName = a})

-- | JSONP
bgtCallback :: Lens' BlobsGetTree (Maybe Text)
bgtCallback
  = lens _bgtCallback (\ s a -> s{_bgtCallback = a})

instance GoogleRequest BlobsGetTree where
        type Rs BlobsGetTree =
             BuildBazelRemoteExecutionV2GetTreeResponse
        type Scopes BlobsGetTree =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BlobsGetTree'{..}
          = go _bgtInstanceName _bgtHash _bgtSizeBytes
              _bgtXgafv
              _bgtUploadProtocol
              _bgtAccessToken
              _bgtUploadType
              _bgtPageToken
              _bgtPageSize
              _bgtCallback
              (Just AltJSON)
              remoteBuildExecutionService
          where go
                  = buildClient (Proxy :: Proxy BlobsGetTreeResource)
                      mempty

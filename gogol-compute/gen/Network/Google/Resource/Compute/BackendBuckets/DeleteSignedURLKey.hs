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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.DeleteSignedURLKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a key for validating requests with signed URLs for this backend
-- bucket.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.deleteSignedUrlKey@.
module Network.Google.Resource.Compute.BackendBuckets.DeleteSignedURLKey
    (
    -- * REST Resource
      BackendBucketsDeleteSignedURLKeyResource

    -- * Creating a Request
    , backendBucketsDeleteSignedURLKey
    , BackendBucketsDeleteSignedURLKey

    -- * Request Lenses
    , bbdsukRequestId
    , bbdsukBackendBucket
    , bbdsukProject
    , bbdsukKeyName
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.deleteSignedUrlKey@ method which the
-- 'BackendBucketsDeleteSignedURLKey' request conforms to.
type BackendBucketsDeleteSignedURLKeyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 Capture "backendBucket" Text :>
                   "deleteSignedUrlKey" :>
                     QueryParam "keyName" Text :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes a key for validating requests with signed URLs for this backend
-- bucket.
--
-- /See:/ 'backendBucketsDeleteSignedURLKey' smart constructor.
data BackendBucketsDeleteSignedURLKey = BackendBucketsDeleteSignedURLKey'
    { _bbdsukRequestId     :: !(Maybe Text)
    , _bbdsukBackendBucket :: !Text
    , _bbdsukProject       :: !Text
    , _bbdsukKeyName       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendBucketsDeleteSignedURLKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbdsukRequestId'
--
-- * 'bbdsukBackendBucket'
--
-- * 'bbdsukProject'
--
-- * 'bbdsukKeyName'
backendBucketsDeleteSignedURLKey
    :: Text -- ^ 'bbdsukBackendBucket'
    -> Text -- ^ 'bbdsukProject'
    -> Text -- ^ 'bbdsukKeyName'
    -> BackendBucketsDeleteSignedURLKey
backendBucketsDeleteSignedURLKey pBbdsukBackendBucket_ pBbdsukProject_ pBbdsukKeyName_ =
    BackendBucketsDeleteSignedURLKey'
    { _bbdsukRequestId = Nothing
    , _bbdsukBackendBucket = pBbdsukBackendBucket_
    , _bbdsukProject = pBbdsukProject_
    , _bbdsukKeyName = pBbdsukKeyName_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
bbdsukRequestId :: Lens' BackendBucketsDeleteSignedURLKey (Maybe Text)
bbdsukRequestId
  = lens _bbdsukRequestId
      (\ s a -> s{_bbdsukRequestId = a})

-- | Name of the BackendBucket resource to which the Signed URL Key should be
-- added. The name should conform to RFC1035.
bbdsukBackendBucket :: Lens' BackendBucketsDeleteSignedURLKey Text
bbdsukBackendBucket
  = lens _bbdsukBackendBucket
      (\ s a -> s{_bbdsukBackendBucket = a})

-- | Project ID for this request.
bbdsukProject :: Lens' BackendBucketsDeleteSignedURLKey Text
bbdsukProject
  = lens _bbdsukProject
      (\ s a -> s{_bbdsukProject = a})

-- | The name of the Signed URL Key to delete.
bbdsukKeyName :: Lens' BackendBucketsDeleteSignedURLKey Text
bbdsukKeyName
  = lens _bbdsukKeyName
      (\ s a -> s{_bbdsukKeyName = a})

instance GoogleRequest
         BackendBucketsDeleteSignedURLKey where
        type Rs BackendBucketsDeleteSignedURLKey = Operation
        type Scopes BackendBucketsDeleteSignedURLKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsDeleteSignedURLKey'{..}
          = go _bbdsukProject _bbdsukBackendBucket
              (Just _bbdsukKeyName)
              _bbdsukRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendBucketsDeleteSignedURLKeyResource)
                      mempty

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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.AddSignedURLKey
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a key for validating requests with signed URLs for this backend
-- bucket.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.addSignedUrlKey@.
module Network.Google.Resource.Compute.BackendBuckets.AddSignedURLKey
    (
    -- * REST Resource
      BackendBucketsAddSignedURLKeyResource

    -- * Creating a Request
    , backendBucketsAddSignedURLKey
    , BackendBucketsAddSignedURLKey

    -- * Request Lenses
    , bbasukRequestId
    , bbasukBackendBucket
    , bbasukProject
    , bbasukPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.addSignedUrlKey@ method which the
-- 'BackendBucketsAddSignedURLKey' request conforms to.
type BackendBucketsAddSignedURLKeyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 Capture "backendBucket" Text :>
                   "addSignedUrlKey" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SignedURLKey :>
                           Post '[JSON] Operation

-- | Adds a key for validating requests with signed URLs for this backend
-- bucket.
--
-- /See:/ 'backendBucketsAddSignedURLKey' smart constructor.
data BackendBucketsAddSignedURLKey =
  BackendBucketsAddSignedURLKey'
    { _bbasukRequestId :: !(Maybe Text)
    , _bbasukBackendBucket :: !Text
    , _bbasukProject :: !Text
    , _bbasukPayload :: !SignedURLKey
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendBucketsAddSignedURLKey' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbasukRequestId'
--
-- * 'bbasukBackendBucket'
--
-- * 'bbasukProject'
--
-- * 'bbasukPayload'
backendBucketsAddSignedURLKey
    :: Text -- ^ 'bbasukBackendBucket'
    -> Text -- ^ 'bbasukProject'
    -> SignedURLKey -- ^ 'bbasukPayload'
    -> BackendBucketsAddSignedURLKey
backendBucketsAddSignedURLKey pBbasukBackendBucket_ pBbasukProject_ pBbasukPayload_ =
  BackendBucketsAddSignedURLKey'
    { _bbasukRequestId = Nothing
    , _bbasukBackendBucket = pBbasukBackendBucket_
    , _bbasukProject = pBbasukProject_
    , _bbasukPayload = pBbasukPayload_
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
bbasukRequestId :: Lens' BackendBucketsAddSignedURLKey (Maybe Text)
bbasukRequestId
  = lens _bbasukRequestId
      (\ s a -> s{_bbasukRequestId = a})

-- | Name of the BackendBucket resource to which the Signed URL Key should be
-- added. The name should conform to RFC1035.
bbasukBackendBucket :: Lens' BackendBucketsAddSignedURLKey Text
bbasukBackendBucket
  = lens _bbasukBackendBucket
      (\ s a -> s{_bbasukBackendBucket = a})

-- | Project ID for this request.
bbasukProject :: Lens' BackendBucketsAddSignedURLKey Text
bbasukProject
  = lens _bbasukProject
      (\ s a -> s{_bbasukProject = a})

-- | Multipart request metadata.
bbasukPayload :: Lens' BackendBucketsAddSignedURLKey SignedURLKey
bbasukPayload
  = lens _bbasukPayload
      (\ s a -> s{_bbasukPayload = a})

instance GoogleRequest BackendBucketsAddSignedURLKey
         where
        type Rs BackendBucketsAddSignedURLKey = Operation
        type Scopes BackendBucketsAddSignedURLKey =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsAddSignedURLKey'{..}
          = go _bbasukProject _bbasukBackendBucket
              _bbasukRequestId
              (Just AltJSON)
              _bbasukPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendBucketsAddSignedURLKeyResource)
                      mempty

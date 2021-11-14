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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified BackendBucket resource with the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.update@.
module Network.Google.Resource.Compute.BackendBuckets.Update
    (
    -- * REST Resource
      BackendBucketsUpdateResource

    -- * Creating a Request
    , backendBucketsUpdate
    , BackendBucketsUpdate

    -- * Request Lenses
    , bbuRequestId
    , bbuBackendBucket
    , bbuProject
    , bbuPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.update@ method which the
-- 'BackendBucketsUpdate' request conforms to.
type BackendBucketsUpdateResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 Capture "backendBucket" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BackendBucket :>
                         Put '[JSON] Operation

-- | Updates the specified BackendBucket resource with the data included in
-- the request.
--
-- /See:/ 'backendBucketsUpdate' smart constructor.
data BackendBucketsUpdate =
  BackendBucketsUpdate'
    { _bbuRequestId :: !(Maybe Text)
    , _bbuBackendBucket :: !Text
    , _bbuProject :: !Text
    , _bbuPayload :: !BackendBucket
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendBucketsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbuRequestId'
--
-- * 'bbuBackendBucket'
--
-- * 'bbuProject'
--
-- * 'bbuPayload'
backendBucketsUpdate
    :: Text -- ^ 'bbuBackendBucket'
    -> Text -- ^ 'bbuProject'
    -> BackendBucket -- ^ 'bbuPayload'
    -> BackendBucketsUpdate
backendBucketsUpdate pBbuBackendBucket_ pBbuProject_ pBbuPayload_ =
  BackendBucketsUpdate'
    { _bbuRequestId = Nothing
    , _bbuBackendBucket = pBbuBackendBucket_
    , _bbuProject = pBbuProject_
    , _bbuPayload = pBbuPayload_
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
bbuRequestId :: Lens' BackendBucketsUpdate (Maybe Text)
bbuRequestId
  = lens _bbuRequestId (\ s a -> s{_bbuRequestId = a})

-- | Name of the BackendBucket resource to update.
bbuBackendBucket :: Lens' BackendBucketsUpdate Text
bbuBackendBucket
  = lens _bbuBackendBucket
      (\ s a -> s{_bbuBackendBucket = a})

-- | Project ID for this request.
bbuProject :: Lens' BackendBucketsUpdate Text
bbuProject
  = lens _bbuProject (\ s a -> s{_bbuProject = a})

-- | Multipart request metadata.
bbuPayload :: Lens' BackendBucketsUpdate BackendBucket
bbuPayload
  = lens _bbuPayload (\ s a -> s{_bbuPayload = a})

instance GoogleRequest BackendBucketsUpdate where
        type Rs BackendBucketsUpdate = Operation
        type Scopes BackendBucketsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsUpdate'{..}
          = go _bbuProject _bbuBackendBucket _bbuRequestId
              (Just AltJSON)
              _bbuPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsUpdateResource)
                      mempty

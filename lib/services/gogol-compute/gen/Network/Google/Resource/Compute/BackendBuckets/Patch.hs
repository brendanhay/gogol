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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified BackendBucket resource with the data included in
-- the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.patch@.
module Network.Google.Resource.Compute.BackendBuckets.Patch
    (
    -- * REST Resource
      BackendBucketsPatchResource

    -- * Creating a Request
    , backendBucketsPatch
    , BackendBucketsPatch

    -- * Request Lenses
    , bbpRequestId
    , bbpBackendBucket
    , bbpProject
    , bbpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.patch@ method which the
-- 'BackendBucketsPatch' request conforms to.
type BackendBucketsPatchResource =
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
                         Patch '[JSON] Operation

-- | Updates the specified BackendBucket resource with the data included in
-- the request. This method supports PATCH semantics and uses the JSON
-- merge patch format and processing rules.
--
-- /See:/ 'backendBucketsPatch' smart constructor.
data BackendBucketsPatch =
  BackendBucketsPatch'
    { _bbpRequestId :: !(Maybe Text)
    , _bbpBackendBucket :: !Text
    , _bbpProject :: !Text
    , _bbpPayload :: !BackendBucket
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendBucketsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbpRequestId'
--
-- * 'bbpBackendBucket'
--
-- * 'bbpProject'
--
-- * 'bbpPayload'
backendBucketsPatch
    :: Text -- ^ 'bbpBackendBucket'
    -> Text -- ^ 'bbpProject'
    -> BackendBucket -- ^ 'bbpPayload'
    -> BackendBucketsPatch
backendBucketsPatch pBbpBackendBucket_ pBbpProject_ pBbpPayload_ =
  BackendBucketsPatch'
    { _bbpRequestId = Nothing
    , _bbpBackendBucket = pBbpBackendBucket_
    , _bbpProject = pBbpProject_
    , _bbpPayload = pBbpPayload_
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
bbpRequestId :: Lens' BackendBucketsPatch (Maybe Text)
bbpRequestId
  = lens _bbpRequestId (\ s a -> s{_bbpRequestId = a})

-- | Name of the BackendBucket resource to patch.
bbpBackendBucket :: Lens' BackendBucketsPatch Text
bbpBackendBucket
  = lens _bbpBackendBucket
      (\ s a -> s{_bbpBackendBucket = a})

-- | Project ID for this request.
bbpProject :: Lens' BackendBucketsPatch Text
bbpProject
  = lens _bbpProject (\ s a -> s{_bbpProject = a})

-- | Multipart request metadata.
bbpPayload :: Lens' BackendBucketsPatch BackendBucket
bbpPayload
  = lens _bbpPayload (\ s a -> s{_bbpPayload = a})

instance GoogleRequest BackendBucketsPatch where
        type Rs BackendBucketsPatch = Operation
        type Scopes BackendBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsPatch'{..}
          = go _bbpProject _bbpBackendBucket _bbpRequestId
              (Just AltJSON)
              _bbpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsPatchResource)
                      mempty

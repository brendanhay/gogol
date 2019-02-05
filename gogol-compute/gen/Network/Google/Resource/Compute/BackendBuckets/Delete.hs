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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified BackendBucket resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.delete@.
module Network.Google.Resource.Compute.BackendBuckets.Delete
    (
    -- * REST Resource
      BackendBucketsDeleteResource

    -- * Creating a Request
    , backendBucketsDelete
    , BackendBucketsDelete

    -- * Request Lenses
    , bbdRequestId
    , bbdBackendBucket
    , bbdProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.delete@ method which the
-- 'BackendBucketsDelete' request conforms to.
type BackendBucketsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 Capture "backendBucket" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified BackendBucket resource.
--
-- /See:/ 'backendBucketsDelete' smart constructor.
data BackendBucketsDelete = BackendBucketsDelete'
    { _bbdRequestId     :: !(Maybe Text)
    , _bbdBackendBucket :: !Text
    , _bbdProject       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbdRequestId'
--
-- * 'bbdBackendBucket'
--
-- * 'bbdProject'
backendBucketsDelete
    :: Text -- ^ 'bbdBackendBucket'
    -> Text -- ^ 'bbdProject'
    -> BackendBucketsDelete
backendBucketsDelete pBbdBackendBucket_ pBbdProject_ =
    BackendBucketsDelete'
    { _bbdRequestId = Nothing
    , _bbdBackendBucket = pBbdBackendBucket_
    , _bbdProject = pBbdProject_
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
bbdRequestId :: Lens' BackendBucketsDelete (Maybe Text)
bbdRequestId
  = lens _bbdRequestId (\ s a -> s{_bbdRequestId = a})

-- | Name of the BackendBucket resource to delete.
bbdBackendBucket :: Lens' BackendBucketsDelete Text
bbdBackendBucket
  = lens _bbdBackendBucket
      (\ s a -> s{_bbdBackendBucket = a})

-- | Project ID for this request.
bbdProject :: Lens' BackendBucketsDelete Text
bbdProject
  = lens _bbdProject (\ s a -> s{_bbdProject = a})

instance GoogleRequest BackendBucketsDelete where
        type Rs BackendBucketsDelete = Operation
        type Scopes BackendBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsDelete'{..}
          = go _bbdProject _bbdBackendBucket _bbdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsDeleteResource)
                      mempty

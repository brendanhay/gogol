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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a BackendBucket resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.insert@.
module Network.Google.Resource.Compute.BackendBuckets.Insert
    (
    -- * REST Resource
      BackendBucketsInsertResource

    -- * Creating a Request
    , backendBucketsInsert
    , BackendBucketsInsert

    -- * Request Lenses
    , bbiRequestId
    , bbiProject
    , bbiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.insert@ method which the
-- 'BackendBucketsInsert' request conforms to.
type BackendBucketsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackendBucket :>
                       Post '[JSON] Operation

-- | Creates a BackendBucket resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'backendBucketsInsert' smart constructor.
data BackendBucketsInsert =
  BackendBucketsInsert'
    { _bbiRequestId :: !(Maybe Text)
    , _bbiProject   :: !Text
    , _bbiPayload   :: !BackendBucket
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BackendBucketsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbiRequestId'
--
-- * 'bbiProject'
--
-- * 'bbiPayload'
backendBucketsInsert
    :: Text -- ^ 'bbiProject'
    -> BackendBucket -- ^ 'bbiPayload'
    -> BackendBucketsInsert
backendBucketsInsert pBbiProject_ pBbiPayload_ =
  BackendBucketsInsert'
    { _bbiRequestId = Nothing
    , _bbiProject = pBbiProject_
    , _bbiPayload = pBbiPayload_
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
bbiRequestId :: Lens' BackendBucketsInsert (Maybe Text)
bbiRequestId
  = lens _bbiRequestId (\ s a -> s{_bbiRequestId = a})

-- | Project ID for this request.
bbiProject :: Lens' BackendBucketsInsert Text
bbiProject
  = lens _bbiProject (\ s a -> s{_bbiProject = a})

-- | Multipart request metadata.
bbiPayload :: Lens' BackendBucketsInsert BackendBucket
bbiPayload
  = lens _bbiPayload (\ s a -> s{_bbiPayload = a})

instance GoogleRequest BackendBucketsInsert where
        type Rs BackendBucketsInsert = Operation
        type Scopes BackendBucketsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendBucketsInsert'{..}
          = go _bbiProject _bbiRequestId (Just AltJSON)
              _bbiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsInsertResource)
                      mempty

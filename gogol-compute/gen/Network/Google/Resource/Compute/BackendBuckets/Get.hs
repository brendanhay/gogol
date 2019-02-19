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
-- Module      : Network.Google.Resource.Compute.BackendBuckets.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified BackendBucket resource. Gets a list of available
-- backend buckets by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendBuckets.get@.
module Network.Google.Resource.Compute.BackendBuckets.Get
    (
    -- * REST Resource
      BackendBucketsGetResource

    -- * Creating a Request
    , backendBucketsGet
    , BackendBucketsGet

    -- * Request Lenses
    , bbgBackendBucket
    , bbgProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendBuckets.get@ method which the
-- 'BackendBucketsGet' request conforms to.
type BackendBucketsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendBuckets" :>
                 Capture "backendBucket" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] BackendBucket

-- | Returns the specified BackendBucket resource. Gets a list of available
-- backend buckets by making a list() request.
--
-- /See:/ 'backendBucketsGet' smart constructor.
data BackendBucketsGet =
  BackendBucketsGet'
    { _bbgBackendBucket :: !Text
    , _bbgProject       :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BackendBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bbgBackendBucket'
--
-- * 'bbgProject'
backendBucketsGet
    :: Text -- ^ 'bbgBackendBucket'
    -> Text -- ^ 'bbgProject'
    -> BackendBucketsGet
backendBucketsGet pBbgBackendBucket_ pBbgProject_ =
  BackendBucketsGet'
    {_bbgBackendBucket = pBbgBackendBucket_, _bbgProject = pBbgProject_}

-- | Name of the BackendBucket resource to return.
bbgBackendBucket :: Lens' BackendBucketsGet Text
bbgBackendBucket
  = lens _bbgBackendBucket
      (\ s a -> s{_bbgBackendBucket = a})

-- | Project ID for this request.
bbgProject :: Lens' BackendBucketsGet Text
bbgProject
  = lens _bbgProject (\ s a -> s{_bbgProject = a})

instance GoogleRequest BackendBucketsGet where
        type Rs BackendBucketsGet = BackendBucket
        type Scopes BackendBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient BackendBucketsGet'{..}
          = go _bbgProject _bbgBackendBucket (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendBucketsGetResource)
                      mempty

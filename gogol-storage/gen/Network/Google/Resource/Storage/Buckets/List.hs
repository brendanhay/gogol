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
-- Module      : Network.Google.Resource.Storage.Buckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of buckets for a given project.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.list@.
module Network.Google.Resource.Storage.Buckets.List
    (
    -- * REST Resource
      BucketsListResource

    -- * Creating a Request
    , bucketsList
    , BucketsList

    -- * Request Lenses
    , blProject
    , blPrefix
    , blUserProject
    , blProjection
    , blProvisionalUserProject
    , blPageToken
    , blMaxResults
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.list@ method which the
-- 'BucketsList' request conforms to.
type BucketsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           QueryParam "project" Text :>
             QueryParam "prefix" Text :>
               QueryParam "userProject" Text :>
                 QueryParam "projection" BucketsListProjection :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Buckets

-- | Retrieves a list of buckets for a given project.
--
-- /See:/ 'bucketsList' smart constructor.
data BucketsList =
  BucketsList'
    { _blProject :: !Text
    , _blPrefix :: !(Maybe Text)
    , _blUserProject :: !(Maybe Text)
    , _blProjection :: !(Maybe BucketsListProjection)
    , _blProvisionalUserProject :: !(Maybe Text)
    , _blPageToken :: !(Maybe Text)
    , _blMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blProject'
--
-- * 'blPrefix'
--
-- * 'blUserProject'
--
-- * 'blProjection'
--
-- * 'blProvisionalUserProject'
--
-- * 'blPageToken'
--
-- * 'blMaxResults'
bucketsList
    :: Text -- ^ 'blProject'
    -> BucketsList
bucketsList pBlProject_ =
  BucketsList'
    { _blProject = pBlProject_
    , _blPrefix = Nothing
    , _blUserProject = Nothing
    , _blProjection = Nothing
    , _blProvisionalUserProject = Nothing
    , _blPageToken = Nothing
    , _blMaxResults = 1000
    }


-- | A valid API project identifier.
blProject :: Lens' BucketsList Text
blProject
  = lens _blProject (\ s a -> s{_blProject = a})

-- | Filter results to buckets whose names begin with this prefix.
blPrefix :: Lens' BucketsList (Maybe Text)
blPrefix = lens _blPrefix (\ s a -> s{_blPrefix = a})

-- | The project to be billed for this request.
blUserProject :: Lens' BucketsList (Maybe Text)
blUserProject
  = lens _blUserProject
      (\ s a -> s{_blUserProject = a})

-- | Set of properties to return. Defaults to noAcl.
blProjection :: Lens' BucketsList (Maybe BucketsListProjection)
blProjection
  = lens _blProjection (\ s a -> s{_blProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
blProvisionalUserProject :: Lens' BucketsList (Maybe Text)
blProvisionalUserProject
  = lens _blProvisionalUserProject
      (\ s a -> s{_blProvisionalUserProject = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
blPageToken :: Lens' BucketsList (Maybe Text)
blPageToken
  = lens _blPageToken (\ s a -> s{_blPageToken = a})

-- | Maximum number of buckets to return in a single response. The service
-- will use this parameter or 1,000 items, whichever is smaller.
blMaxResults :: Lens' BucketsList Word32
blMaxResults
  = lens _blMaxResults (\ s a -> s{_blMaxResults = a})
      . _Coerce

instance GoogleRequest BucketsList where
        type Rs BucketsList = Buckets
        type Scopes BucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsList'{..}
          = go (Just _blProject) _blPrefix _blUserProject
              _blProjection
              _blProvisionalUserProject
              _blPageToken
              (Just _blMaxResults)
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsListResource)
                      mempty

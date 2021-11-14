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
-- Module      : Network.Google.Resource.Storage.Buckets.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.get@.
module Network.Google.Resource.Storage.Buckets.Get
    (
    -- * REST Resource
      BucketsGetResource

    -- * Creating a Request
    , bucketsGet
    , BucketsGet

    -- * Request Lenses
    , bgIfMetagenerationMatch
    , bgBucket
    , bgUserProject
    , bgIfMetagenerationNotMatch
    , bgProjection
    , bgProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.get@ method which the
-- 'BucketsGet' request conforms to.
type BucketsGetResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             QueryParam "ifMetagenerationMatch" (Textual Int64) :>
               QueryParam "userProject" Text :>
                 QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                   :>
                   QueryParam "projection" BucketsGetProjection :>
                     QueryParam "provisionalUserProject" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Bucket

-- | Returns metadata for the specified bucket.
--
-- /See:/ 'bucketsGet' smart constructor.
data BucketsGet =
  BucketsGet'
    { _bgIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _bgBucket :: !Text
    , _bgUserProject :: !(Maybe Text)
    , _bgIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _bgProjection :: !(Maybe BucketsGetProjection)
    , _bgProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgIfMetagenerationMatch'
--
-- * 'bgBucket'
--
-- * 'bgUserProject'
--
-- * 'bgIfMetagenerationNotMatch'
--
-- * 'bgProjection'
--
-- * 'bgProvisionalUserProject'
bucketsGet
    :: Text -- ^ 'bgBucket'
    -> BucketsGet
bucketsGet pBgBucket_ =
  BucketsGet'
    { _bgIfMetagenerationMatch = Nothing
    , _bgBucket = pBgBucket_
    , _bgUserProject = Nothing
    , _bgIfMetagenerationNotMatch = Nothing
    , _bgProjection = Nothing
    , _bgProvisionalUserProject = Nothing
    }


-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
bgIfMetagenerationMatch :: Lens' BucketsGet (Maybe Int64)
bgIfMetagenerationMatch
  = lens _bgIfMetagenerationMatch
      (\ s a -> s{_bgIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Name of a bucket.
bgBucket :: Lens' BucketsGet Text
bgBucket = lens _bgBucket (\ s a -> s{_bgBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bgUserProject :: Lens' BucketsGet (Maybe Text)
bgUserProject
  = lens _bgUserProject
      (\ s a -> s{_bgUserProject = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
bgIfMetagenerationNotMatch :: Lens' BucketsGet (Maybe Int64)
bgIfMetagenerationNotMatch
  = lens _bgIfMetagenerationNotMatch
      (\ s a -> s{_bgIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Set of properties to return. Defaults to noAcl.
bgProjection :: Lens' BucketsGet (Maybe BucketsGetProjection)
bgProjection
  = lens _bgProjection (\ s a -> s{_bgProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bgProvisionalUserProject :: Lens' BucketsGet (Maybe Text)
bgProvisionalUserProject
  = lens _bgProvisionalUserProject
      (\ s a -> s{_bgProvisionalUserProject = a})

instance GoogleRequest BucketsGet where
        type Rs BucketsGet = Bucket
        type Scopes BucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsGet'{..}
          = go _bgBucket _bgIfMetagenerationMatch
              _bgUserProject
              _bgIfMetagenerationNotMatch
              _bgProjection
              _bgProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsGetResource)
                      mempty

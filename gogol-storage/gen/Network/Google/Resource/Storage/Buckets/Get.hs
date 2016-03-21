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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , bgIfMetagenerationNotMatch
    , bgProjection
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.get@ method which the
-- 'BucketsGet' request conforms to.
type BucketsGetResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             QueryParam "ifMetagenerationMatch" (Textual Int64) :>
               QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                 :>
                 QueryParam "projection" BucketsGetProjection :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Bucket

-- | Returns metadata for the specified bucket.
--
-- /See:/ 'bucketsGet' smart constructor.
data BucketsGet = BucketsGet'
    { _bgIfMetagenerationMatch    :: !(Maybe (Textual Int64))
    , _bgBucket                   :: !Text
    , _bgIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _bgProjection               :: !(Maybe BucketsGetProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgIfMetagenerationMatch'
--
-- * 'bgBucket'
--
-- * 'bgIfMetagenerationNotMatch'
--
-- * 'bgProjection'
bucketsGet
    :: Text -- ^ 'bgBucket'
    -> BucketsGet
bucketsGet pBgBucket_ =
    BucketsGet'
    { _bgIfMetagenerationMatch = Nothing
    , _bgBucket = pBgBucket_
    , _bgIfMetagenerationNotMatch = Nothing
    , _bgProjection = Nothing
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
              _bgIfMetagenerationNotMatch
              _bgProjection
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsGetResource)
                      mempty

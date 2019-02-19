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
-- Module      : Network.Google.Resource.Storage.Buckets.LockRetentionPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Locks retention policy on a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.lockRetentionPolicy@.
module Network.Google.Resource.Storage.Buckets.LockRetentionPolicy
    (
    -- * REST Resource
      BucketsLockRetentionPolicyResource

    -- * Creating a Request
    , bucketsLockRetentionPolicy
    , BucketsLockRetentionPolicy

    -- * Request Lenses
    , blrpIfMetagenerationMatch
    , blrpBucket
    , blrpUserProject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.lockRetentionPolicy@ method which the
-- 'BucketsLockRetentionPolicy' request conforms to.
type BucketsLockRetentionPolicyResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "lockRetentionPolicy" :>
               QueryParam "ifMetagenerationMatch" (Textual Int64) :>
                 QueryParam "userProject" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] Bucket

-- | Locks retention policy on a bucket.
--
-- /See:/ 'bucketsLockRetentionPolicy' smart constructor.
data BucketsLockRetentionPolicy =
  BucketsLockRetentionPolicy'
    { _blrpIfMetagenerationMatch :: !(Textual Int64)
    , _blrpBucket                :: !Text
    , _blrpUserProject           :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BucketsLockRetentionPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'blrpIfMetagenerationMatch'
--
-- * 'blrpBucket'
--
-- * 'blrpUserProject'
bucketsLockRetentionPolicy
    :: Int64 -- ^ 'blrpIfMetagenerationMatch'
    -> Text -- ^ 'blrpBucket'
    -> BucketsLockRetentionPolicy
bucketsLockRetentionPolicy pBlrpIfMetagenerationMatch_ pBlrpBucket_ =
  BucketsLockRetentionPolicy'
    { _blrpIfMetagenerationMatch = _Coerce # pBlrpIfMetagenerationMatch_
    , _blrpBucket = pBlrpBucket_
    , _blrpUserProject = Nothing
    }

-- | Makes the operation conditional on whether bucket\'s current
-- metageneration matches the given value.
blrpIfMetagenerationMatch :: Lens' BucketsLockRetentionPolicy Int64
blrpIfMetagenerationMatch
  = lens _blrpIfMetagenerationMatch
      (\ s a -> s{_blrpIfMetagenerationMatch = a})
      . _Coerce

-- | Name of a bucket.
blrpBucket :: Lens' BucketsLockRetentionPolicy Text
blrpBucket
  = lens _blrpBucket (\ s a -> s{_blrpBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
blrpUserProject :: Lens' BucketsLockRetentionPolicy (Maybe Text)
blrpUserProject
  = lens _blrpUserProject
      (\ s a -> s{_blrpUserProject = a})

instance GoogleRequest BucketsLockRetentionPolicy
         where
        type Rs BucketsLockRetentionPolicy = Bucket
        type Scopes BucketsLockRetentionPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsLockRetentionPolicy'{..}
          = go _blrpBucket (Just _blrpIfMetagenerationMatch)
              _blrpUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketsLockRetentionPolicyResource)
                      mempty

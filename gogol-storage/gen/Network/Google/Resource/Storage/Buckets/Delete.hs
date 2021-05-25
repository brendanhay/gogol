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
-- Module      : Network.Google.Resource.Storage.Buckets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes an empty bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.delete@.
module Network.Google.Resource.Storage.Buckets.Delete
    (
    -- * REST Resource
      BucketsDeleteResource

    -- * Creating a Request
    , bucketsDelete
    , BucketsDelete

    -- * Request Lenses
    , bdIfMetagenerationMatch
    , bdBucket
    , bdUserProject
    , bdIfMetagenerationNotMatch
    , bdProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.delete@ method which the
-- 'BucketsDelete' request conforms to.
type BucketsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             QueryParam "ifMetagenerationMatch" (Textual Int64) :>
               QueryParam "userProject" Text :>
                 QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                   :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes an empty bucket.
--
-- /See:/ 'bucketsDelete' smart constructor.
data BucketsDelete =
  BucketsDelete'
    { _bdIfMetagenerationMatch :: !(Maybe (Textual Int64))
    , _bdBucket :: !Text
    , _bdUserProject :: !(Maybe Text)
    , _bdIfMetagenerationNotMatch :: !(Maybe (Textual Int64))
    , _bdProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdIfMetagenerationMatch'
--
-- * 'bdBucket'
--
-- * 'bdUserProject'
--
-- * 'bdIfMetagenerationNotMatch'
--
-- * 'bdProvisionalUserProject'
bucketsDelete
    :: Text -- ^ 'bdBucket'
    -> BucketsDelete
bucketsDelete pBdBucket_ =
  BucketsDelete'
    { _bdIfMetagenerationMatch = Nothing
    , _bdBucket = pBdBucket_
    , _bdUserProject = Nothing
    , _bdIfMetagenerationNotMatch = Nothing
    , _bdProvisionalUserProject = Nothing
    }


-- | If set, only deletes the bucket if its metageneration matches this
-- value.
bdIfMetagenerationMatch :: Lens' BucketsDelete (Maybe Int64)
bdIfMetagenerationMatch
  = lens _bdIfMetagenerationMatch
      (\ s a -> s{_bdIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Name of a bucket.
bdBucket :: Lens' BucketsDelete Text
bdBucket = lens _bdBucket (\ s a -> s{_bdBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bdUserProject :: Lens' BucketsDelete (Maybe Text)
bdUserProject
  = lens _bdUserProject
      (\ s a -> s{_bdUserProject = a})

-- | If set, only deletes the bucket if its metageneration does not match
-- this value.
bdIfMetagenerationNotMatch :: Lens' BucketsDelete (Maybe Int64)
bdIfMetagenerationNotMatch
  = lens _bdIfMetagenerationNotMatch
      (\ s a -> s{_bdIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bdProvisionalUserProject :: Lens' BucketsDelete (Maybe Text)
bdProvisionalUserProject
  = lens _bdProvisionalUserProject
      (\ s a -> s{_bdProvisionalUserProject = a})

instance GoogleRequest BucketsDelete where
        type Rs BucketsDelete = ()
        type Scopes BucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsDelete'{..}
          = go _bdBucket _bdIfMetagenerationMatch
              _bdUserProject
              _bdIfMetagenerationNotMatch
              _bdProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsDeleteResource)
                      mempty

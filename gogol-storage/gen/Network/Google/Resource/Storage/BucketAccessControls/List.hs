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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves ACL entries on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.list@.
module Network.Google.Resource.Storage.BucketAccessControls.List
    (
    -- * REST Resource
      BucketAccessControlsListResource

    -- * Creating a Request
    , bucketAccessControlsList
    , BucketAccessControlsList

    -- * Request Lenses
    , baclBucket
    , baclUserProject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.list@ method which the
-- 'BucketAccessControlsList' request conforms to.
type BucketAccessControlsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "acl" :>
               QueryParam "userProject" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] BucketAccessControls

-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ 'bucketAccessControlsList' smart constructor.
data BucketAccessControlsList = BucketAccessControlsList'
    { _baclBucket      :: !Text
    , _baclUserProject :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baclBucket'
--
-- * 'baclUserProject'
bucketAccessControlsList
    :: Text -- ^ 'baclBucket'
    -> BucketAccessControlsList
bucketAccessControlsList pBaclBucket_ =
    BucketAccessControlsList'
    { _baclBucket = pBaclBucket_
    , _baclUserProject = Nothing
    }

-- | Name of a bucket.
baclBucket :: Lens' BucketAccessControlsList Text
baclBucket
  = lens _baclBucket (\ s a -> s{_baclBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
baclUserProject :: Lens' BucketAccessControlsList (Maybe Text)
baclUserProject
  = lens _baclUserProject
      (\ s a -> s{_baclUserProject = a})

instance GoogleRequest BucketAccessControlsList where
        type Rs BucketAccessControlsList =
             BucketAccessControls
        type Scopes BucketAccessControlsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketAccessControlsList'{..}
          = go _baclBucket _baclUserProject (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsListResource)
                      mempty

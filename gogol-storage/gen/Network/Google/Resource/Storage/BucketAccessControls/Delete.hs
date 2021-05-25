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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.delete@.
module Network.Google.Resource.Storage.BucketAccessControls.Delete
    (
    -- * REST Resource
      BucketAccessControlsDeleteResource

    -- * Creating a Request
    , bucketAccessControlsDelete
    , BucketAccessControlsDelete

    -- * Request Lenses
    , bacdBucket
    , bacdUserProject
    , bacdProvisionalUserProject
    , bacdEntity
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.delete@ method which the
-- 'BucketAccessControlsDelete' request conforms to.
type BucketAccessControlsDeleteResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'bucketAccessControlsDelete' smart constructor.
data BucketAccessControlsDelete =
  BucketAccessControlsDelete'
    { _bacdBucket :: !Text
    , _bacdUserProject :: !(Maybe Text)
    , _bacdProvisionalUserProject :: !(Maybe Text)
    , _bacdEntity :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketAccessControlsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacdBucket'
--
-- * 'bacdUserProject'
--
-- * 'bacdProvisionalUserProject'
--
-- * 'bacdEntity'
bucketAccessControlsDelete
    :: Text -- ^ 'bacdBucket'
    -> Text -- ^ 'bacdEntity'
    -> BucketAccessControlsDelete
bucketAccessControlsDelete pBacdBucket_ pBacdEntity_ =
  BucketAccessControlsDelete'
    { _bacdBucket = pBacdBucket_
    , _bacdUserProject = Nothing
    , _bacdProvisionalUserProject = Nothing
    , _bacdEntity = pBacdEntity_
    }


-- | Name of a bucket.
bacdBucket :: Lens' BucketAccessControlsDelete Text
bacdBucket
  = lens _bacdBucket (\ s a -> s{_bacdBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bacdUserProject :: Lens' BucketAccessControlsDelete (Maybe Text)
bacdUserProject
  = lens _bacdUserProject
      (\ s a -> s{_bacdUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bacdProvisionalUserProject :: Lens' BucketAccessControlsDelete (Maybe Text)
bacdProvisionalUserProject
  = lens _bacdProvisionalUserProject
      (\ s a -> s{_bacdProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacdEntity :: Lens' BucketAccessControlsDelete Text
bacdEntity
  = lens _bacdEntity (\ s a -> s{_bacdEntity = a})

instance GoogleRequest BucketAccessControlsDelete
         where
        type Rs BucketAccessControlsDelete = ()
        type Scopes BucketAccessControlsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketAccessControlsDelete'{..}
          = go _bacdBucket _bacdEntity _bacdUserProject
              _bacdProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsDeleteResource)
                      mempty

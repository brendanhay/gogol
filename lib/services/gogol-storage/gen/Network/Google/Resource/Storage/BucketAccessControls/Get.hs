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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.get@.
module Network.Google.Resource.Storage.BucketAccessControls.Get
    (
    -- * REST Resource
      BucketAccessControlsGetResource

    -- * Creating a Request
    , bucketAccessControlsGet
    , BucketAccessControlsGet

    -- * Request Lenses
    , bacgBucket
    , bacgUserProject
    , bacgProvisionalUserProject
    , bacgEntity
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.get@ method which the
-- 'BucketAccessControlsGet' request conforms to.
type BucketAccessControlsGetResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "acl" :>
               Capture "entity" Text :>
                 QueryParam "userProject" Text :>
                   QueryParam "provisionalUserProject" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] BucketAccessControl

-- | Returns the ACL entry for the specified entity on the specified bucket.
--
-- /See:/ 'bucketAccessControlsGet' smart constructor.
data BucketAccessControlsGet =
  BucketAccessControlsGet'
    { _bacgBucket :: !Text
    , _bacgUserProject :: !(Maybe Text)
    , _bacgProvisionalUserProject :: !(Maybe Text)
    , _bacgEntity :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketAccessControlsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacgBucket'
--
-- * 'bacgUserProject'
--
-- * 'bacgProvisionalUserProject'
--
-- * 'bacgEntity'
bucketAccessControlsGet
    :: Text -- ^ 'bacgBucket'
    -> Text -- ^ 'bacgEntity'
    -> BucketAccessControlsGet
bucketAccessControlsGet pBacgBucket_ pBacgEntity_ =
  BucketAccessControlsGet'
    { _bacgBucket = pBacgBucket_
    , _bacgUserProject = Nothing
    , _bacgProvisionalUserProject = Nothing
    , _bacgEntity = pBacgEntity_
    }


-- | Name of a bucket.
bacgBucket :: Lens' BucketAccessControlsGet Text
bacgBucket
  = lens _bacgBucket (\ s a -> s{_bacgBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bacgUserProject :: Lens' BucketAccessControlsGet (Maybe Text)
bacgUserProject
  = lens _bacgUserProject
      (\ s a -> s{_bacgUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bacgProvisionalUserProject :: Lens' BucketAccessControlsGet (Maybe Text)
bacgProvisionalUserProject
  = lens _bacgProvisionalUserProject
      (\ s a -> s{_bacgProvisionalUserProject = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacgEntity :: Lens' BucketAccessControlsGet Text
bacgEntity
  = lens _bacgEntity (\ s a -> s{_bacgEntity = a})

instance GoogleRequest BucketAccessControlsGet where
        type Rs BucketAccessControlsGet = BucketAccessControl
        type Scopes BucketAccessControlsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketAccessControlsGet'{..}
          = go _bacgBucket _bacgEntity _bacgUserProject
              _bacgProvisionalUserProject
              (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsGetResource)
                      mempty

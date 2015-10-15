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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageBucketAccessControlsDelete@.
module Network.Google.Resource.Storage.BucketAccessControls.Delete
    (
    -- * REST Resource
      BucketAccessControlsDeleteResource

    -- * Creating a Request
    , bucketAccessControlsDelete'
    , BucketAccessControlsDelete'

    -- * Request Lenses
    , bacdBucket
    , bacdEntity
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsDelete@ method which the
-- 'BucketAccessControlsDelete'' request conforms to.
type BucketAccessControlsDeleteResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Permanently deletes the ACL entry for the specified entity on the
-- specified bucket.
--
-- /See:/ 'bucketAccessControlsDelete'' smart constructor.
data BucketAccessControlsDelete' = BucketAccessControlsDelete'
    { _bacdBucket :: !Text
    , _bacdEntity :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacdBucket'
--
-- * 'bacdEntity'
bucketAccessControlsDelete'
    :: Text -- ^ 'bucket'
    -> Text -- ^ 'entity'
    -> BucketAccessControlsDelete'
bucketAccessControlsDelete' pBacdBucket_ pBacdEntity_ =
    BucketAccessControlsDelete'
    { _bacdBucket = pBacdBucket_
    , _bacdEntity = pBacdEntity_
    }

-- | Name of a bucket.
bacdBucket :: Lens' BucketAccessControlsDelete' Text
bacdBucket
  = lens _bacdBucket (\ s a -> s{_bacdBucket = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacdEntity :: Lens' BucketAccessControlsDelete' Text
bacdEntity
  = lens _bacdEntity (\ s a -> s{_bacdEntity = a})

instance GoogleRequest BucketAccessControlsDelete'
         where
        type Rs BucketAccessControlsDelete' = ()
        requestClient BucketAccessControlsDelete'{..}
          = go _bacdBucket _bacdEntity (Just AltJSON) storage
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsDeleteResource)
                      mempty

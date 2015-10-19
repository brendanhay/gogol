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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.update@.
module Network.Google.Resource.Storage.BucketAccessControls.Update
    (
    -- * REST Resource
      BucketAccessControlsUpdateResource

    -- * Creating a Request
    , bucketAccessControlsUpdate'
    , BucketAccessControlsUpdate'

    -- * Request Lenses
    , bacuBucket
    , bacuPayload
    , bacuEntity
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.update@ method which the
-- 'BucketAccessControlsUpdate'' request conforms to.
type BucketAccessControlsUpdateResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           Capture "entity" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] BucketAccessControl :>
                 Put '[JSON] BucketAccessControl

-- | Updates an ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsUpdate'' smart constructor.
data BucketAccessControlsUpdate' = BucketAccessControlsUpdate'
    { _bacuBucket  :: !Text
    , _bacuPayload :: !BucketAccessControl
    , _bacuEntity  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bacuBucket'
--
-- * 'bacuPayload'
--
-- * 'bacuEntity'
bucketAccessControlsUpdate'
    :: Text -- ^ 'bacuBucket'
    -> BucketAccessControl -- ^ 'bacuPayload'
    -> Text -- ^ 'bacuEntity'
    -> BucketAccessControlsUpdate'
bucketAccessControlsUpdate' pBacuBucket_ pBacuPayload_ pBacuEntity_ =
    BucketAccessControlsUpdate'
    { _bacuBucket = pBacuBucket_
    , _bacuPayload = pBacuPayload_
    , _bacuEntity = pBacuEntity_
    }

-- | Name of a bucket.
bacuBucket :: Lens' BucketAccessControlsUpdate' Text
bacuBucket
  = lens _bacuBucket (\ s a -> s{_bacuBucket = a})

-- | Multipart request metadata.
bacuPayload :: Lens' BucketAccessControlsUpdate' BucketAccessControl
bacuPayload
  = lens _bacuPayload (\ s a -> s{_bacuPayload = a})

-- | The entity holding the permission. Can be user-userId,
-- user-emailAddress, group-groupId, group-emailAddress, allUsers, or
-- allAuthenticatedUsers.
bacuEntity :: Lens' BucketAccessControlsUpdate' Text
bacuEntity
  = lens _bacuEntity (\ s a -> s{_bacuEntity = a})

instance GoogleRequest BucketAccessControlsUpdate'
         where
        type Rs BucketAccessControlsUpdate' =
             BucketAccessControl
        requestClient BucketAccessControlsUpdate'{..}
          = go _bacuBucket _bacuEntity (Just AltJSON)
              _bacuPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsUpdateResource)
                      mempty

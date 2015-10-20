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
-- Copyright   : (c) 2015 Brendan Hay
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
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.list@ method which the
-- 'BucketAccessControlsList' request conforms to.
type BucketAccessControlsListResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] BucketAccessControls

-- | Retrieves ACL entries on the specified bucket.
--
-- /See:/ 'bucketAccessControlsList' smart constructor.
newtype BucketAccessControlsList = BucketAccessControlsList
    { _baclBucket :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baclBucket'
bucketAccessControlsList
    :: Text -- ^ 'baclBucket'
    -> BucketAccessControlsList
bucketAccessControlsList pBaclBucket_ =
    BucketAccessControlsList
    { _baclBucket = pBaclBucket_
    }

-- | Name of a bucket.
baclBucket :: Lens' BucketAccessControlsList Text
baclBucket
  = lens _baclBucket (\ s a -> s{_baclBucket = a})

instance GoogleRequest BucketAccessControlsList where
        type Rs BucketAccessControlsList =
             BucketAccessControls
        requestClient BucketAccessControlsList{..}
          = go _baclBucket (Just AltJSON) storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsListResource)
                      mempty

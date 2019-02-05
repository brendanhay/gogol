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
-- Module      : Network.Google.Resource.Storage.BucketAccessControls.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.bucketAccessControls.insert@.
module Network.Google.Resource.Storage.BucketAccessControls.Insert
    (
    -- * REST Resource
      BucketAccessControlsInsertResource

    -- * Creating a Request
    , bucketAccessControlsInsert
    , BucketAccessControlsInsert

    -- * Request Lenses
    , baciBucket
    , baciPayload
    , baciUserProject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.bucketAccessControls.insert@ method which the
-- 'BucketAccessControlsInsert' request conforms to.
type BucketAccessControlsInsertResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "acl" :>
               QueryParam "userProject" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] BucketAccessControl :>
                     Post '[JSON] BucketAccessControl

-- | Creates a new ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsInsert' smart constructor.
data BucketAccessControlsInsert = BucketAccessControlsInsert'
    { _baciBucket      :: !Text
    , _baciPayload     :: !BucketAccessControl
    , _baciUserProject :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baciBucket'
--
-- * 'baciPayload'
--
-- * 'baciUserProject'
bucketAccessControlsInsert
    :: Text -- ^ 'baciBucket'
    -> BucketAccessControl -- ^ 'baciPayload'
    -> BucketAccessControlsInsert
bucketAccessControlsInsert pBaciBucket_ pBaciPayload_ =
    BucketAccessControlsInsert'
    { _baciBucket = pBaciBucket_
    , _baciPayload = pBaciPayload_
    , _baciUserProject = Nothing
    }

-- | Name of a bucket.
baciBucket :: Lens' BucketAccessControlsInsert Text
baciBucket
  = lens _baciBucket (\ s a -> s{_baciBucket = a})

-- | Multipart request metadata.
baciPayload :: Lens' BucketAccessControlsInsert BucketAccessControl
baciPayload
  = lens _baciPayload (\ s a -> s{_baciPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
baciUserProject :: Lens' BucketAccessControlsInsert (Maybe Text)
baciUserProject
  = lens _baciUserProject
      (\ s a -> s{_baciUserProject = a})

instance GoogleRequest BucketAccessControlsInsert
         where
        type Rs BucketAccessControlsInsert =
             BucketAccessControl
        type Scopes BucketAccessControlsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketAccessControlsInsert'{..}
          = go _baciBucket _baciUserProject (Just AltJSON)
              _baciPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsInsertResource)
                      mempty

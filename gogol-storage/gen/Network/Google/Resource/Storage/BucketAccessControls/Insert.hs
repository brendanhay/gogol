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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ACL entry on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @StorageBucketAccessControlsInsert@.
module Network.Google.Resource.Storage.BucketAccessControls.Insert
    (
    -- * REST Resource
      BucketAccessControlsInsertResource

    -- * Creating a Request
    , bucketAccessControlsInsert'
    , BucketAccessControlsInsert'

    -- * Request Lenses
    , baciBucket
    , baciPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @StorageBucketAccessControlsInsert@ method which the
-- 'BucketAccessControlsInsert'' request conforms to.
type BucketAccessControlsInsertResource =
     "b" :>
       Capture "bucket" Text :>
         "acl" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] BucketAccessControl :>
               Post '[JSON] BucketAccessControl

-- | Creates a new ACL entry on the specified bucket.
--
-- /See:/ 'bucketAccessControlsInsert'' smart constructor.
data BucketAccessControlsInsert' = BucketAccessControlsInsert'
    { _baciBucket  :: !Text
    , _baciPayload :: !BucketAccessControl
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketAccessControlsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baciBucket'
--
-- * 'baciPayload'
bucketAccessControlsInsert'
    :: Text -- ^ 'bucket'
    -> BucketAccessControl -- ^ 'payload'
    -> BucketAccessControlsInsert'
bucketAccessControlsInsert' pBaciBucket_ pBaciPayload_ =
    BucketAccessControlsInsert'
    { _baciBucket = pBaciBucket_
    , _baciPayload = pBaciPayload_
    }

-- | Name of a bucket.
baciBucket :: Lens' BucketAccessControlsInsert' Text
baciBucket
  = lens _baciBucket (\ s a -> s{_baciBucket = a})

-- | Multipart request metadata.
baciPayload :: Lens' BucketAccessControlsInsert' BucketAccessControl
baciPayload
  = lens _baciPayload (\ s a -> s{_baciPayload = a})

instance GoogleRequest BucketAccessControlsInsert'
         where
        type Rs BucketAccessControlsInsert' =
             BucketAccessControl
        requestClient BucketAccessControlsInsert'{..}
          = go _baciBucket (Just AltJSON) _baciPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketAccessControlsInsertResource)
                      mempty

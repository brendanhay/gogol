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
-- Module      : Network.Google.Resource.Storage.Buckets.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a bucket. Changes to the bucket will be readable immediately
-- after writing, but configuration changes may take time to propagate.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.update@.
module Network.Google.Resource.Storage.Buckets.Update
    (
    -- * REST Resource
      BucketsUpdateResource

    -- * Creating a Request
    , bucketsUpdate
    , BucketsUpdate

    -- * Request Lenses
    , buIfMetagenerationMatch
    , buPredefinedACL
    , buBucket
    , buPayload
    , buPredefinedDefaultObjectACL
    , buIfMetagenerationNotMatch
    , buProjection
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.update@ method which the
-- 'BucketsUpdate' request conforms to.
type BucketsUpdateResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             QueryParam "ifMetagenerationMatch" (Textual Int64) :>
               QueryParam "predefinedAcl" BucketsUpdatePredefinedACL
                 :>
                 QueryParam "predefinedDefaultObjectAcl"
                   BucketsUpdatePredefinedDefaultObjectACL
                   :>
                   QueryParam "ifMetagenerationNotMatch" (Textual Int64)
                     :>
                     QueryParam "projection" BucketsUpdateProjection :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Bucket :> Put '[JSON] Bucket

-- | Updates a bucket. Changes to the bucket will be readable immediately
-- after writing, but configuration changes may take time to propagate.
--
-- /See:/ 'bucketsUpdate' smart constructor.
data BucketsUpdate = BucketsUpdate'
    { _buIfMetagenerationMatch      :: !(Maybe (Textual Int64))
    , _buPredefinedACL              :: !(Maybe BucketsUpdatePredefinedACL)
    , _buBucket                     :: !Text
    , _buPayload                    :: !Bucket
    , _buPredefinedDefaultObjectACL :: !(Maybe BucketsUpdatePredefinedDefaultObjectACL)
    , _buIfMetagenerationNotMatch   :: !(Maybe (Textual Int64))
    , _buProjection                 :: !(Maybe BucketsUpdateProjection)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BucketsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'buIfMetagenerationMatch'
--
-- * 'buPredefinedACL'
--
-- * 'buBucket'
--
-- * 'buPayload'
--
-- * 'buPredefinedDefaultObjectACL'
--
-- * 'buIfMetagenerationNotMatch'
--
-- * 'buProjection'
bucketsUpdate
    :: Text -- ^ 'buBucket'
    -> Bucket -- ^ 'buPayload'
    -> BucketsUpdate
bucketsUpdate pBuBucket_ pBuPayload_ =
    BucketsUpdate'
    { _buIfMetagenerationMatch = Nothing
    , _buPredefinedACL = Nothing
    , _buBucket = pBuBucket_
    , _buPayload = pBuPayload_
    , _buPredefinedDefaultObjectACL = Nothing
    , _buIfMetagenerationNotMatch = Nothing
    , _buProjection = Nothing
    }

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration matches the given value.
buIfMetagenerationMatch :: Lens' BucketsUpdate (Maybe Int64)
buIfMetagenerationMatch
  = lens _buIfMetagenerationMatch
      (\ s a -> s{_buIfMetagenerationMatch = a})
      . mapping _Coerce

-- | Apply a predefined set of access controls to this bucket.
buPredefinedACL :: Lens' BucketsUpdate (Maybe BucketsUpdatePredefinedACL)
buPredefinedACL
  = lens _buPredefinedACL
      (\ s a -> s{_buPredefinedACL = a})

-- | Name of a bucket.
buBucket :: Lens' BucketsUpdate Text
buBucket = lens _buBucket (\ s a -> s{_buBucket = a})

-- | Multipart request metadata.
buPayload :: Lens' BucketsUpdate Bucket
buPayload
  = lens _buPayload (\ s a -> s{_buPayload = a})

-- | Apply a predefined set of default object access controls to this bucket.
buPredefinedDefaultObjectACL :: Lens' BucketsUpdate (Maybe BucketsUpdatePredefinedDefaultObjectACL)
buPredefinedDefaultObjectACL
  = lens _buPredefinedDefaultObjectACL
      (\ s a -> s{_buPredefinedDefaultObjectACL = a})

-- | Makes the return of the bucket metadata conditional on whether the
-- bucket\'s current metageneration does not match the given value.
buIfMetagenerationNotMatch :: Lens' BucketsUpdate (Maybe Int64)
buIfMetagenerationNotMatch
  = lens _buIfMetagenerationNotMatch
      (\ s a -> s{_buIfMetagenerationNotMatch = a})
      . mapping _Coerce

-- | Set of properties to return. Defaults to full.
buProjection :: Lens' BucketsUpdate (Maybe BucketsUpdateProjection)
buProjection
  = lens _buProjection (\ s a -> s{_buProjection = a})

instance GoogleRequest BucketsUpdate where
        type Rs BucketsUpdate = Bucket
        type Scopes BucketsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketsUpdate'{..}
          = go _buBucket _buIfMetagenerationMatch
              _buPredefinedACL
              _buPredefinedDefaultObjectACL
              _buIfMetagenerationNotMatch
              _buProjection
              (Just AltJSON)
              _buPayload
              storageService
          where go
                  = buildClient (Proxy :: Proxy BucketsUpdateResource)
                      mempty

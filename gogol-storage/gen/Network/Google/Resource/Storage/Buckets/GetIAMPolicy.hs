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
-- Module      : Network.Google.Resource.Storage.Buckets.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an IAM policy for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.getIamPolicy@.
module Network.Google.Resource.Storage.Buckets.GetIAMPolicy
    (
    -- * REST Resource
      BucketsGetIAMPolicyResource

    -- * Creating a Request
    , bucketsGetIAMPolicy
    , BucketsGetIAMPolicy

    -- * Request Lenses
    , bgipBucket
    , bgipUserProject
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.getIamPolicy@ method which the
-- 'BucketsGetIAMPolicy' request conforms to.
type BucketsGetIAMPolicyResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "iam" :>
               QueryParam "userProject" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Returns an IAM policy for the specified bucket.
--
-- /See:/ 'bucketsGetIAMPolicy' smart constructor.
data BucketsGetIAMPolicy =
  BucketsGetIAMPolicy'
    { _bgipBucket      :: !Text
    , _bgipUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bgipBucket'
--
-- * 'bgipUserProject'
bucketsGetIAMPolicy
    :: Text -- ^ 'bgipBucket'
    -> BucketsGetIAMPolicy
bucketsGetIAMPolicy pBgipBucket_ =
  BucketsGetIAMPolicy' {_bgipBucket = pBgipBucket_, _bgipUserProject = Nothing}


-- | Name of a bucket.
bgipBucket :: Lens' BucketsGetIAMPolicy Text
bgipBucket
  = lens _bgipBucket (\ s a -> s{_bgipBucket = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bgipUserProject :: Lens' BucketsGetIAMPolicy (Maybe Text)
bgipUserProject
  = lens _bgipUserProject
      (\ s a -> s{_bgipUserProject = a})

instance GoogleRequest BucketsGetIAMPolicy where
        type Rs BucketsGetIAMPolicy = Policy
        type Scopes BucketsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient BucketsGetIAMPolicy'{..}
          = go _bgipBucket _bgipUserProject (Just AltJSON)
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketsGetIAMPolicyResource)
                      mempty

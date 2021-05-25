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
-- Module      : Network.Google.Resource.Storage.Buckets.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an IAM policy for the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.setIamPolicy@.
module Network.Google.Resource.Storage.Buckets.SetIAMPolicy
    (
    -- * REST Resource
      BucketsSetIAMPolicyResource

    -- * Creating a Request
    , bucketsSetIAMPolicy
    , BucketsSetIAMPolicy

    -- * Request Lenses
    , bsipBucket
    , bsipPayload
    , bsipUserProject
    , bsipProvisionalUserProject
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.buckets.setIamPolicy@ method which the
-- 'BucketsSetIAMPolicy' request conforms to.
type BucketsSetIAMPolicyResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "iam" :>
               QueryParam "userProject" Text :>
                 QueryParam "provisionalUserProject" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Policy :> Put '[JSON] Policy

-- | Updates an IAM policy for the specified bucket.
--
-- /See:/ 'bucketsSetIAMPolicy' smart constructor.
data BucketsSetIAMPolicy =
  BucketsSetIAMPolicy'
    { _bsipBucket :: !Text
    , _bsipPayload :: !Policy
    , _bsipUserProject :: !(Maybe Text)
    , _bsipProvisionalUserProject :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BucketsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsipBucket'
--
-- * 'bsipPayload'
--
-- * 'bsipUserProject'
--
-- * 'bsipProvisionalUserProject'
bucketsSetIAMPolicy
    :: Text -- ^ 'bsipBucket'
    -> Policy -- ^ 'bsipPayload'
    -> BucketsSetIAMPolicy
bucketsSetIAMPolicy pBsipBucket_ pBsipPayload_ =
  BucketsSetIAMPolicy'
    { _bsipBucket = pBsipBucket_
    , _bsipPayload = pBsipPayload_
    , _bsipUserProject = Nothing
    , _bsipProvisionalUserProject = Nothing
    }


-- | Name of a bucket.
bsipBucket :: Lens' BucketsSetIAMPolicy Text
bsipBucket
  = lens _bsipBucket (\ s a -> s{_bsipBucket = a})

-- | Multipart request metadata.
bsipPayload :: Lens' BucketsSetIAMPolicy Policy
bsipPayload
  = lens _bsipPayload (\ s a -> s{_bsipPayload = a})

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
bsipUserProject :: Lens' BucketsSetIAMPolicy (Maybe Text)
bsipUserProject
  = lens _bsipUserProject
      (\ s a -> s{_bsipUserProject = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
bsipProvisionalUserProject :: Lens' BucketsSetIAMPolicy (Maybe Text)
bsipProvisionalUserProject
  = lens _bsipProvisionalUserProject
      (\ s a -> s{_bsipProvisionalUserProject = a})

instance GoogleRequest BucketsSetIAMPolicy where
        type Rs BucketsSetIAMPolicy = Policy
        type Scopes BucketsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient BucketsSetIAMPolicy'{..}
          = go _bsipBucket _bsipUserProject
              _bsipProvisionalUserProject
              (Just AltJSON)
              _bsipPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy BucketsSetIAMPolicyResource)
                      mempty

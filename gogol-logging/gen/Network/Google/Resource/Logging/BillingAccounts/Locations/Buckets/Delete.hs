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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.delete@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Delete
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsDeleteResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsDelete
    , BillingAccountsLocationsBucketsDelete

    -- * Request Lenses
    , balbdXgafv
    , balbdUploadProtocol
    , balbdAccessToken
    , balbdUploadType
    , balbdName
    , balbdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.delete@ method which the
-- 'BillingAccountsLocationsBucketsDelete' request conforms to.
type BillingAccountsLocationsBucketsDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a bucket. Moves the bucket to the DELETE_REQUESTED state. After
-- 7 days, the bucket will be purged and all logs in the bucket will be
-- permanently deleted.
--
-- /See:/ 'billingAccountsLocationsBucketsDelete' smart constructor.
data BillingAccountsLocationsBucketsDelete =
  BillingAccountsLocationsBucketsDelete'
    { _balbdXgafv :: !(Maybe Xgafv)
    , _balbdUploadProtocol :: !(Maybe Text)
    , _balbdAccessToken :: !(Maybe Text)
    , _balbdUploadType :: !(Maybe Text)
    , _balbdName :: !Text
    , _balbdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbdXgafv'
--
-- * 'balbdUploadProtocol'
--
-- * 'balbdAccessToken'
--
-- * 'balbdUploadType'
--
-- * 'balbdName'
--
-- * 'balbdCallback'
billingAccountsLocationsBucketsDelete
    :: Text -- ^ 'balbdName'
    -> BillingAccountsLocationsBucketsDelete
billingAccountsLocationsBucketsDelete pBalbdName_ =
  BillingAccountsLocationsBucketsDelete'
    { _balbdXgafv = Nothing
    , _balbdUploadProtocol = Nothing
    , _balbdAccessToken = Nothing
    , _balbdUploadType = Nothing
    , _balbdName = pBalbdName_
    , _balbdCallback = Nothing
    }


-- | V1 error format.
balbdXgafv :: Lens' BillingAccountsLocationsBucketsDelete (Maybe Xgafv)
balbdXgafv
  = lens _balbdXgafv (\ s a -> s{_balbdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbdUploadProtocol :: Lens' BillingAccountsLocationsBucketsDelete (Maybe Text)
balbdUploadProtocol
  = lens _balbdUploadProtocol
      (\ s a -> s{_balbdUploadProtocol = a})

-- | OAuth access token.
balbdAccessToken :: Lens' BillingAccountsLocationsBucketsDelete (Maybe Text)
balbdAccessToken
  = lens _balbdAccessToken
      (\ s a -> s{_balbdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbdUploadType :: Lens' BillingAccountsLocationsBucketsDelete (Maybe Text)
balbdUploadType
  = lens _balbdUploadType
      (\ s a -> s{_balbdUploadType = a})

-- | Required. The full resource name of the bucket to delete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
balbdName :: Lens' BillingAccountsLocationsBucketsDelete Text
balbdName
  = lens _balbdName (\ s a -> s{_balbdName = a})

-- | JSONP
balbdCallback :: Lens' BillingAccountsLocationsBucketsDelete (Maybe Text)
balbdCallback
  = lens _balbdCallback
      (\ s a -> s{_balbdCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsDelete
         where
        type Rs BillingAccountsLocationsBucketsDelete = Empty
        type Scopes BillingAccountsLocationsBucketsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsDelete'{..}
          = go _balbdName _balbdXgafv _balbdUploadProtocol
              _balbdAccessToken
              _balbdUploadType
              _balbdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsLocationsBucketsDeleteResource)
                      mempty

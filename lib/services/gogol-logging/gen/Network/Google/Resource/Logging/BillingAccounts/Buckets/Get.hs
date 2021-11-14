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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Buckets.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.buckets.get@.
module Network.Google.Resource.Logging.BillingAccounts.Buckets.Get
    (
    -- * REST Resource
      BillingAccountsBucketsGetResource

    -- * Creating a Request
    , billingAccountsBucketsGet
    , BillingAccountsBucketsGet

    -- * Request Lenses
    , babgXgafv
    , babgUploadProtocol
    , babgAccessToken
    , babgUploadType
    , babgName
    , babgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.buckets.get@ method which the
-- 'BillingAccountsBucketsGet' request conforms to.
type BillingAccountsBucketsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogBucket

-- | Gets a bucket.
--
-- /See:/ 'billingAccountsBucketsGet' smart constructor.
data BillingAccountsBucketsGet =
  BillingAccountsBucketsGet'
    { _babgXgafv :: !(Maybe Xgafv)
    , _babgUploadProtocol :: !(Maybe Text)
    , _babgAccessToken :: !(Maybe Text)
    , _babgUploadType :: !(Maybe Text)
    , _babgName :: !Text
    , _babgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsBucketsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'babgXgafv'
--
-- * 'babgUploadProtocol'
--
-- * 'babgAccessToken'
--
-- * 'babgUploadType'
--
-- * 'babgName'
--
-- * 'babgCallback'
billingAccountsBucketsGet
    :: Text -- ^ 'babgName'
    -> BillingAccountsBucketsGet
billingAccountsBucketsGet pBabgName_ =
  BillingAccountsBucketsGet'
    { _babgXgafv = Nothing
    , _babgUploadProtocol = Nothing
    , _babgAccessToken = Nothing
    , _babgUploadType = Nothing
    , _babgName = pBabgName_
    , _babgCallback = Nothing
    }


-- | V1 error format.
babgXgafv :: Lens' BillingAccountsBucketsGet (Maybe Xgafv)
babgXgafv
  = lens _babgXgafv (\ s a -> s{_babgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
babgUploadProtocol :: Lens' BillingAccountsBucketsGet (Maybe Text)
babgUploadProtocol
  = lens _babgUploadProtocol
      (\ s a -> s{_babgUploadProtocol = a})

-- | OAuth access token.
babgAccessToken :: Lens' BillingAccountsBucketsGet (Maybe Text)
babgAccessToken
  = lens _babgAccessToken
      (\ s a -> s{_babgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
babgUploadType :: Lens' BillingAccountsBucketsGet (Maybe Text)
babgUploadType
  = lens _babgUploadType
      (\ s a -> s{_babgUploadType = a})

-- | Required. The resource name of the bucket:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
babgName :: Lens' BillingAccountsBucketsGet Text
babgName = lens _babgName (\ s a -> s{_babgName = a})

-- | JSONP
babgCallback :: Lens' BillingAccountsBucketsGet (Maybe Text)
babgCallback
  = lens _babgCallback (\ s a -> s{_babgCallback = a})

instance GoogleRequest BillingAccountsBucketsGet
         where
        type Rs BillingAccountsBucketsGet = LogBucket
        type Scopes BillingAccountsBucketsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsBucketsGet'{..}
          = go _babgName _babgXgafv _babgUploadProtocol
              _babgAccessToken
              _babgUploadType
              _babgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsBucketsGetResource)
                      mempty

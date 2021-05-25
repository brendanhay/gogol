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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Undelete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.undelete@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Undelete
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsUndeleteResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsUndelete
    , BillingAccountsLocationsBucketsUndelete

    -- * Request Lenses
    , balbuXgafv
    , balbuUploadProtocol
    , balbuAccessToken
    , balbuUploadType
    , balbuPayload
    , balbuName
    , balbuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.undelete@ method which the
-- 'BillingAccountsLocationsBucketsUndelete' request conforms to.
type BillingAccountsLocationsBucketsUndeleteResource
     =
     "v2" :>
       CaptureMode "name" "undelete" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] UndeleteBucketRequest :>
                       Post '[JSON] Empty

-- | Undeletes a bucket. A bucket that has been deleted may be undeleted
-- within the grace period of 7 days.
--
-- /See:/ 'billingAccountsLocationsBucketsUndelete' smart constructor.
data BillingAccountsLocationsBucketsUndelete =
  BillingAccountsLocationsBucketsUndelete'
    { _balbuXgafv :: !(Maybe Xgafv)
    , _balbuUploadProtocol :: !(Maybe Text)
    , _balbuAccessToken :: !(Maybe Text)
    , _balbuUploadType :: !(Maybe Text)
    , _balbuPayload :: !UndeleteBucketRequest
    , _balbuName :: !Text
    , _balbuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsUndelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbuXgafv'
--
-- * 'balbuUploadProtocol'
--
-- * 'balbuAccessToken'
--
-- * 'balbuUploadType'
--
-- * 'balbuPayload'
--
-- * 'balbuName'
--
-- * 'balbuCallback'
billingAccountsLocationsBucketsUndelete
    :: UndeleteBucketRequest -- ^ 'balbuPayload'
    -> Text -- ^ 'balbuName'
    -> BillingAccountsLocationsBucketsUndelete
billingAccountsLocationsBucketsUndelete pBalbuPayload_ pBalbuName_ =
  BillingAccountsLocationsBucketsUndelete'
    { _balbuXgafv = Nothing
    , _balbuUploadProtocol = Nothing
    , _balbuAccessToken = Nothing
    , _balbuUploadType = Nothing
    , _balbuPayload = pBalbuPayload_
    , _balbuName = pBalbuName_
    , _balbuCallback = Nothing
    }


-- | V1 error format.
balbuXgafv :: Lens' BillingAccountsLocationsBucketsUndelete (Maybe Xgafv)
balbuXgafv
  = lens _balbuXgafv (\ s a -> s{_balbuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbuUploadProtocol :: Lens' BillingAccountsLocationsBucketsUndelete (Maybe Text)
balbuUploadProtocol
  = lens _balbuUploadProtocol
      (\ s a -> s{_balbuUploadProtocol = a})

-- | OAuth access token.
balbuAccessToken :: Lens' BillingAccountsLocationsBucketsUndelete (Maybe Text)
balbuAccessToken
  = lens _balbuAccessToken
      (\ s a -> s{_balbuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbuUploadType :: Lens' BillingAccountsLocationsBucketsUndelete (Maybe Text)
balbuUploadType
  = lens _balbuUploadType
      (\ s a -> s{_balbuUploadType = a})

-- | Multipart request metadata.
balbuPayload :: Lens' BillingAccountsLocationsBucketsUndelete UndeleteBucketRequest
balbuPayload
  = lens _balbuPayload (\ s a -> s{_balbuPayload = a})

-- | Required. The full resource name of the bucket to undelete.
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
-- Example:
-- \"projects\/my-project-id\/locations\/my-location\/buckets\/my-bucket-id\".
balbuName :: Lens' BillingAccountsLocationsBucketsUndelete Text
balbuName
  = lens _balbuName (\ s a -> s{_balbuName = a})

-- | JSONP
balbuCallback :: Lens' BillingAccountsLocationsBucketsUndelete (Maybe Text)
balbuCallback
  = lens _balbuCallback
      (\ s a -> s{_balbuCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsUndelete
         where
        type Rs BillingAccountsLocationsBucketsUndelete =
             Empty
        type Scopes BillingAccountsLocationsBucketsUndelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin"]
        requestClient
          BillingAccountsLocationsBucketsUndelete'{..}
          = go _balbuName _balbuXgafv _balbuUploadProtocol
              _balbuAccessToken
              _balbuUploadType
              _balbuCallback
              (Just AltJSON)
              _balbuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsBucketsUndeleteResource)
                      mempty

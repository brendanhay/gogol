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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists buckets.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.list@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.List
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsListResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsList
    , BillingAccountsLocationsBucketsList

    -- * Request Lenses
    , balblParent
    , balblXgafv
    , balblUploadProtocol
    , balblAccessToken
    , balblUploadType
    , balblPageToken
    , balblPageSize
    , balblCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.list@ method which the
-- 'BillingAccountsLocationsBucketsList' request conforms to.
type BillingAccountsLocationsBucketsListResource =
     "v2" :>
       Capture "parent" Text :>
         "buckets" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBucketsResponse

-- | Lists buckets.
--
-- /See:/ 'billingAccountsLocationsBucketsList' smart constructor.
data BillingAccountsLocationsBucketsList =
  BillingAccountsLocationsBucketsList'
    { _balblParent :: !Text
    , _balblXgafv :: !(Maybe Xgafv)
    , _balblUploadProtocol :: !(Maybe Text)
    , _balblAccessToken :: !(Maybe Text)
    , _balblUploadType :: !(Maybe Text)
    , _balblPageToken :: !(Maybe Text)
    , _balblPageSize :: !(Maybe (Textual Int32))
    , _balblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balblParent'
--
-- * 'balblXgafv'
--
-- * 'balblUploadProtocol'
--
-- * 'balblAccessToken'
--
-- * 'balblUploadType'
--
-- * 'balblPageToken'
--
-- * 'balblPageSize'
--
-- * 'balblCallback'
billingAccountsLocationsBucketsList
    :: Text -- ^ 'balblParent'
    -> BillingAccountsLocationsBucketsList
billingAccountsLocationsBucketsList pBalblParent_ =
  BillingAccountsLocationsBucketsList'
    { _balblParent = pBalblParent_
    , _balblXgafv = Nothing
    , _balblUploadProtocol = Nothing
    , _balblAccessToken = Nothing
    , _balblUploadType = Nothing
    , _balblPageToken = Nothing
    , _balblPageSize = Nothing
    , _balblCallback = Nothing
    }


-- | Required. The parent resource whose buckets are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\"
-- \"folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\" Note: The locations
-- portion of the resource must be specified, but supplying the character -
-- in place of LOCATION_ID will return all buckets.
balblParent :: Lens' BillingAccountsLocationsBucketsList Text
balblParent
  = lens _balblParent (\ s a -> s{_balblParent = a})

-- | V1 error format.
balblXgafv :: Lens' BillingAccountsLocationsBucketsList (Maybe Xgafv)
balblXgafv
  = lens _balblXgafv (\ s a -> s{_balblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balblUploadProtocol :: Lens' BillingAccountsLocationsBucketsList (Maybe Text)
balblUploadProtocol
  = lens _balblUploadProtocol
      (\ s a -> s{_balblUploadProtocol = a})

-- | OAuth access token.
balblAccessToken :: Lens' BillingAccountsLocationsBucketsList (Maybe Text)
balblAccessToken
  = lens _balblAccessToken
      (\ s a -> s{_balblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balblUploadType :: Lens' BillingAccountsLocationsBucketsList (Maybe Text)
balblUploadType
  = lens _balblUploadType
      (\ s a -> s{_balblUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
balblPageToken :: Lens' BillingAccountsLocationsBucketsList (Maybe Text)
balblPageToken
  = lens _balblPageToken
      (\ s a -> s{_balblPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
balblPageSize :: Lens' BillingAccountsLocationsBucketsList (Maybe Int32)
balblPageSize
  = lens _balblPageSize
      (\ s a -> s{_balblPageSize = a})
      . mapping _Coerce

-- | JSONP
balblCallback :: Lens' BillingAccountsLocationsBucketsList (Maybe Text)
balblCallback
  = lens _balblCallback
      (\ s a -> s{_balblCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsList
         where
        type Rs BillingAccountsLocationsBucketsList =
             ListBucketsResponse
        type Scopes BillingAccountsLocationsBucketsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          BillingAccountsLocationsBucketsList'{..}
          = go _balblParent _balblXgafv _balblUploadProtocol
              _balblAccessToken
              _balblUploadType
              _balblPageToken
              _balblPageSize
              _balblCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsLocationsBucketsListResource)
                      mempty

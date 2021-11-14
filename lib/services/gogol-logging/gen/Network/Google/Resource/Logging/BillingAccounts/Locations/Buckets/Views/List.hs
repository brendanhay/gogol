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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists views on a bucket.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.locations.buckets.views.list@.
module Network.Google.Resource.Logging.BillingAccounts.Locations.Buckets.Views.List
    (
    -- * REST Resource
      BillingAccountsLocationsBucketsViewsListResource

    -- * Creating a Request
    , billingAccountsLocationsBucketsViewsList
    , BillingAccountsLocationsBucketsViewsList

    -- * Request Lenses
    , balbvlParent
    , balbvlXgafv
    , balbvlUploadProtocol
    , balbvlAccessToken
    , balbvlUploadType
    , balbvlPageToken
    , balbvlPageSize
    , balbvlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.locations.buckets.views.list@ method which the
-- 'BillingAccountsLocationsBucketsViewsList' request conforms to.
type BillingAccountsLocationsBucketsViewsListResource
     =
     "v2" :>
       Capture "parent" Text :>
         "views" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListViewsResponse

-- | Lists views on a bucket.
--
-- /See:/ 'billingAccountsLocationsBucketsViewsList' smart constructor.
data BillingAccountsLocationsBucketsViewsList =
  BillingAccountsLocationsBucketsViewsList'
    { _balbvlParent :: !Text
    , _balbvlXgafv :: !(Maybe Xgafv)
    , _balbvlUploadProtocol :: !(Maybe Text)
    , _balbvlAccessToken :: !(Maybe Text)
    , _balbvlUploadType :: !(Maybe Text)
    , _balbvlPageToken :: !(Maybe Text)
    , _balbvlPageSize :: !(Maybe (Textual Int32))
    , _balbvlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLocationsBucketsViewsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balbvlParent'
--
-- * 'balbvlXgafv'
--
-- * 'balbvlUploadProtocol'
--
-- * 'balbvlAccessToken'
--
-- * 'balbvlUploadType'
--
-- * 'balbvlPageToken'
--
-- * 'balbvlPageSize'
--
-- * 'balbvlCallback'
billingAccountsLocationsBucketsViewsList
    :: Text -- ^ 'balbvlParent'
    -> BillingAccountsLocationsBucketsViewsList
billingAccountsLocationsBucketsViewsList pBalbvlParent_ =
  BillingAccountsLocationsBucketsViewsList'
    { _balbvlParent = pBalbvlParent_
    , _balbvlXgafv = Nothing
    , _balbvlUploadProtocol = Nothing
    , _balbvlAccessToken = Nothing
    , _balbvlUploadType = Nothing
    , _balbvlPageToken = Nothing
    , _balbvlPageSize = Nothing
    , _balbvlCallback = Nothing
    }


-- | Required. The bucket whose views are to be listed:
-- \"projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\"
balbvlParent :: Lens' BillingAccountsLocationsBucketsViewsList Text
balbvlParent
  = lens _balbvlParent (\ s a -> s{_balbvlParent = a})

-- | V1 error format.
balbvlXgafv :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Xgafv)
balbvlXgafv
  = lens _balbvlXgafv (\ s a -> s{_balbvlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balbvlUploadProtocol :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Text)
balbvlUploadProtocol
  = lens _balbvlUploadProtocol
      (\ s a -> s{_balbvlUploadProtocol = a})

-- | OAuth access token.
balbvlAccessToken :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Text)
balbvlAccessToken
  = lens _balbvlAccessToken
      (\ s a -> s{_balbvlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balbvlUploadType :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Text)
balbvlUploadType
  = lens _balbvlUploadType
      (\ s a -> s{_balbvlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
balbvlPageToken :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Text)
balbvlPageToken
  = lens _balbvlPageToken
      (\ s a -> s{_balbvlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
balbvlPageSize :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Int32)
balbvlPageSize
  = lens _balbvlPageSize
      (\ s a -> s{_balbvlPageSize = a})
      . mapping _Coerce

-- | JSONP
balbvlCallback :: Lens' BillingAccountsLocationsBucketsViewsList (Maybe Text)
balbvlCallback
  = lens _balbvlCallback
      (\ s a -> s{_balbvlCallback = a})

instance GoogleRequest
           BillingAccountsLocationsBucketsViewsList
         where
        type Rs BillingAccountsLocationsBucketsViewsList =
             ListViewsResponse
        type Scopes BillingAccountsLocationsBucketsViewsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient
          BillingAccountsLocationsBucketsViewsList'{..}
          = go _balbvlParent _balbvlXgafv _balbvlUploadProtocol
              _balbvlAccessToken
              _balbvlUploadType
              _balbvlPageToken
              _balbvlPageSize
              _balbvlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           BillingAccountsLocationsBucketsViewsListResource)
                      mempty

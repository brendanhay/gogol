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
-- Module      : Network.Google.Resource.CloudBilling.BillingAccounts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the billing accounts that the current authenticated user has
-- permission to
-- [view](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference> for @cloudbilling.billingAccounts.list@.
module Network.Google.Resource.CloudBilling.BillingAccounts.List
    (
    -- * REST Resource
      BillingAccountsListResource

    -- * Creating a Request
    , billingAccountsList
    , BillingAccountsList

    -- * Request Lenses
    , balXgafv
    , balUploadProtocol
    , balAccessToken
    , balUploadType
    , balFilter
    , balPageToken
    , balPageSize
    , balCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudbilling.billingAccounts.list@ method which the
-- 'BillingAccountsList' request conforms to.
type BillingAccountsListResource =
     "v1" :>
       "billingAccounts" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListBillingAccountsResponse

-- | Lists the billing accounts that the current authenticated user has
-- permission to
-- [view](https:\/\/cloud.google.com\/billing\/docs\/how-to\/billing-access).
--
-- /See:/ 'billingAccountsList' smart constructor.
data BillingAccountsList = BillingAccountsList'
    { _balXgafv          :: !(Maybe Xgafv)
    , _balUploadProtocol :: !(Maybe Text)
    , _balAccessToken    :: !(Maybe Text)
    , _balUploadType     :: !(Maybe Text)
    , _balFilter         :: !(Maybe Text)
    , _balPageToken      :: !(Maybe Text)
    , _balPageSize       :: !(Maybe (Textual Int32))
    , _balCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balXgafv'
--
-- * 'balUploadProtocol'
--
-- * 'balAccessToken'
--
-- * 'balUploadType'
--
-- * 'balFilter'
--
-- * 'balPageToken'
--
-- * 'balPageSize'
--
-- * 'balCallback'
billingAccountsList
    :: BillingAccountsList
billingAccountsList =
    BillingAccountsList'
    { _balXgafv = Nothing
    , _balUploadProtocol = Nothing
    , _balAccessToken = Nothing
    , _balUploadType = Nothing
    , _balFilter = Nothing
    , _balPageToken = Nothing
    , _balPageSize = Nothing
    , _balCallback = Nothing
    }

-- | V1 error format.
balXgafv :: Lens' BillingAccountsList (Maybe Xgafv)
balXgafv = lens _balXgafv (\ s a -> s{_balXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balUploadProtocol :: Lens' BillingAccountsList (Maybe Text)
balUploadProtocol
  = lens _balUploadProtocol
      (\ s a -> s{_balUploadProtocol = a})

-- | OAuth access token.
balAccessToken :: Lens' BillingAccountsList (Maybe Text)
balAccessToken
  = lens _balAccessToken
      (\ s a -> s{_balAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balUploadType :: Lens' BillingAccountsList (Maybe Text)
balUploadType
  = lens _balUploadType
      (\ s a -> s{_balUploadType = a})

-- | Options for how to filter the returned billing accounts. Currently this
-- only supports filtering for
-- [subaccounts](https:\/\/cloud.google.com\/billing\/docs\/concepts) under
-- a single provided reseller billing account. (e.g.
-- \"master_billing_account=billingAccounts\/012345-678901-ABCDEF\").
-- Boolean algebra and other fields are not currently supported.
balFilter :: Lens' BillingAccountsList (Maybe Text)
balFilter
  = lens _balFilter (\ s a -> s{_balFilter = a})

-- | A token identifying a page of results to return. This should be a
-- \`next_page_token\` value returned from a previous
-- \`ListBillingAccounts\` call. If unspecified, the first page of results
-- is returned.
balPageToken :: Lens' BillingAccountsList (Maybe Text)
balPageToken
  = lens _balPageToken (\ s a -> s{_balPageToken = a})

-- | Requested page size. The maximum page size is 100; this is also the
-- default.
balPageSize :: Lens' BillingAccountsList (Maybe Int32)
balPageSize
  = lens _balPageSize (\ s a -> s{_balPageSize = a}) .
      mapping _Coerce

-- | JSONP
balCallback :: Lens' BillingAccountsList (Maybe Text)
balCallback
  = lens _balCallback (\ s a -> s{_balCallback = a})

instance GoogleRequest BillingAccountsList where
        type Rs BillingAccountsList =
             ListBillingAccountsResponse
        type Scopes BillingAccountsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient BillingAccountsList'{..}
          = go _balXgafv _balUploadProtocol _balAccessToken
              _balUploadType
              _balFilter
              _balPageToken
              _balPageSize
              _balCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsListResource)
                      mempty

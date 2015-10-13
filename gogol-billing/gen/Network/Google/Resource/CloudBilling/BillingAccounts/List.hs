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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the billing accounts that the current authenticated user
-- [owns](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ <https://cloud.google.com/billing/ Google Cloud Billing API Reference> for @CloudBillingBillingAccountsList@.
module Network.Google.Resource.CloudBilling.BillingAccounts.List
    (
    -- * REST Resource
      BillingAccountsListResource

    -- * Creating a Request
    , billingAccountsList'
    , BillingAccountsList'

    -- * Request Lenses
    , balXgafv
    , balUploadProtocol
    , balPp
    , balAccessToken
    , balUploadType
    , balBearerToken
    , balPageToken
    , balPageSize
    , balCallback
    ) where

import           Network.Google.Billing.Types
import           Network.Google.Prelude

-- | A resource alias for @CloudBillingBillingAccountsList@ method which the
-- 'BillingAccountsList'' request conforms to.
type BillingAccountsListResource =
     "v1" :>
       "billingAccounts" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" Int32 :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListBillingAccountsResponse

-- | Lists the billing accounts that the current authenticated user
-- [owns](https:\/\/support.google.com\/cloud\/answer\/4430947).
--
-- /See:/ 'billingAccountsList'' smart constructor.
data BillingAccountsList' = BillingAccountsList'
    { _balXgafv          :: !(Maybe Text)
    , _balUploadProtocol :: !(Maybe Text)
    , _balPp             :: !Bool
    , _balAccessToken    :: !(Maybe Text)
    , _balUploadType     :: !(Maybe Text)
    , _balBearerToken    :: !(Maybe Text)
    , _balPageToken      :: !(Maybe Text)
    , _balPageSize       :: !(Maybe Int32)
    , _balCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingAccountsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'balXgafv'
--
-- * 'balUploadProtocol'
--
-- * 'balPp'
--
-- * 'balAccessToken'
--
-- * 'balUploadType'
--
-- * 'balBearerToken'
--
-- * 'balPageToken'
--
-- * 'balPageSize'
--
-- * 'balCallback'
billingAccountsList'
    :: BillingAccountsList'
billingAccountsList' =
    BillingAccountsList'
    { _balXgafv = Nothing
    , _balUploadProtocol = Nothing
    , _balPp = True
    , _balAccessToken = Nothing
    , _balUploadType = Nothing
    , _balBearerToken = Nothing
    , _balPageToken = Nothing
    , _balPageSize = Nothing
    , _balCallback = Nothing
    }

-- | V1 error format.
balXgafv :: Lens' BillingAccountsList' (Maybe Text)
balXgafv = lens _balXgafv (\ s a -> s{_balXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
balUploadProtocol :: Lens' BillingAccountsList' (Maybe Text)
balUploadProtocol
  = lens _balUploadProtocol
      (\ s a -> s{_balUploadProtocol = a})

-- | Pretty-print response.
balPp :: Lens' BillingAccountsList' Bool
balPp = lens _balPp (\ s a -> s{_balPp = a})

-- | OAuth access token.
balAccessToken :: Lens' BillingAccountsList' (Maybe Text)
balAccessToken
  = lens _balAccessToken
      (\ s a -> s{_balAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
balUploadType :: Lens' BillingAccountsList' (Maybe Text)
balUploadType
  = lens _balUploadType
      (\ s a -> s{_balUploadType = a})

-- | OAuth bearer token.
balBearerToken :: Lens' BillingAccountsList' (Maybe Text)
balBearerToken
  = lens _balBearerToken
      (\ s a -> s{_balBearerToken = a})

-- | A token identifying a page of results to return. This should be a
-- \`next_page_token\` value returned from a previous
-- \`ListBillingAccounts\` call. If unspecified, the first page of results
-- is returned.
balPageToken :: Lens' BillingAccountsList' (Maybe Text)
balPageToken
  = lens _balPageToken (\ s a -> s{_balPageToken = a})

-- | Requested page size. The maximum page size is 100; this is also the
-- default.
balPageSize :: Lens' BillingAccountsList' (Maybe Int32)
balPageSize
  = lens _balPageSize (\ s a -> s{_balPageSize = a})

-- | JSONP
balCallback :: Lens' BillingAccountsList' (Maybe Text)
balCallback
  = lens _balCallback (\ s a -> s{_balCallback = a})

instance GoogleRequest BillingAccountsList' where
        type Rs BillingAccountsList' =
             ListBillingAccountsResponse
        requestClient BillingAccountsList'{..}
          = go _balXgafv _balUploadProtocol (Just _balPp)
              _balAccessToken
              _balUploadType
              _balBearerToken
              _balPageToken
              _balPageSize
              _balCallback
              (Just AltJSON)
              billingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsListResource)
                      mempty

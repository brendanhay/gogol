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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Sinks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists sinks.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.billingAccounts.sinks.list@.
module Network.Google.Resource.Logging.BillingAccounts.Sinks.List
    (
    -- * REST Resource
      BillingAccountsSinksListResource

    -- * Creating a Request
    , billingAccountsSinksList
    , BillingAccountsSinksList

    -- * Request Lenses
    , baslParent
    , baslXgafv
    , baslUploadProtocol
    , baslAccessToken
    , baslUploadType
    , baslPageToken
    , baslPageSize
    , baslCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.sinks.list@ method which the
-- 'BillingAccountsSinksList' request conforms to.
type BillingAccountsSinksListResource =
     "v2" :>
       Capture "parent" Text :>
         "sinks" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListSinksResponse

-- | Lists sinks.
--
-- /See:/ 'billingAccountsSinksList' smart constructor.
data BillingAccountsSinksList =
  BillingAccountsSinksList'
    { _baslParent         :: !Text
    , _baslXgafv          :: !(Maybe Xgafv)
    , _baslUploadProtocol :: !(Maybe Text)
    , _baslAccessToken    :: !(Maybe Text)
    , _baslUploadType     :: !(Maybe Text)
    , _baslPageToken      :: !(Maybe Text)
    , _baslPageSize       :: !(Maybe (Textual Int32))
    , _baslCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'BillingAccountsSinksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baslParent'
--
-- * 'baslXgafv'
--
-- * 'baslUploadProtocol'
--
-- * 'baslAccessToken'
--
-- * 'baslUploadType'
--
-- * 'baslPageToken'
--
-- * 'baslPageSize'
--
-- * 'baslCallback'
billingAccountsSinksList
    :: Text -- ^ 'baslParent'
    -> BillingAccountsSinksList
billingAccountsSinksList pBaslParent_ =
  BillingAccountsSinksList'
    { _baslParent = pBaslParent_
    , _baslXgafv = Nothing
    , _baslUploadProtocol = Nothing
    , _baslAccessToken = Nothing
    , _baslUploadType = Nothing
    , _baslPageToken = Nothing
    , _baslPageSize = Nothing
    , _baslCallback = Nothing
    }

-- | Required. The parent resource whose sinks are to be listed:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
baslParent :: Lens' BillingAccountsSinksList Text
baslParent
  = lens _baslParent (\ s a -> s{_baslParent = a})

-- | V1 error format.
baslXgafv :: Lens' BillingAccountsSinksList (Maybe Xgafv)
baslXgafv
  = lens _baslXgafv (\ s a -> s{_baslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baslUploadProtocol :: Lens' BillingAccountsSinksList (Maybe Text)
baslUploadProtocol
  = lens _baslUploadProtocol
      (\ s a -> s{_baslUploadProtocol = a})

-- | OAuth access token.
baslAccessToken :: Lens' BillingAccountsSinksList (Maybe Text)
baslAccessToken
  = lens _baslAccessToken
      (\ s a -> s{_baslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baslUploadType :: Lens' BillingAccountsSinksList (Maybe Text)
baslUploadType
  = lens _baslUploadType
      (\ s a -> s{_baslUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
baslPageToken :: Lens' BillingAccountsSinksList (Maybe Text)
baslPageToken
  = lens _baslPageToken
      (\ s a -> s{_baslPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
baslPageSize :: Lens' BillingAccountsSinksList (Maybe Int32)
baslPageSize
  = lens _baslPageSize (\ s a -> s{_baslPageSize = a})
      . mapping _Coerce

-- | JSONP
baslCallback :: Lens' BillingAccountsSinksList (Maybe Text)
baslCallback
  = lens _baslCallback (\ s a -> s{_baslCallback = a})

instance GoogleRequest BillingAccountsSinksList where
        type Rs BillingAccountsSinksList = ListSinksResponse
        type Scopes BillingAccountsSinksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsSinksList'{..}
          = go _baslParent _baslXgafv _baslUploadProtocol
              _baslAccessToken
              _baslUploadType
              _baslPageToken
              _baslPageSize
              _baslCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsSinksListResource)
                      mempty

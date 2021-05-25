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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Exclusions.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the exclusions in a parent resource.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.exclusions.list@.
module Network.Google.Resource.Logging.BillingAccounts.Exclusions.List
    (
    -- * REST Resource
      BillingAccountsExclusionsListResource

    -- * Creating a Request
    , billingAccountsExclusionsList
    , BillingAccountsExclusionsList

    -- * Request Lenses
    , baelParent
    , baelXgafv
    , baelUploadProtocol
    , baelAccessToken
    , baelUploadType
    , baelPageToken
    , baelPageSize
    , baelCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.exclusions.list@ method which the
-- 'BillingAccountsExclusionsList' request conforms to.
type BillingAccountsExclusionsListResource =
     "v2" :>
       Capture "parent" Text :>
         "exclusions" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListExclusionsResponse

-- | Lists all the exclusions in a parent resource.
--
-- /See:/ 'billingAccountsExclusionsList' smart constructor.
data BillingAccountsExclusionsList =
  BillingAccountsExclusionsList'
    { _baelParent :: !Text
    , _baelXgafv :: !(Maybe Xgafv)
    , _baelUploadProtocol :: !(Maybe Text)
    , _baelAccessToken :: !(Maybe Text)
    , _baelUploadType :: !(Maybe Text)
    , _baelPageToken :: !(Maybe Text)
    , _baelPageSize :: !(Maybe (Textual Int32))
    , _baelCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsExclusionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baelParent'
--
-- * 'baelXgafv'
--
-- * 'baelUploadProtocol'
--
-- * 'baelAccessToken'
--
-- * 'baelUploadType'
--
-- * 'baelPageToken'
--
-- * 'baelPageSize'
--
-- * 'baelCallback'
billingAccountsExclusionsList
    :: Text -- ^ 'baelParent'
    -> BillingAccountsExclusionsList
billingAccountsExclusionsList pBaelParent_ =
  BillingAccountsExclusionsList'
    { _baelParent = pBaelParent_
    , _baelXgafv = Nothing
    , _baelUploadProtocol = Nothing
    , _baelAccessToken = Nothing
    , _baelUploadType = Nothing
    , _baelPageToken = Nothing
    , _baelPageSize = Nothing
    , _baelCallback = Nothing
    }


-- | Required. The parent resource whose exclusions are to be listed.
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
baelParent :: Lens' BillingAccountsExclusionsList Text
baelParent
  = lens _baelParent (\ s a -> s{_baelParent = a})

-- | V1 error format.
baelXgafv :: Lens' BillingAccountsExclusionsList (Maybe Xgafv)
baelXgafv
  = lens _baelXgafv (\ s a -> s{_baelXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
baelUploadProtocol :: Lens' BillingAccountsExclusionsList (Maybe Text)
baelUploadProtocol
  = lens _baelUploadProtocol
      (\ s a -> s{_baelUploadProtocol = a})

-- | OAuth access token.
baelAccessToken :: Lens' BillingAccountsExclusionsList (Maybe Text)
baelAccessToken
  = lens _baelAccessToken
      (\ s a -> s{_baelAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
baelUploadType :: Lens' BillingAccountsExclusionsList (Maybe Text)
baelUploadType
  = lens _baelUploadType
      (\ s a -> s{_baelUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
baelPageToken :: Lens' BillingAccountsExclusionsList (Maybe Text)
baelPageToken
  = lens _baelPageToken
      (\ s a -> s{_baelPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
baelPageSize :: Lens' BillingAccountsExclusionsList (Maybe Int32)
baelPageSize
  = lens _baelPageSize (\ s a -> s{_baelPageSize = a})
      . mapping _Coerce

-- | JSONP
baelCallback :: Lens' BillingAccountsExclusionsList (Maybe Text)
baelCallback
  = lens _baelCallback (\ s a -> s{_baelCallback = a})

instance GoogleRequest BillingAccountsExclusionsList
         where
        type Rs BillingAccountsExclusionsList =
             ListExclusionsResponse
        type Scopes BillingAccountsExclusionsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsExclusionsList'{..}
          = go _baelParent _baelXgafv _baelUploadProtocol
              _baelAccessToken
              _baelUploadType
              _baelPageToken
              _baelPageSize
              _baelCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BillingAccountsExclusionsListResource)
                      mempty

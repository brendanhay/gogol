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
-- Module      : Network.Google.Resource.Logging.BillingAccounts.Logs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.billingAccounts.logs.list@.
module Network.Google.Resource.Logging.BillingAccounts.Logs.List
    (
    -- * REST Resource
      BillingAccountsLogsListResource

    -- * Creating a Request
    , billingAccountsLogsList
    , BillingAccountsLogsList

    -- * Request Lenses
    , ballParent
    , ballXgafv
    , ballUploadProtocol
    , ballAccessToken
    , ballUploadType
    , ballPageToken
    , ballPageSize
    , ballResourceNames
    , ballCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.billingAccounts.logs.list@ method which the
-- 'BillingAccountsLogsList' request conforms to.
type BillingAccountsLogsListResource =
     "v2" :>
       Capture "parent" Text :>
         "logs" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParams "resourceNames" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLogsResponse

-- | Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ 'billingAccountsLogsList' smart constructor.
data BillingAccountsLogsList =
  BillingAccountsLogsList'
    { _ballParent :: !Text
    , _ballXgafv :: !(Maybe Xgafv)
    , _ballUploadProtocol :: !(Maybe Text)
    , _ballAccessToken :: !(Maybe Text)
    , _ballUploadType :: !(Maybe Text)
    , _ballPageToken :: !(Maybe Text)
    , _ballPageSize :: !(Maybe (Textual Int32))
    , _ballResourceNames :: !(Maybe [Text])
    , _ballCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BillingAccountsLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ballParent'
--
-- * 'ballXgafv'
--
-- * 'ballUploadProtocol'
--
-- * 'ballAccessToken'
--
-- * 'ballUploadType'
--
-- * 'ballPageToken'
--
-- * 'ballPageSize'
--
-- * 'ballResourceNames'
--
-- * 'ballCallback'
billingAccountsLogsList
    :: Text -- ^ 'ballParent'
    -> BillingAccountsLogsList
billingAccountsLogsList pBallParent_ =
  BillingAccountsLogsList'
    { _ballParent = pBallParent_
    , _ballXgafv = Nothing
    , _ballUploadProtocol = Nothing
    , _ballAccessToken = Nothing
    , _ballUploadType = Nothing
    , _ballPageToken = Nothing
    , _ballPageSize = Nothing
    , _ballResourceNames = Nothing
    , _ballCallback = Nothing
    }


-- | Required. The resource name that owns the logs: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
ballParent :: Lens' BillingAccountsLogsList Text
ballParent
  = lens _ballParent (\ s a -> s{_ballParent = a})

-- | V1 error format.
ballXgafv :: Lens' BillingAccountsLogsList (Maybe Xgafv)
ballXgafv
  = lens _ballXgafv (\ s a -> s{_ballXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ballUploadProtocol :: Lens' BillingAccountsLogsList (Maybe Text)
ballUploadProtocol
  = lens _ballUploadProtocol
      (\ s a -> s{_ballUploadProtocol = a})

-- | OAuth access token.
ballAccessToken :: Lens' BillingAccountsLogsList (Maybe Text)
ballAccessToken
  = lens _ballAccessToken
      (\ s a -> s{_ballAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ballUploadType :: Lens' BillingAccountsLogsList (Maybe Text)
ballUploadType
  = lens _ballUploadType
      (\ s a -> s{_ballUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
ballPageToken :: Lens' BillingAccountsLogsList (Maybe Text)
ballPageToken
  = lens _ballPageToken
      (\ s a -> s{_ballPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
ballPageSize :: Lens' BillingAccountsLogsList (Maybe Int32)
ballPageSize
  = lens _ballPageSize (\ s a -> s{_ballPageSize = a})
      . mapping _Coerce

-- | Optional. The resource name that owns the logs:
-- projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]To
-- support legacy queries, it could also be: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
ballResourceNames :: Lens' BillingAccountsLogsList [Text]
ballResourceNames
  = lens _ballResourceNames
      (\ s a -> s{_ballResourceNames = a})
      . _Default
      . _Coerce

-- | JSONP
ballCallback :: Lens' BillingAccountsLogsList (Maybe Text)
ballCallback
  = lens _ballCallback (\ s a -> s{_ballCallback = a})

instance GoogleRequest BillingAccountsLogsList where
        type Rs BillingAccountsLogsList = ListLogsResponse
        type Scopes BillingAccountsLogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient BillingAccountsLogsList'{..}
          = go _ballParent _ballXgafv _ballUploadProtocol
              _ballAccessToken
              _ballUploadType
              _ballPageToken
              _ballPageSize
              (_ballResourceNames ^. _Default)
              _ballCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy BillingAccountsLogsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Logging.Logs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.logs.list@.
module Network.Google.Resource.Logging.Logs.List
    (
    -- * REST Resource
      LogsListResource

    -- * Creating a Request
    , logsList
    , LogsList

    -- * Request Lenses
    , lParent
    , lXgafv
    , lUploadProtocol
    , lAccessToken
    , lUploadType
    , lPageToken
    , lPageSize
    , lResourceNames
    , lCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.logs.list@ method which the
-- 'LogsList' request conforms to.
type LogsListResource =
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
-- /See:/ 'logsList' smart constructor.
data LogsList =
  LogsList'
    { _lParent :: !Text
    , _lXgafv :: !(Maybe Xgafv)
    , _lUploadProtocol :: !(Maybe Text)
    , _lAccessToken :: !(Maybe Text)
    , _lUploadType :: !(Maybe Text)
    , _lPageToken :: !(Maybe Text)
    , _lPageSize :: !(Maybe (Textual Int32))
    , _lResourceNames :: !(Maybe [Text])
    , _lCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lParent'
--
-- * 'lXgafv'
--
-- * 'lUploadProtocol'
--
-- * 'lAccessToken'
--
-- * 'lUploadType'
--
-- * 'lPageToken'
--
-- * 'lPageSize'
--
-- * 'lResourceNames'
--
-- * 'lCallback'
logsList
    :: Text -- ^ 'lParent'
    -> LogsList
logsList pLParent_ =
  LogsList'
    { _lParent = pLParent_
    , _lXgafv = Nothing
    , _lUploadProtocol = Nothing
    , _lAccessToken = Nothing
    , _lUploadType = Nothing
    , _lPageToken = Nothing
    , _lPageSize = Nothing
    , _lResourceNames = Nothing
    , _lCallback = Nothing
    }


-- | Required. The resource name that owns the logs: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
lParent :: Lens' LogsList Text
lParent = lens _lParent (\ s a -> s{_lParent = a})

-- | V1 error format.
lXgafv :: Lens' LogsList (Maybe Xgafv)
lXgafv = lens _lXgafv (\ s a -> s{_lXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lUploadProtocol :: Lens' LogsList (Maybe Text)
lUploadProtocol
  = lens _lUploadProtocol
      (\ s a -> s{_lUploadProtocol = a})

-- | OAuth access token.
lAccessToken :: Lens' LogsList (Maybe Text)
lAccessToken
  = lens _lAccessToken (\ s a -> s{_lAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lUploadType :: Lens' LogsList (Maybe Text)
lUploadType
  = lens _lUploadType (\ s a -> s{_lUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
lPageToken :: Lens' LogsList (Maybe Text)
lPageToken
  = lens _lPageToken (\ s a -> s{_lPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
lPageSize :: Lens' LogsList (Maybe Int32)
lPageSize
  = lens _lPageSize (\ s a -> s{_lPageSize = a}) .
      mapping _Coerce

-- | Optional. The resource name that owns the logs:
-- projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]To
-- support legacy queries, it could also be: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
lResourceNames :: Lens' LogsList [Text]
lResourceNames
  = lens _lResourceNames
      (\ s a -> s{_lResourceNames = a})
      . _Default
      . _Coerce

-- | JSONP
lCallback :: Lens' LogsList (Maybe Text)
lCallback
  = lens _lCallback (\ s a -> s{_lCallback = a})

instance GoogleRequest LogsList where
        type Rs LogsList = ListLogsResponse
        type Scopes LogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LogsList'{..}
          = go _lParent _lXgafv _lUploadProtocol _lAccessToken
              _lUploadType
              _lPageToken
              _lPageSize
              (_lResourceNames ^. _Default)
              _lCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy LogsListResource)
                      mempty

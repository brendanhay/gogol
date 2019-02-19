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
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.logs.list@.
module Network.Google.Resource.Logging.Logs.List
    (
    -- * REST Resource
      LogsListResource

    -- * Creating a Request
    , logsList
    , LogsList

    -- * Request Lenses
    , llParent
    , llXgafv
    , llUploadProtocol
    , llAccessToken
    , llUploadType
    , llPageToken
    , llPageSize
    , llCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

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
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListLogsResponse

-- | Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ 'logsList' smart constructor.
data LogsList =
  LogsList'
    { _llParent         :: !Text
    , _llXgafv          :: !(Maybe Xgafv)
    , _llUploadProtocol :: !(Maybe Text)
    , _llAccessToken    :: !(Maybe Text)
    , _llUploadType     :: !(Maybe Text)
    , _llPageToken      :: !(Maybe Text)
    , _llPageSize       :: !(Maybe (Textual Int32))
    , _llCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llParent'
--
-- * 'llXgafv'
--
-- * 'llUploadProtocol'
--
-- * 'llAccessToken'
--
-- * 'llUploadType'
--
-- * 'llPageToken'
--
-- * 'llPageSize'
--
-- * 'llCallback'
logsList
    :: Text -- ^ 'llParent'
    -> LogsList
logsList pLlParent_ =
  LogsList'
    { _llParent = pLlParent_
    , _llXgafv = Nothing
    , _llUploadProtocol = Nothing
    , _llAccessToken = Nothing
    , _llUploadType = Nothing
    , _llPageToken = Nothing
    , _llPageSize = Nothing
    , _llCallback = Nothing
    }

-- | Required. The resource name that owns the logs:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
llParent :: Lens' LogsList Text
llParent = lens _llParent (\ s a -> s{_llParent = a})

-- | V1 error format.
llXgafv :: Lens' LogsList (Maybe Xgafv)
llXgafv = lens _llXgafv (\ s a -> s{_llXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
llUploadProtocol :: Lens' LogsList (Maybe Text)
llUploadProtocol
  = lens _llUploadProtocol
      (\ s a -> s{_llUploadProtocol = a})

-- | OAuth access token.
llAccessToken :: Lens' LogsList (Maybe Text)
llAccessToken
  = lens _llAccessToken
      (\ s a -> s{_llAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
llUploadType :: Lens' LogsList (Maybe Text)
llUploadType
  = lens _llUploadType (\ s a -> s{_llUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
llPageToken :: Lens' LogsList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
llPageSize :: Lens' LogsList (Maybe Int32)
llPageSize
  = lens _llPageSize (\ s a -> s{_llPageSize = a}) .
      mapping _Coerce

-- | JSONP
llCallback :: Lens' LogsList (Maybe Text)
llCallback
  = lens _llCallback (\ s a -> s{_llCallback = a})

instance GoogleRequest LogsList where
        type Rs LogsList = ListLogsResponse
        type Scopes LogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LogsList'{..}
          = go _llParent _llXgafv _llUploadProtocol
              _llAccessToken
              _llUploadType
              _llPageToken
              _llPageSize
              _llCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy LogsListResource)
                      mempty

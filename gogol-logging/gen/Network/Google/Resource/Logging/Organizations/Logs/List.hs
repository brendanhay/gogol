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
-- Module      : Network.Google.Resource.Logging.Organizations.Logs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.organizations.logs.list@.
module Network.Google.Resource.Logging.Organizations.Logs.List
    (
    -- * REST Resource
      OrganizationsLogsListResource

    -- * Creating a Request
    , organizationsLogsList
    , OrganizationsLogsList

    -- * Request Lenses
    , ollParent
    , ollXgafv
    , ollUploadProtocol
    , ollAccessToken
    , ollUploadType
    , ollPageToken
    , ollPageSize
    , ollCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.organizations.logs.list@ method which the
-- 'OrganizationsLogsList' request conforms to.
type OrganizationsLogsListResource =
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
-- /See:/ 'organizationsLogsList' smart constructor.
data OrganizationsLogsList =
  OrganizationsLogsList'
    { _ollParent         :: !Text
    , _ollXgafv          :: !(Maybe Xgafv)
    , _ollUploadProtocol :: !(Maybe Text)
    , _ollAccessToken    :: !(Maybe Text)
    , _ollUploadType     :: !(Maybe Text)
    , _ollPageToken      :: !(Maybe Text)
    , _ollPageSize       :: !(Maybe (Textual Int32))
    , _ollCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ollParent'
--
-- * 'ollXgafv'
--
-- * 'ollUploadProtocol'
--
-- * 'ollAccessToken'
--
-- * 'ollUploadType'
--
-- * 'ollPageToken'
--
-- * 'ollPageSize'
--
-- * 'ollCallback'
organizationsLogsList
    :: Text -- ^ 'ollParent'
    -> OrganizationsLogsList
organizationsLogsList pOllParent_ =
  OrganizationsLogsList'
    { _ollParent = pOllParent_
    , _ollXgafv = Nothing
    , _ollUploadProtocol = Nothing
    , _ollAccessToken = Nothing
    , _ollUploadType = Nothing
    , _ollPageToken = Nothing
    , _ollPageSize = Nothing
    , _ollCallback = Nothing
    }


-- | Required. The resource name that owns the logs:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
ollParent :: Lens' OrganizationsLogsList Text
ollParent
  = lens _ollParent (\ s a -> s{_ollParent = a})

-- | V1 error format.
ollXgafv :: Lens' OrganizationsLogsList (Maybe Xgafv)
ollXgafv = lens _ollXgafv (\ s a -> s{_ollXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ollUploadProtocol :: Lens' OrganizationsLogsList (Maybe Text)
ollUploadProtocol
  = lens _ollUploadProtocol
      (\ s a -> s{_ollUploadProtocol = a})

-- | OAuth access token.
ollAccessToken :: Lens' OrganizationsLogsList (Maybe Text)
ollAccessToken
  = lens _ollAccessToken
      (\ s a -> s{_ollAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ollUploadType :: Lens' OrganizationsLogsList (Maybe Text)
ollUploadType
  = lens _ollUploadType
      (\ s a -> s{_ollUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
ollPageToken :: Lens' OrganizationsLogsList (Maybe Text)
ollPageToken
  = lens _ollPageToken (\ s a -> s{_ollPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
ollPageSize :: Lens' OrganizationsLogsList (Maybe Int32)
ollPageSize
  = lens _ollPageSize (\ s a -> s{_ollPageSize = a}) .
      mapping _Coerce

-- | JSONP
ollCallback :: Lens' OrganizationsLogsList (Maybe Text)
ollCallback
  = lens _ollCallback (\ s a -> s{_ollCallback = a})

instance GoogleRequest OrganizationsLogsList where
        type Rs OrganizationsLogsList = ListLogsResponse
        type Scopes OrganizationsLogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLogsList'{..}
          = go _ollParent _ollXgafv _ollUploadProtocol
              _ollAccessToken
              _ollUploadType
              _ollPageToken
              _ollPageSize
              _ollCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLogsListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Logging.Projects.Logs.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.logs.list@.
module Network.Google.Resource.Logging.Projects.Logs.List
    (
    -- * REST Resource
      ProjectsLogsListResource

    -- * Creating a Request
    , projectsLogsList
    , ProjectsLogsList

    -- * Request Lenses
    , pllParent
    , pllXgafv
    , pllUploadProtocol
    , pllAccessToken
    , pllUploadType
    , pllPageToken
    , pllPageSize
    , pllCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.logs.list@ method which the
-- 'ProjectsLogsList' request conforms to.
type ProjectsLogsListResource =
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
-- /See:/ 'projectsLogsList' smart constructor.
data ProjectsLogsList =
  ProjectsLogsList'
    { _pllParent         :: !Text
    , _pllXgafv          :: !(Maybe Xgafv)
    , _pllUploadProtocol :: !(Maybe Text)
    , _pllAccessToken    :: !(Maybe Text)
    , _pllUploadType     :: !(Maybe Text)
    , _pllPageToken      :: !(Maybe Text)
    , _pllPageSize       :: !(Maybe (Textual Int32))
    , _pllCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllParent'
--
-- * 'pllXgafv'
--
-- * 'pllUploadProtocol'
--
-- * 'pllAccessToken'
--
-- * 'pllUploadType'
--
-- * 'pllPageToken'
--
-- * 'pllPageSize'
--
-- * 'pllCallback'
projectsLogsList
    :: Text -- ^ 'pllParent'
    -> ProjectsLogsList
projectsLogsList pPllParent_ =
  ProjectsLogsList'
    { _pllParent = pPllParent_
    , _pllXgafv = Nothing
    , _pllUploadProtocol = Nothing
    , _pllAccessToken = Nothing
    , _pllUploadType = Nothing
    , _pllPageToken = Nothing
    , _pllPageSize = Nothing
    , _pllCallback = Nothing
    }


-- | Required. The resource name that owns the logs:
-- \"projects\/[PROJECT_ID]\" \"organizations\/[ORGANIZATION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\" \"folders\/[FOLDER_ID]\"
pllParent :: Lens' ProjectsLogsList Text
pllParent
  = lens _pllParent (\ s a -> s{_pllParent = a})

-- | V1 error format.
pllXgafv :: Lens' ProjectsLogsList (Maybe Xgafv)
pllXgafv = lens _pllXgafv (\ s a -> s{_pllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pllUploadProtocol :: Lens' ProjectsLogsList (Maybe Text)
pllUploadProtocol
  = lens _pllUploadProtocol
      (\ s a -> s{_pllUploadProtocol = a})

-- | OAuth access token.
pllAccessToken :: Lens' ProjectsLogsList (Maybe Text)
pllAccessToken
  = lens _pllAccessToken
      (\ s a -> s{_pllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pllUploadType :: Lens' ProjectsLogsList (Maybe Text)
pllUploadType
  = lens _pllUploadType
      (\ s a -> s{_pllUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
pllPageToken :: Lens' ProjectsLogsList (Maybe Text)
pllPageToken
  = lens _pllPageToken (\ s a -> s{_pllPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
pllPageSize :: Lens' ProjectsLogsList (Maybe Int32)
pllPageSize
  = lens _pllPageSize (\ s a -> s{_pllPageSize = a}) .
      mapping _Coerce

-- | JSONP
pllCallback :: Lens' ProjectsLogsList (Maybe Text)
pllCallback
  = lens _pllCallback (\ s a -> s{_pllCallback = a})

instance GoogleRequest ProjectsLogsList where
        type Rs ProjectsLogsList = ListLogsResponse
        type Scopes ProjectsLogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLogsList'{..}
          = go _pllParent _pllXgafv _pllUploadProtocol
              _pllAccessToken
              _pllUploadType
              _pllPageToken
              _pllPageSize
              _pllCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsListResource)
                      mempty

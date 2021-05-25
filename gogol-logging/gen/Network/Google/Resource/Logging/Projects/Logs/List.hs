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
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.logs.list@.
module Network.Google.Resource.Logging.Projects.Logs.List
    (
    -- * REST Resource
      ProjectsLogsListResource

    -- * Creating a Request
    , projectsLogsList
    , ProjectsLogsList

    -- * Request Lenses
    , pParent
    , pXgafv
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pPageToken
    , pPageSize
    , pResourceNames
    , pCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

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
                       QueryParams "resourceNames" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListLogsResponse

-- | Lists the logs in projects, organizations, folders, or billing accounts.
-- Only logs that have entries are listed.
--
-- /See:/ 'projectsLogsList' smart constructor.
data ProjectsLogsList =
  ProjectsLogsList'
    { _pParent :: !Text
    , _pXgafv :: !(Maybe Xgafv)
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pPageToken :: !(Maybe Text)
    , _pPageSize :: !(Maybe (Textual Int32))
    , _pResourceNames :: !(Maybe [Text])
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLogsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pParent'
--
-- * 'pXgafv'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pPageToken'
--
-- * 'pPageSize'
--
-- * 'pResourceNames'
--
-- * 'pCallback'
projectsLogsList
    :: Text -- ^ 'pParent'
    -> ProjectsLogsList
projectsLogsList pPParent_ =
  ProjectsLogsList'
    { _pParent = pPParent_
    , _pXgafv = Nothing
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pPageToken = Nothing
    , _pPageSize = Nothing
    , _pResourceNames = Nothing
    , _pCallback = Nothing
    }


-- | Required. The resource name that owns the logs: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
pParent :: Lens' ProjectsLogsList Text
pParent = lens _pParent (\ s a -> s{_pParent = a})

-- | V1 error format.
pXgafv :: Lens' ProjectsLogsList (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' ProjectsLogsList (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' ProjectsLogsList (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' ProjectsLogsList (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
pPageToken :: Lens' ProjectsLogsList (Maybe Text)
pPageToken
  = lens _pPageToken (\ s a -> s{_pPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
pPageSize :: Lens' ProjectsLogsList (Maybe Int32)
pPageSize
  = lens _pPageSize (\ s a -> s{_pPageSize = a}) .
      mapping _Coerce

-- | Optional. The resource name that owns the logs:
-- projects\/[PROJECT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- organizations\/[ORGANIZATION_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- billingAccounts\/[BILLING_ACCOUNT_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]
-- folders\/[FOLDER_ID]\/locations\/[LOCATION_ID]\/buckets\/[BUCKET_ID]\/views\/[VIEW_ID]To
-- support legacy queries, it could also be: projects\/[PROJECT_ID]
-- organizations\/[ORGANIZATION_ID] billingAccounts\/[BILLING_ACCOUNT_ID]
-- folders\/[FOLDER_ID]
pResourceNames :: Lens' ProjectsLogsList [Text]
pResourceNames
  = lens _pResourceNames
      (\ s a -> s{_pResourceNames = a})
      . _Default
      . _Coerce

-- | JSONP
pCallback :: Lens' ProjectsLogsList (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest ProjectsLogsList where
        type Rs ProjectsLogsList = ListLogsResponse
        type Scopes ProjectsLogsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsLogsList'{..}
          = go _pParent _pXgafv _pUploadProtocol _pAccessToken
              _pUploadType
              _pPageToken
              _pPageSize
              (_pResourceNames ^. _Default)
              _pCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsLogsListResource)
                      mempty

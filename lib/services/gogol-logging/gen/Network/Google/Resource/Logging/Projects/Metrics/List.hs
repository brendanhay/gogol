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
-- Module      : Network.Google.Resource.Logging.Projects.Metrics.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists logs-based metrics.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.list@.
module Network.Google.Resource.Logging.Projects.Metrics.List
    (
    -- * REST Resource
      ProjectsMetricsListResource

    -- * Creating a Request
    , projectsMetricsList
    , ProjectsMetricsList

    -- * Request Lenses
    , pmlParent
    , pmlXgafv
    , pmlUploadProtocol
    , pmlAccessToken
    , pmlUploadType
    , pmlPageToken
    , pmlPageSize
    , pmlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.list@ method which the
-- 'ProjectsMetricsList' request conforms to.
type ProjectsMetricsListResource =
     "v2" :>
       Capture "parent" Text :>
         "metrics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListLogMetricsResponse

-- | Lists logs-based metrics.
--
-- /See:/ 'projectsMetricsList' smart constructor.
data ProjectsMetricsList =
  ProjectsMetricsList'
    { _pmlParent :: !Text
    , _pmlXgafv :: !(Maybe Xgafv)
    , _pmlUploadProtocol :: !(Maybe Text)
    , _pmlAccessToken :: !(Maybe Text)
    , _pmlUploadType :: !(Maybe Text)
    , _pmlPageToken :: !(Maybe Text)
    , _pmlPageSize :: !(Maybe (Textual Int32))
    , _pmlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmlParent'
--
-- * 'pmlXgafv'
--
-- * 'pmlUploadProtocol'
--
-- * 'pmlAccessToken'
--
-- * 'pmlUploadType'
--
-- * 'pmlPageToken'
--
-- * 'pmlPageSize'
--
-- * 'pmlCallback'
projectsMetricsList
    :: Text -- ^ 'pmlParent'
    -> ProjectsMetricsList
projectsMetricsList pPmlParent_ =
  ProjectsMetricsList'
    { _pmlParent = pPmlParent_
    , _pmlXgafv = Nothing
    , _pmlUploadProtocol = Nothing
    , _pmlAccessToken = Nothing
    , _pmlUploadType = Nothing
    , _pmlPageToken = Nothing
    , _pmlPageSize = Nothing
    , _pmlCallback = Nothing
    }


-- | Required. The name of the project containing the metrics:
-- \"projects\/[PROJECT_ID]\"
pmlParent :: Lens' ProjectsMetricsList Text
pmlParent
  = lens _pmlParent (\ s a -> s{_pmlParent = a})

-- | V1 error format.
pmlXgafv :: Lens' ProjectsMetricsList (Maybe Xgafv)
pmlXgafv = lens _pmlXgafv (\ s a -> s{_pmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmlUploadProtocol :: Lens' ProjectsMetricsList (Maybe Text)
pmlUploadProtocol
  = lens _pmlUploadProtocol
      (\ s a -> s{_pmlUploadProtocol = a})

-- | OAuth access token.
pmlAccessToken :: Lens' ProjectsMetricsList (Maybe Text)
pmlAccessToken
  = lens _pmlAccessToken
      (\ s a -> s{_pmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmlUploadType :: Lens' ProjectsMetricsList (Maybe Text)
pmlUploadType
  = lens _pmlUploadType
      (\ s a -> s{_pmlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
pmlPageToken :: Lens' ProjectsMetricsList (Maybe Text)
pmlPageToken
  = lens _pmlPageToken (\ s a -> s{_pmlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
pmlPageSize :: Lens' ProjectsMetricsList (Maybe Int32)
pmlPageSize
  = lens _pmlPageSize (\ s a -> s{_pmlPageSize = a}) .
      mapping _Coerce

-- | JSONP
pmlCallback :: Lens' ProjectsMetricsList (Maybe Text)
pmlCallback
  = lens _pmlCallback (\ s a -> s{_pmlCallback = a})

instance GoogleRequest ProjectsMetricsList where
        type Rs ProjectsMetricsList = ListLogMetricsResponse
        type Scopes ProjectsMetricsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsMetricsList'{..}
          = go _pmlParent _pmlXgafv _pmlUploadProtocol
              _pmlAccessToken
              _pmlUploadType
              _pmlPageToken
              _pmlPageSize
              _pmlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsListResource)
                      mempty

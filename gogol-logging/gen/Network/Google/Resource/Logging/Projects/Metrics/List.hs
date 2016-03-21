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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists logs-based metrics.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.metrics.list@.
module Network.Google.Resource.Logging.Projects.Metrics.List
    (
    -- * REST Resource
      ProjectsMetricsListResource

    -- * Creating a Request
    , projectsMetricsList
    , ProjectsMetricsList

    -- * Request Lenses
    , pmlXgafv
    , pmlUploadProtocol
    , pmlPp
    , pmlAccessToken
    , pmlUploadType
    , pmlBearerToken
    , pmlProjectName
    , pmlPageToken
    , pmlPageSize
    , pmlCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.list@ method which the
-- 'ProjectsMetricsList' request conforms to.
type ProjectsMetricsListResource =
     "v2beta1" :>
       Capture "projectName" Text :>
         "metrics" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListLogMetricsResponse

-- | Lists logs-based metrics.
--
-- /See:/ 'projectsMetricsList' smart constructor.
data ProjectsMetricsList = ProjectsMetricsList'
    { _pmlXgafv          :: !(Maybe Text)
    , _pmlUploadProtocol :: !(Maybe Text)
    , _pmlPp             :: !Bool
    , _pmlAccessToken    :: !(Maybe Text)
    , _pmlUploadType     :: !(Maybe Text)
    , _pmlBearerToken    :: !(Maybe Text)
    , _pmlProjectName    :: !Text
    , _pmlPageToken      :: !(Maybe Text)
    , _pmlPageSize       :: !(Maybe (Textual Int32))
    , _pmlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMetricsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmlXgafv'
--
-- * 'pmlUploadProtocol'
--
-- * 'pmlPp'
--
-- * 'pmlAccessToken'
--
-- * 'pmlUploadType'
--
-- * 'pmlBearerToken'
--
-- * 'pmlProjectName'
--
-- * 'pmlPageToken'
--
-- * 'pmlPageSize'
--
-- * 'pmlCallback'
projectsMetricsList
    :: Text -- ^ 'pmlProjectName'
    -> ProjectsMetricsList
projectsMetricsList pPmlProjectName_ =
    ProjectsMetricsList'
    { _pmlXgafv = Nothing
    , _pmlUploadProtocol = Nothing
    , _pmlPp = True
    , _pmlAccessToken = Nothing
    , _pmlUploadType = Nothing
    , _pmlBearerToken = Nothing
    , _pmlProjectName = pPmlProjectName_
    , _pmlPageToken = Nothing
    , _pmlPageSize = Nothing
    , _pmlCallback = Nothing
    }

-- | V1 error format.
pmlXgafv :: Lens' ProjectsMetricsList (Maybe Text)
pmlXgafv = lens _pmlXgafv (\ s a -> s{_pmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmlUploadProtocol :: Lens' ProjectsMetricsList (Maybe Text)
pmlUploadProtocol
  = lens _pmlUploadProtocol
      (\ s a -> s{_pmlUploadProtocol = a})

-- | Pretty-print response.
pmlPp :: Lens' ProjectsMetricsList Bool
pmlPp = lens _pmlPp (\ s a -> s{_pmlPp = a})

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

-- | OAuth bearer token.
pmlBearerToken :: Lens' ProjectsMetricsList (Maybe Text)
pmlBearerToken
  = lens _pmlBearerToken
      (\ s a -> s{_pmlBearerToken = a})

-- | Required. The resource name of the project containing the metrics.
-- Example: \`\"projects\/my-project-id\"\`.
pmlProjectName :: Lens' ProjectsMetricsList Text
pmlProjectName
  = lens _pmlProjectName
      (\ s a -> s{_pmlProjectName = a})

-- | Optional. If the \`pageToken\` request parameter is supplied, then the
-- next page of results in the set are retrieved. The \`pageToken\`
-- parameter must be set with the value of the \`nextPageToken\` result
-- parameter from the previous request. The value of \`projectName\` must
-- be the same as in the previous request.
pmlPageToken :: Lens' ProjectsMetricsList (Maybe Text)
pmlPageToken
  = lens _pmlPageToken (\ s a -> s{_pmlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Fewer results might be returned. You must check for the
-- \`nextPageToken\` result to determine if additional results are
-- available, which you can retrieve by passing the \`nextPageToken\` value
-- in the \`pageToken\` parameter to the next request.
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
          = go _pmlProjectName _pmlXgafv _pmlUploadProtocol
              (Just _pmlPp)
              _pmlAccessToken
              _pmlUploadType
              _pmlBearerToken
              _pmlPageToken
              _pmlPageSize
              _pmlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsListResource)
                      mempty

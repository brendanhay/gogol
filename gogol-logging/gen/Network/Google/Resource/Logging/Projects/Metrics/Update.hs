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
-- Module      : Network.Google.Resource.Logging.Projects.Metrics.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.update@.
module Network.Google.Resource.Logging.Projects.Metrics.Update
    (
    -- * REST Resource
      ProjectsMetricsUpdateResource

    -- * Creating a Request
    , projectsMetricsUpdate
    , ProjectsMetricsUpdate

    -- * Request Lenses
    , pmuXgafv
    , pmuUploadProtocol
    , pmuAccessToken
    , pmuMetricName
    , pmuUploadType
    , pmuPayload
    , pmuCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.update@ method which the
-- 'ProjectsMetricsUpdate' request conforms to.
type ProjectsMetricsUpdateResource =
     "v2" :>
       Capture "metricName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] LogMetric :> Put '[JSON] LogMetric

-- | Creates or updates a logs-based metric.
--
-- /See:/ 'projectsMetricsUpdate' smart constructor.
data ProjectsMetricsUpdate =
  ProjectsMetricsUpdate'
    { _pmuXgafv :: !(Maybe Xgafv)
    , _pmuUploadProtocol :: !(Maybe Text)
    , _pmuAccessToken :: !(Maybe Text)
    , _pmuMetricName :: !Text
    , _pmuUploadType :: !(Maybe Text)
    , _pmuPayload :: !LogMetric
    , _pmuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMetricsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmuXgafv'
--
-- * 'pmuUploadProtocol'
--
-- * 'pmuAccessToken'
--
-- * 'pmuMetricName'
--
-- * 'pmuUploadType'
--
-- * 'pmuPayload'
--
-- * 'pmuCallback'
projectsMetricsUpdate
    :: Text -- ^ 'pmuMetricName'
    -> LogMetric -- ^ 'pmuPayload'
    -> ProjectsMetricsUpdate
projectsMetricsUpdate pPmuMetricName_ pPmuPayload_ =
  ProjectsMetricsUpdate'
    { _pmuXgafv = Nothing
    , _pmuUploadProtocol = Nothing
    , _pmuAccessToken = Nothing
    , _pmuMetricName = pPmuMetricName_
    , _pmuUploadType = Nothing
    , _pmuPayload = pPmuPayload_
    , _pmuCallback = Nothing
    }


-- | V1 error format.
pmuXgafv :: Lens' ProjectsMetricsUpdate (Maybe Xgafv)
pmuXgafv = lens _pmuXgafv (\ s a -> s{_pmuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmuUploadProtocol :: Lens' ProjectsMetricsUpdate (Maybe Text)
pmuUploadProtocol
  = lens _pmuUploadProtocol
      (\ s a -> s{_pmuUploadProtocol = a})

-- | OAuth access token.
pmuAccessToken :: Lens' ProjectsMetricsUpdate (Maybe Text)
pmuAccessToken
  = lens _pmuAccessToken
      (\ s a -> s{_pmuAccessToken = a})

-- | Required. The resource name of the metric to update:
-- \"projects\/[PROJECT_ID]\/metrics\/[METRIC_ID]\" The updated metric must
-- be provided in the request and it\'s name field must be the same as
-- [METRIC_ID] If the metric does not exist in [PROJECT_ID], then a new
-- metric is created.
pmuMetricName :: Lens' ProjectsMetricsUpdate Text
pmuMetricName
  = lens _pmuMetricName
      (\ s a -> s{_pmuMetricName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmuUploadType :: Lens' ProjectsMetricsUpdate (Maybe Text)
pmuUploadType
  = lens _pmuUploadType
      (\ s a -> s{_pmuUploadType = a})

-- | Multipart request metadata.
pmuPayload :: Lens' ProjectsMetricsUpdate LogMetric
pmuPayload
  = lens _pmuPayload (\ s a -> s{_pmuPayload = a})

-- | JSONP
pmuCallback :: Lens' ProjectsMetricsUpdate (Maybe Text)
pmuCallback
  = lens _pmuCallback (\ s a -> s{_pmuCallback = a})

instance GoogleRequest ProjectsMetricsUpdate where
        type Rs ProjectsMetricsUpdate = LogMetric
        type Scopes ProjectsMetricsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient ProjectsMetricsUpdate'{..}
          = go _pmuMetricName _pmuXgafv _pmuUploadProtocol
              _pmuAccessToken
              _pmuUploadType
              _pmuCallback
              (Just AltJSON)
              _pmuPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsUpdateResource)
                      mempty

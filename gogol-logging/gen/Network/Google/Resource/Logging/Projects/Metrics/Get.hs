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
-- Module      : Network.Google.Resource.Logging.Projects.Metrics.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.metrics.get@.
module Network.Google.Resource.Logging.Projects.Metrics.Get
    (
    -- * REST Resource
      ProjectsMetricsGetResource

    -- * Creating a Request
    , projectsMetricsGet
    , ProjectsMetricsGet

    -- * Request Lenses
    , pmgXgafv
    , pmgUploadProtocol
    , pmgAccessToken
    , pmgMetricName
    , pmgUploadType
    , pmgCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.get@ method which the
-- 'ProjectsMetricsGet' request conforms to.
type ProjectsMetricsGetResource =
     "v2" :>
       Capture "metricName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogMetric

-- | Gets a logs-based metric.
--
-- /See:/ 'projectsMetricsGet' smart constructor.
data ProjectsMetricsGet =
  ProjectsMetricsGet'
    { _pmgXgafv          :: !(Maybe Xgafv)
    , _pmgUploadProtocol :: !(Maybe Text)
    , _pmgAccessToken    :: !(Maybe Text)
    , _pmgMetricName     :: !Text
    , _pmgUploadType     :: !(Maybe Text)
    , _pmgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsMetricsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmgXgafv'
--
-- * 'pmgUploadProtocol'
--
-- * 'pmgAccessToken'
--
-- * 'pmgMetricName'
--
-- * 'pmgUploadType'
--
-- * 'pmgCallback'
projectsMetricsGet
    :: Text -- ^ 'pmgMetricName'
    -> ProjectsMetricsGet
projectsMetricsGet pPmgMetricName_ =
  ProjectsMetricsGet'
    { _pmgXgafv = Nothing
    , _pmgUploadProtocol = Nothing
    , _pmgAccessToken = Nothing
    , _pmgMetricName = pPmgMetricName_
    , _pmgUploadType = Nothing
    , _pmgCallback = Nothing
    }

-- | V1 error format.
pmgXgafv :: Lens' ProjectsMetricsGet (Maybe Xgafv)
pmgXgafv = lens _pmgXgafv (\ s a -> s{_pmgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmgUploadProtocol :: Lens' ProjectsMetricsGet (Maybe Text)
pmgUploadProtocol
  = lens _pmgUploadProtocol
      (\ s a -> s{_pmgUploadProtocol = a})

-- | OAuth access token.
pmgAccessToken :: Lens' ProjectsMetricsGet (Maybe Text)
pmgAccessToken
  = lens _pmgAccessToken
      (\ s a -> s{_pmgAccessToken = a})

-- | The resource name of the desired metric:
-- \"projects\/[PROJECT_ID]\/metrics\/[METRIC_ID]\"
pmgMetricName :: Lens' ProjectsMetricsGet Text
pmgMetricName
  = lens _pmgMetricName
      (\ s a -> s{_pmgMetricName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmgUploadType :: Lens' ProjectsMetricsGet (Maybe Text)
pmgUploadType
  = lens _pmgUploadType
      (\ s a -> s{_pmgUploadType = a})

-- | JSONP
pmgCallback :: Lens' ProjectsMetricsGet (Maybe Text)
pmgCallback
  = lens _pmgCallback (\ s a -> s{_pmgCallback = a})

instance GoogleRequest ProjectsMetricsGet where
        type Rs ProjectsMetricsGet = LogMetric
        type Scopes ProjectsMetricsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ProjectsMetricsGet'{..}
          = go _pmgMetricName _pmgXgafv _pmgUploadProtocol
              _pmgAccessToken
              _pmgUploadType
              _pmgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsGetResource)
                      mempty

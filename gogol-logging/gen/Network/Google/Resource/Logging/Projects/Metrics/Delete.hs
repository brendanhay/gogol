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
-- Module      : Network.Google.Resource.Logging.Projects.Metrics.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.projects.metrics.delete@.
module Network.Google.Resource.Logging.Projects.Metrics.Delete
    (
    -- * REST Resource
      ProjectsMetricsDeleteResource

    -- * Creating a Request
    , projectsMetricsDelete
    , ProjectsMetricsDelete

    -- * Request Lenses
    , pmdXgafv
    , pmdUploadProtocol
    , pmdAccessToken
    , pmdMetricName
    , pmdUploadType
    , pmdCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.delete@ method which the
-- 'ProjectsMetricsDelete' request conforms to.
type ProjectsMetricsDeleteResource =
     "v2" :>
       Capture "metricName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a logs-based metric.
--
-- /See:/ 'projectsMetricsDelete' smart constructor.
data ProjectsMetricsDelete =
  ProjectsMetricsDelete'
    { _pmdXgafv :: !(Maybe Xgafv)
    , _pmdUploadProtocol :: !(Maybe Text)
    , _pmdAccessToken :: !(Maybe Text)
    , _pmdMetricName :: !Text
    , _pmdUploadType :: !(Maybe Text)
    , _pmdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMetricsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdXgafv'
--
-- * 'pmdUploadProtocol'
--
-- * 'pmdAccessToken'
--
-- * 'pmdMetricName'
--
-- * 'pmdUploadType'
--
-- * 'pmdCallback'
projectsMetricsDelete
    :: Text -- ^ 'pmdMetricName'
    -> ProjectsMetricsDelete
projectsMetricsDelete pPmdMetricName_ =
  ProjectsMetricsDelete'
    { _pmdXgafv = Nothing
    , _pmdUploadProtocol = Nothing
    , _pmdAccessToken = Nothing
    , _pmdMetricName = pPmdMetricName_
    , _pmdUploadType = Nothing
    , _pmdCallback = Nothing
    }


-- | V1 error format.
pmdXgafv :: Lens' ProjectsMetricsDelete (Maybe Xgafv)
pmdXgafv = lens _pmdXgafv (\ s a -> s{_pmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdUploadProtocol :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdUploadProtocol
  = lens _pmdUploadProtocol
      (\ s a -> s{_pmdUploadProtocol = a})

-- | OAuth access token.
pmdAccessToken :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdAccessToken
  = lens _pmdAccessToken
      (\ s a -> s{_pmdAccessToken = a})

-- | Required. The resource name of the metric to delete:
-- \"projects\/[PROJECT_ID]\/metrics\/[METRIC_ID]\"
pmdMetricName :: Lens' ProjectsMetricsDelete Text
pmdMetricName
  = lens _pmdMetricName
      (\ s a -> s{_pmdMetricName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdUploadType :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdUploadType
  = lens _pmdUploadType
      (\ s a -> s{_pmdUploadType = a})

-- | JSONP
pmdCallback :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdCallback
  = lens _pmdCallback (\ s a -> s{_pmdCallback = a})

instance GoogleRequest ProjectsMetricsDelete where
        type Rs ProjectsMetricsDelete = Empty
        type Scopes ProjectsMetricsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient ProjectsMetricsDelete'{..}
          = go _pmdMetricName _pmdXgafv _pmdUploadProtocol
              _pmdAccessToken
              _pmdUploadType
              _pmdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsDeleteResource)
                      mempty

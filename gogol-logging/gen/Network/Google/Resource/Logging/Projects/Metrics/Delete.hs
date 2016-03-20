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
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.projects.metrics.delete@.
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
    , pmdPp
    , pmdAccessToken
    , pmdMetricName
    , pmdUploadType
    , pmdBearerToken
    , pmdCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.delete@ method which the
-- 'ProjectsMetricsDelete' request conforms to.
type ProjectsMetricsDeleteResource =
     "v2beta1" :>
       Capture "metricName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a logs-based metric.
--
-- /See:/ 'projectsMetricsDelete' smart constructor.
data ProjectsMetricsDelete = ProjectsMetricsDelete
    { _pmdXgafv          :: !(Maybe Text)
    , _pmdUploadProtocol :: !(Maybe Text)
    , _pmdPp             :: !Bool
    , _pmdAccessToken    :: !(Maybe Text)
    , _pmdMetricName     :: !Text
    , _pmdUploadType     :: !(Maybe Text)
    , _pmdBearerToken    :: !(Maybe Text)
    , _pmdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMetricsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdXgafv'
--
-- * 'pmdUploadProtocol'
--
-- * 'pmdPp'
--
-- * 'pmdAccessToken'
--
-- * 'pmdMetricName'
--
-- * 'pmdUploadType'
--
-- * 'pmdBearerToken'
--
-- * 'pmdCallback'
projectsMetricsDelete
    :: Text -- ^ 'pmdMetricName'
    -> ProjectsMetricsDelete
projectsMetricsDelete pPmdMetricName_ =
    ProjectsMetricsDelete
    { _pmdXgafv = Nothing
    , _pmdUploadProtocol = Nothing
    , _pmdPp = True
    , _pmdAccessToken = Nothing
    , _pmdMetricName = pPmdMetricName_
    , _pmdUploadType = Nothing
    , _pmdBearerToken = Nothing
    , _pmdCallback = Nothing
    }

-- | V1 error format.
pmdXgafv :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdXgafv = lens _pmdXgafv (\ s a -> s{_pmdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmdUploadProtocol :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdUploadProtocol
  = lens _pmdUploadProtocol
      (\ s a -> s{_pmdUploadProtocol = a})

-- | Pretty-print response.
pmdPp :: Lens' ProjectsMetricsDelete Bool
pmdPp = lens _pmdPp (\ s a -> s{_pmdPp = a})

-- | OAuth access token.
pmdAccessToken :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdAccessToken
  = lens _pmdAccessToken
      (\ s a -> s{_pmdAccessToken = a})

-- | The resource name of the metric to delete. Example:
-- \`\"projects\/my-project-id\/metrics\/my-metric-id\"\`.
pmdMetricName :: Lens' ProjectsMetricsDelete Text
pmdMetricName
  = lens _pmdMetricName
      (\ s a -> s{_pmdMetricName = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmdUploadType :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdUploadType
  = lens _pmdUploadType
      (\ s a -> s{_pmdUploadType = a})

-- | OAuth bearer token.
pmdBearerToken :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdBearerToken
  = lens _pmdBearerToken
      (\ s a -> s{_pmdBearerToken = a})

-- | JSONP
pmdCallback :: Lens' ProjectsMetricsDelete (Maybe Text)
pmdCallback
  = lens _pmdCallback (\ s a -> s{_pmdCallback = a})

instance GoogleRequest ProjectsMetricsDelete where
        type Rs ProjectsMetricsDelete = Empty
        requestClient ProjectsMetricsDelete{..}
          = go _pmdMetricName _pmdXgafv _pmdUploadProtocol
              (Just _pmdPp)
              _pmdAccessToken
              _pmdUploadType
              _pmdBearerToken
              _pmdCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsDeleteResource)
                      mempty

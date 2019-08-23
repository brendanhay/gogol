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
-- Module      : Network.Google.Resource.Logging.Projects.Metrics.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a logs-based metric.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Stackdriver Logging API Reference> for @logging.projects.metrics.create@.
module Network.Google.Resource.Logging.Projects.Metrics.Create
    (
    -- * REST Resource
      ProjectsMetricsCreateResource

    -- * Creating a Request
    , projectsMetricsCreate
    , ProjectsMetricsCreate

    -- * Request Lenses
    , pmcParent
    , pmcXgafv
    , pmcUploadProtocol
    , pmcAccessToken
    , pmcUploadType
    , pmcPayload
    , pmcCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.projects.metrics.create@ method which the
-- 'ProjectsMetricsCreate' request conforms to.
type ProjectsMetricsCreateResource =
     "v2" :>
       Capture "parent" Text :>
         "metrics" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] LogMetric :> Post '[JSON] LogMetric

-- | Creates a logs-based metric.
--
-- /See:/ 'projectsMetricsCreate' smart constructor.
data ProjectsMetricsCreate =
  ProjectsMetricsCreate'
    { _pmcParent         :: !Text
    , _pmcXgafv          :: !(Maybe Xgafv)
    , _pmcUploadProtocol :: !(Maybe Text)
    , _pmcAccessToken    :: !(Maybe Text)
    , _pmcUploadType     :: !(Maybe Text)
    , _pmcPayload        :: !LogMetric
    , _pmcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMetricsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmcParent'
--
-- * 'pmcXgafv'
--
-- * 'pmcUploadProtocol'
--
-- * 'pmcAccessToken'
--
-- * 'pmcUploadType'
--
-- * 'pmcPayload'
--
-- * 'pmcCallback'
projectsMetricsCreate
    :: Text -- ^ 'pmcParent'
    -> LogMetric -- ^ 'pmcPayload'
    -> ProjectsMetricsCreate
projectsMetricsCreate pPmcParent_ pPmcPayload_ =
  ProjectsMetricsCreate'
    { _pmcParent = pPmcParent_
    , _pmcXgafv = Nothing
    , _pmcUploadProtocol = Nothing
    , _pmcAccessToken = Nothing
    , _pmcUploadType = Nothing
    , _pmcPayload = pPmcPayload_
    , _pmcCallback = Nothing
    }


-- | The resource name of the project in which to create the metric:
-- \"projects\/[PROJECT_ID]\" The new metric must be provided in the
-- request.
pmcParent :: Lens' ProjectsMetricsCreate Text
pmcParent
  = lens _pmcParent (\ s a -> s{_pmcParent = a})

-- | V1 error format.
pmcXgafv :: Lens' ProjectsMetricsCreate (Maybe Xgafv)
pmcXgafv = lens _pmcXgafv (\ s a -> s{_pmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmcUploadProtocol :: Lens' ProjectsMetricsCreate (Maybe Text)
pmcUploadProtocol
  = lens _pmcUploadProtocol
      (\ s a -> s{_pmcUploadProtocol = a})

-- | OAuth access token.
pmcAccessToken :: Lens' ProjectsMetricsCreate (Maybe Text)
pmcAccessToken
  = lens _pmcAccessToken
      (\ s a -> s{_pmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmcUploadType :: Lens' ProjectsMetricsCreate (Maybe Text)
pmcUploadType
  = lens _pmcUploadType
      (\ s a -> s{_pmcUploadType = a})

-- | Multipart request metadata.
pmcPayload :: Lens' ProjectsMetricsCreate LogMetric
pmcPayload
  = lens _pmcPayload (\ s a -> s{_pmcPayload = a})

-- | JSONP
pmcCallback :: Lens' ProjectsMetricsCreate (Maybe Text)
pmcCallback
  = lens _pmcCallback (\ s a -> s{_pmcCallback = a})

instance GoogleRequest ProjectsMetricsCreate where
        type Rs ProjectsMetricsCreate = LogMetric
        type Scopes ProjectsMetricsCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.write"]
        requestClient ProjectsMetricsCreate'{..}
          = go _pmcParent _pmcXgafv _pmcUploadProtocol
              _pmcAccessToken
              _pmcUploadType
              _pmcCallback
              (Just AltJSON)
              _pmcPayload
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMetricsCreateResource)
                      mempty

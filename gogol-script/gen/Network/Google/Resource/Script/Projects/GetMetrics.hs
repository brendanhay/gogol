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
-- Module      : Network.Google.Resource.Script.Projects.GetMetrics
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get metrics data for scripts, such as number of executions and active
-- users.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.getMetrics@.
module Network.Google.Resource.Script.Projects.GetMetrics
    (
    -- * REST Resource
      ProjectsGetMetricsResource

    -- * Creating a Request
    , projectsGetMetrics
    , ProjectsGetMetrics

    -- * Request Lenses
    , pgmXgafv
    , pgmUploadProtocol
    , pgmAccessToken
    , pgmUploadType
    , pgmMetricsGranularity
    , pgmScriptId
    , pgmMetricsFilterDeploymentId
    , pgmCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.getMetrics@ method which the
-- 'ProjectsGetMetrics' request conforms to.
type ProjectsGetMetricsResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "metrics" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "metricsGranularity" Text :>
                       QueryParam "metricsFilter.deploymentId" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Metrics

-- | Get metrics data for scripts, such as number of executions and active
-- users.
--
-- /See:/ 'projectsGetMetrics' smart constructor.
data ProjectsGetMetrics =
  ProjectsGetMetrics'
    { _pgmXgafv                     :: !(Maybe Xgafv)
    , _pgmUploadProtocol            :: !(Maybe Text)
    , _pgmAccessToken               :: !(Maybe Text)
    , _pgmUploadType                :: !(Maybe Text)
    , _pgmMetricsGranularity        :: !(Maybe Text)
    , _pgmScriptId                  :: !Text
    , _pgmMetricsFilterDeploymentId :: !(Maybe Text)
    , _pgmCallback                  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGetMetrics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgmXgafv'
--
-- * 'pgmUploadProtocol'
--
-- * 'pgmAccessToken'
--
-- * 'pgmUploadType'
--
-- * 'pgmMetricsGranularity'
--
-- * 'pgmScriptId'
--
-- * 'pgmMetricsFilterDeploymentId'
--
-- * 'pgmCallback'
projectsGetMetrics
    :: Text -- ^ 'pgmScriptId'
    -> ProjectsGetMetrics
projectsGetMetrics pPgmScriptId_ =
  ProjectsGetMetrics'
    { _pgmXgafv = Nothing
    , _pgmUploadProtocol = Nothing
    , _pgmAccessToken = Nothing
    , _pgmUploadType = Nothing
    , _pgmMetricsGranularity = Nothing
    , _pgmScriptId = pPgmScriptId_
    , _pgmMetricsFilterDeploymentId = Nothing
    , _pgmCallback = Nothing
    }


-- | V1 error format.
pgmXgafv :: Lens' ProjectsGetMetrics (Maybe Xgafv)
pgmXgafv = lens _pgmXgafv (\ s a -> s{_pgmXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgmUploadProtocol :: Lens' ProjectsGetMetrics (Maybe Text)
pgmUploadProtocol
  = lens _pgmUploadProtocol
      (\ s a -> s{_pgmUploadProtocol = a})

-- | OAuth access token.
pgmAccessToken :: Lens' ProjectsGetMetrics (Maybe Text)
pgmAccessToken
  = lens _pgmAccessToken
      (\ s a -> s{_pgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgmUploadType :: Lens' ProjectsGetMetrics (Maybe Text)
pgmUploadType
  = lens _pgmUploadType
      (\ s a -> s{_pgmUploadType = a})

-- | Required field indicating what granularity of metrics are returned.
pgmMetricsGranularity :: Lens' ProjectsGetMetrics (Maybe Text)
pgmMetricsGranularity
  = lens _pgmMetricsGranularity
      (\ s a -> s{_pgmMetricsGranularity = a})

-- | Required field indicating the script to get metrics for.
pgmScriptId :: Lens' ProjectsGetMetrics Text
pgmScriptId
  = lens _pgmScriptId (\ s a -> s{_pgmScriptId = a})

-- | Optional field indicating a specific deployment to retrieve metrics
-- from.
pgmMetricsFilterDeploymentId :: Lens' ProjectsGetMetrics (Maybe Text)
pgmMetricsFilterDeploymentId
  = lens _pgmMetricsFilterDeploymentId
      (\ s a -> s{_pgmMetricsFilterDeploymentId = a})

-- | JSONP
pgmCallback :: Lens' ProjectsGetMetrics (Maybe Text)
pgmCallback
  = lens _pgmCallback (\ s a -> s{_pgmCallback = a})

instance GoogleRequest ProjectsGetMetrics where
        type Rs ProjectsGetMetrics = Metrics
        type Scopes ProjectsGetMetrics =
             '["https://www.googleapis.com/auth/script.metrics"]
        requestClient ProjectsGetMetrics'{..}
          = go _pgmScriptId _pgmXgafv _pgmUploadProtocol
              _pgmAccessToken
              _pgmUploadType
              _pgmMetricsGranularity
              _pgmMetricsFilterDeploymentId
              _pgmCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetMetricsResource)
                      mempty

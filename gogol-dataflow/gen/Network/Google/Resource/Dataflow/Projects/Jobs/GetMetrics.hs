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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request the job status.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsGetMetrics@.
module Network.Google.Resource.Dataflow.Projects.Jobs.GetMetrics
    (
    -- * REST Resource
      ProjectsJobsGetMetricsResource

    -- * Creating a Request
    , projectsJobsGetMetrics'
    , ProjectsJobsGetMetrics'

    -- * Request Lenses
    , pjgmXgafv
    , pjgmQuotaUser
    , pjgmPrettyPrint
    , pjgmJobId
    , pjgmUploadProtocol
    , pjgmStartTime
    , pjgmPp
    , pjgmAccessToken
    , pjgmUploadType
    , pjgmBearerToken
    , pjgmKey
    , pjgmProjectId
    , pjgmOAuthToken
    , pjgmFields
    , pjgmCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsGetMetrics@ method which the
-- 'ProjectsJobsGetMetrics'' request conforms to.
type ProjectsJobsGetMetricsResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "metrics" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "startTime" Text :>
                       QueryParam "pp" Bool :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" AuthKey :>
                                         Header "Authorization" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] JobMetrics

-- | Request the job status.
--
-- /See:/ 'projectsJobsGetMetrics'' smart constructor.
data ProjectsJobsGetMetrics' = ProjectsJobsGetMetrics'
    { _pjgmXgafv          :: !(Maybe Text)
    , _pjgmQuotaUser      :: !(Maybe Text)
    , _pjgmPrettyPrint    :: !Bool
    , _pjgmJobId          :: !Text
    , _pjgmUploadProtocol :: !(Maybe Text)
    , _pjgmStartTime      :: !(Maybe Text)
    , _pjgmPp             :: !Bool
    , _pjgmAccessToken    :: !(Maybe Text)
    , _pjgmUploadType     :: !(Maybe Text)
    , _pjgmBearerToken    :: !(Maybe Text)
    , _pjgmKey            :: !(Maybe AuthKey)
    , _pjgmProjectId      :: !Text
    , _pjgmOAuthToken     :: !(Maybe OAuthToken)
    , _pjgmFields         :: !(Maybe Text)
    , _pjgmCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsGetMetrics'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgmXgafv'
--
-- * 'pjgmQuotaUser'
--
-- * 'pjgmPrettyPrint'
--
-- * 'pjgmJobId'
--
-- * 'pjgmUploadProtocol'
--
-- * 'pjgmStartTime'
--
-- * 'pjgmPp'
--
-- * 'pjgmAccessToken'
--
-- * 'pjgmUploadType'
--
-- * 'pjgmBearerToken'
--
-- * 'pjgmKey'
--
-- * 'pjgmProjectId'
--
-- * 'pjgmOAuthToken'
--
-- * 'pjgmFields'
--
-- * 'pjgmCallback'
projectsJobsGetMetrics'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsGetMetrics'
projectsJobsGetMetrics' pPjgmJobId_ pPjgmProjectId_ =
    ProjectsJobsGetMetrics'
    { _pjgmXgafv = Nothing
    , _pjgmQuotaUser = Nothing
    , _pjgmPrettyPrint = True
    , _pjgmJobId = pPjgmJobId_
    , _pjgmUploadProtocol = Nothing
    , _pjgmStartTime = Nothing
    , _pjgmPp = True
    , _pjgmAccessToken = Nothing
    , _pjgmUploadType = Nothing
    , _pjgmBearerToken = Nothing
    , _pjgmKey = Nothing
    , _pjgmProjectId = pPjgmProjectId_
    , _pjgmOAuthToken = Nothing
    , _pjgmFields = Nothing
    , _pjgmCallback = Nothing
    }

-- | V1 error format.
pjgmXgafv :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmXgafv
  = lens _pjgmXgafv (\ s a -> s{_pjgmXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjgmQuotaUser :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmQuotaUser
  = lens _pjgmQuotaUser
      (\ s a -> s{_pjgmQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjgmPrettyPrint :: Lens' ProjectsJobsGetMetrics' Bool
pjgmPrettyPrint
  = lens _pjgmPrettyPrint
      (\ s a -> s{_pjgmPrettyPrint = a})

-- | The job to get messages for.
pjgmJobId :: Lens' ProjectsJobsGetMetrics' Text
pjgmJobId
  = lens _pjgmJobId (\ s a -> s{_pjgmJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgmUploadProtocol :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmUploadProtocol
  = lens _pjgmUploadProtocol
      (\ s a -> s{_pjgmUploadProtocol = a})

-- | Return only metric data that has changed since this time. Default is to
-- return all information about all metrics for the job.
pjgmStartTime :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmStartTime
  = lens _pjgmStartTime
      (\ s a -> s{_pjgmStartTime = a})

-- | Pretty-print response.
pjgmPp :: Lens' ProjectsJobsGetMetrics' Bool
pjgmPp = lens _pjgmPp (\ s a -> s{_pjgmPp = a})

-- | OAuth access token.
pjgmAccessToken :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmAccessToken
  = lens _pjgmAccessToken
      (\ s a -> s{_pjgmAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgmUploadType :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmUploadType
  = lens _pjgmUploadType
      (\ s a -> s{_pjgmUploadType = a})

-- | OAuth bearer token.
pjgmBearerToken :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmBearerToken
  = lens _pjgmBearerToken
      (\ s a -> s{_pjgmBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjgmKey :: Lens' ProjectsJobsGetMetrics' (Maybe AuthKey)
pjgmKey = lens _pjgmKey (\ s a -> s{_pjgmKey = a})

-- | A project id.
pjgmProjectId :: Lens' ProjectsJobsGetMetrics' Text
pjgmProjectId
  = lens _pjgmProjectId
      (\ s a -> s{_pjgmProjectId = a})

-- | OAuth 2.0 token for the current user.
pjgmOAuthToken :: Lens' ProjectsJobsGetMetrics' (Maybe OAuthToken)
pjgmOAuthToken
  = lens _pjgmOAuthToken
      (\ s a -> s{_pjgmOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjgmFields :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmFields
  = lens _pjgmFields (\ s a -> s{_pjgmFields = a})

-- | JSONP
pjgmCallback :: Lens' ProjectsJobsGetMetrics' (Maybe Text)
pjgmCallback
  = lens _pjgmCallback (\ s a -> s{_pjgmCallback = a})

instance GoogleAuth ProjectsJobsGetMetrics' where
        _AuthKey = pjgmKey . _Just
        _AuthToken = pjgmOAuthToken . _Just

instance GoogleRequest ProjectsJobsGetMetrics' where
        type Rs ProjectsJobsGetMetrics' = JobMetrics
        request = requestWith dataflowRequest
        requestWith rq ProjectsJobsGetMetrics'{..}
          = go _pjgmProjectId _pjgmJobId _pjgmXgafv
              _pjgmUploadProtocol
              _pjgmStartTime
              (Just _pjgmPp)
              _pjgmAccessToken
              _pjgmUploadType
              _pjgmBearerToken
              _pjgmCallback
              _pjgmQuotaUser
              (Just _pjgmPrettyPrint)
              _pjgmFields
              _pjgmKey
              _pjgmOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy ProjectsJobsGetMetricsResource)
                      rq

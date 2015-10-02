{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request the job status.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsMessagesList@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Messages.List
    (
    -- * REST Resource
      ProjectsJobsMessagesListResource

    -- * Creating a Request
    , projectsJobsMessagesList'
    , ProjectsJobsMessagesList'

    -- * Request Lenses
    , pjmlXgafv
    , pjmlQuotaUser
    , pjmlPrettyPrint
    , pjmlJobId
    , pjmlUploadProtocol
    , pjmlStartTime
    , pjmlPp
    , pjmlAccessToken
    , pjmlUploadType
    , pjmlBearerToken
    , pjmlKey
    , pjmlEndTime
    , pjmlMinimumImportance
    , pjmlPageToken
    , pjmlProjectId
    , pjmlOAuthToken
    , pjmlPageSize
    , pjmlFields
    , pjmlCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsMessagesList@ which the
-- 'ProjectsJobsMessagesList'' request conforms to.
type ProjectsJobsMessagesListResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "messages" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "startTime" Text :>
                           QueryParam "pp" Bool :>
                             QueryParam "access_token" Text :>
                               QueryParam "uploadType" Text :>
                                 QueryParam "bearer_token" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "endTime" Text :>
                                       QueryParam "minimumImportance" Text :>
                                         QueryParam "pageToken" Text :>
                                           QueryParam "oauth_token" OAuthToken
                                             :>
                                             QueryParam "pageSize" Int32 :>
                                               QueryParam "fields" Text :>
                                                 QueryParam "callback" Text :>
                                                   QueryParam "alt" AltJSON :>
                                                     Get '[JSON]
                                                       ListJobMessagesResponse

-- | Request the job status.
--
-- /See:/ 'projectsJobsMessagesList'' smart constructor.
data ProjectsJobsMessagesList' = ProjectsJobsMessagesList'
    { _pjmlXgafv             :: !(Maybe Text)
    , _pjmlQuotaUser         :: !(Maybe Text)
    , _pjmlPrettyPrint       :: !Bool
    , _pjmlJobId             :: !Text
    , _pjmlUploadProtocol    :: !(Maybe Text)
    , _pjmlStartTime         :: !(Maybe Text)
    , _pjmlPp                :: !Bool
    , _pjmlAccessToken       :: !(Maybe Text)
    , _pjmlUploadType        :: !(Maybe Text)
    , _pjmlBearerToken       :: !(Maybe Text)
    , _pjmlKey               :: !(Maybe Key)
    , _pjmlEndTime           :: !(Maybe Text)
    , _pjmlMinimumImportance :: !(Maybe Text)
    , _pjmlPageToken         :: !(Maybe Text)
    , _pjmlProjectId         :: !Text
    , _pjmlOAuthToken        :: !(Maybe OAuthToken)
    , _pjmlPageSize          :: !(Maybe Int32)
    , _pjmlFields            :: !(Maybe Text)
    , _pjmlCallback          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsMessagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjmlXgafv'
--
-- * 'pjmlQuotaUser'
--
-- * 'pjmlPrettyPrint'
--
-- * 'pjmlJobId'
--
-- * 'pjmlUploadProtocol'
--
-- * 'pjmlStartTime'
--
-- * 'pjmlPp'
--
-- * 'pjmlAccessToken'
--
-- * 'pjmlUploadType'
--
-- * 'pjmlBearerToken'
--
-- * 'pjmlKey'
--
-- * 'pjmlEndTime'
--
-- * 'pjmlMinimumImportance'
--
-- * 'pjmlPageToken'
--
-- * 'pjmlProjectId'
--
-- * 'pjmlOAuthToken'
--
-- * 'pjmlPageSize'
--
-- * 'pjmlFields'
--
-- * 'pjmlCallback'
projectsJobsMessagesList'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsMessagesList'
projectsJobsMessagesList' pPjmlJobId_ pPjmlProjectId_ =
    ProjectsJobsMessagesList'
    { _pjmlXgafv = Nothing
    , _pjmlQuotaUser = Nothing
    , _pjmlPrettyPrint = True
    , _pjmlJobId = pPjmlJobId_
    , _pjmlUploadProtocol = Nothing
    , _pjmlStartTime = Nothing
    , _pjmlPp = True
    , _pjmlAccessToken = Nothing
    , _pjmlUploadType = Nothing
    , _pjmlBearerToken = Nothing
    , _pjmlKey = Nothing
    , _pjmlEndTime = Nothing
    , _pjmlMinimumImportance = Nothing
    , _pjmlPageToken = Nothing
    , _pjmlProjectId = pPjmlProjectId_
    , _pjmlOAuthToken = Nothing
    , _pjmlPageSize = Nothing
    , _pjmlFields = Nothing
    , _pjmlCallback = Nothing
    }

-- | V1 error format.
pjmlXgafv :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlXgafv
  = lens _pjmlXgafv (\ s a -> s{_pjmlXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjmlQuotaUser :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlQuotaUser
  = lens _pjmlQuotaUser
      (\ s a -> s{_pjmlQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjmlPrettyPrint :: Lens' ProjectsJobsMessagesList' Bool
pjmlPrettyPrint
  = lens _pjmlPrettyPrint
      (\ s a -> s{_pjmlPrettyPrint = a})

-- | The job to get messages about.
pjmlJobId :: Lens' ProjectsJobsMessagesList' Text
pjmlJobId
  = lens _pjmlJobId (\ s a -> s{_pjmlJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjmlUploadProtocol :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlUploadProtocol
  = lens _pjmlUploadProtocol
      (\ s a -> s{_pjmlUploadProtocol = a})

-- | If specified, return only messages with timestamps >= start_time. The
-- default is the job creation time (i.e. beginning of messages).
pjmlStartTime :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlStartTime
  = lens _pjmlStartTime
      (\ s a -> s{_pjmlStartTime = a})

-- | Pretty-print response.
pjmlPp :: Lens' ProjectsJobsMessagesList' Bool
pjmlPp = lens _pjmlPp (\ s a -> s{_pjmlPp = a})

-- | OAuth access token.
pjmlAccessToken :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlAccessToken
  = lens _pjmlAccessToken
      (\ s a -> s{_pjmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjmlUploadType :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlUploadType
  = lens _pjmlUploadType
      (\ s a -> s{_pjmlUploadType = a})

-- | OAuth bearer token.
pjmlBearerToken :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlBearerToken
  = lens _pjmlBearerToken
      (\ s a -> s{_pjmlBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjmlKey :: Lens' ProjectsJobsMessagesList' (Maybe Key)
pjmlKey = lens _pjmlKey (\ s a -> s{_pjmlKey = a})

-- | Return only messages with timestamps \< end_time. The default is now
-- (i.e. return up to the latest messages available).
pjmlEndTime :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlEndTime
  = lens _pjmlEndTime (\ s a -> s{_pjmlEndTime = a})

-- | Filter to only get messages with importance >= level
pjmlMinimumImportance :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlMinimumImportance
  = lens _pjmlMinimumImportance
      (\ s a -> s{_pjmlMinimumImportance = a})

-- | If supplied, this should be the value of next_page_token returned by an
-- earlier call. This will cause the next page of results to be returned.
pjmlPageToken :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlPageToken
  = lens _pjmlPageToken
      (\ s a -> s{_pjmlPageToken = a})

-- | A project id.
pjmlProjectId :: Lens' ProjectsJobsMessagesList' Text
pjmlProjectId
  = lens _pjmlProjectId
      (\ s a -> s{_pjmlProjectId = a})

-- | OAuth 2.0 token for the current user.
pjmlOAuthToken :: Lens' ProjectsJobsMessagesList' (Maybe OAuthToken)
pjmlOAuthToken
  = lens _pjmlOAuthToken
      (\ s a -> s{_pjmlOAuthToken = a})

-- | If specified, determines the maximum number of messages to return. If
-- unspecified, the service may choose an appropriate default, or may
-- return an arbitrarily large number of results.
pjmlPageSize :: Lens' ProjectsJobsMessagesList' (Maybe Int32)
pjmlPageSize
  = lens _pjmlPageSize (\ s a -> s{_pjmlPageSize = a})

-- | Selector specifying which fields to include in a partial response.
pjmlFields :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlFields
  = lens _pjmlFields (\ s a -> s{_pjmlFields = a})

-- | JSONP
pjmlCallback :: Lens' ProjectsJobsMessagesList' (Maybe Text)
pjmlCallback
  = lens _pjmlCallback (\ s a -> s{_pjmlCallback = a})

instance GoogleAuth ProjectsJobsMessagesList' where
        authKey = pjmlKey . _Just
        authToken = pjmlOAuthToken . _Just

instance GoogleRequest ProjectsJobsMessagesList'
         where
        type Rs ProjectsJobsMessagesList' =
             ListJobMessagesResponse
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsMessagesList'{..}
          = go _pjmlXgafv _pjmlQuotaUser
              (Just _pjmlPrettyPrint)
              _pjmlJobId
              _pjmlUploadProtocol
              _pjmlStartTime
              (Just _pjmlPp)
              _pjmlAccessToken
              _pjmlUploadType
              _pjmlBearerToken
              _pjmlKey
              _pjmlEndTime
              _pjmlMinimumImportance
              _pjmlPageToken
              _pjmlProjectId
              _pjmlOAuthToken
              _pjmlPageSize
              _pjmlFields
              _pjmlCallback
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsMessagesListResource)
                      r
                      u

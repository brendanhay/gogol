{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.ReportStatus
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsWorkItemsReportStatus@.
module Dataflow.Projects.Jobs.WorkItems.ReportStatus
    (
    -- * REST Resource
      ProjectsJobsWorkItemsReportStatusAPI

    -- * Creating a Request
    , projectsJobsWorkItemsReportStatus
    , ProjectsJobsWorkItemsReportStatus

    -- * Request Lenses
    , pjwirsXgafv
    , pjwirsQuotaUser
    , pjwirsPrettyPrint
    , pjwirsJobId
    , pjwirsUploadProtocol
    , pjwirsPp
    , pjwirsAccessToken
    , pjwirsUploadType
    , pjwirsBearerToken
    , pjwirsKey
    , pjwirsProjectId
    , pjwirsOauthToken
    , pjwirsFields
    , pjwirsCallback
    , pjwirsAlt
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsWorkItemsReportStatus@ which the
-- 'ProjectsJobsWorkItemsReportStatus' request conforms to.
type ProjectsJobsWorkItemsReportStatusAPI =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "workItems:reportStatus" :>
                 Post '[JSON] ReportWorkItemStatusResponse

-- | Reports the status of dataflow WorkItems leased by a worker.
--
-- /See:/ 'projectsJobsWorkItemsReportStatus' smart constructor.
data ProjectsJobsWorkItemsReportStatus = ProjectsJobsWorkItemsReportStatus
    { _pjwirsXgafv          :: !(Maybe Text)
    , _pjwirsQuotaUser      :: !(Maybe Text)
    , _pjwirsPrettyPrint    :: !Bool
    , _pjwirsJobId          :: !Text
    , _pjwirsUploadProtocol :: !(Maybe Text)
    , _pjwirsPp             :: !Bool
    , _pjwirsAccessToken    :: !(Maybe Text)
    , _pjwirsUploadType     :: !(Maybe Text)
    , _pjwirsBearerToken    :: !(Maybe Text)
    , _pjwirsKey            :: !(Maybe Text)
    , _pjwirsProjectId      :: !Text
    , _pjwirsOauthToken     :: !(Maybe Text)
    , _pjwirsFields         :: !(Maybe Text)
    , _pjwirsCallback       :: !(Maybe Text)
    , _pjwirsAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsWorkItemsReportStatus'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjwirsXgafv'
--
-- * 'pjwirsQuotaUser'
--
-- * 'pjwirsPrettyPrint'
--
-- * 'pjwirsJobId'
--
-- * 'pjwirsUploadProtocol'
--
-- * 'pjwirsPp'
--
-- * 'pjwirsAccessToken'
--
-- * 'pjwirsUploadType'
--
-- * 'pjwirsBearerToken'
--
-- * 'pjwirsKey'
--
-- * 'pjwirsProjectId'
--
-- * 'pjwirsOauthToken'
--
-- * 'pjwirsFields'
--
-- * 'pjwirsCallback'
--
-- * 'pjwirsAlt'
projectsJobsWorkItemsReportStatus
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsWorkItemsReportStatus
projectsJobsWorkItemsReportStatus pPjwirsJobId_ pPjwirsProjectId_ =
    ProjectsJobsWorkItemsReportStatus
    { _pjwirsXgafv = Nothing
    , _pjwirsQuotaUser = Nothing
    , _pjwirsPrettyPrint = True
    , _pjwirsJobId = pPjwirsJobId_
    , _pjwirsUploadProtocol = Nothing
    , _pjwirsPp = True
    , _pjwirsAccessToken = Nothing
    , _pjwirsUploadType = Nothing
    , _pjwirsBearerToken = Nothing
    , _pjwirsKey = Nothing
    , _pjwirsProjectId = pPjwirsProjectId_
    , _pjwirsOauthToken = Nothing
    , _pjwirsFields = Nothing
    , _pjwirsCallback = Nothing
    , _pjwirsAlt = "json"
    }

-- | V1 error format.
pjwirsXgafv :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsXgafv
  = lens _pjwirsXgafv (\ s a -> s{_pjwirsXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjwirsQuotaUser :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsQuotaUser
  = lens _pjwirsQuotaUser
      (\ s a -> s{_pjwirsQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjwirsPrettyPrint :: Lens' ProjectsJobsWorkItemsReportStatus' Bool
pjwirsPrettyPrint
  = lens _pjwirsPrettyPrint
      (\ s a -> s{_pjwirsPrettyPrint = a})

-- | The job which the WorkItem is part of.
pjwirsJobId :: Lens' ProjectsJobsWorkItemsReportStatus' Text
pjwirsJobId
  = lens _pjwirsJobId (\ s a -> s{_pjwirsJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjwirsUploadProtocol :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsUploadProtocol
  = lens _pjwirsUploadProtocol
      (\ s a -> s{_pjwirsUploadProtocol = a})

-- | Pretty-print response.
pjwirsPp :: Lens' ProjectsJobsWorkItemsReportStatus' Bool
pjwirsPp = lens _pjwirsPp (\ s a -> s{_pjwirsPp = a})

-- | OAuth access token.
pjwirsAccessToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsAccessToken
  = lens _pjwirsAccessToken
      (\ s a -> s{_pjwirsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjwirsUploadType :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsUploadType
  = lens _pjwirsUploadType
      (\ s a -> s{_pjwirsUploadType = a})

-- | OAuth bearer token.
pjwirsBearerToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsBearerToken
  = lens _pjwirsBearerToken
      (\ s a -> s{_pjwirsBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjwirsKey :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsKey
  = lens _pjwirsKey (\ s a -> s{_pjwirsKey = a})

-- | The project which owns the WorkItem\'s job.
pjwirsProjectId :: Lens' ProjectsJobsWorkItemsReportStatus' Text
pjwirsProjectId
  = lens _pjwirsProjectId
      (\ s a -> s{_pjwirsProjectId = a})

-- | OAuth 2.0 token for the current user.
pjwirsOauthToken :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsOauthToken
  = lens _pjwirsOauthToken
      (\ s a -> s{_pjwirsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjwirsFields :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsFields
  = lens _pjwirsFields (\ s a -> s{_pjwirsFields = a})

-- | JSONP
pjwirsCallback :: Lens' ProjectsJobsWorkItemsReportStatus' (Maybe Text)
pjwirsCallback
  = lens _pjwirsCallback
      (\ s a -> s{_pjwirsCallback = a})

-- | Data format for response.
pjwirsAlt :: Lens' ProjectsJobsWorkItemsReportStatus' Text
pjwirsAlt
  = lens _pjwirsAlt (\ s a -> s{_pjwirsAlt = a})

instance GoogleRequest
         ProjectsJobsWorkItemsReportStatus' where
        type Rs ProjectsJobsWorkItemsReportStatus' =
             ReportWorkItemStatusResponse
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u
          ProjectsJobsWorkItemsReportStatus{..}
          = go _pjwirsXgafv _pjwirsQuotaUser _pjwirsPrettyPrint
              _pjwirsJobId
              _pjwirsUploadProtocol
              _pjwirsPp
              _pjwirsAccessToken
              _pjwirsUploadType
              _pjwirsBearerToken
              _pjwirsKey
              _pjwirsProjectId
              _pjwirsOauthToken
              _pjwirsFields
              _pjwirsCallback
              _pjwirsAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsWorkItemsReportStatusAPI)
                      r
                      u

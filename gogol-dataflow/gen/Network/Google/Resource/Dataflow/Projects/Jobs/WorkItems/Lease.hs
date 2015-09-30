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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Leases a dataflow WorkItem to run.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsWorkItemsLease@.
module Network.Google.Resource.Dataflow.Projects.Jobs.WorkItems.Lease
    (
    -- * REST Resource
      ProjectsJobsWorkItemsLeaseResource

    -- * Creating a Request
    , projectsJobsWorkItemsLease'
    , ProjectsJobsWorkItemsLease'

    -- * Request Lenses
    , pjwilXgafv
    , pjwilQuotaUser
    , pjwilPrettyPrint
    , pjwilJobId
    , pjwilUploadProtocol
    , pjwilPp
    , pjwilAccessToken
    , pjwilUploadType
    , pjwilBearerToken
    , pjwilKey
    , pjwilProjectId
    , pjwilOauthToken
    , pjwilFields
    , pjwilCallback
    , pjwilAlt
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsWorkItemsLease@ which the
-- 'ProjectsJobsWorkItemsLease'' request conforms to.
type ProjectsJobsWorkItemsLeaseResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               "workItems:lease" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "pp" Bool :>
                           QueryParam "access_token" Text :>
                             QueryParam "uploadType" Text :>
                               QueryParam "bearer_token" Text :>
                                 QueryParam "key" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "fields" Text :>
                                       QueryParam "callback" Text :>
                                         QueryParam "alt" Text :>
                                           Post '[JSON] LeaseWorkItemResponse

-- | Leases a dataflow WorkItem to run.
--
-- /See:/ 'projectsJobsWorkItemsLease'' smart constructor.
data ProjectsJobsWorkItemsLease' = ProjectsJobsWorkItemsLease'
    { _pjwilXgafv          :: !(Maybe Text)
    , _pjwilQuotaUser      :: !(Maybe Text)
    , _pjwilPrettyPrint    :: !Bool
    , _pjwilJobId          :: !Text
    , _pjwilUploadProtocol :: !(Maybe Text)
    , _pjwilPp             :: !Bool
    , _pjwilAccessToken    :: !(Maybe Text)
    , _pjwilUploadType     :: !(Maybe Text)
    , _pjwilBearerToken    :: !(Maybe Text)
    , _pjwilKey            :: !(Maybe Text)
    , _pjwilProjectId      :: !Text
    , _pjwilOauthToken     :: !(Maybe Text)
    , _pjwilFields         :: !(Maybe Text)
    , _pjwilCallback       :: !(Maybe Text)
    , _pjwilAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsWorkItemsLease'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjwilXgafv'
--
-- * 'pjwilQuotaUser'
--
-- * 'pjwilPrettyPrint'
--
-- * 'pjwilJobId'
--
-- * 'pjwilUploadProtocol'
--
-- * 'pjwilPp'
--
-- * 'pjwilAccessToken'
--
-- * 'pjwilUploadType'
--
-- * 'pjwilBearerToken'
--
-- * 'pjwilKey'
--
-- * 'pjwilProjectId'
--
-- * 'pjwilOauthToken'
--
-- * 'pjwilFields'
--
-- * 'pjwilCallback'
--
-- * 'pjwilAlt'
projectsJobsWorkItemsLease'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsWorkItemsLease'
projectsJobsWorkItemsLease' pPjwilJobId_ pPjwilProjectId_ =
    ProjectsJobsWorkItemsLease'
    { _pjwilXgafv = Nothing
    , _pjwilQuotaUser = Nothing
    , _pjwilPrettyPrint = True
    , _pjwilJobId = pPjwilJobId_
    , _pjwilUploadProtocol = Nothing
    , _pjwilPp = True
    , _pjwilAccessToken = Nothing
    , _pjwilUploadType = Nothing
    , _pjwilBearerToken = Nothing
    , _pjwilKey = Nothing
    , _pjwilProjectId = pPjwilProjectId_
    , _pjwilOauthToken = Nothing
    , _pjwilFields = Nothing
    , _pjwilCallback = Nothing
    , _pjwilAlt = "json"
    }

-- | V1 error format.
pjwilXgafv :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilXgafv
  = lens _pjwilXgafv (\ s a -> s{_pjwilXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjwilQuotaUser :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilQuotaUser
  = lens _pjwilQuotaUser
      (\ s a -> s{_pjwilQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjwilPrettyPrint :: Lens' ProjectsJobsWorkItemsLease' Bool
pjwilPrettyPrint
  = lens _pjwilPrettyPrint
      (\ s a -> s{_pjwilPrettyPrint = a})

-- | Identifies the workflow job this worker belongs to.
pjwilJobId :: Lens' ProjectsJobsWorkItemsLease' Text
pjwilJobId
  = lens _pjwilJobId (\ s a -> s{_pjwilJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjwilUploadProtocol :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilUploadProtocol
  = lens _pjwilUploadProtocol
      (\ s a -> s{_pjwilUploadProtocol = a})

-- | Pretty-print response.
pjwilPp :: Lens' ProjectsJobsWorkItemsLease' Bool
pjwilPp = lens _pjwilPp (\ s a -> s{_pjwilPp = a})

-- | OAuth access token.
pjwilAccessToken :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilAccessToken
  = lens _pjwilAccessToken
      (\ s a -> s{_pjwilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjwilUploadType :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilUploadType
  = lens _pjwilUploadType
      (\ s a -> s{_pjwilUploadType = a})

-- | OAuth bearer token.
pjwilBearerToken :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilBearerToken
  = lens _pjwilBearerToken
      (\ s a -> s{_pjwilBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjwilKey :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilKey = lens _pjwilKey (\ s a -> s{_pjwilKey = a})

-- | Identifies the project this worker belongs to.
pjwilProjectId :: Lens' ProjectsJobsWorkItemsLease' Text
pjwilProjectId
  = lens _pjwilProjectId
      (\ s a -> s{_pjwilProjectId = a})

-- | OAuth 2.0 token for the current user.
pjwilOauthToken :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilOauthToken
  = lens _pjwilOauthToken
      (\ s a -> s{_pjwilOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjwilFields :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilFields
  = lens _pjwilFields (\ s a -> s{_pjwilFields = a})

-- | JSONP
pjwilCallback :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilCallback
  = lens _pjwilCallback
      (\ s a -> s{_pjwilCallback = a})

-- | Data format for response.
pjwilAlt :: Lens' ProjectsJobsWorkItemsLease' Text
pjwilAlt = lens _pjwilAlt (\ s a -> s{_pjwilAlt = a})

instance GoogleRequest ProjectsJobsWorkItemsLease'
         where
        type Rs ProjectsJobsWorkItemsLease' =
             LeaseWorkItemResponse
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsWorkItemsLease'{..}
          = go _pjwilXgafv _pjwilQuotaUser
              (Just _pjwilPrettyPrint)
              _pjwilJobId
              _pjwilUploadProtocol
              (Just _pjwilPp)
              _pjwilAccessToken
              _pjwilUploadType
              _pjwilBearerToken
              _pjwilKey
              _pjwilProjectId
              _pjwilOauthToken
              _pjwilFields
              _pjwilCallback
              (Just _pjwilAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsWorkItemsLeaseResource)
                      r
                      u

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
    , pjwilPayload
    , pjwilBearerToken
    , pjwilKey
    , pjwilProjectId
    , pjwilOAuthToken
    , pjwilFields
    , pjwilCallback
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
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] LeaseWorkItemRequest
                                             :>
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
    , _pjwilPayload        :: !LeaseWorkItemRequest
    , _pjwilBearerToken    :: !(Maybe Text)
    , _pjwilKey            :: !(Maybe AuthKey)
    , _pjwilProjectId      :: !Text
    , _pjwilOAuthToken     :: !(Maybe OAuthToken)
    , _pjwilFields         :: !(Maybe Text)
    , _pjwilCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'pjwilPayload'
--
-- * 'pjwilBearerToken'
--
-- * 'pjwilKey'
--
-- * 'pjwilProjectId'
--
-- * 'pjwilOAuthToken'
--
-- * 'pjwilFields'
--
-- * 'pjwilCallback'
projectsJobsWorkItemsLease'
    :: Text -- ^ 'jobId'
    -> LeaseWorkItemRequest -- ^ 'payload'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsWorkItemsLease'
projectsJobsWorkItemsLease' pPjwilJobId_ pPjwilPayload_ pPjwilProjectId_ =
    ProjectsJobsWorkItemsLease'
    { _pjwilXgafv = Nothing
    , _pjwilQuotaUser = Nothing
    , _pjwilPrettyPrint = True
    , _pjwilJobId = pPjwilJobId_
    , _pjwilUploadProtocol = Nothing
    , _pjwilPp = True
    , _pjwilAccessToken = Nothing
    , _pjwilUploadType = Nothing
    , _pjwilPayload = pPjwilPayload_
    , _pjwilBearerToken = Nothing
    , _pjwilKey = Nothing
    , _pjwilProjectId = pPjwilProjectId_
    , _pjwilOAuthToken = Nothing
    , _pjwilFields = Nothing
    , _pjwilCallback = Nothing
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

-- | Multipart request metadata.
pjwilPayload :: Lens' ProjectsJobsWorkItemsLease' LeaseWorkItemRequest
pjwilPayload
  = lens _pjwilPayload (\ s a -> s{_pjwilPayload = a})

-- | OAuth bearer token.
pjwilBearerToken :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilBearerToken
  = lens _pjwilBearerToken
      (\ s a -> s{_pjwilBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjwilKey :: Lens' ProjectsJobsWorkItemsLease' (Maybe AuthKey)
pjwilKey = lens _pjwilKey (\ s a -> s{_pjwilKey = a})

-- | Identifies the project this worker belongs to.
pjwilProjectId :: Lens' ProjectsJobsWorkItemsLease' Text
pjwilProjectId
  = lens _pjwilProjectId
      (\ s a -> s{_pjwilProjectId = a})

-- | OAuth 2.0 token for the current user.
pjwilOAuthToken :: Lens' ProjectsJobsWorkItemsLease' (Maybe OAuthToken)
pjwilOAuthToken
  = lens _pjwilOAuthToken
      (\ s a -> s{_pjwilOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjwilFields :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilFields
  = lens _pjwilFields (\ s a -> s{_pjwilFields = a})

-- | JSONP
pjwilCallback :: Lens' ProjectsJobsWorkItemsLease' (Maybe Text)
pjwilCallback
  = lens _pjwilCallback
      (\ s a -> s{_pjwilCallback = a})

instance GoogleAuth ProjectsJobsWorkItemsLease' where
        authKey = pjwilKey . _Just
        authToken = pjwilOAuthToken . _Just

instance GoogleRequest ProjectsJobsWorkItemsLease'
         where
        type Rs ProjectsJobsWorkItemsLease' =
             LeaseWorkItemResponse
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsWorkItemsLease'{..}
          = go _pjwilProjectId _pjwilJobId _pjwilXgafv
              _pjwilUploadProtocol
              (Just _pjwilPp)
              _pjwilAccessToken
              _pjwilUploadType
              _pjwilBearerToken
              _pjwilCallback
              _pjwilQuotaUser
              (Just _pjwilPrettyPrint)
              _pjwilFields
              _pjwilKey
              _pjwilOAuthToken
              (Just AltJSON)
              _pjwilPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsWorkItemsLeaseResource)
                      r
                      u

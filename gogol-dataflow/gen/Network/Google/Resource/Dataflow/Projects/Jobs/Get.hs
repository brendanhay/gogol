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
-- Module      : Network.Google.Resource.Dataflow.Projects.Jobs.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the state of the specified dataflow job.
--
-- /See:/ <https://cloud.google.com/dataflow Google Dataflow API Reference> for @DataflowProjectsJobsGet@.
module Network.Google.Resource.Dataflow.Projects.Jobs.Get
    (
    -- * REST Resource
      ProjectsJobsGetResource

    -- * Creating a Request
    , projectsJobsGet'
    , ProjectsJobsGet'

    -- * Request Lenses
    , pjgXgafv
    , pjgQuotaUser
    , pjgPrettyPrint
    , pjgJobId
    , pjgUploadProtocol
    , pjgPp
    , pjgAccessToken
    , pjgUploadType
    , pjgBearerToken
    , pjgKey
    , pjgView
    , pjgProjectId
    , pjgOAuthToken
    , pjgFields
    , pjgCallback
    ) where

import           Network.Google.Dataflow.Types
import           Network.Google.Prelude

-- | A resource alias for @DataflowProjectsJobsGet@ which the
-- 'ProjectsJobsGet'' request conforms to.
type ProjectsJobsGetResource =
     "v1b3" :>
       "projects" :>
         Capture "projectId" Text :>
           "jobs" :>
             Capture "jobId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "bearer_token" Text :>
                           QueryParam "view" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] Job

-- | Gets the state of the specified dataflow job.
--
-- /See:/ 'projectsJobsGet'' smart constructor.
data ProjectsJobsGet' = ProjectsJobsGet'
    { _pjgXgafv          :: !(Maybe Text)
    , _pjgQuotaUser      :: !(Maybe Text)
    , _pjgPrettyPrint    :: !Bool
    , _pjgJobId          :: !Text
    , _pjgUploadProtocol :: !(Maybe Text)
    , _pjgPp             :: !Bool
    , _pjgAccessToken    :: !(Maybe Text)
    , _pjgUploadType     :: !(Maybe Text)
    , _pjgBearerToken    :: !(Maybe Text)
    , _pjgKey            :: !(Maybe AuthKey)
    , _pjgView           :: !(Maybe Text)
    , _pjgProjectId      :: !Text
    , _pjgOAuthToken     :: !(Maybe OAuthToken)
    , _pjgFields         :: !(Maybe Text)
    , _pjgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsJobsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pjgXgafv'
--
-- * 'pjgQuotaUser'
--
-- * 'pjgPrettyPrint'
--
-- * 'pjgJobId'
--
-- * 'pjgUploadProtocol'
--
-- * 'pjgPp'
--
-- * 'pjgAccessToken'
--
-- * 'pjgUploadType'
--
-- * 'pjgBearerToken'
--
-- * 'pjgKey'
--
-- * 'pjgView'
--
-- * 'pjgProjectId'
--
-- * 'pjgOAuthToken'
--
-- * 'pjgFields'
--
-- * 'pjgCallback'
projectsJobsGet'
    :: Text -- ^ 'jobId'
    -> Text -- ^ 'projectId'
    -> ProjectsJobsGet'
projectsJobsGet' pPjgJobId_ pPjgProjectId_ =
    ProjectsJobsGet'
    { _pjgXgafv = Nothing
    , _pjgQuotaUser = Nothing
    , _pjgPrettyPrint = True
    , _pjgJobId = pPjgJobId_
    , _pjgUploadProtocol = Nothing
    , _pjgPp = True
    , _pjgAccessToken = Nothing
    , _pjgUploadType = Nothing
    , _pjgBearerToken = Nothing
    , _pjgKey = Nothing
    , _pjgView = Nothing
    , _pjgProjectId = pPjgProjectId_
    , _pjgOAuthToken = Nothing
    , _pjgFields = Nothing
    , _pjgCallback = Nothing
    }

-- | V1 error format.
pjgXgafv :: Lens' ProjectsJobsGet' (Maybe Text)
pjgXgafv = lens _pjgXgafv (\ s a -> s{_pjgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pjgQuotaUser :: Lens' ProjectsJobsGet' (Maybe Text)
pjgQuotaUser
  = lens _pjgQuotaUser (\ s a -> s{_pjgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pjgPrettyPrint :: Lens' ProjectsJobsGet' Bool
pjgPrettyPrint
  = lens _pjgPrettyPrint
      (\ s a -> s{_pjgPrettyPrint = a})

-- | Identifies a single job.
pjgJobId :: Lens' ProjectsJobsGet' Text
pjgJobId = lens _pjgJobId (\ s a -> s{_pjgJobId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pjgUploadProtocol :: Lens' ProjectsJobsGet' (Maybe Text)
pjgUploadProtocol
  = lens _pjgUploadProtocol
      (\ s a -> s{_pjgUploadProtocol = a})

-- | Pretty-print response.
pjgPp :: Lens' ProjectsJobsGet' Bool
pjgPp = lens _pjgPp (\ s a -> s{_pjgPp = a})

-- | OAuth access token.
pjgAccessToken :: Lens' ProjectsJobsGet' (Maybe Text)
pjgAccessToken
  = lens _pjgAccessToken
      (\ s a -> s{_pjgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pjgUploadType :: Lens' ProjectsJobsGet' (Maybe Text)
pjgUploadType
  = lens _pjgUploadType
      (\ s a -> s{_pjgUploadType = a})

-- | OAuth bearer token.
pjgBearerToken :: Lens' ProjectsJobsGet' (Maybe Text)
pjgBearerToken
  = lens _pjgBearerToken
      (\ s a -> s{_pjgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pjgKey :: Lens' ProjectsJobsGet' (Maybe AuthKey)
pjgKey = lens _pjgKey (\ s a -> s{_pjgKey = a})

-- | Level of information requested in response.
pjgView :: Lens' ProjectsJobsGet' (Maybe Text)
pjgView = lens _pjgView (\ s a -> s{_pjgView = a})

-- | The project which owns the job.
pjgProjectId :: Lens' ProjectsJobsGet' Text
pjgProjectId
  = lens _pjgProjectId (\ s a -> s{_pjgProjectId = a})

-- | OAuth 2.0 token for the current user.
pjgOAuthToken :: Lens' ProjectsJobsGet' (Maybe OAuthToken)
pjgOAuthToken
  = lens _pjgOAuthToken
      (\ s a -> s{_pjgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pjgFields :: Lens' ProjectsJobsGet' (Maybe Text)
pjgFields
  = lens _pjgFields (\ s a -> s{_pjgFields = a})

-- | JSONP
pjgCallback :: Lens' ProjectsJobsGet' (Maybe Text)
pjgCallback
  = lens _pjgCallback (\ s a -> s{_pjgCallback = a})

instance GoogleAuth ProjectsJobsGet' where
        authKey = pjgKey . _Just
        authToken = pjgOAuthToken . _Just

instance GoogleRequest ProjectsJobsGet' where
        type Rs ProjectsJobsGet' = Job
        request = requestWithRoute defReq dataflowURL
        requestWithRoute r u ProjectsJobsGet'{..}
          = go _pjgProjectId _pjgJobId _pjgXgafv
              _pjgUploadProtocol
              (Just _pjgPp)
              _pjgAccessToken
              _pjgUploadType
              _pjgBearerToken
              _pjgView
              _pjgCallback
              _pjgQuotaUser
              (Just _pjgPrettyPrint)
              _pjgFields
              _pjgKey
              _pjgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsJobsGetResource)
                      r
                      u

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
-- Module      : Network.Google.Resource.Cloudresourcemanager.Projects.Undelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudresourcemanagerProjectsUndelete@.
module Network.Google.Resource.Cloudresourcemanager.Projects.Undelete
    (
    -- * REST Resource
      ProjectsUndeleteResource

    -- * Creating a Request
    , projectsUndelete'
    , ProjectsUndelete'

    -- * Request Lenses
    , proXgafv
    , proQuotaUser
    , proPrettyPrint
    , proUploadProtocol
    , proPp
    , proAccessToken
    , proUploadType
    , proBearerToken
    , proKey
    , proProjectId
    , proOauthToken
    , proFields
    , proCallback
    , proAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudresourcemanagerProjectsUndelete@ which the
-- 'ProjectsUndelete'' request conforms to.
type ProjectsUndeleteResource =
     "v1beta1" :>
       "projects" :>
         "{projectId}:undelete" :>
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
                                   QueryParam "alt" Text :> Post '[JSON] Empty

-- | Restores the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). You can only use this method for a project
-- that has a lifecycle state of [DELETE_REQUESTED]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_REQUESTED].
-- After deletion starts, as indicated by a lifecycle state of
-- [DELETE_IN_PROGRESS]
-- [google.cloudresourcemanager.projects.v1beta1.LifecycleState.DELETE_IN_PROGRESS],
-- the project cannot be restored. The caller must have modify permissions
-- for this project.
--
-- /See:/ 'projectsUndelete'' smart constructor.
data ProjectsUndelete' = ProjectsUndelete'
    { _proXgafv          :: !(Maybe Text)
    , _proQuotaUser      :: !(Maybe Text)
    , _proPrettyPrint    :: !Bool
    , _proUploadProtocol :: !(Maybe Text)
    , _proPp             :: !Bool
    , _proAccessToken    :: !(Maybe Text)
    , _proUploadType     :: !(Maybe Text)
    , _proBearerToken    :: !(Maybe Text)
    , _proKey            :: !(Maybe Text)
    , _proProjectId      :: !Text
    , _proOauthToken     :: !(Maybe Text)
    , _proFields         :: !(Maybe Text)
    , _proCallback       :: !(Maybe Text)
    , _proAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proXgafv'
--
-- * 'proQuotaUser'
--
-- * 'proPrettyPrint'
--
-- * 'proUploadProtocol'
--
-- * 'proPp'
--
-- * 'proAccessToken'
--
-- * 'proUploadType'
--
-- * 'proBearerToken'
--
-- * 'proKey'
--
-- * 'proProjectId'
--
-- * 'proOauthToken'
--
-- * 'proFields'
--
-- * 'proCallback'
--
-- * 'proAlt'
projectsUndelete'
    :: Text -- ^ 'projectId'
    -> ProjectsUndelete'
projectsUndelete' pProProjectId_ =
    ProjectsUndelete'
    { _proXgafv = Nothing
    , _proQuotaUser = Nothing
    , _proPrettyPrint = True
    , _proUploadProtocol = Nothing
    , _proPp = True
    , _proAccessToken = Nothing
    , _proUploadType = Nothing
    , _proBearerToken = Nothing
    , _proKey = Nothing
    , _proProjectId = pProProjectId_
    , _proOauthToken = Nothing
    , _proFields = Nothing
    , _proCallback = Nothing
    , _proAlt = "json"
    }

-- | V1 error format.
proXgafv :: Lens' ProjectsUndelete' (Maybe Text)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
proQuotaUser :: Lens' ProjectsUndelete' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' ProjectsUndelete' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsUndelete' (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Pretty-print response.
proPp :: Lens' ProjectsUndelete' Bool
proPp = lens _proPp (\ s a -> s{_proPp = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsUndelete' (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsUndelete' (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | OAuth bearer token.
proBearerToken :: Lens' ProjectsUndelete' (Maybe Text)
proBearerToken
  = lens _proBearerToken
      (\ s a -> s{_proBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProjectsUndelete' (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | The project ID (for example, \`foo-bar-123\`). Required.
proProjectId :: Lens' ProjectsUndelete' Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | OAuth 2.0 token for the current user.
proOauthToken :: Lens' ProjectsUndelete' (Maybe Text)
proOauthToken
  = lens _proOauthToken
      (\ s a -> s{_proOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProjectsUndelete' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

-- | JSONP
proCallback :: Lens' ProjectsUndelete' (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

-- | Data format for response.
proAlt :: Lens' ProjectsUndelete' Text
proAlt = lens _proAlt (\ s a -> s{_proAlt = a})

instance GoogleRequest ProjectsUndelete' where
        type Rs ProjectsUndelete' = Empty
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsUndelete'{..}
          = go _proXgafv _proQuotaUser (Just _proPrettyPrint)
              _proUploadProtocol
              (Just _proPp)
              _proAccessToken
              _proUploadType
              _proBearerToken
              _proKey
              _proProjectId
              _proOauthToken
              _proFields
              _proCallback
              (Just _proAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsUndeleteResource)
                      r
                      u

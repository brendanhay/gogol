{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Cloudresourcemanager.Projects.Undelete
    (
    -- * REST Resource
      ProjectsUndeleteAPI

    -- * Creating a Request
    , projectsUndelete
    , ProjectsUndelete

    -- * Request Lenses
    , puXgafv
    , puQuotaUser
    , puPrettyPrint
    , puUploadProtocol
    , puPp
    , puAccessToken
    , puUploadType
    , puBearerToken
    , puKey
    , puProjectId
    , puOauthToken
    , puFields
    , puCallback
    , puAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudresourcemanagerProjectsUndelete@ which the
-- 'ProjectsUndelete' request conforms to.
type ProjectsUndeleteAPI =
     "v1beta1" :>
       "projects" :>
         "{projectId}:undelete" :> Post '[JSON] Empty

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
-- /See:/ 'projectsUndelete' smart constructor.
data ProjectsUndelete = ProjectsUndelete
    { _puXgafv          :: !(Maybe Text)
    , _puQuotaUser      :: !(Maybe Text)
    , _puPrettyPrint    :: !Bool
    , _puUploadProtocol :: !(Maybe Text)
    , _puPp             :: !Bool
    , _puAccessToken    :: !(Maybe Text)
    , _puUploadType     :: !(Maybe Text)
    , _puBearerToken    :: !(Maybe Text)
    , _puKey            :: !(Maybe Text)
    , _puProjectId      :: !Text
    , _puOauthToken     :: !(Maybe Text)
    , _puFields         :: !(Maybe Text)
    , _puCallback       :: !(Maybe Text)
    , _puAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsUndelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puQuotaUser'
--
-- * 'puPrettyPrint'
--
-- * 'puUploadProtocol'
--
-- * 'puPp'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puBearerToken'
--
-- * 'puKey'
--
-- * 'puProjectId'
--
-- * 'puOauthToken'
--
-- * 'puFields'
--
-- * 'puCallback'
--
-- * 'puAlt'
projectsUndelete
    :: Text -- ^ 'projectId'
    -> ProjectsUndelete
projectsUndelete pPuProjectId_ =
    ProjectsUndelete
    { _puXgafv = Nothing
    , _puQuotaUser = Nothing
    , _puPrettyPrint = True
    , _puUploadProtocol = Nothing
    , _puPp = True
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puBearerToken = Nothing
    , _puKey = Nothing
    , _puProjectId = pPuProjectId_
    , _puOauthToken = Nothing
    , _puFields = Nothing
    , _puCallback = Nothing
    , _puAlt = "json"
    }

-- | V1 error format.
puXgafv :: Lens' ProjectsUndelete' (Maybe Text)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
puQuotaUser :: Lens' ProjectsUndelete' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' ProjectsUndelete' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProjectsUndelete' (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Pretty-print response.
puPp :: Lens' ProjectsUndelete' Bool
puPp = lens _puPp (\ s a -> s{_puPp = a})

-- | OAuth access token.
puAccessToken :: Lens' ProjectsUndelete' (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProjectsUndelete' (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | OAuth bearer token.
puBearerToken :: Lens' ProjectsUndelete' (Maybe Text)
puBearerToken
  = lens _puBearerToken
      (\ s a -> s{_puBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' ProjectsUndelete' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | The project ID (for example, \`foo-bar-123\`). Required.
puProjectId :: Lens' ProjectsUndelete' Text
puProjectId
  = lens _puProjectId (\ s a -> s{_puProjectId = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' ProjectsUndelete' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' ProjectsUndelete' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | JSONP
puCallback :: Lens' ProjectsUndelete' (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

-- | Data format for response.
puAlt :: Lens' ProjectsUndelete' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest ProjectsUndelete' where
        type Rs ProjectsUndelete' = Empty
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsUndelete{..}
          = go _puXgafv _puQuotaUser _puPrettyPrint
              _puUploadProtocol
              _puPp
              _puAccessToken
              _puUploadType
              _puBearerToken
              _puKey
              _puProjectId
              _puOauthToken
              _puFields
              _puCallback
              _puAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsUndeleteAPI)
                      r
                      u

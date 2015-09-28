{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Cloudresourcemanager.Projects.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.update@.
module Network.Google.API.Cloudresourcemanager.Projects.Update
    (
    -- * REST Resource
      ProjectsUpdateAPI

    -- * Creating a Request
    , projectsUpdate'
    , ProjectsUpdate'

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

-- | A resource alias for cloudresourcemanager.projects.update which the
-- 'ProjectsUpdate'' request conforms to.
type ProjectsUpdateAPI =
     "v1beta1" :>
       "projects" :>
         Capture "projectId" Text :>
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
                                   QueryParam "alt" Text :> Put '[JSON] Project

-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ 'projectsUpdate'' smart constructor.
data ProjectsUpdate' = ProjectsUpdate'
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

-- | Creates a value of 'ProjectsUpdate'' with the minimum fields required to make a request.
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
projectsUpdate'
    :: Text -- ^ 'projectId'
    -> ProjectsUpdate'
projectsUpdate' pPuProjectId_ =
    ProjectsUpdate'
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
puXgafv :: Lens' ProjectsUpdate' (Maybe Text)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
puQuotaUser :: Lens' ProjectsUpdate' (Maybe Text)
puQuotaUser
  = lens _puQuotaUser (\ s a -> s{_puQuotaUser = a})

-- | Returns response with indentations and line breaks.
puPrettyPrint :: Lens' ProjectsUpdate' Bool
puPrettyPrint
  = lens _puPrettyPrint
      (\ s a -> s{_puPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' ProjectsUpdate' (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | Pretty-print response.
puPp :: Lens' ProjectsUpdate' Bool
puPp = lens _puPp (\ s a -> s{_puPp = a})

-- | OAuth access token.
puAccessToken :: Lens' ProjectsUpdate' (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' ProjectsUpdate' (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | OAuth bearer token.
puBearerToken :: Lens' ProjectsUpdate' (Maybe Text)
puBearerToken
  = lens _puBearerToken
      (\ s a -> s{_puBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
puKey :: Lens' ProjectsUpdate' (Maybe Text)
puKey = lens _puKey (\ s a -> s{_puKey = a})

-- | The project ID (for example, \`my-project-123\`). Required.
puProjectId :: Lens' ProjectsUpdate' Text
puProjectId
  = lens _puProjectId (\ s a -> s{_puProjectId = a})

-- | OAuth 2.0 token for the current user.
puOauthToken :: Lens' ProjectsUpdate' (Maybe Text)
puOauthToken
  = lens _puOauthToken (\ s a -> s{_puOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
puFields :: Lens' ProjectsUpdate' (Maybe Text)
puFields = lens _puFields (\ s a -> s{_puFields = a})

-- | JSONP
puCallback :: Lens' ProjectsUpdate' (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

-- | Data format for response.
puAlt :: Lens' ProjectsUpdate' Text
puAlt = lens _puAlt (\ s a -> s{_puAlt = a})

instance GoogleRequest ProjectsUpdate' where
        type Rs ProjectsUpdate' = Project
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsUpdate'{..}
          = go _puXgafv _puQuotaUser (Just _puPrettyPrint)
              _puUploadProtocol
              (Just _puPp)
              _puAccessToken
              _puUploadType
              _puBearerToken
              _puKey
              _puProjectId
              _puOauthToken
              _puFields
              _puCallback
              (Just _puAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsUpdateAPI)
                      r
                      u

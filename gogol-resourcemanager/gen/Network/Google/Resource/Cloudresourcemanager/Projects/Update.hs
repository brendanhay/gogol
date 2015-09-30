{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Cloudresourcemanager.Projects.Update
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
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudresourcemanagerProjectsUpdate@.
module Cloudresourcemanager.Projects.Update
    (
    -- * REST Resource
      ProjectsUpdateAPI

    -- * Creating a Request
    , projectsUpdate
    , ProjectsUpdate

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

-- | A resource alias for @CloudresourcemanagerProjectsUpdate@ which the
-- 'ProjectsUpdate' request conforms to.
type ProjectsUpdateAPI =
     "v1beta1" :>
       "projects" :>
         Capture "projectId" Text :> Put '[JSON] Project

-- | Updates the attributes of the project identified by the specified
-- \`project_id\` (for example, \`my-project-123\`). The caller must have
-- modify permissions for this project.
--
-- /See:/ 'projectsUpdate' smart constructor.
data ProjectsUpdate = ProjectsUpdate
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

-- | Creates a value of 'ProjectsUpdate'' with the minimum fields required to make a request.
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
projectsUpdate
    :: Text -- ^ 'projectId'
    -> ProjectsUpdate
projectsUpdate pProProjectId_ =
    ProjectsUpdate
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
proXgafv :: Lens' ProjectsUpdate' (Maybe Text)
proXgafv = lens _proXgafv (\ s a -> s{_proXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
proQuotaUser :: Lens' ProjectsUpdate' (Maybe Text)
proQuotaUser
  = lens _proQuotaUser (\ s a -> s{_proQuotaUser = a})

-- | Returns response with indentations and line breaks.
proPrettyPrint :: Lens' ProjectsUpdate' Bool
proPrettyPrint
  = lens _proPrettyPrint
      (\ s a -> s{_proPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
proUploadProtocol :: Lens' ProjectsUpdate' (Maybe Text)
proUploadProtocol
  = lens _proUploadProtocol
      (\ s a -> s{_proUploadProtocol = a})

-- | Pretty-print response.
proPp :: Lens' ProjectsUpdate' Bool
proPp = lens _proPp (\ s a -> s{_proPp = a})

-- | OAuth access token.
proAccessToken :: Lens' ProjectsUpdate' (Maybe Text)
proAccessToken
  = lens _proAccessToken
      (\ s a -> s{_proAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
proUploadType :: Lens' ProjectsUpdate' (Maybe Text)
proUploadType
  = lens _proUploadType
      (\ s a -> s{_proUploadType = a})

-- | OAuth bearer token.
proBearerToken :: Lens' ProjectsUpdate' (Maybe Text)
proBearerToken
  = lens _proBearerToken
      (\ s a -> s{_proBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
proKey :: Lens' ProjectsUpdate' (Maybe Text)
proKey = lens _proKey (\ s a -> s{_proKey = a})

-- | The project ID (for example, \`my-project-123\`). Required.
proProjectId :: Lens' ProjectsUpdate' Text
proProjectId
  = lens _proProjectId (\ s a -> s{_proProjectId = a})

-- | OAuth 2.0 token for the current user.
proOauthToken :: Lens' ProjectsUpdate' (Maybe Text)
proOauthToken
  = lens _proOauthToken
      (\ s a -> s{_proOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
proFields :: Lens' ProjectsUpdate' (Maybe Text)
proFields
  = lens _proFields (\ s a -> s{_proFields = a})

-- | JSONP
proCallback :: Lens' ProjectsUpdate' (Maybe Text)
proCallback
  = lens _proCallback (\ s a -> s{_proCallback = a})

-- | Data format for response.
proAlt :: Lens' ProjectsUpdate' Text
proAlt = lens _proAlt (\ s a -> s{_proAlt = a})

instance GoogleRequest ProjectsUpdate' where
        type Rs ProjectsUpdate' = Project
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsUpdate{..}
          = go _proXgafv _proQuotaUser _proPrettyPrint
              _proUploadProtocol
              _proPp
              _proAccessToken
              _proUploadType
              _proBearerToken
              _proKey
              _proProjectId
              _proOauthToken
              _proFields
              _proCallback
              _proAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ProjectsUpdateAPI)
                      r
                      u

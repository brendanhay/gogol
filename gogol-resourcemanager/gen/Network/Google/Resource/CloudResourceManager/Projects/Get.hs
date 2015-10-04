{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). The caller must have read permissions for
-- this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @CloudResourceManagerProjectsGet@.
module Network.Google.Resource.CloudResourceManager.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet'
    , ProjectsGet'

    -- * Request Lenses
    , pgXgafv
    , pgQuotaUser
    , pgPrettyPrint
    , pgUploadProtocol
    , pgPp
    , pgAccessToken
    , pgUploadType
    , pgBearerToken
    , pgKey
    , pgProjectId
    , pgOAuthToken
    , pgFields
    , pgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsGet@ which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetResource =
     "v1beta1" :>
       "projects" :>
         Capture "projectId" Text :>
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
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] Project

-- | Retrieves the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). The caller must have read permissions for
-- this project.
--
-- /See:/ 'projectsGet'' smart constructor.
data ProjectsGet' = ProjectsGet'
    { _pgXgafv          :: !(Maybe Text)
    , _pgQuotaUser      :: !(Maybe Text)
    , _pgPrettyPrint    :: !Bool
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgPp             :: !Bool
    , _pgAccessToken    :: !(Maybe Text)
    , _pgUploadType     :: !(Maybe Text)
    , _pgBearerToken    :: !(Maybe Text)
    , _pgKey            :: !(Maybe Key)
    , _pgProjectId      :: !Text
    , _pgOAuthToken     :: !(Maybe OAuthToken)
    , _pgFields         :: !(Maybe Text)
    , _pgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgUploadProtocol'
--
-- * 'pgPp'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgBearerToken'
--
-- * 'pgKey'
--
-- * 'pgProjectId'
--
-- * 'pgOAuthToken'
--
-- * 'pgFields'
--
-- * 'pgCallback'
projectsGet'
    :: Text -- ^ 'projectId'
    -> ProjectsGet'
projectsGet' pPgProjectId_ =
    ProjectsGet'
    { _pgXgafv = Nothing
    , _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgUploadProtocol = Nothing
    , _pgPp = True
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgBearerToken = Nothing
    , _pgKey = Nothing
    , _pgProjectId = pPgProjectId_
    , _pgOAuthToken = Nothing
    , _pgFields = Nothing
    , _pgCallback = Nothing
    }

-- | V1 error format.
pgXgafv :: Lens' ProjectsGet' (Maybe Text)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
pgQuotaUser :: Lens' ProjectsGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' ProjectsGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' ProjectsGet' (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | Pretty-print response.
pgPp :: Lens' ProjectsGet' Bool
pgPp = lens _pgPp (\ s a -> s{_pgPp = a})

-- | OAuth access token.
pgAccessToken :: Lens' ProjectsGet' (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' ProjectsGet' (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | OAuth bearer token.
pgBearerToken :: Lens' ProjectsGet' (Maybe Text)
pgBearerToken
  = lens _pgBearerToken
      (\ s a -> s{_pgBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' ProjectsGet' (Maybe Key)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The project ID (for example, \`my-project-123\`). Required.
pgProjectId :: Lens' ProjectsGet' Text
pgProjectId
  = lens _pgProjectId (\ s a -> s{_pgProjectId = a})

-- | OAuth 2.0 token for the current user.
pgOAuthToken :: Lens' ProjectsGet' (Maybe OAuthToken)
pgOAuthToken
  = lens _pgOAuthToken (\ s a -> s{_pgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' ProjectsGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | JSONP
pgCallback :: Lens' ProjectsGet' (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleAuth ProjectsGet' where
        authKey = pgKey . _Just
        authToken = pgOAuthToken . _Just

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        request = requestWithRoute defReq resourceManagerURL
        requestWithRoute r u ProjectsGet'{..}
          = go _pgProjectId _pgXgafv _pgUploadProtocol
              (Just _pgPp)
              _pgAccessToken
              _pgUploadType
              _pgBearerToken
              _pgCallback
              _pgQuotaUser
              (Just _pgPrettyPrint)
              _pgFields
              _pgKey
              _pgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ProjectsGetResource)
                      r
                      u

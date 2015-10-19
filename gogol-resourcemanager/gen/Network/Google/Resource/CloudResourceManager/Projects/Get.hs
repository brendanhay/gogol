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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the project identified by the specified \`project_id\` (for
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
    , pgUploadProtocol
    , pgPp
    , pgAccessToken
    , pgUploadType
    , pgBearerToken
    , pgProjectId
    , pgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @CloudResourceManagerProjectsGet@ method which the
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
                         QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Retrieves the project identified by the specified \`project_id\` (for
-- example, \`my-project-123\`). The caller must have read permissions for
-- this project.
--
-- /See:/ 'projectsGet'' smart constructor.
data ProjectsGet' = ProjectsGet'
    { _pgXgafv          :: !(Maybe Text)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgPp             :: !Bool
    , _pgAccessToken    :: !(Maybe Text)
    , _pgUploadType     :: !(Maybe Text)
    , _pgBearerToken    :: !(Maybe Text)
    , _pgProjectId      :: !Text
    , _pgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
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
-- * 'pgProjectId'
--
-- * 'pgCallback'
projectsGet'
    :: Text -- ^ 'projectId'
    -> ProjectsGet'
projectsGet' pPgProjectId_ =
    ProjectsGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgPp = True
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgBearerToken = Nothing
    , _pgProjectId = pPgProjectId_
    , _pgCallback = Nothing
    }

-- | V1 error format.
pgXgafv :: Lens' ProjectsGet' (Maybe Text)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

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

-- | The project ID (for example, \`my-project-123\`). Required.
pgProjectId :: Lens' ProjectsGet' Text
pgProjectId
  = lens _pgProjectId (\ s a -> s{_pgProjectId = a})

-- | JSONP
pgCallback :: Lens' ProjectsGet' (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        requestClient ProjectsGet'{..}
          = go _pgProjectId _pgXgafv _pgUploadProtocol
              (Just _pgPp)
              _pgAccessToken
              _pgUploadType
              _pgBearerToken
              _pgCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsGetResource)
                      mempty

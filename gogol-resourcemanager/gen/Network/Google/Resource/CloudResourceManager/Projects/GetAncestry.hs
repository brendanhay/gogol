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
-- Module      : Network.Google.Resource.CloudResourceManager.Projects.GetAncestry
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of ancestors in the resource hierarchy for the Project
-- identified by the specified \`project_id\` (for example,
-- \`my-project-123\`). The caller must have read permissions for this
-- Project.
--
-- /See:/ <https://cloud.google.com/resource-manager Google Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.getAncestry@.
module Network.Google.Resource.CloudResourceManager.Projects.GetAncestry
    (
    -- * REST Resource
      ProjectsGetAncestryResource

    -- * Creating a Request
    , projectsGetAncestry
    , ProjectsGetAncestry

    -- * Request Lenses
    , pgaXgafv
    , pgaUploadProtocol
    , pgaPp
    , pgaAccessToken
    , pgaUploadType
    , pgaPayload
    , pgaBearerToken
    , pgaProjectId
    , pgaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.getAncestry@ method which the
-- 'ProjectsGetAncestry' request conforms to.
type ProjectsGetAncestryResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "getAncestry" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] GetAncestryRequest :>
                             Post '[JSON] GetAncestryResponse

-- | Gets a list of ancestors in the resource hierarchy for the Project
-- identified by the specified \`project_id\` (for example,
-- \`my-project-123\`). The caller must have read permissions for this
-- Project.
--
-- /See:/ 'projectsGetAncestry' smart constructor.
data ProjectsGetAncestry = ProjectsGetAncestry'
    { _pgaXgafv          :: !(Maybe Xgafv)
    , _pgaUploadProtocol :: !(Maybe Text)
    , _pgaPp             :: !Bool
    , _pgaAccessToken    :: !(Maybe Text)
    , _pgaUploadType     :: !(Maybe Text)
    , _pgaPayload        :: !GetAncestryRequest
    , _pgaBearerToken    :: !(Maybe Text)
    , _pgaProjectId      :: !Text
    , _pgaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGetAncestry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgaXgafv'
--
-- * 'pgaUploadProtocol'
--
-- * 'pgaPp'
--
-- * 'pgaAccessToken'
--
-- * 'pgaUploadType'
--
-- * 'pgaPayload'
--
-- * 'pgaBearerToken'
--
-- * 'pgaProjectId'
--
-- * 'pgaCallback'
projectsGetAncestry
    :: GetAncestryRequest -- ^ 'pgaPayload'
    -> Text -- ^ 'pgaProjectId'
    -> ProjectsGetAncestry
projectsGetAncestry pPgaPayload_ pPgaProjectId_ =
    ProjectsGetAncestry'
    { _pgaXgafv = Nothing
    , _pgaUploadProtocol = Nothing
    , _pgaPp = True
    , _pgaAccessToken = Nothing
    , _pgaUploadType = Nothing
    , _pgaPayload = pPgaPayload_
    , _pgaBearerToken = Nothing
    , _pgaProjectId = pPgaProjectId_
    , _pgaCallback = Nothing
    }

-- | V1 error format.
pgaXgafv :: Lens' ProjectsGetAncestry (Maybe Xgafv)
pgaXgafv = lens _pgaXgafv (\ s a -> s{_pgaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgaUploadProtocol :: Lens' ProjectsGetAncestry (Maybe Text)
pgaUploadProtocol
  = lens _pgaUploadProtocol
      (\ s a -> s{_pgaUploadProtocol = a})

-- | Pretty-print response.
pgaPp :: Lens' ProjectsGetAncestry Bool
pgaPp = lens _pgaPp (\ s a -> s{_pgaPp = a})

-- | OAuth access token.
pgaAccessToken :: Lens' ProjectsGetAncestry (Maybe Text)
pgaAccessToken
  = lens _pgaAccessToken
      (\ s a -> s{_pgaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgaUploadType :: Lens' ProjectsGetAncestry (Maybe Text)
pgaUploadType
  = lens _pgaUploadType
      (\ s a -> s{_pgaUploadType = a})

-- | Multipart request metadata.
pgaPayload :: Lens' ProjectsGetAncestry GetAncestryRequest
pgaPayload
  = lens _pgaPayload (\ s a -> s{_pgaPayload = a})

-- | OAuth bearer token.
pgaBearerToken :: Lens' ProjectsGetAncestry (Maybe Text)
pgaBearerToken
  = lens _pgaBearerToken
      (\ s a -> s{_pgaBearerToken = a})

-- | The Project ID (for example, \`my-project-123\`). Required.
pgaProjectId :: Lens' ProjectsGetAncestry Text
pgaProjectId
  = lens _pgaProjectId (\ s a -> s{_pgaProjectId = a})

-- | JSONP
pgaCallback :: Lens' ProjectsGetAncestry (Maybe Text)
pgaCallback
  = lens _pgaCallback (\ s a -> s{_pgaCallback = a})

instance GoogleRequest ProjectsGetAncestry where
        type Rs ProjectsGetAncestry = GetAncestryResponse
        type Scopes ProjectsGetAncestry =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsGetAncestry'{..}
          = go _pgaProjectId _pgaXgafv _pgaUploadProtocol
              (Just _pgaPp)
              _pgaAccessToken
              _pgaUploadType
              _pgaBearerToken
              _pgaCallback
              (Just AltJSON)
              _pgaPayload
              resourceManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGetAncestryResource)
                      mempty

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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`). The caller must have
-- \`resourcemanager.projects.get\` permission for this project.
--
-- /See:/ <https://cloud.google.com/resource-manager Cloud Resource Manager API Reference> for @cloudresourcemanager.projects.get@.
module Network.Google.Resource.CloudResourceManager.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet
    , ProjectsGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgAccessToken
    , pgUploadType
    , pgName
    , pgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ResourceManager.Types

-- | A resource alias for @cloudresourcemanager.projects.get@ method which the
-- 'ProjectsGet' request conforms to.
type ProjectsGetResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Retrieves the project identified by the specified \`name\` (for example,
-- \`projects\/415104041262\`). The caller must have
-- \`resourcemanager.projects.get\` permission for this project.
--
-- /See:/ 'projectsGet' smart constructor.
data ProjectsGet =
  ProjectsGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgName :: !Text
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgName'
--
-- * 'pgCallback'
projectsGet
    :: Text -- ^ 'pgName'
    -> ProjectsGet
projectsGet pPgName_ =
  ProjectsGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgName = pPgName_
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' ProjectsGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' ProjectsGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | OAuth access token.
pgAccessToken :: Lens' ProjectsGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' ProjectsGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | Required. The name of the project (for example,
-- \`projects\/415104041262\`).
pgName :: Lens' ProjectsGet Text
pgName = lens _pgName (\ s a -> s{_pgName = a})

-- | JSONP
pgCallback :: Lens' ProjectsGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest ProjectsGet where
        type Rs ProjectsGet = Project
        type Scopes ProjectsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ProjectsGet'{..}
          = go _pgName _pgXgafv _pgUploadProtocol
              _pgAccessToken
              _pgUploadType
              _pgCallback
              (Just AltJSON)
              resourceManagerService
          where go
                  = buildClient (Proxy :: Proxy ProjectsGetResource)
                      mempty

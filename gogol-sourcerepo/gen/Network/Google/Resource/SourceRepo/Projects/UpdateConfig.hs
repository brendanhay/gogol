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
-- Module      : Network.Google.Resource.SourceRepo.Projects.UpdateConfig
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the Cloud Source Repositories configuration of the project.
--
-- /See:/ <https://cloud.google.com/source-repositories/docs/apis Cloud Source Repositories API Reference> for @sourcerepo.projects.updateConfig@.
module Network.Google.Resource.SourceRepo.Projects.UpdateConfig
    (
    -- * REST Resource
      ProjectsUpdateConfigResource

    -- * Creating a Request
    , projectsUpdateConfig
    , ProjectsUpdateConfig

    -- * Request Lenses
    , pucXgafv
    , pucUploadProtocol
    , pucAccessToken
    , pucUploadType
    , pucPayload
    , pucName
    , pucCallback
    ) where

import Network.Google.Prelude
import Network.Google.SourceRepo.Types

-- | A resource alias for @sourcerepo.projects.updateConfig@ method which the
-- 'ProjectsUpdateConfig' request conforms to.
type ProjectsUpdateConfigResource =
     "v1" :>
       Capture "name" Text :>
         "config" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UpdateProjectConfigRequest :>
                         Patch '[JSON] ProjectConfig

-- | Updates the Cloud Source Repositories configuration of the project.
--
-- /See:/ 'projectsUpdateConfig' smart constructor.
data ProjectsUpdateConfig =
  ProjectsUpdateConfig'
    { _pucXgafv :: !(Maybe Xgafv)
    , _pucUploadProtocol :: !(Maybe Text)
    , _pucAccessToken :: !(Maybe Text)
    , _pucUploadType :: !(Maybe Text)
    , _pucPayload :: !UpdateProjectConfigRequest
    , _pucName :: !Text
    , _pucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsUpdateConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pucXgafv'
--
-- * 'pucUploadProtocol'
--
-- * 'pucAccessToken'
--
-- * 'pucUploadType'
--
-- * 'pucPayload'
--
-- * 'pucName'
--
-- * 'pucCallback'
projectsUpdateConfig
    :: UpdateProjectConfigRequest -- ^ 'pucPayload'
    -> Text -- ^ 'pucName'
    -> ProjectsUpdateConfig
projectsUpdateConfig pPucPayload_ pPucName_ =
  ProjectsUpdateConfig'
    { _pucXgafv = Nothing
    , _pucUploadProtocol = Nothing
    , _pucAccessToken = Nothing
    , _pucUploadType = Nothing
    , _pucPayload = pPucPayload_
    , _pucName = pPucName_
    , _pucCallback = Nothing
    }


-- | V1 error format.
pucXgafv :: Lens' ProjectsUpdateConfig (Maybe Xgafv)
pucXgafv = lens _pucXgafv (\ s a -> s{_pucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pucUploadProtocol :: Lens' ProjectsUpdateConfig (Maybe Text)
pucUploadProtocol
  = lens _pucUploadProtocol
      (\ s a -> s{_pucUploadProtocol = a})

-- | OAuth access token.
pucAccessToken :: Lens' ProjectsUpdateConfig (Maybe Text)
pucAccessToken
  = lens _pucAccessToken
      (\ s a -> s{_pucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pucUploadType :: Lens' ProjectsUpdateConfig (Maybe Text)
pucUploadType
  = lens _pucUploadType
      (\ s a -> s{_pucUploadType = a})

-- | Multipart request metadata.
pucPayload :: Lens' ProjectsUpdateConfig UpdateProjectConfigRequest
pucPayload
  = lens _pucPayload (\ s a -> s{_pucPayload = a})

-- | The name of the requested project. Values are of the form
-- \`projects\/\`.
pucName :: Lens' ProjectsUpdateConfig Text
pucName = lens _pucName (\ s a -> s{_pucName = a})

-- | JSONP
pucCallback :: Lens' ProjectsUpdateConfig (Maybe Text)
pucCallback
  = lens _pucCallback (\ s a -> s{_pucCallback = a})

instance GoogleRequest ProjectsUpdateConfig where
        type Rs ProjectsUpdateConfig = ProjectConfig
        type Scopes ProjectsUpdateConfig =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsUpdateConfig'{..}
          = go _pucName _pucXgafv _pucUploadProtocol
              _pucAccessToken
              _pucUploadType
              _pucCallback
              (Just AltJSON)
              _pucPayload
              sourceRepoService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsUpdateConfigResource)
                      mempty

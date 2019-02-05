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
-- Module      : Network.Google.Resource.Script.Projects.Deployments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.get@.
module Network.Google.Resource.Script.Projects.Deployments.Get
    (
    -- * REST Resource
      ProjectsDeploymentsGetResource

    -- * Creating a Request
    , projectsDeploymentsGet
    , ProjectsDeploymentsGet

    -- * Request Lenses
    , pdgDeploymentId
    , pdgXgafv
    , pdgUploadProtocol
    , pdgAccessToken
    , pdgUploadType
    , pdgScriptId
    , pdgCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.deployments.get@ method which the
-- 'ProjectsDeploymentsGet' request conforms to.
type ProjectsDeploymentsGetResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "deployments" :>
             Capture "deploymentId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Deployment

-- | Gets a deployment of an Apps Script project.
--
-- /See:/ 'projectsDeploymentsGet' smart constructor.
data ProjectsDeploymentsGet = ProjectsDeploymentsGet'
    { _pdgDeploymentId   :: !Text
    , _pdgXgafv          :: !(Maybe Xgafv)
    , _pdgUploadProtocol :: !(Maybe Text)
    , _pdgAccessToken    :: !(Maybe Text)
    , _pdgUploadType     :: !(Maybe Text)
    , _pdgScriptId       :: !Text
    , _pdgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDeploymentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdgDeploymentId'
--
-- * 'pdgXgafv'
--
-- * 'pdgUploadProtocol'
--
-- * 'pdgAccessToken'
--
-- * 'pdgUploadType'
--
-- * 'pdgScriptId'
--
-- * 'pdgCallback'
projectsDeploymentsGet
    :: Text -- ^ 'pdgDeploymentId'
    -> Text -- ^ 'pdgScriptId'
    -> ProjectsDeploymentsGet
projectsDeploymentsGet pPdgDeploymentId_ pPdgScriptId_ =
    ProjectsDeploymentsGet'
    { _pdgDeploymentId = pPdgDeploymentId_
    , _pdgXgafv = Nothing
    , _pdgUploadProtocol = Nothing
    , _pdgAccessToken = Nothing
    , _pdgUploadType = Nothing
    , _pdgScriptId = pPdgScriptId_
    , _pdgCallback = Nothing
    }

-- | The deployment ID.
pdgDeploymentId :: Lens' ProjectsDeploymentsGet Text
pdgDeploymentId
  = lens _pdgDeploymentId
      (\ s a -> s{_pdgDeploymentId = a})

-- | V1 error format.
pdgXgafv :: Lens' ProjectsDeploymentsGet (Maybe Xgafv)
pdgXgafv = lens _pdgXgafv (\ s a -> s{_pdgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdgUploadProtocol :: Lens' ProjectsDeploymentsGet (Maybe Text)
pdgUploadProtocol
  = lens _pdgUploadProtocol
      (\ s a -> s{_pdgUploadProtocol = a})

-- | OAuth access token.
pdgAccessToken :: Lens' ProjectsDeploymentsGet (Maybe Text)
pdgAccessToken
  = lens _pdgAccessToken
      (\ s a -> s{_pdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdgUploadType :: Lens' ProjectsDeploymentsGet (Maybe Text)
pdgUploadType
  = lens _pdgUploadType
      (\ s a -> s{_pdgUploadType = a})

-- | The script project\'s Drive ID.
pdgScriptId :: Lens' ProjectsDeploymentsGet Text
pdgScriptId
  = lens _pdgScriptId (\ s a -> s{_pdgScriptId = a})

-- | JSONP
pdgCallback :: Lens' ProjectsDeploymentsGet (Maybe Text)
pdgCallback
  = lens _pdgCallback (\ s a -> s{_pdgCallback = a})

instance GoogleRequest ProjectsDeploymentsGet where
        type Rs ProjectsDeploymentsGet = Deployment
        type Scopes ProjectsDeploymentsGet =
             '["https://www.googleapis.com/auth/script.deployments",
               "https://www.googleapis.com/auth/script.deployments.readonly"]
        requestClient ProjectsDeploymentsGet'{..}
          = go _pdgScriptId _pdgDeploymentId _pdgXgafv
              _pdgUploadProtocol
              _pdgAccessToken
              _pdgUploadType
              _pdgCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeploymentsGetResource)
                      mempty

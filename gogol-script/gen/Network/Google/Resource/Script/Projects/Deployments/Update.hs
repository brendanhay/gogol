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
-- Module      : Network.Google.Resource.Script.Projects.Deployments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.update@.
module Network.Google.Resource.Script.Projects.Deployments.Update
    (
    -- * REST Resource
      ProjectsDeploymentsUpdateResource

    -- * Creating a Request
    , projectsDeploymentsUpdate
    , ProjectsDeploymentsUpdate

    -- * Request Lenses
    , pduDeploymentId
    , pduXgafv
    , pduUploadProtocol
    , pduAccessToken
    , pduUploadType
    , pduPayload
    , pduScriptId
    , pduCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.deployments.update@ method which the
-- 'ProjectsDeploymentsUpdate' request conforms to.
type ProjectsDeploymentsUpdateResource =
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
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] UpdateDeploymentRequest :>
                             Put '[JSON] Deployment

-- | Updates a deployment of an Apps Script project.
--
-- /See:/ 'projectsDeploymentsUpdate' smart constructor.
data ProjectsDeploymentsUpdate =
  ProjectsDeploymentsUpdate'
    { _pduDeploymentId   :: !Text
    , _pduXgafv          :: !(Maybe Xgafv)
    , _pduUploadProtocol :: !(Maybe Text)
    , _pduAccessToken    :: !(Maybe Text)
    , _pduUploadType     :: !(Maybe Text)
    , _pduPayload        :: !UpdateDeploymentRequest
    , _pduScriptId       :: !Text
    , _pduCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsDeploymentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pduDeploymentId'
--
-- * 'pduXgafv'
--
-- * 'pduUploadProtocol'
--
-- * 'pduAccessToken'
--
-- * 'pduUploadType'
--
-- * 'pduPayload'
--
-- * 'pduScriptId'
--
-- * 'pduCallback'
projectsDeploymentsUpdate
    :: Text -- ^ 'pduDeploymentId'
    -> UpdateDeploymentRequest -- ^ 'pduPayload'
    -> Text -- ^ 'pduScriptId'
    -> ProjectsDeploymentsUpdate
projectsDeploymentsUpdate pPduDeploymentId_ pPduPayload_ pPduScriptId_ =
  ProjectsDeploymentsUpdate'
    { _pduDeploymentId = pPduDeploymentId_
    , _pduXgafv = Nothing
    , _pduUploadProtocol = Nothing
    , _pduAccessToken = Nothing
    , _pduUploadType = Nothing
    , _pduPayload = pPduPayload_
    , _pduScriptId = pPduScriptId_
    , _pduCallback = Nothing
    }

-- | The deployment ID for this deployment.
pduDeploymentId :: Lens' ProjectsDeploymentsUpdate Text
pduDeploymentId
  = lens _pduDeploymentId
      (\ s a -> s{_pduDeploymentId = a})

-- | V1 error format.
pduXgafv :: Lens' ProjectsDeploymentsUpdate (Maybe Xgafv)
pduXgafv = lens _pduXgafv (\ s a -> s{_pduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pduUploadProtocol :: Lens' ProjectsDeploymentsUpdate (Maybe Text)
pduUploadProtocol
  = lens _pduUploadProtocol
      (\ s a -> s{_pduUploadProtocol = a})

-- | OAuth access token.
pduAccessToken :: Lens' ProjectsDeploymentsUpdate (Maybe Text)
pduAccessToken
  = lens _pduAccessToken
      (\ s a -> s{_pduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pduUploadType :: Lens' ProjectsDeploymentsUpdate (Maybe Text)
pduUploadType
  = lens _pduUploadType
      (\ s a -> s{_pduUploadType = a})

-- | Multipart request metadata.
pduPayload :: Lens' ProjectsDeploymentsUpdate UpdateDeploymentRequest
pduPayload
  = lens _pduPayload (\ s a -> s{_pduPayload = a})

-- | The script project\'s Drive ID.
pduScriptId :: Lens' ProjectsDeploymentsUpdate Text
pduScriptId
  = lens _pduScriptId (\ s a -> s{_pduScriptId = a})

-- | JSONP
pduCallback :: Lens' ProjectsDeploymentsUpdate (Maybe Text)
pduCallback
  = lens _pduCallback (\ s a -> s{_pduCallback = a})

instance GoogleRequest ProjectsDeploymentsUpdate
         where
        type Rs ProjectsDeploymentsUpdate = Deployment
        type Scopes ProjectsDeploymentsUpdate =
             '["https://www.googleapis.com/auth/script.deployments"]
        requestClient ProjectsDeploymentsUpdate'{..}
          = go _pduScriptId _pduDeploymentId _pduXgafv
              _pduUploadProtocol
              _pduAccessToken
              _pduUploadType
              _pduCallback
              (Just AltJSON)
              _pduPayload
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeploymentsUpdateResource)
                      mempty

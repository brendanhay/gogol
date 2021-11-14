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
-- Module      : Network.Google.Resource.Script.Projects.Deployments.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.delete@.
module Network.Google.Resource.Script.Projects.Deployments.Delete
    (
    -- * REST Resource
      ProjectsDeploymentsDeleteResource

    -- * Creating a Request
    , projectsDeploymentsDelete
    , ProjectsDeploymentsDelete

    -- * Request Lenses
    , pddDeploymentId
    , pddXgafv
    , pddUploadProtocol
    , pddAccessToken
    , pddUploadType
    , pddScriptId
    , pddCallback
    ) where

import Network.Google.Prelude
import Network.Google.Script.Types

-- | A resource alias for @script.projects.deployments.delete@ method which the
-- 'ProjectsDeploymentsDelete' request conforms to.
type ProjectsDeploymentsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a deployment of an Apps Script project.
--
-- /See:/ 'projectsDeploymentsDelete' smart constructor.
data ProjectsDeploymentsDelete =
  ProjectsDeploymentsDelete'
    { _pddDeploymentId :: !Text
    , _pddXgafv :: !(Maybe Xgafv)
    , _pddUploadProtocol :: !(Maybe Text)
    , _pddAccessToken :: !(Maybe Text)
    , _pddUploadType :: !(Maybe Text)
    , _pddScriptId :: !Text
    , _pddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeploymentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddDeploymentId'
--
-- * 'pddXgafv'
--
-- * 'pddUploadProtocol'
--
-- * 'pddAccessToken'
--
-- * 'pddUploadType'
--
-- * 'pddScriptId'
--
-- * 'pddCallback'
projectsDeploymentsDelete
    :: Text -- ^ 'pddDeploymentId'
    -> Text -- ^ 'pddScriptId'
    -> ProjectsDeploymentsDelete
projectsDeploymentsDelete pPddDeploymentId_ pPddScriptId_ =
  ProjectsDeploymentsDelete'
    { _pddDeploymentId = pPddDeploymentId_
    , _pddXgafv = Nothing
    , _pddUploadProtocol = Nothing
    , _pddAccessToken = Nothing
    , _pddUploadType = Nothing
    , _pddScriptId = pPddScriptId_
    , _pddCallback = Nothing
    }


-- | The deployment ID to be undeployed.
pddDeploymentId :: Lens' ProjectsDeploymentsDelete Text
pddDeploymentId
  = lens _pddDeploymentId
      (\ s a -> s{_pddDeploymentId = a})

-- | V1 error format.
pddXgafv :: Lens' ProjectsDeploymentsDelete (Maybe Xgafv)
pddXgafv = lens _pddXgafv (\ s a -> s{_pddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddUploadProtocol :: Lens' ProjectsDeploymentsDelete (Maybe Text)
pddUploadProtocol
  = lens _pddUploadProtocol
      (\ s a -> s{_pddUploadProtocol = a})

-- | OAuth access token.
pddAccessToken :: Lens' ProjectsDeploymentsDelete (Maybe Text)
pddAccessToken
  = lens _pddAccessToken
      (\ s a -> s{_pddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddUploadType :: Lens' ProjectsDeploymentsDelete (Maybe Text)
pddUploadType
  = lens _pddUploadType
      (\ s a -> s{_pddUploadType = a})

-- | The script project\'s Drive ID.
pddScriptId :: Lens' ProjectsDeploymentsDelete Text
pddScriptId
  = lens _pddScriptId (\ s a -> s{_pddScriptId = a})

-- | JSONP
pddCallback :: Lens' ProjectsDeploymentsDelete (Maybe Text)
pddCallback
  = lens _pddCallback (\ s a -> s{_pddCallback = a})

instance GoogleRequest ProjectsDeploymentsDelete
         where
        type Rs ProjectsDeploymentsDelete = Empty
        type Scopes ProjectsDeploymentsDelete =
             '["https://www.googleapis.com/auth/script.deployments"]
        requestClient ProjectsDeploymentsDelete'{..}
          = go _pddScriptId _pddDeploymentId _pddXgafv
              _pddUploadProtocol
              _pddAccessToken
              _pddUploadType
              _pddCallback
              (Just AltJSON)
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeploymentsDeleteResource)
                      mempty

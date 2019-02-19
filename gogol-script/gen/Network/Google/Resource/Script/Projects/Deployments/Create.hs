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
-- Module      : Network.Google.Resource.Script.Projects.Deployments.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a deployment of an Apps Script project.
--
-- /See:/ <https://developers.google.com/apps-script/api/ Apps Script API Reference> for @script.projects.deployments.create@.
module Network.Google.Resource.Script.Projects.Deployments.Create
    (
    -- * REST Resource
      ProjectsDeploymentsCreateResource

    -- * Creating a Request
    , projectsDeploymentsCreate
    , ProjectsDeploymentsCreate

    -- * Request Lenses
    , pdcXgafv
    , pdcUploadProtocol
    , pdcAccessToken
    , pdcUploadType
    , pdcPayload
    , pdcScriptId
    , pdcCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Script.Types

-- | A resource alias for @script.projects.deployments.create@ method which the
-- 'ProjectsDeploymentsCreate' request conforms to.
type ProjectsDeploymentsCreateResource =
     "v1" :>
       "projects" :>
         Capture "scriptId" Text :>
           "deployments" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DeploymentConfig :>
                           Post '[JSON] Deployment

-- | Creates a deployment of an Apps Script project.
--
-- /See:/ 'projectsDeploymentsCreate' smart constructor.
data ProjectsDeploymentsCreate =
  ProjectsDeploymentsCreate'
    { _pdcXgafv          :: !(Maybe Xgafv)
    , _pdcUploadProtocol :: !(Maybe Text)
    , _pdcAccessToken    :: !(Maybe Text)
    , _pdcUploadType     :: !(Maybe Text)
    , _pdcPayload        :: !DeploymentConfig
    , _pdcScriptId       :: !Text
    , _pdcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsDeploymentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcXgafv'
--
-- * 'pdcUploadProtocol'
--
-- * 'pdcAccessToken'
--
-- * 'pdcUploadType'
--
-- * 'pdcPayload'
--
-- * 'pdcScriptId'
--
-- * 'pdcCallback'
projectsDeploymentsCreate
    :: DeploymentConfig -- ^ 'pdcPayload'
    -> Text -- ^ 'pdcScriptId'
    -> ProjectsDeploymentsCreate
projectsDeploymentsCreate pPdcPayload_ pPdcScriptId_ =
  ProjectsDeploymentsCreate'
    { _pdcXgafv = Nothing
    , _pdcUploadProtocol = Nothing
    , _pdcAccessToken = Nothing
    , _pdcUploadType = Nothing
    , _pdcPayload = pPdcPayload_
    , _pdcScriptId = pPdcScriptId_
    , _pdcCallback = Nothing
    }

-- | V1 error format.
pdcXgafv :: Lens' ProjectsDeploymentsCreate (Maybe Xgafv)
pdcXgafv = lens _pdcXgafv (\ s a -> s{_pdcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcUploadProtocol :: Lens' ProjectsDeploymentsCreate (Maybe Text)
pdcUploadProtocol
  = lens _pdcUploadProtocol
      (\ s a -> s{_pdcUploadProtocol = a})

-- | OAuth access token.
pdcAccessToken :: Lens' ProjectsDeploymentsCreate (Maybe Text)
pdcAccessToken
  = lens _pdcAccessToken
      (\ s a -> s{_pdcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcUploadType :: Lens' ProjectsDeploymentsCreate (Maybe Text)
pdcUploadType
  = lens _pdcUploadType
      (\ s a -> s{_pdcUploadType = a})

-- | Multipart request metadata.
pdcPayload :: Lens' ProjectsDeploymentsCreate DeploymentConfig
pdcPayload
  = lens _pdcPayload (\ s a -> s{_pdcPayload = a})

-- | The script project\'s Drive ID.
pdcScriptId :: Lens' ProjectsDeploymentsCreate Text
pdcScriptId
  = lens _pdcScriptId (\ s a -> s{_pdcScriptId = a})

-- | JSONP
pdcCallback :: Lens' ProjectsDeploymentsCreate (Maybe Text)
pdcCallback
  = lens _pdcCallback (\ s a -> s{_pdcCallback = a})

instance GoogleRequest ProjectsDeploymentsCreate
         where
        type Rs ProjectsDeploymentsCreate = Deployment
        type Scopes ProjectsDeploymentsCreate =
             '["https://www.googleapis.com/auth/script.deployments"]
        requestClient ProjectsDeploymentsCreate'{..}
          = go _pdcScriptId _pdcXgafv _pdcUploadProtocol
              _pdcAccessToken
              _pdcUploadType
              _pdcCallback
              (Just AltJSON)
              _pdcPayload
              scriptService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsDeploymentsCreateResource)
                      mempty

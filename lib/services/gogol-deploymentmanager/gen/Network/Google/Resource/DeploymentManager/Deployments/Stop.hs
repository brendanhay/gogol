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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Stop
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.stop@.
module Network.Google.Resource.DeploymentManager.Deployments.Stop
    (
    -- * REST Resource
      DeploymentsStopResource

    -- * Creating a Request
    , deploymentsStop
    , DeploymentsStop

    -- * Request Lenses
    , dsXgafv
    , dsUploadProtocol
    , dsProject
    , dsAccessToken
    , dsUploadType
    , dsPayload
    , dsCallback
    , dsDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.stop@ method which the
-- 'DeploymentsStop' request conforms to.
type DeploymentsStopResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "stop" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] DeploymentsStopRequest :>
                                   Post '[JSON] Operation

-- | Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ 'deploymentsStop' smart constructor.
data DeploymentsStop =
  DeploymentsStop'
    { _dsXgafv :: !(Maybe Xgafv)
    , _dsUploadProtocol :: !(Maybe Text)
    , _dsProject :: !Text
    , _dsAccessToken :: !(Maybe Text)
    , _dsUploadType :: !(Maybe Text)
    , _dsPayload :: !DeploymentsStopRequest
    , _dsCallback :: !(Maybe Text)
    , _dsDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsXgafv'
--
-- * 'dsUploadProtocol'
--
-- * 'dsProject'
--
-- * 'dsAccessToken'
--
-- * 'dsUploadType'
--
-- * 'dsPayload'
--
-- * 'dsCallback'
--
-- * 'dsDeployment'
deploymentsStop
    :: Text -- ^ 'dsProject'
    -> DeploymentsStopRequest -- ^ 'dsPayload'
    -> Text -- ^ 'dsDeployment'
    -> DeploymentsStop
deploymentsStop pDsProject_ pDsPayload_ pDsDeployment_ =
  DeploymentsStop'
    { _dsXgafv = Nothing
    , _dsUploadProtocol = Nothing
    , _dsProject = pDsProject_
    , _dsAccessToken = Nothing
    , _dsUploadType = Nothing
    , _dsPayload = pDsPayload_
    , _dsCallback = Nothing
    , _dsDeployment = pDsDeployment_
    }


-- | V1 error format.
dsXgafv :: Lens' DeploymentsStop (Maybe Xgafv)
dsXgafv = lens _dsXgafv (\ s a -> s{_dsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dsUploadProtocol :: Lens' DeploymentsStop (Maybe Text)
dsUploadProtocol
  = lens _dsUploadProtocol
      (\ s a -> s{_dsUploadProtocol = a})

-- | The project ID for this request.
dsProject :: Lens' DeploymentsStop Text
dsProject
  = lens _dsProject (\ s a -> s{_dsProject = a})

-- | OAuth access token.
dsAccessToken :: Lens' DeploymentsStop (Maybe Text)
dsAccessToken
  = lens _dsAccessToken
      (\ s a -> s{_dsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dsUploadType :: Lens' DeploymentsStop (Maybe Text)
dsUploadType
  = lens _dsUploadType (\ s a -> s{_dsUploadType = a})

-- | Multipart request metadata.
dsPayload :: Lens' DeploymentsStop DeploymentsStopRequest
dsPayload
  = lens _dsPayload (\ s a -> s{_dsPayload = a})

-- | JSONP
dsCallback :: Lens' DeploymentsStop (Maybe Text)
dsCallback
  = lens _dsCallback (\ s a -> s{_dsCallback = a})

-- | The name of the deployment for this request.
dsDeployment :: Lens' DeploymentsStop Text
dsDeployment
  = lens _dsDeployment (\ s a -> s{_dsDeployment = a})

instance GoogleRequest DeploymentsStop where
        type Rs DeploymentsStop = Operation
        type Scopes DeploymentsStop =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsStop'{..}
          = go _dsProject _dsDeployment _dsXgafv
              _dsUploadProtocol
              _dsAccessToken
              _dsUploadType
              _dsCallback
              (Just AltJSON)
              _dsPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsStopResource)
                      mempty

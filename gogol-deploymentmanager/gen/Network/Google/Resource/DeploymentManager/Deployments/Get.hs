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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.get@.
module Network.Google.Resource.DeploymentManager.Deployments.Get
    (
    -- * REST Resource
      DeploymentsGetResource

    -- * Creating a Request
    , deploymentsGet
    , DeploymentsGet

    -- * Request Lenses
    , dgXgafv
    , dgUploadProtocol
    , dgProject
    , dgAccessToken
    , dgUploadType
    , dgCallback
    , dgDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.get@ method which the
-- 'DeploymentsGet' request conforms to.
type DeploymentsGetResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Deployment

-- | Gets information about a specific deployment.
--
-- /See:/ 'deploymentsGet' smart constructor.
data DeploymentsGet =
  DeploymentsGet'
    { _dgXgafv :: !(Maybe Xgafv)
    , _dgUploadProtocol :: !(Maybe Text)
    , _dgProject :: !Text
    , _dgAccessToken :: !(Maybe Text)
    , _dgUploadType :: !(Maybe Text)
    , _dgCallback :: !(Maybe Text)
    , _dgDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgXgafv'
--
-- * 'dgUploadProtocol'
--
-- * 'dgProject'
--
-- * 'dgAccessToken'
--
-- * 'dgUploadType'
--
-- * 'dgCallback'
--
-- * 'dgDeployment'
deploymentsGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDeployment'
    -> DeploymentsGet
deploymentsGet pDgProject_ pDgDeployment_ =
  DeploymentsGet'
    { _dgXgafv = Nothing
    , _dgUploadProtocol = Nothing
    , _dgProject = pDgProject_
    , _dgAccessToken = Nothing
    , _dgUploadType = Nothing
    , _dgCallback = Nothing
    , _dgDeployment = pDgDeployment_
    }


-- | V1 error format.
dgXgafv :: Lens' DeploymentsGet (Maybe Xgafv)
dgXgafv = lens _dgXgafv (\ s a -> s{_dgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dgUploadProtocol :: Lens' DeploymentsGet (Maybe Text)
dgUploadProtocol
  = lens _dgUploadProtocol
      (\ s a -> s{_dgUploadProtocol = a})

-- | The project ID for this request.
dgProject :: Lens' DeploymentsGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | OAuth access token.
dgAccessToken :: Lens' DeploymentsGet (Maybe Text)
dgAccessToken
  = lens _dgAccessToken
      (\ s a -> s{_dgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dgUploadType :: Lens' DeploymentsGet (Maybe Text)
dgUploadType
  = lens _dgUploadType (\ s a -> s{_dgUploadType = a})

-- | JSONP
dgCallback :: Lens' DeploymentsGet (Maybe Text)
dgCallback
  = lens _dgCallback (\ s a -> s{_dgCallback = a})

-- | The name of the deployment for this request.
dgDeployment :: Lens' DeploymentsGet Text
dgDeployment
  = lens _dgDeployment (\ s a -> s{_dgDeployment = a})

instance GoogleRequest DeploymentsGet where
        type Rs DeploymentsGet = Deployment
        type Scopes DeploymentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly"]
        requestClient DeploymentsGet'{..}
          = go _dgProject _dgDeployment _dgXgafv
              _dgUploadProtocol
              _dgAccessToken
              _dgUploadType
              _dgCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy DeploymentsGetResource)
                      mempty

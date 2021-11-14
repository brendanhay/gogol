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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.delete@.
module Network.Google.Resource.DeploymentManager.Deployments.Delete
    (
    -- * REST Resource
      DeploymentsDeleteResource

    -- * Creating a Request
    , deploymentsDelete
    , DeploymentsDelete

    -- * Request Lenses
    , ddXgafv
    , ddUploadProtocol
    , ddProject
    , ddAccessToken
    , ddUploadType
    , ddDeletePolicy
    , ddCallback
    , ddDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.delete@ method which the
-- 'DeploymentsDelete' request conforms to.
type DeploymentsDeleteResource =
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
                           QueryParam "deletePolicy"
                             DeploymentsDeleteDeletePolicy
                             :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Delete '[JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'deploymentsDelete' smart constructor.
data DeploymentsDelete =
  DeploymentsDelete'
    { _ddXgafv :: !(Maybe Xgafv)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddProject :: !Text
    , _ddAccessToken :: !(Maybe Text)
    , _ddUploadType :: !(Maybe Text)
    , _ddDeletePolicy :: !DeploymentsDeleteDeletePolicy
    , _ddCallback :: !(Maybe Text)
    , _ddDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddUploadProtocol'
--
-- * 'ddProject'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddDeletePolicy'
--
-- * 'ddCallback'
--
-- * 'ddDeployment'
deploymentsDelete
    :: Text -- ^ 'ddProject'
    -> Text -- ^ 'ddDeployment'
    -> DeploymentsDelete
deploymentsDelete pDdProject_ pDdDeployment_ =
  DeploymentsDelete'
    { _ddXgafv = Nothing
    , _ddUploadProtocol = Nothing
    , _ddProject = pDdProject_
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddDeletePolicy = Delete'
    , _ddCallback = Nothing
    , _ddDeployment = pDdDeployment_
    }


-- | V1 error format.
ddXgafv :: Lens' DeploymentsDelete (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DeploymentsDelete (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | The project ID for this request.
ddProject :: Lens' DeploymentsDelete Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | OAuth access token.
ddAccessToken :: Lens' DeploymentsDelete (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DeploymentsDelete (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | Sets the policy to use for deleting resources.
ddDeletePolicy :: Lens' DeploymentsDelete DeploymentsDeleteDeletePolicy
ddDeletePolicy
  = lens _ddDeletePolicy
      (\ s a -> s{_ddDeletePolicy = a})

-- | JSONP
ddCallback :: Lens' DeploymentsDelete (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

-- | The name of the deployment for this request.
ddDeployment :: Lens' DeploymentsDelete Text
ddDeployment
  = lens _ddDeployment (\ s a -> s{_ddDeployment = a})

instance GoogleRequest DeploymentsDelete where
        type Rs DeploymentsDelete = Operation
        type Scopes DeploymentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsDelete'{..}
          = go _ddProject _ddDeployment _ddXgafv
              _ddUploadProtocol
              _ddAccessToken
              _ddUploadType
              (Just _ddDeletePolicy)
              _ddCallback
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsDeleteResource)
                      mempty

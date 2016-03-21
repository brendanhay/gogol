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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.update@.
module Network.Google.Resource.DeploymentManager.Deployments.Update
    (
    -- * REST Resource
      DeploymentsUpdateResource

    -- * Creating a Request
    , deploymentsUpdate
    , DeploymentsUpdate

    -- * Request Lenses
    , duCreatePolicy
    , duProject
    , duPayload
    , duDeletePolicy
    , duPreview
    , duDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.update@ method which the
-- 'DeploymentsUpdate' request conforms to.
type DeploymentsUpdateResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   QueryParam "createPolicy"
                     DeploymentsUpdateCreatePolicy
                     :>
                     QueryParam "deletePolicy"
                       DeploymentsUpdateDeletePolicy
                       :>
                       QueryParam "preview" Bool :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Deployment :> Put '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsUpdate' smart constructor.
data DeploymentsUpdate = DeploymentsUpdate'
    { _duCreatePolicy :: !DeploymentsUpdateCreatePolicy
    , _duProject      :: !Text
    , _duPayload      :: !Deployment
    , _duDeletePolicy :: !DeploymentsUpdateDeletePolicy
    , _duPreview      :: !Bool
    , _duDeployment   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duCreatePolicy'
--
-- * 'duProject'
--
-- * 'duPayload'
--
-- * 'duDeletePolicy'
--
-- * 'duPreview'
--
-- * 'duDeployment'
deploymentsUpdate
    :: Text -- ^ 'duProject'
    -> Deployment -- ^ 'duPayload'
    -> Text -- ^ 'duDeployment'
    -> DeploymentsUpdate
deploymentsUpdate pDuProject_ pDuPayload_ pDuDeployment_ =
    DeploymentsUpdate'
    { _duCreatePolicy = CreateOrAcquire
    , _duProject = pDuProject_
    , _duPayload = pDuPayload_
    , _duDeletePolicy = Delete'
    , _duPreview = False
    , _duDeployment = pDuDeployment_
    }

-- | Sets the policy to use for creating new resources.
duCreatePolicy :: Lens' DeploymentsUpdate DeploymentsUpdateCreatePolicy
duCreatePolicy
  = lens _duCreatePolicy
      (\ s a -> s{_duCreatePolicy = a})

-- | The project ID for this request.
duProject :: Lens' DeploymentsUpdate Text
duProject
  = lens _duProject (\ s a -> s{_duProject = a})

-- | Multipart request metadata.
duPayload :: Lens' DeploymentsUpdate Deployment
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | Sets the policy to use for deleting resources.
duDeletePolicy :: Lens' DeploymentsUpdate DeploymentsUpdateDeletePolicy
duDeletePolicy
  = lens _duDeletePolicy
      (\ s a -> s{_duDeletePolicy = a})

-- | If set to true, updates the deployment and creates and updates the
-- \"shell\" resources but does not actually alter or instantiate these
-- resources. This allows you to preview what your deployment will look
-- like. You can use this intent to preview how an update would affect your
-- deployment. You must provide a target.config with a configuration if
-- this is set to true. After previewing a deployment, you can deploy your
-- resources by making a request with the update() or you can
-- cancelPreview() to remove the preview altogether. Note that the
-- deployment will still exist after you cancel the preview and you must
-- separately delete this deployment if you want to remove it.
duPreview :: Lens' DeploymentsUpdate Bool
duPreview
  = lens _duPreview (\ s a -> s{_duPreview = a})

-- | The name of the deployment for this request.
duDeployment :: Lens' DeploymentsUpdate Text
duDeployment
  = lens _duDeployment (\ s a -> s{_duDeployment = a})

instance GoogleRequest DeploymentsUpdate where
        type Rs DeploymentsUpdate = Operation
        type Scopes DeploymentsUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsUpdate'{..}
          = go _duProject _duDeployment (Just _duCreatePolicy)
              (Just _duDeletePolicy)
              (Just _duPreview)
              (Just AltJSON)
              _duPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsUpdateResource)
                      mempty

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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsPatch@.
module Network.Google.Resource.DeploymentManager.Deployments.Patch
    (
    -- * REST Resource
      DeploymentsPatchResource

    -- * Creating a Request
    , deploymentsPatch'
    , DeploymentsPatch'

    -- * Request Lenses
    , dpCreatePolicy
    , dpProject
    , dpPayload
    , dpDeletePolicy
    , dpPreview
    , dpDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsPatch@ method which the
-- 'DeploymentsPatch'' request conforms to.
type DeploymentsPatchResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "createPolicy"
               DeploymentsPatchCreatePolicy
               :>
               QueryParam "deletePolicy"
                 DeploymentsPatchDeletePolicy
                 :>
                 QueryParam "preview" Bool :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Deployment :> Patch '[JSON] Operation

-- | Updates a deployment and all of the resources described by the
-- deployment manifest. This method supports patch semantics.
--
-- /See:/ 'deploymentsPatch'' smart constructor.
data DeploymentsPatch' = DeploymentsPatch'
    { _dpCreatePolicy :: !DeploymentsPatchCreatePolicy
    , _dpProject      :: !Text
    , _dpPayload      :: !Deployment
    , _dpDeletePolicy :: !DeploymentsPatchDeletePolicy
    , _dpPreview      :: !Bool
    , _dpDeployment   :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpCreatePolicy'
--
-- * 'dpProject'
--
-- * 'dpPayload'
--
-- * 'dpDeletePolicy'
--
-- * 'dpPreview'
--
-- * 'dpDeployment'
deploymentsPatch'
    :: Text -- ^ 'project'
    -> Deployment -- ^ 'payload'
    -> Text -- ^ 'deployment'
    -> DeploymentsPatch'
deploymentsPatch' pDpProject_ pDpPayload_ pDpDeployment_ =
    DeploymentsPatch'
    { _dpCreatePolicy = DPCPCreateOrAcquire
    , _dpProject = pDpProject_
    , _dpPayload = pDpPayload_
    , _dpDeletePolicy = DPDPDelete'
    , _dpPreview = False
    , _dpDeployment = pDpDeployment_
    }

-- | Sets the policy to use for creating new resources.
dpCreatePolicy :: Lens' DeploymentsPatch' DeploymentsPatchCreatePolicy
dpCreatePolicy
  = lens _dpCreatePolicy
      (\ s a -> s{_dpCreatePolicy = a})

-- | The project ID for this request.
dpProject :: Lens' DeploymentsPatch' Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | Multipart request metadata.
dpPayload :: Lens' DeploymentsPatch' Deployment
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | Sets the policy to use for deleting resources.
dpDeletePolicy :: Lens' DeploymentsPatch' DeploymentsPatchDeletePolicy
dpDeletePolicy
  = lens _dpDeletePolicy
      (\ s a -> s{_dpDeletePolicy = a})

-- | If set to true, updates the deployment and creates and updates the
-- \"shell\" resources but does not actually alter or instantiate these
-- resources. This allows you to preview what your deployment looks like.
-- You can use this intent to preview how an update would affect your
-- deployment. You must provide a target.config with a configuration if
-- this is set to true. After previewing a deployment, you can deploy your
-- resources by making a request with the update() or you can
-- cancelPreview() to remove the preview altogether. Note that the
-- deployment will still exist after you cancel the preview and you must
-- separately delete this deployment if you want to remove it.
dpPreview :: Lens' DeploymentsPatch' Bool
dpPreview
  = lens _dpPreview (\ s a -> s{_dpPreview = a})

-- | The name of the deployment for this request.
dpDeployment :: Lens' DeploymentsPatch' Text
dpDeployment
  = lens _dpDeployment (\ s a -> s{_dpDeployment = a})

instance GoogleRequest DeploymentsPatch' where
        type Rs DeploymentsPatch' = Operation
        requestClient DeploymentsPatch'{..}
          = go _dpProject _dpDeployment (Just _dpCreatePolicy)
              (Just _dpDeletePolicy)
              (Just _dpPreview)
              (Just AltJSON)
              _dpPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsPatchResource)
                      mempty

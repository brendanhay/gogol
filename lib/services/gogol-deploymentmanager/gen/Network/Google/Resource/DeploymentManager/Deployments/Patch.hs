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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.patch@.
module Network.Google.Resource.DeploymentManager.Deployments.Patch
    (
    -- * REST Resource
      DeploymentsPatchResource

    -- * Creating a Request
    , deploymentsPatch
    , DeploymentsPatch

    -- * Request Lenses
    , dpCreatePolicy
    , dpXgafv
    , dpUploadProtocol
    , dpProject
    , dpAccessToken
    , dpUploadType
    , dpPayload
    , dpDeletePolicy
    , dpPreview
    , dpCallback
    , dpDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.patch@ method which the
-- 'DeploymentsPatch' request conforms to.
type DeploymentsPatchResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   QueryParam "createPolicy"
                     DeploymentsPatchCreatePolicy
                     :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "deletePolicy"
                               DeploymentsPatchDeletePolicy
                               :>
                               QueryParam "preview" Bool :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     ReqBody '[JSON] Deployment :>
                                       Patch '[JSON] Operation

-- | Patches a deployment and all of the resources described by the
-- deployment manifest.
--
-- /See:/ 'deploymentsPatch' smart constructor.
data DeploymentsPatch =
  DeploymentsPatch'
    { _dpCreatePolicy :: !DeploymentsPatchCreatePolicy
    , _dpXgafv :: !(Maybe Xgafv)
    , _dpUploadProtocol :: !(Maybe Text)
    , _dpProject :: !Text
    , _dpAccessToken :: !(Maybe Text)
    , _dpUploadType :: !(Maybe Text)
    , _dpPayload :: !Deployment
    , _dpDeletePolicy :: !DeploymentsPatchDeletePolicy
    , _dpPreview :: !Bool
    , _dpCallback :: !(Maybe Text)
    , _dpDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpCreatePolicy'
--
-- * 'dpXgafv'
--
-- * 'dpUploadProtocol'
--
-- * 'dpProject'
--
-- * 'dpAccessToken'
--
-- * 'dpUploadType'
--
-- * 'dpPayload'
--
-- * 'dpDeletePolicy'
--
-- * 'dpPreview'
--
-- * 'dpCallback'
--
-- * 'dpDeployment'
deploymentsPatch
    :: Text -- ^ 'dpProject'
    -> Deployment -- ^ 'dpPayload'
    -> Text -- ^ 'dpDeployment'
    -> DeploymentsPatch
deploymentsPatch pDpProject_ pDpPayload_ pDpDeployment_ =
  DeploymentsPatch'
    { _dpCreatePolicy = DPCPCreateOrAcquire
    , _dpXgafv = Nothing
    , _dpUploadProtocol = Nothing
    , _dpProject = pDpProject_
    , _dpAccessToken = Nothing
    , _dpUploadType = Nothing
    , _dpPayload = pDpPayload_
    , _dpDeletePolicy = DPDPDelete'
    , _dpPreview = False
    , _dpCallback = Nothing
    , _dpDeployment = pDpDeployment_
    }


-- | Sets the policy to use for creating new resources.
dpCreatePolicy :: Lens' DeploymentsPatch DeploymentsPatchCreatePolicy
dpCreatePolicy
  = lens _dpCreatePolicy
      (\ s a -> s{_dpCreatePolicy = a})

-- | V1 error format.
dpXgafv :: Lens' DeploymentsPatch (Maybe Xgafv)
dpXgafv = lens _dpXgafv (\ s a -> s{_dpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dpUploadProtocol :: Lens' DeploymentsPatch (Maybe Text)
dpUploadProtocol
  = lens _dpUploadProtocol
      (\ s a -> s{_dpUploadProtocol = a})

-- | The project ID for this request.
dpProject :: Lens' DeploymentsPatch Text
dpProject
  = lens _dpProject (\ s a -> s{_dpProject = a})

-- | OAuth access token.
dpAccessToken :: Lens' DeploymentsPatch (Maybe Text)
dpAccessToken
  = lens _dpAccessToken
      (\ s a -> s{_dpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dpUploadType :: Lens' DeploymentsPatch (Maybe Text)
dpUploadType
  = lens _dpUploadType (\ s a -> s{_dpUploadType = a})

-- | Multipart request metadata.
dpPayload :: Lens' DeploymentsPatch Deployment
dpPayload
  = lens _dpPayload (\ s a -> s{_dpPayload = a})

-- | Sets the policy to use for deleting resources.
dpDeletePolicy :: Lens' DeploymentsPatch DeploymentsPatchDeletePolicy
dpDeletePolicy
  = lens _dpDeletePolicy
      (\ s a -> s{_dpDeletePolicy = a})

-- | If set to true, updates the deployment and creates and updates the
-- \"shell\" resources but does not actually alter or instantiate these
-- resources. This allows you to preview what your deployment will look
-- like. You can use this intent to preview how an update would affect your
-- deployment. You must provide a \`target.config\` with a configuration if
-- this is set to true. After previewing a deployment, you can deploy your
-- resources by making a request with the \`update()\` or you can
-- \`cancelPreview()\` to remove the preview altogether. Note that the
-- deployment will still exist after you cancel the preview and you must
-- separately delete this deployment if you want to remove it.
dpPreview :: Lens' DeploymentsPatch Bool
dpPreview
  = lens _dpPreview (\ s a -> s{_dpPreview = a})

-- | JSONP
dpCallback :: Lens' DeploymentsPatch (Maybe Text)
dpCallback
  = lens _dpCallback (\ s a -> s{_dpCallback = a})

-- | The name of the deployment for this request.
dpDeployment :: Lens' DeploymentsPatch Text
dpDeployment
  = lens _dpDeployment (\ s a -> s{_dpDeployment = a})

instance GoogleRequest DeploymentsPatch where
        type Rs DeploymentsPatch = Operation
        type Scopes DeploymentsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsPatch'{..}
          = go _dpProject _dpDeployment (Just _dpCreatePolicy)
              _dpXgafv
              _dpUploadProtocol
              _dpAccessToken
              _dpUploadType
              (Just _dpDeletePolicy)
              (Just _dpPreview)
              _dpCallback
              (Just AltJSON)
              _dpPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsPatchResource)
                      mempty

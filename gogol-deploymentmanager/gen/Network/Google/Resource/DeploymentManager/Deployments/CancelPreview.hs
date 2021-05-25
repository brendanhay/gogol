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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager Cloud Deployment Manager V2 API Reference> for @deploymentmanager.deployments.cancelPreview@.
module Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
    (
    -- * REST Resource
      DeploymentsCancelPreviewResource

    -- * Creating a Request
    , deploymentsCancelPreview
    , DeploymentsCancelPreview

    -- * Request Lenses
    , dcpXgafv
    , dcpUploadProtocol
    , dcpProject
    , dcpAccessToken
    , dcpUploadType
    , dcpPayload
    , dcpCallback
    , dcpDeployment
    ) where

import Network.Google.DeploymentManager.Types
import Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.cancelPreview@ method which the
-- 'DeploymentsCancelPreview' request conforms to.
type DeploymentsCancelPreviewResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "deployment" Text :>
                   "cancelPreview" :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] DeploymentsCancelPreviewRequest
                                   :> Post '[JSON] Operation

-- | Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ 'deploymentsCancelPreview' smart constructor.
data DeploymentsCancelPreview =
  DeploymentsCancelPreview'
    { _dcpXgafv :: !(Maybe Xgafv)
    , _dcpUploadProtocol :: !(Maybe Text)
    , _dcpProject :: !Text
    , _dcpAccessToken :: !(Maybe Text)
    , _dcpUploadType :: !(Maybe Text)
    , _dcpPayload :: !DeploymentsCancelPreviewRequest
    , _dcpCallback :: !(Maybe Text)
    , _dcpDeployment :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsCancelPreview' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpXgafv'
--
-- * 'dcpUploadProtocol'
--
-- * 'dcpProject'
--
-- * 'dcpAccessToken'
--
-- * 'dcpUploadType'
--
-- * 'dcpPayload'
--
-- * 'dcpCallback'
--
-- * 'dcpDeployment'
deploymentsCancelPreview
    :: Text -- ^ 'dcpProject'
    -> DeploymentsCancelPreviewRequest -- ^ 'dcpPayload'
    -> Text -- ^ 'dcpDeployment'
    -> DeploymentsCancelPreview
deploymentsCancelPreview pDcpProject_ pDcpPayload_ pDcpDeployment_ =
  DeploymentsCancelPreview'
    { _dcpXgafv = Nothing
    , _dcpUploadProtocol = Nothing
    , _dcpProject = pDcpProject_
    , _dcpAccessToken = Nothing
    , _dcpUploadType = Nothing
    , _dcpPayload = pDcpPayload_
    , _dcpCallback = Nothing
    , _dcpDeployment = pDcpDeployment_
    }


-- | V1 error format.
dcpXgafv :: Lens' DeploymentsCancelPreview (Maybe Xgafv)
dcpXgafv = lens _dcpXgafv (\ s a -> s{_dcpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcpUploadProtocol :: Lens' DeploymentsCancelPreview (Maybe Text)
dcpUploadProtocol
  = lens _dcpUploadProtocol
      (\ s a -> s{_dcpUploadProtocol = a})

-- | The project ID for this request.
dcpProject :: Lens' DeploymentsCancelPreview Text
dcpProject
  = lens _dcpProject (\ s a -> s{_dcpProject = a})

-- | OAuth access token.
dcpAccessToken :: Lens' DeploymentsCancelPreview (Maybe Text)
dcpAccessToken
  = lens _dcpAccessToken
      (\ s a -> s{_dcpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcpUploadType :: Lens' DeploymentsCancelPreview (Maybe Text)
dcpUploadType
  = lens _dcpUploadType
      (\ s a -> s{_dcpUploadType = a})

-- | Multipart request metadata.
dcpPayload :: Lens' DeploymentsCancelPreview DeploymentsCancelPreviewRequest
dcpPayload
  = lens _dcpPayload (\ s a -> s{_dcpPayload = a})

-- | JSONP
dcpCallback :: Lens' DeploymentsCancelPreview (Maybe Text)
dcpCallback
  = lens _dcpCallback (\ s a -> s{_dcpCallback = a})

-- | The name of the deployment for this request.
dcpDeployment :: Lens' DeploymentsCancelPreview Text
dcpDeployment
  = lens _dcpDeployment
      (\ s a -> s{_dcpDeployment = a})

instance GoogleRequest DeploymentsCancelPreview where
        type Rs DeploymentsCancelPreview = Operation
        type Scopes DeploymentsCancelPreview =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsCancelPreview'{..}
          = go _dcpProject _dcpDeployment _dcpXgafv
              _dcpUploadProtocol
              _dcpAccessToken
              _dcpUploadType
              _dcpCallback
              (Just AltJSON)
              _dcpPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsCancelPreviewResource)
                      mempty

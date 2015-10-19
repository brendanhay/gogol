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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.cancelPreview@.
module Network.Google.Resource.DeploymentManager.Deployments.CancelPreview
    (
    -- * REST Resource
      DeploymentsCancelPreviewResource

    -- * Creating a Request
    , deploymentsCancelPreview'
    , DeploymentsCancelPreview'

    -- * Request Lenses
    , dcpProject
    , dcpPayload
    , dcpDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.cancelPreview@ method which the
-- 'DeploymentsCancelPreview'' request conforms to.
type DeploymentsCancelPreviewResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "cancelPreview" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DeploymentsCancelPreviewRequest :>
                   Post '[JSON] Operation

-- | Cancels and removes the preview currently associated with the
-- deployment.
--
-- /See:/ 'deploymentsCancelPreview'' smart constructor.
data DeploymentsCancelPreview' = DeploymentsCancelPreview'
    { _dcpProject    :: !Text
    , _dcpPayload    :: !DeploymentsCancelPreviewRequest
    , _dcpDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsCancelPreview'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpProject'
--
-- * 'dcpPayload'
--
-- * 'dcpDeployment'
deploymentsCancelPreview'
    :: Text -- ^ 'dcpProject'
    -> DeploymentsCancelPreviewRequest -- ^ 'dcpPayload'
    -> Text -- ^ 'dcpDeployment'
    -> DeploymentsCancelPreview'
deploymentsCancelPreview' pDcpProject_ pDcpPayload_ pDcpDeployment_ =
    DeploymentsCancelPreview'
    { _dcpProject = pDcpProject_
    , _dcpPayload = pDcpPayload_
    , _dcpDeployment = pDcpDeployment_
    }

-- | The project ID for this request.
dcpProject :: Lens' DeploymentsCancelPreview' Text
dcpProject
  = lens _dcpProject (\ s a -> s{_dcpProject = a})

-- | Multipart request metadata.
dcpPayload :: Lens' DeploymentsCancelPreview' DeploymentsCancelPreviewRequest
dcpPayload
  = lens _dcpPayload (\ s a -> s{_dcpPayload = a})

-- | The name of the deployment for this request.
dcpDeployment :: Lens' DeploymentsCancelPreview' Text
dcpDeployment
  = lens _dcpDeployment
      (\ s a -> s{_dcpDeployment = a})

instance GoogleRequest DeploymentsCancelPreview'
         where
        type Rs DeploymentsCancelPreview' = Operation
        requestClient DeploymentsCancelPreview'{..}
          = go _dcpProject _dcpDeployment (Just AltJSON)
              _dcpPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsCancelPreviewResource)
                      mempty

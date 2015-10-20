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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.stop@.
module Network.Google.Resource.DeploymentManager.Deployments.Stop
    (
    -- * REST Resource
      DeploymentsStopResource

    -- * Creating a Request
    , deploymentsStop
    , DeploymentsStop

    -- * Request Lenses
    , dsProject
    , dsPayload
    , dsDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.stop@ method which the
-- 'DeploymentsStop' request conforms to.
type DeploymentsStopResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             "stop" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] DeploymentsStopRequest :>
                   Post '[JSON] Operation

-- | Stops an ongoing operation. This does not roll back any work that has
-- already been completed, but prevents any new work from being started.
--
-- /See:/ 'deploymentsStop' smart constructor.
data DeploymentsStop = DeploymentsStop
    { _dsProject    :: !Text
    , _dsPayload    :: !DeploymentsStopRequest
    , _dsDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsStop' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsProject'
--
-- * 'dsPayload'
--
-- * 'dsDeployment'
deploymentsStop
    :: Text -- ^ 'dsProject'
    -> DeploymentsStopRequest -- ^ 'dsPayload'
    -> Text -- ^ 'dsDeployment'
    -> DeploymentsStop
deploymentsStop pDsProject_ pDsPayload_ pDsDeployment_ =
    DeploymentsStop
    { _dsProject = pDsProject_
    , _dsPayload = pDsPayload_
    , _dsDeployment = pDsDeployment_
    }

-- | The project ID for this request.
dsProject :: Lens' DeploymentsStop Text
dsProject
  = lens _dsProject (\ s a -> s{_dsProject = a})

-- | Multipart request metadata.
dsPayload :: Lens' DeploymentsStop DeploymentsStopRequest
dsPayload
  = lens _dsPayload (\ s a -> s{_dsPayload = a})

-- | The name of the deployment for this request.
dsDeployment :: Lens' DeploymentsStop Text
dsDeployment
  = lens _dsDeployment (\ s a -> s{_dsDeployment = a})

instance GoogleRequest DeploymentsStop where
        type Rs DeploymentsStop = Operation
        requestClient DeploymentsStop{..}
          = go _dsProject _dsDeployment (Just AltJSON)
              _dsPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsStopResource)
                      mempty

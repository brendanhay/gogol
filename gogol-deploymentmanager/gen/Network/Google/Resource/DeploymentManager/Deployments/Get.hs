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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a specific deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.get@.
module Network.Google.Resource.DeploymentManager.Deployments.Get
    (
    -- * REST Resource
      DeploymentsGetResource

    -- * Creating a Request
    , deploymentsGet
    , DeploymentsGet

    -- * Request Lenses
    , dgProject
    , dgDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.get@ method which the
-- 'DeploymentsGet' request conforms to.
type DeploymentsGetResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Deployment

-- | Gets information about a specific deployment.
--
-- /See:/ 'deploymentsGet' smart constructor.
data DeploymentsGet = DeploymentsGet
    { _dgProject    :: !Text
    , _dgDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgProject'
--
-- * 'dgDeployment'
deploymentsGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDeployment'
    -> DeploymentsGet
deploymentsGet pDgProject_ pDgDeployment_ =
    DeploymentsGet
    { _dgProject = pDgProject_
    , _dgDeployment = pDgDeployment_
    }

-- | The project ID for this request.
dgProject :: Lens' DeploymentsGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | The name of the deployment for this request.
dgDeployment :: Lens' DeploymentsGet Text
dgDeployment
  = lens _dgDeployment (\ s a -> s{_dgDeployment = a})

instance GoogleRequest DeploymentsGet where
        type Rs DeploymentsGet = Deployment
        requestClient DeploymentsGet{..}
          = go _dgProject _dgDeployment (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient (Proxy :: Proxy DeploymentsGetResource)
                      mempty

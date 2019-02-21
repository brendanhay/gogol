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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.delete@.
module Network.Google.Resource.DeploymentManager.Deployments.Delete
    (
    -- * REST Resource
      DeploymentsDeleteResource

    -- * Creating a Request
    , deploymentsDelete
    , DeploymentsDelete

    -- * Request Lenses
    , ddProject
    , ddDeletePolicy
    , ddDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

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
                   QueryParam "deletePolicy"
                     DeploymentsDeleteDeletePolicy
                     :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'deploymentsDelete' smart constructor.
data DeploymentsDelete =
  DeploymentsDelete'
    { _ddProject      :: !Text
    , _ddDeletePolicy :: !DeploymentsDeleteDeletePolicy
    , _ddDeployment   :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddProject'
--
-- * 'ddDeletePolicy'
--
-- * 'ddDeployment'
deploymentsDelete
    :: Text -- ^ 'ddProject'
    -> Text -- ^ 'ddDeployment'
    -> DeploymentsDelete
deploymentsDelete pDdProject_ pDdDeployment_ =
  DeploymentsDelete'
    { _ddProject = pDdProject_
    , _ddDeletePolicy = Delete'
    , _ddDeployment = pDdDeployment_
    }


-- | The project ID for this request.
ddProject :: Lens' DeploymentsDelete Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | Sets the policy to use for deleting resources.
ddDeletePolicy :: Lens' DeploymentsDelete DeploymentsDeleteDeletePolicy
ddDeletePolicy
  = lens _ddDeletePolicy
      (\ s a -> s{_ddDeletePolicy = a})

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
          = go _ddProject _ddDeployment (Just _ddDeletePolicy)
              (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsDeleteResource)
                      mempty

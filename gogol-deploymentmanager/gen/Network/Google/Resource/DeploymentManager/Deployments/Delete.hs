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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerDeploymentsDelete@.
module Network.Google.Resource.DeploymentManager.Deployments.Delete
    (
    -- * REST Resource
      DeploymentsDeleteResource

    -- * Creating a Request
    , deploymentsDelete'
    , DeploymentsDelete'

    -- * Request Lenses
    , ddProject
    , ddDeployment
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerDeploymentsDelete@ method which the
-- 'DeploymentsDelete'' request conforms to.
type DeploymentsDeleteResource =
     Capture "project" Text :>
       "global" :>
         "deployments" :>
           Capture "deployment" Text :>
             QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a deployment and all of the resources in the deployment.
--
-- /See:/ 'deploymentsDelete'' smart constructor.
data DeploymentsDelete' = DeploymentsDelete'
    { _ddProject    :: !Text
    , _ddDeployment :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddProject'
--
-- * 'ddDeployment'
deploymentsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'deployment'
    -> DeploymentsDelete'
deploymentsDelete' pDdProject_ pDdDeployment_ =
    DeploymentsDelete'
    { _ddProject = pDdProject_
    , _ddDeployment = pDdDeployment_
    }

-- | The project ID for this request.
ddProject :: Lens' DeploymentsDelete' Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | The name of the deployment for this request.
ddDeployment :: Lens' DeploymentsDelete' Text
ddDeployment
  = lens _ddDeployment (\ s a -> s{_ddDeployment = a})

instance GoogleRequest DeploymentsDelete' where
        type Rs DeploymentsDelete' = Operation
        requestClient DeploymentsDelete'{..}
          = go _ddProject _ddDeployment (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsDeleteResource)
                      mempty

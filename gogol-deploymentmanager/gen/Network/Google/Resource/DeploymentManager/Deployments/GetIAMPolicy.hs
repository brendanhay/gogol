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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.getIamPolicy@.
module Network.Google.Resource.DeploymentManager.Deployments.GetIAMPolicy
    (
    -- * REST Resource
      DeploymentsGetIAMPolicyResource

    -- * Creating a Request
    , deploymentsGetIAMPolicy
    , DeploymentsGetIAMPolicy

    -- * Request Lenses
    , dgipProject
    , dgipResource
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.getIamPolicy@ method which the
-- 'DeploymentsGetIAMPolicy' request conforms to.
type DeploymentsGetIAMPolicyResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'deploymentsGetIAMPolicy' smart constructor.
data DeploymentsGetIAMPolicy =
  DeploymentsGetIAMPolicy'
    { _dgipProject  :: !Text
    , _dgipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DeploymentsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgipProject'
--
-- * 'dgipResource'
deploymentsGetIAMPolicy
    :: Text -- ^ 'dgipProject'
    -> Text -- ^ 'dgipResource'
    -> DeploymentsGetIAMPolicy
deploymentsGetIAMPolicy pDgipProject_ pDgipResource_ =
  DeploymentsGetIAMPolicy'
    {_dgipProject = pDgipProject_, _dgipResource = pDgipResource_}


-- | Project ID for this request.
dgipProject :: Lens' DeploymentsGetIAMPolicy Text
dgipProject
  = lens _dgipProject (\ s a -> s{_dgipProject = a})

-- | Name or id of the resource for this request.
dgipResource :: Lens' DeploymentsGetIAMPolicy Text
dgipResource
  = lens _dgipResource (\ s a -> s{_dgipResource = a})

instance GoogleRequest DeploymentsGetIAMPolicy where
        type Rs DeploymentsGetIAMPolicy = Policy
        type Scopes DeploymentsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsGetIAMPolicy'{..}
          = go _dgipProject _dgipResource (Just AltJSON)
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsGetIAMPolicyResource)
                      mempty

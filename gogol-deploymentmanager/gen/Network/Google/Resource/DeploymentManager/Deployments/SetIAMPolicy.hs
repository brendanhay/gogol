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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.setIamPolicy@.
module Network.Google.Resource.DeploymentManager.Deployments.SetIAMPolicy
    (
    -- * REST Resource
      DeploymentsSetIAMPolicyResource

    -- * Creating a Request
    , deploymentsSetIAMPolicy
    , DeploymentsSetIAMPolicy

    -- * Request Lenses
    , dsipProject
    , dsipPayload
    , dsipResource
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.setIamPolicy@ method which the
-- 'DeploymentsSetIAMPolicy' request conforms to.
type DeploymentsSetIAMPolicyResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Policy :> Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'deploymentsSetIAMPolicy' smart constructor.
data DeploymentsSetIAMPolicy = DeploymentsSetIAMPolicy'
    { _dsipProject  :: !Text
    , _dsipPayload  :: !Policy
    , _dsipResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsipProject'
--
-- * 'dsipPayload'
--
-- * 'dsipResource'
deploymentsSetIAMPolicy
    :: Text -- ^ 'dsipProject'
    -> Policy -- ^ 'dsipPayload'
    -> Text -- ^ 'dsipResource'
    -> DeploymentsSetIAMPolicy
deploymentsSetIAMPolicy pDsipProject_ pDsipPayload_ pDsipResource_ =
    DeploymentsSetIAMPolicy'
    { _dsipProject = pDsipProject_
    , _dsipPayload = pDsipPayload_
    , _dsipResource = pDsipResource_
    }

-- | Project ID for this request.
dsipProject :: Lens' DeploymentsSetIAMPolicy Text
dsipProject
  = lens _dsipProject (\ s a -> s{_dsipProject = a})

-- | Multipart request metadata.
dsipPayload :: Lens' DeploymentsSetIAMPolicy Policy
dsipPayload
  = lens _dsipPayload (\ s a -> s{_dsipPayload = a})

-- | Name of the resource for this request.
dsipResource :: Lens' DeploymentsSetIAMPolicy Text
dsipResource
  = lens _dsipResource (\ s a -> s{_dsipResource = a})

instance GoogleRequest DeploymentsSetIAMPolicy where
        type Rs DeploymentsSetIAMPolicy = Policy
        type Scopes DeploymentsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsSetIAMPolicy'{..}
          = go _dsipProject _dsipResource (Just AltJSON)
              _dsipPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy :: Proxy DeploymentsSetIAMPolicyResource)
                      mempty

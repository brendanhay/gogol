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
-- Module      : Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://cloud.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @deploymentmanager.deployments.testIamPermissions@.
module Network.Google.Resource.DeploymentManager.Deployments.TestIAMPermissions
    (
    -- * REST Resource
      DeploymentsTestIAMPermissionsResource

    -- * Creating a Request
    , deploymentsTestIAMPermissions
    , DeploymentsTestIAMPermissions

    -- * Request Lenses
    , dtipProject
    , dtipPayload
    , dtipResource
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @deploymentmanager.deployments.testIamPermissions@ method which the
-- 'DeploymentsTestIAMPermissions' request conforms to.
type DeploymentsTestIAMPermissionsResource =
     "deploymentmanager" :>
       "v2" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "deployments" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'deploymentsTestIAMPermissions' smart constructor.
data DeploymentsTestIAMPermissions = DeploymentsTestIAMPermissions'
    { _dtipProject  :: !Text
    , _dtipPayload  :: !TestPermissionsRequest
    , _dtipResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeploymentsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtipProject'
--
-- * 'dtipPayload'
--
-- * 'dtipResource'
deploymentsTestIAMPermissions
    :: Text -- ^ 'dtipProject'
    -> TestPermissionsRequest -- ^ 'dtipPayload'
    -> Text -- ^ 'dtipResource'
    -> DeploymentsTestIAMPermissions
deploymentsTestIAMPermissions pDtipProject_ pDtipPayload_ pDtipResource_ =
    DeploymentsTestIAMPermissions'
    { _dtipProject = pDtipProject_
    , _dtipPayload = pDtipPayload_
    , _dtipResource = pDtipResource_
    }

-- | Project ID for this request.
dtipProject :: Lens' DeploymentsTestIAMPermissions Text
dtipProject
  = lens _dtipProject (\ s a -> s{_dtipProject = a})

-- | Multipart request metadata.
dtipPayload :: Lens' DeploymentsTestIAMPermissions TestPermissionsRequest
dtipPayload
  = lens _dtipPayload (\ s a -> s{_dtipPayload = a})

-- | Name or id of the resource for this request.
dtipResource :: Lens' DeploymentsTestIAMPermissions Text
dtipResource
  = lens _dtipResource (\ s a -> s{_dtipResource = a})

instance GoogleRequest DeploymentsTestIAMPermissions
         where
        type Rs DeploymentsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes DeploymentsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman"]
        requestClient DeploymentsTestIAMPermissions'{..}
          = go _dtipProject _dtipResource (Just AltJSON)
              _dtipPayload
              deploymentManagerService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy DeploymentsTestIAMPermissionsResource)
                      mempty

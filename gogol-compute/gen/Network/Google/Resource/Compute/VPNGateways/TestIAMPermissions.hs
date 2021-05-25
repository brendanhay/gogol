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
-- Module      : Network.Google.Resource.Compute.VPNGateways.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.testIamPermissions@.
module Network.Google.Resource.Compute.VPNGateways.TestIAMPermissions
    (
    -- * REST Resource
      VPNGatewaysTestIAMPermissionsResource

    -- * Creating a Request
    , vpnGatewaysTestIAMPermissions
    , VPNGatewaysTestIAMPermissions

    -- * Request Lenses
    , vgtipProject
    , vgtipPayload
    , vgtipResource
    , vgtipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.testIamPermissions@ method which the
-- 'VPNGatewaysTestIAMPermissions' request conforms to.
type VPNGatewaysTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'vpnGatewaysTestIAMPermissions' smart constructor.
data VPNGatewaysTestIAMPermissions =
  VPNGatewaysTestIAMPermissions'
    { _vgtipProject :: !Text
    , _vgtipPayload :: !TestPermissionsRequest
    , _vgtipResource :: !Text
    , _vgtipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgtipProject'
--
-- * 'vgtipPayload'
--
-- * 'vgtipResource'
--
-- * 'vgtipRegion'
vpnGatewaysTestIAMPermissions
    :: Text -- ^ 'vgtipProject'
    -> TestPermissionsRequest -- ^ 'vgtipPayload'
    -> Text -- ^ 'vgtipResource'
    -> Text -- ^ 'vgtipRegion'
    -> VPNGatewaysTestIAMPermissions
vpnGatewaysTestIAMPermissions pVgtipProject_ pVgtipPayload_ pVgtipResource_ pVgtipRegion_ =
  VPNGatewaysTestIAMPermissions'
    { _vgtipProject = pVgtipProject_
    , _vgtipPayload = pVgtipPayload_
    , _vgtipResource = pVgtipResource_
    , _vgtipRegion = pVgtipRegion_
    }


-- | Project ID for this request.
vgtipProject :: Lens' VPNGatewaysTestIAMPermissions Text
vgtipProject
  = lens _vgtipProject (\ s a -> s{_vgtipProject = a})

-- | Multipart request metadata.
vgtipPayload :: Lens' VPNGatewaysTestIAMPermissions TestPermissionsRequest
vgtipPayload
  = lens _vgtipPayload (\ s a -> s{_vgtipPayload = a})

-- | Name or id of the resource for this request.
vgtipResource :: Lens' VPNGatewaysTestIAMPermissions Text
vgtipResource
  = lens _vgtipResource
      (\ s a -> s{_vgtipResource = a})

-- | The name of the region for this request.
vgtipRegion :: Lens' VPNGatewaysTestIAMPermissions Text
vgtipRegion
  = lens _vgtipRegion (\ s a -> s{_vgtipRegion = a})

instance GoogleRequest VPNGatewaysTestIAMPermissions
         where
        type Rs VPNGatewaysTestIAMPermissions =
             TestPermissionsResponse
        type Scopes VPNGatewaysTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNGatewaysTestIAMPermissions'{..}
          = go _vgtipProject _vgtipRegion _vgtipResource
              (Just AltJSON)
              _vgtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy VPNGatewaysTestIAMPermissionsResource)
                      mempty

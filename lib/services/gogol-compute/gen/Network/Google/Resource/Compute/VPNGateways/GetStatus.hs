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
-- Module      : Network.Google.Resource.Compute.VPNGateways.GetStatus
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the status for the specified VPN gateway.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.getStatus@.
module Network.Google.Resource.Compute.VPNGateways.GetStatus
    (
    -- * REST Resource
      VPNGatewaysGetStatusResource

    -- * Creating a Request
    , vpnGatewaysGetStatus
    , VPNGatewaysGetStatus

    -- * Request Lenses
    , vggsProject
    , vggsRegion
    , vggsVPNGateway
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.getStatus@ method which the
-- 'VPNGatewaysGetStatus' request conforms to.
type VPNGatewaysGetStatusResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   Capture "vpnGateway" Text :>
                     "getStatus" :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] VPNGatewaysGetStatusResponse

-- | Returns the status for the specified VPN gateway.
--
-- /See:/ 'vpnGatewaysGetStatus' smart constructor.
data VPNGatewaysGetStatus =
  VPNGatewaysGetStatus'
    { _vggsProject :: !Text
    , _vggsRegion :: !Text
    , _vggsVPNGateway :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysGetStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vggsProject'
--
-- * 'vggsRegion'
--
-- * 'vggsVPNGateway'
vpnGatewaysGetStatus
    :: Text -- ^ 'vggsProject'
    -> Text -- ^ 'vggsRegion'
    -> Text -- ^ 'vggsVPNGateway'
    -> VPNGatewaysGetStatus
vpnGatewaysGetStatus pVggsProject_ pVggsRegion_ pVggsVPNGateway_ =
  VPNGatewaysGetStatus'
    { _vggsProject = pVggsProject_
    , _vggsRegion = pVggsRegion_
    , _vggsVPNGateway = pVggsVPNGateway_
    }


-- | Project ID for this request.
vggsProject :: Lens' VPNGatewaysGetStatus Text
vggsProject
  = lens _vggsProject (\ s a -> s{_vggsProject = a})

-- | Name of the region for this request.
vggsRegion :: Lens' VPNGatewaysGetStatus Text
vggsRegion
  = lens _vggsRegion (\ s a -> s{_vggsRegion = a})

-- | Name of the VPN gateway to return.
vggsVPNGateway :: Lens' VPNGatewaysGetStatus Text
vggsVPNGateway
  = lens _vggsVPNGateway
      (\ s a -> s{_vggsVPNGateway = a})

instance GoogleRequest VPNGatewaysGetStatus where
        type Rs VPNGatewaysGetStatus =
             VPNGatewaysGetStatusResponse
        type Scopes VPNGatewaysGetStatus =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNGatewaysGetStatus'{..}
          = go _vggsProject _vggsRegion _vggsVPNGateway
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysGetStatusResource)
                      mempty

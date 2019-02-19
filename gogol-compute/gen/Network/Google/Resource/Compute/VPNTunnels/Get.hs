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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified VpnTunnel resource. Gets a list of available VPN
-- tunnels by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.get@.
module Network.Google.Resource.Compute.VPNTunnels.Get
    (
    -- * REST Resource
      VPNTunnelsGetResource

    -- * Creating a Request
    , vpnTunnelsGet
    , VPNTunnelsGet

    -- * Request Lenses
    , vtgProject
    , vtgVPNTunnel
    , vtgRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.get@ method which the
-- 'VPNTunnelsGet' request conforms to.
type VPNTunnelsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   Capture "vpnTunnel" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] VPNTunnel

-- | Returns the specified VpnTunnel resource. Gets a list of available VPN
-- tunnels by making a list() request.
--
-- /See:/ 'vpnTunnelsGet' smart constructor.
data VPNTunnelsGet =
  VPNTunnelsGet'
    { _vtgProject   :: !Text
    , _vtgVPNTunnel :: !Text
    , _vtgRegion    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNTunnelsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtgProject'
--
-- * 'vtgVPNTunnel'
--
-- * 'vtgRegion'
vpnTunnelsGet
    :: Text -- ^ 'vtgProject'
    -> Text -- ^ 'vtgVPNTunnel'
    -> Text -- ^ 'vtgRegion'
    -> VPNTunnelsGet
vpnTunnelsGet pVtgProject_ pVtgVPNTunnel_ pVtgRegion_ =
  VPNTunnelsGet'
    { _vtgProject = pVtgProject_
    , _vtgVPNTunnel = pVtgVPNTunnel_
    , _vtgRegion = pVtgRegion_
    }


-- | Project ID for this request.
vtgProject :: Lens' VPNTunnelsGet Text
vtgProject
  = lens _vtgProject (\ s a -> s{_vtgProject = a})

-- | Name of the VpnTunnel resource to return.
vtgVPNTunnel :: Lens' VPNTunnelsGet Text
vtgVPNTunnel
  = lens _vtgVPNTunnel (\ s a -> s{_vtgVPNTunnel = a})

-- | Name of the region for this request.
vtgRegion :: Lens' VPNTunnelsGet Text
vtgRegion
  = lens _vtgRegion (\ s a -> s{_vtgRegion = a})

instance GoogleRequest VPNTunnelsGet where
        type Rs VPNTunnelsGet = VPNTunnel
        type Scopes VPNTunnelsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNTunnelsGet'{..}
          = go _vtgProject _vtgRegion _vtgVPNTunnel
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy VPNTunnelsGetResource)
                      mempty

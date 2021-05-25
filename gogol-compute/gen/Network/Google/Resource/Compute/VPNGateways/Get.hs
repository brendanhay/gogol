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
-- Module      : Network.Google.Resource.Compute.VPNGateways.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified VPN gateway. Gets a list of available VPN gateways
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.get@.
module Network.Google.Resource.Compute.VPNGateways.Get
    (
    -- * REST Resource
      VPNGatewaysGetResource

    -- * Creating a Request
    , vpnGatewaysGet
    , VPNGatewaysGet

    -- * Request Lenses
    , vggProject
    , vggRegion
    , vggVPNGateway
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.get@ method which the
-- 'VPNGatewaysGet' request conforms to.
type VPNGatewaysGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   Capture "vpnGateway" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] VPNGateway

-- | Returns the specified VPN gateway. Gets a list of available VPN gateways
-- by making a list() request.
--
-- /See:/ 'vpnGatewaysGet' smart constructor.
data VPNGatewaysGet =
  VPNGatewaysGet'
    { _vggProject :: !Text
    , _vggRegion :: !Text
    , _vggVPNGateway :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vggProject'
--
-- * 'vggRegion'
--
-- * 'vggVPNGateway'
vpnGatewaysGet
    :: Text -- ^ 'vggProject'
    -> Text -- ^ 'vggRegion'
    -> Text -- ^ 'vggVPNGateway'
    -> VPNGatewaysGet
vpnGatewaysGet pVggProject_ pVggRegion_ pVggVPNGateway_ =
  VPNGatewaysGet'
    { _vggProject = pVggProject_
    , _vggRegion = pVggRegion_
    , _vggVPNGateway = pVggVPNGateway_
    }


-- | Project ID for this request.
vggProject :: Lens' VPNGatewaysGet Text
vggProject
  = lens _vggProject (\ s a -> s{_vggProject = a})

-- | Name of the region for this request.
vggRegion :: Lens' VPNGatewaysGet Text
vggRegion
  = lens _vggRegion (\ s a -> s{_vggRegion = a})

-- | Name of the VPN gateway to return.
vggVPNGateway :: Lens' VPNGatewaysGet Text
vggVPNGateway
  = lens _vggVPNGateway
      (\ s a -> s{_vggVPNGateway = a})

instance GoogleRequest VPNGatewaysGet where
        type Rs VPNGatewaysGet = VPNGateway
        type Scopes VPNGatewaysGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient VPNGatewaysGet'{..}
          = go _vggProject _vggRegion _vggVPNGateway
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy VPNGatewaysGetResource)
                      mempty

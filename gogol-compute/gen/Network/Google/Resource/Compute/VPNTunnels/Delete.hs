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
-- Module      : Network.Google.Resource.Compute.VPNTunnels.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified VpnTunnel resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeVPNTunnelsDelete@.
module Network.Google.Resource.Compute.VPNTunnels.Delete
    (
    -- * REST Resource
      VPNTunnelsDeleteResource

    -- * Creating a Request
    , vpnTunnelsDelete'
    , VPNTunnelsDelete'

    -- * Request Lenses
    , vtdProject
    , vtdVPNTunnel
    , vtdRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeVPNTunnelsDelete@ method which the
-- 'VPNTunnelsDelete'' request conforms to.
type VPNTunnelsDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "vpnTunnels" :>
             Capture "vpnTunnel" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ 'vpnTunnelsDelete'' smart constructor.
data VPNTunnelsDelete' = VPNTunnelsDelete'
    { _vtdProject   :: !Text
    , _vtdVPNTunnel :: !Text
    , _vtdRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VPNTunnelsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtdProject'
--
-- * 'vtdVPNTunnel'
--
-- * 'vtdRegion'
vpnTunnelsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'vpnTunnel'
    -> Text -- ^ 'region'
    -> VPNTunnelsDelete'
vpnTunnelsDelete' pVtdProject_ pVtdVPNTunnel_ pVtdRegion_ =
    VPNTunnelsDelete'
    { _vtdProject = pVtdProject_
    , _vtdVPNTunnel = pVtdVPNTunnel_
    , _vtdRegion = pVtdRegion_
    }

-- | Project ID for this request.
vtdProject :: Lens' VPNTunnelsDelete' Text
vtdProject
  = lens _vtdProject (\ s a -> s{_vtdProject = a})

-- | Name of the VpnTunnel resource to delete.
vtdVPNTunnel :: Lens' VPNTunnelsDelete' Text
vtdVPNTunnel
  = lens _vtdVPNTunnel (\ s a -> s{_vtdVPNTunnel = a})

-- | The name of the region for this request.
vtdRegion :: Lens' VPNTunnelsDelete' Text
vtdRegion
  = lens _vtdRegion (\ s a -> s{_vtdRegion = a})

instance GoogleRequest VPNTunnelsDelete' where
        type Rs VPNTunnelsDelete' = Operation
        requestClient VPNTunnelsDelete'{..}
          = go _vtdProject _vtdRegion _vtdVPNTunnel
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsDeleteResource)
                      mempty

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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified VpnTunnel resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnTunnels.delete@.
module Network.Google.Resource.Compute.VPNTunnels.Delete
    (
    -- * REST Resource
      VPNTunnelsDeleteResource

    -- * Creating a Request
    , vpnTunnelsDelete
    , VPNTunnelsDelete

    -- * Request Lenses
    , vtdRequestId
    , vtdProject
    , vtdVPNTunnel
    , vtdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnTunnels.delete@ method which the
-- 'VPNTunnelsDelete' request conforms to.
type VPNTunnelsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnTunnels" :>
                   Capture "vpnTunnel" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified VpnTunnel resource.
--
-- /See:/ 'vpnTunnelsDelete' smart constructor.
data VPNTunnelsDelete =
  VPNTunnelsDelete'
    { _vtdRequestId :: !(Maybe Text)
    , _vtdProject :: !Text
    , _vtdVPNTunnel :: !Text
    , _vtdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNTunnelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vtdRequestId'
--
-- * 'vtdProject'
--
-- * 'vtdVPNTunnel'
--
-- * 'vtdRegion'
vpnTunnelsDelete
    :: Text -- ^ 'vtdProject'
    -> Text -- ^ 'vtdVPNTunnel'
    -> Text -- ^ 'vtdRegion'
    -> VPNTunnelsDelete
vpnTunnelsDelete pVtdProject_ pVtdVPNTunnel_ pVtdRegion_ =
  VPNTunnelsDelete'
    { _vtdRequestId = Nothing
    , _vtdProject = pVtdProject_
    , _vtdVPNTunnel = pVtdVPNTunnel_
    , _vtdRegion = pVtdRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
vtdRequestId :: Lens' VPNTunnelsDelete (Maybe Text)
vtdRequestId
  = lens _vtdRequestId (\ s a -> s{_vtdRequestId = a})

-- | Project ID for this request.
vtdProject :: Lens' VPNTunnelsDelete Text
vtdProject
  = lens _vtdProject (\ s a -> s{_vtdProject = a})

-- | Name of the VpnTunnel resource to delete.
vtdVPNTunnel :: Lens' VPNTunnelsDelete Text
vtdVPNTunnel
  = lens _vtdVPNTunnel (\ s a -> s{_vtdVPNTunnel = a})

-- | Name of the region for this request.
vtdRegion :: Lens' VPNTunnelsDelete Text
vtdRegion
  = lens _vtdRegion (\ s a -> s{_vtdRegion = a})

instance GoogleRequest VPNTunnelsDelete where
        type Rs VPNTunnelsDelete = Operation
        type Scopes VPNTunnelsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient VPNTunnelsDelete'{..}
          = go _vtdProject _vtdRegion _vtdVPNTunnel
              _vtdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNTunnelsDeleteResource)
                      mempty

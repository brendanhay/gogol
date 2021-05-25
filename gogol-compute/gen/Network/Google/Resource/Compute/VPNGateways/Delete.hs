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
-- Module      : Network.Google.Resource.Compute.VPNGateways.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified VPN gateway.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.delete@.
module Network.Google.Resource.Compute.VPNGateways.Delete
    (
    -- * REST Resource
      VPNGatewaysDeleteResource

    -- * Creating a Request
    , vpnGatewaysDelete
    , VPNGatewaysDelete

    -- * Request Lenses
    , vgdRequestId
    , vgdProject
    , vgdRegion
    , vgdVPNGateway
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.delete@ method which the
-- 'VPNGatewaysDelete' request conforms to.
type VPNGatewaysDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   Capture "vpnGateway" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified VPN gateway.
--
-- /See:/ 'vpnGatewaysDelete' smart constructor.
data VPNGatewaysDelete =
  VPNGatewaysDelete'
    { _vgdRequestId :: !(Maybe Text)
    , _vgdProject :: !Text
    , _vgdRegion :: !Text
    , _vgdVPNGateway :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgdRequestId'
--
-- * 'vgdProject'
--
-- * 'vgdRegion'
--
-- * 'vgdVPNGateway'
vpnGatewaysDelete
    :: Text -- ^ 'vgdProject'
    -> Text -- ^ 'vgdRegion'
    -> Text -- ^ 'vgdVPNGateway'
    -> VPNGatewaysDelete
vpnGatewaysDelete pVgdProject_ pVgdRegion_ pVgdVPNGateway_ =
  VPNGatewaysDelete'
    { _vgdRequestId = Nothing
    , _vgdProject = pVgdProject_
    , _vgdRegion = pVgdRegion_
    , _vgdVPNGateway = pVgdVPNGateway_
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
vgdRequestId :: Lens' VPNGatewaysDelete (Maybe Text)
vgdRequestId
  = lens _vgdRequestId (\ s a -> s{_vgdRequestId = a})

-- | Project ID for this request.
vgdProject :: Lens' VPNGatewaysDelete Text
vgdProject
  = lens _vgdProject (\ s a -> s{_vgdProject = a})

-- | Name of the region for this request.
vgdRegion :: Lens' VPNGatewaysDelete Text
vgdRegion
  = lens _vgdRegion (\ s a -> s{_vgdRegion = a})

-- | Name of the VPN gateway to delete.
vgdVPNGateway :: Lens' VPNGatewaysDelete Text
vgdVPNGateway
  = lens _vgdVPNGateway
      (\ s a -> s{_vgdVPNGateway = a})

instance GoogleRequest VPNGatewaysDelete where
        type Rs VPNGatewaysDelete = Operation
        type Scopes VPNGatewaysDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient VPNGatewaysDelete'{..}
          = go _vgdProject _vgdRegion _vgdVPNGateway
              _vgdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysDeleteResource)
                      mempty

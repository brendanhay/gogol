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
-- Module      : Network.Google.Resource.Compute.VPNGateways.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a VPN gateway in the specified project and region using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.vpnGateways.insert@.
module Network.Google.Resource.Compute.VPNGateways.Insert
    (
    -- * REST Resource
      VPNGatewaysInsertResource

    -- * Creating a Request
    , vpnGatewaysInsert
    , VPNGatewaysInsert

    -- * Request Lenses
    , vgiRequestId
    , vgiProject
    , vgiPayload
    , vgiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.vpnGateways.insert@ method which the
-- 'VPNGatewaysInsert' request conforms to.
type VPNGatewaysInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "vpnGateways" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] VPNGateway :> Post '[JSON] Operation

-- | Creates a VPN gateway in the specified project and region using the data
-- included in the request.
--
-- /See:/ 'vpnGatewaysInsert' smart constructor.
data VPNGatewaysInsert =
  VPNGatewaysInsert'
    { _vgiRequestId :: !(Maybe Text)
    , _vgiProject :: !Text
    , _vgiPayload :: !VPNGateway
    , _vgiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VPNGatewaysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vgiRequestId'
--
-- * 'vgiProject'
--
-- * 'vgiPayload'
--
-- * 'vgiRegion'
vpnGatewaysInsert
    :: Text -- ^ 'vgiProject'
    -> VPNGateway -- ^ 'vgiPayload'
    -> Text -- ^ 'vgiRegion'
    -> VPNGatewaysInsert
vpnGatewaysInsert pVgiProject_ pVgiPayload_ pVgiRegion_ =
  VPNGatewaysInsert'
    { _vgiRequestId = Nothing
    , _vgiProject = pVgiProject_
    , _vgiPayload = pVgiPayload_
    , _vgiRegion = pVgiRegion_
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
vgiRequestId :: Lens' VPNGatewaysInsert (Maybe Text)
vgiRequestId
  = lens _vgiRequestId (\ s a -> s{_vgiRequestId = a})

-- | Project ID for this request.
vgiProject :: Lens' VPNGatewaysInsert Text
vgiProject
  = lens _vgiProject (\ s a -> s{_vgiProject = a})

-- | Multipart request metadata.
vgiPayload :: Lens' VPNGatewaysInsert VPNGateway
vgiPayload
  = lens _vgiPayload (\ s a -> s{_vgiPayload = a})

-- | Name of the region for this request.
vgiRegion :: Lens' VPNGatewaysInsert Text
vgiRegion
  = lens _vgiRegion (\ s a -> s{_vgiRegion = a})

instance GoogleRequest VPNGatewaysInsert where
        type Rs VPNGatewaysInsert = Operation
        type Scopes VPNGatewaysInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient VPNGatewaysInsert'{..}
          = go _vgiProject _vgiRegion _vgiRequestId
              (Just AltJSON)
              _vgiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy VPNGatewaysInsertResource)
                      mempty

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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified target VPN gateway.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.delete@.
module Network.Google.Resource.Compute.TargetVPNGateways.Delete
    (
    -- * REST Resource
      TargetVPNGatewaysDeleteResource

    -- * Creating a Request
    , targetVPNGatewaysDelete
    , TargetVPNGatewaysDelete

    -- * Request Lenses
    , tvgdRequestId
    , tvgdProject
    , tvgdTargetVPNGateway
    , tvgdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.delete@ method which the
-- 'TargetVPNGatewaysDelete' request conforms to.
type TargetVPNGatewaysDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   Capture "targetVpnGateway" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified target VPN gateway.
--
-- /See:/ 'targetVPNGatewaysDelete' smart constructor.
data TargetVPNGatewaysDelete =
  TargetVPNGatewaysDelete'
    { _tvgdRequestId :: !(Maybe Text)
    , _tvgdProject :: !Text
    , _tvgdTargetVPNGateway :: !Text
    , _tvgdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetVPNGatewaysDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgdRequestId'
--
-- * 'tvgdProject'
--
-- * 'tvgdTargetVPNGateway'
--
-- * 'tvgdRegion'
targetVPNGatewaysDelete
    :: Text -- ^ 'tvgdProject'
    -> Text -- ^ 'tvgdTargetVPNGateway'
    -> Text -- ^ 'tvgdRegion'
    -> TargetVPNGatewaysDelete
targetVPNGatewaysDelete pTvgdProject_ pTvgdTargetVPNGateway_ pTvgdRegion_ =
  TargetVPNGatewaysDelete'
    { _tvgdRequestId = Nothing
    , _tvgdProject = pTvgdProject_
    , _tvgdTargetVPNGateway = pTvgdTargetVPNGateway_
    , _tvgdRegion = pTvgdRegion_
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
tvgdRequestId :: Lens' TargetVPNGatewaysDelete (Maybe Text)
tvgdRequestId
  = lens _tvgdRequestId
      (\ s a -> s{_tvgdRequestId = a})

-- | Project ID for this request.
tvgdProject :: Lens' TargetVPNGatewaysDelete Text
tvgdProject
  = lens _tvgdProject (\ s a -> s{_tvgdProject = a})

-- | Name of the target VPN gateway to delete.
tvgdTargetVPNGateway :: Lens' TargetVPNGatewaysDelete Text
tvgdTargetVPNGateway
  = lens _tvgdTargetVPNGateway
      (\ s a -> s{_tvgdTargetVPNGateway = a})

-- | Name of the region for this request.
tvgdRegion :: Lens' TargetVPNGatewaysDelete Text
tvgdRegion
  = lens _tvgdRegion (\ s a -> s{_tvgdRegion = a})

instance GoogleRequest TargetVPNGatewaysDelete where
        type Rs TargetVPNGatewaysDelete = Operation
        type Scopes TargetVPNGatewaysDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetVPNGatewaysDelete'{..}
          = go _tvgdProject _tvgdRegion _tvgdTargetVPNGateway
              _tvgdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysDeleteResource)
                      mempty

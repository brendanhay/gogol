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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a target VPN gateway in the specified project and region using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.insert@.
module Network.Google.Resource.Compute.TargetVPNGateways.Insert
    (
    -- * REST Resource
      TargetVPNGatewaysInsertResource

    -- * Creating a Request
    , targetVPNGatewaysInsert
    , TargetVPNGatewaysInsert

    -- * Request Lenses
    , tvgiRequestId
    , tvgiProject
    , tvgiPayload
    , tvgiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.insert@ method which the
-- 'TargetVPNGatewaysInsert' request conforms to.
type TargetVPNGatewaysInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetVpnGateways" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TargetVPNGateway :>
                         Post '[JSON] Operation

-- | Creates a target VPN gateway in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'targetVPNGatewaysInsert' smart constructor.
data TargetVPNGatewaysInsert =
  TargetVPNGatewaysInsert'
    { _tvgiRequestId :: !(Maybe Text)
    , _tvgiProject :: !Text
    , _tvgiPayload :: !TargetVPNGateway
    , _tvgiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TargetVPNGatewaysInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgiRequestId'
--
-- * 'tvgiProject'
--
-- * 'tvgiPayload'
--
-- * 'tvgiRegion'
targetVPNGatewaysInsert
    :: Text -- ^ 'tvgiProject'
    -> TargetVPNGateway -- ^ 'tvgiPayload'
    -> Text -- ^ 'tvgiRegion'
    -> TargetVPNGatewaysInsert
targetVPNGatewaysInsert pTvgiProject_ pTvgiPayload_ pTvgiRegion_ =
  TargetVPNGatewaysInsert'
    { _tvgiRequestId = Nothing
    , _tvgiProject = pTvgiProject_
    , _tvgiPayload = pTvgiPayload_
    , _tvgiRegion = pTvgiRegion_
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
tvgiRequestId :: Lens' TargetVPNGatewaysInsert (Maybe Text)
tvgiRequestId
  = lens _tvgiRequestId
      (\ s a -> s{_tvgiRequestId = a})

-- | Project ID for this request.
tvgiProject :: Lens' TargetVPNGatewaysInsert Text
tvgiProject
  = lens _tvgiProject (\ s a -> s{_tvgiProject = a})

-- | Multipart request metadata.
tvgiPayload :: Lens' TargetVPNGatewaysInsert TargetVPNGateway
tvgiPayload
  = lens _tvgiPayload (\ s a -> s{_tvgiPayload = a})

-- | Name of the region for this request.
tvgiRegion :: Lens' TargetVPNGatewaysInsert Text
tvgiRegion
  = lens _tvgiRegion (\ s a -> s{_tvgiRegion = a})

instance GoogleRequest TargetVPNGatewaysInsert where
        type Rs TargetVPNGatewaysInsert = Operation
        type Scopes TargetVPNGatewaysInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient TargetVPNGatewaysInsert'{..}
          = go _tvgiProject _tvgiRegion _tvgiRequestId
              (Just AltJSON)
              _tvgiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysInsertResource)
                      mempty

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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetVPNGatewaysInsert@.
module Network.Google.Resource.Compute.TargetVPNGateways.Insert
    (
    -- * REST Resource
      TargetVPNGatewaysInsertResource

    -- * Creating a Request
    , targetVPNGatewaysInsert'
    , TargetVPNGatewaysInsert'

    -- * Request Lenses
    , tvgiProject
    , tvgiPayload
    , tvgiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetVPNGatewaysInsert@ method which the
-- 'TargetVPNGatewaysInsert'' request conforms to.
type TargetVPNGatewaysInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TargetVPNGateway :>
                 Post '[JSON] Operation

-- | Creates a TargetVpnGateway resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'targetVPNGatewaysInsert'' smart constructor.
data TargetVPNGatewaysInsert' = TargetVPNGatewaysInsert'
    { _tvgiProject :: !Text
    , _tvgiPayload :: !TargetVPNGateway
    , _tvgiRegion  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvgiProject'
--
-- * 'tvgiPayload'
--
-- * 'tvgiRegion'
targetVPNGatewaysInsert'
    :: Text -- ^ 'project'
    -> TargetVPNGateway -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetVPNGatewaysInsert'
targetVPNGatewaysInsert' pTvgiProject_ pTvgiPayload_ pTvgiRegion_ =
    TargetVPNGatewaysInsert'
    { _tvgiProject = pTvgiProject_
    , _tvgiPayload = pTvgiPayload_
    , _tvgiRegion = pTvgiRegion_
    }

-- | Project ID for this request.
tvgiProject :: Lens' TargetVPNGatewaysInsert' Text
tvgiProject
  = lens _tvgiProject (\ s a -> s{_tvgiProject = a})

-- | Multipart request metadata.
tvgiPayload :: Lens' TargetVPNGatewaysInsert' TargetVPNGateway
tvgiPayload
  = lens _tvgiPayload (\ s a -> s{_tvgiPayload = a})

-- | The name of the region for this request.
tvgiRegion :: Lens' TargetVPNGatewaysInsert' Text
tvgiRegion
  = lens _tvgiRegion (\ s a -> s{_tvgiRegion = a})

instance GoogleRequest TargetVPNGatewaysInsert' where
        type Rs TargetVPNGatewaysInsert' = Operation
        requestClient TargetVPNGatewaysInsert'{..}
          = go _tvgiProject _tvgiRegion (Just AltJSON)
              _tvgiPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysInsertResource)
                      mempty

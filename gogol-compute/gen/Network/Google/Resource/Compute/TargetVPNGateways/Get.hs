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
-- Module      : Network.Google.Resource.Compute.TargetVPNGateways.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetVpnGateway resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetVpnGateways.get@.
module Network.Google.Resource.Compute.TargetVPNGateways.Get
    (
    -- * REST Resource
      TargetVPNGatewaysGetResource

    -- * Creating a Request
    , targetVPNGatewaysGet'
    , TargetVPNGatewaysGet'

    -- * Request Lenses
    , tvggProject
    , tvggTargetVPNGateway
    , tvggRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetVpnGateways.get@ method which the
-- 'TargetVPNGatewaysGet'' request conforms to.
type TargetVPNGatewaysGetResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetVpnGateways" :>
             Capture "targetVpnGateway" Text :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] TargetVPNGateway

-- | Returns the specified TargetVpnGateway resource.
--
-- /See:/ 'targetVPNGatewaysGet'' smart constructor.
data TargetVPNGatewaysGet' = TargetVPNGatewaysGet'
    { _tvggProject          :: !Text
    , _tvggTargetVPNGateway :: !Text
    , _tvggRegion           :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetVPNGatewaysGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tvggProject'
--
-- * 'tvggTargetVPNGateway'
--
-- * 'tvggRegion'
targetVPNGatewaysGet'
    :: Text -- ^ 'tvggProject'
    -> Text -- ^ 'tvggTargetVPNGateway'
    -> Text -- ^ 'tvggRegion'
    -> TargetVPNGatewaysGet'
targetVPNGatewaysGet' pTvggProject_ pTvggTargetVPNGateway_ pTvggRegion_ =
    TargetVPNGatewaysGet'
    { _tvggProject = pTvggProject_
    , _tvggTargetVPNGateway = pTvggTargetVPNGateway_
    , _tvggRegion = pTvggRegion_
    }

-- | Project ID for this request.
tvggProject :: Lens' TargetVPNGatewaysGet' Text
tvggProject
  = lens _tvggProject (\ s a -> s{_tvggProject = a})

-- | Name of the TargetVpnGateway resource to return.
tvggTargetVPNGateway :: Lens' TargetVPNGatewaysGet' Text
tvggTargetVPNGateway
  = lens _tvggTargetVPNGateway
      (\ s a -> s{_tvggTargetVPNGateway = a})

-- | The name of the region for this request.
tvggRegion :: Lens' TargetVPNGatewaysGet' Text
tvggRegion
  = lens _tvggRegion (\ s a -> s{_tvggRegion = a})

instance GoogleRequest TargetVPNGatewaysGet' where
        type Rs TargetVPNGatewaysGet' = TargetVPNGateway
        requestClient TargetVPNGatewaysGet'{..}
          = go _tvggProject _tvggRegion _tvggTargetVPNGateway
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy TargetVPNGatewaysGetResource)
                      mempty

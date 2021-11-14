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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpsProxy resource in the specified region.
-- Gets a list of available target HTTP proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpsProxies.get@.
module Network.Google.Resource.Compute.RegionTargetHTTPSProxies.Get
    (
    -- * REST Resource
      RegionTargetHTTPSProxiesGetResource

    -- * Creating a Request
    , regionTargetHTTPSProxiesGet
    , RegionTargetHTTPSProxiesGet

    -- * Request Lenses
    , rthpgProject
    , rthpgRegion
    , rthpgTargetHTTPSProxy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpsProxies.get@ method which the
-- 'RegionTargetHTTPSProxiesGet' request conforms to.
type RegionTargetHTTPSProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpsProxies" :>
                   Capture "targetHttpsProxy" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TargetHTTPSProxy

-- | Returns the specified TargetHttpsProxy resource in the specified region.
-- Gets a list of available target HTTP proxies by making a list() request.
--
-- /See:/ 'regionTargetHTTPSProxiesGet' smart constructor.
data RegionTargetHTTPSProxiesGet =
  RegionTargetHTTPSProxiesGet'
    { _rthpgProject :: !Text
    , _rthpgRegion :: !Text
    , _rthpgTargetHTTPSProxy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPSProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthpgProject'
--
-- * 'rthpgRegion'
--
-- * 'rthpgTargetHTTPSProxy'
regionTargetHTTPSProxiesGet
    :: Text -- ^ 'rthpgProject'
    -> Text -- ^ 'rthpgRegion'
    -> Text -- ^ 'rthpgTargetHTTPSProxy'
    -> RegionTargetHTTPSProxiesGet
regionTargetHTTPSProxiesGet pRthpgProject_ pRthpgRegion_ pRthpgTargetHTTPSProxy_ =
  RegionTargetHTTPSProxiesGet'
    { _rthpgProject = pRthpgProject_
    , _rthpgRegion = pRthpgRegion_
    , _rthpgTargetHTTPSProxy = pRthpgTargetHTTPSProxy_
    }


-- | Project ID for this request.
rthpgProject :: Lens' RegionTargetHTTPSProxiesGet Text
rthpgProject
  = lens _rthpgProject (\ s a -> s{_rthpgProject = a})

-- | Name of the region scoping this request.
rthpgRegion :: Lens' RegionTargetHTTPSProxiesGet Text
rthpgRegion
  = lens _rthpgRegion (\ s a -> s{_rthpgRegion = a})

-- | Name of the TargetHttpsProxy resource to return.
rthpgTargetHTTPSProxy :: Lens' RegionTargetHTTPSProxiesGet Text
rthpgTargetHTTPSProxy
  = lens _rthpgTargetHTTPSProxy
      (\ s a -> s{_rthpgTargetHTTPSProxy = a})

instance GoogleRequest RegionTargetHTTPSProxiesGet
         where
        type Rs RegionTargetHTTPSProxiesGet =
             TargetHTTPSProxy
        type Scopes RegionTargetHTTPSProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionTargetHTTPSProxiesGet'{..}
          = go _rthpgProject _rthpgRegion
              _rthpgTargetHTTPSProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionTargetHTTPSProxiesGetResource)
                      mempty

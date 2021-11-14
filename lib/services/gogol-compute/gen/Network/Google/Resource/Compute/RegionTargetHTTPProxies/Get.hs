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
-- Module      : Network.Google.Resource.Compute.RegionTargetHTTPProxies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified TargetHttpProxy resource in the specified region.
-- Gets a list of available target HTTP proxies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionTargetHttpProxies.get@.
module Network.Google.Resource.Compute.RegionTargetHTTPProxies.Get
    (
    -- * REST Resource
      RegionTargetHTTPProxiesGetResource

    -- * Creating a Request
    , regionTargetHTTPProxiesGet
    , RegionTargetHTTPProxiesGet

    -- * Request Lenses
    , rthttppgProject
    , rthttppgTargetHTTPProxy
    , rthttppgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionTargetHttpProxies.get@ method which the
-- 'RegionTargetHTTPProxiesGet' request conforms to.
type RegionTargetHTTPProxiesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "targetHttpProxies" :>
                   Capture "targetHttpProxy" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] TargetHTTPProxy

-- | Returns the specified TargetHttpProxy resource in the specified region.
-- Gets a list of available target HTTP proxies by making a list() request.
--
-- /See:/ 'regionTargetHTTPProxiesGet' smart constructor.
data RegionTargetHTTPProxiesGet =
  RegionTargetHTTPProxiesGet'
    { _rthttppgProject :: !Text
    , _rthttppgTargetHTTPProxy :: !Text
    , _rthttppgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionTargetHTTPProxiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rthttppgProject'
--
-- * 'rthttppgTargetHTTPProxy'
--
-- * 'rthttppgRegion'
regionTargetHTTPProxiesGet
    :: Text -- ^ 'rthttppgProject'
    -> Text -- ^ 'rthttppgTargetHTTPProxy'
    -> Text -- ^ 'rthttppgRegion'
    -> RegionTargetHTTPProxiesGet
regionTargetHTTPProxiesGet pRthttppgProject_ pRthttppgTargetHTTPProxy_ pRthttppgRegion_ =
  RegionTargetHTTPProxiesGet'
    { _rthttppgProject = pRthttppgProject_
    , _rthttppgTargetHTTPProxy = pRthttppgTargetHTTPProxy_
    , _rthttppgRegion = pRthttppgRegion_
    }


-- | Project ID for this request.
rthttppgProject :: Lens' RegionTargetHTTPProxiesGet Text
rthttppgProject
  = lens _rthttppgProject
      (\ s a -> s{_rthttppgProject = a})

-- | Name of the TargetHttpProxy resource to return.
rthttppgTargetHTTPProxy :: Lens' RegionTargetHTTPProxiesGet Text
rthttppgTargetHTTPProxy
  = lens _rthttppgTargetHTTPProxy
      (\ s a -> s{_rthttppgTargetHTTPProxy = a})

-- | Name of the region scoping this request.
rthttppgRegion :: Lens' RegionTargetHTTPProxiesGet Text
rthttppgRegion
  = lens _rthttppgRegion
      (\ s a -> s{_rthttppgRegion = a})

instance GoogleRequest RegionTargetHTTPProxiesGet
         where
        type Rs RegionTargetHTTPProxiesGet = TargetHTTPProxy
        type Scopes RegionTargetHTTPProxiesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionTargetHTTPProxiesGet'{..}
          = go _rthttppgProject _rthttppgRegion
              _rthttppgTargetHTTPProxy
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionTargetHTTPProxiesGetResource)
                      mempty

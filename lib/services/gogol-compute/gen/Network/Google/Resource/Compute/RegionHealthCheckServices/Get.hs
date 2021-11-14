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
-- Module      : Network.Google.Resource.Compute.RegionHealthCheckServices.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified regional HealthCheckService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthCheckServices.get@.
module Network.Google.Resource.Compute.RegionHealthCheckServices.Get
    (
    -- * REST Resource
      RegionHealthCheckServicesGetResource

    -- * Creating a Request
    , regionHealthCheckServicesGet
    , RegionHealthCheckServicesGet

    -- * Request Lenses
    , rhcsgHealthCheckService
    , rhcsgProject
    , rhcsgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthCheckServices.get@ method which the
-- 'RegionHealthCheckServicesGet' request conforms to.
type RegionHealthCheckServicesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthCheckServices" :>
                   Capture "healthCheckService" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] HealthCheckService

-- | Returns the specified regional HealthCheckService resource.
--
-- /See:/ 'regionHealthCheckServicesGet' smart constructor.
data RegionHealthCheckServicesGet =
  RegionHealthCheckServicesGet'
    { _rhcsgHealthCheckService :: !Text
    , _rhcsgProject :: !Text
    , _rhcsgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthCheckServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcsgHealthCheckService'
--
-- * 'rhcsgProject'
--
-- * 'rhcsgRegion'
regionHealthCheckServicesGet
    :: Text -- ^ 'rhcsgHealthCheckService'
    -> Text -- ^ 'rhcsgProject'
    -> Text -- ^ 'rhcsgRegion'
    -> RegionHealthCheckServicesGet
regionHealthCheckServicesGet pRhcsgHealthCheckService_ pRhcsgProject_ pRhcsgRegion_ =
  RegionHealthCheckServicesGet'
    { _rhcsgHealthCheckService = pRhcsgHealthCheckService_
    , _rhcsgProject = pRhcsgProject_
    , _rhcsgRegion = pRhcsgRegion_
    }


-- | Name of the HealthCheckService to update. The name must be 1-63
-- characters long, and comply with RFC1035.
rhcsgHealthCheckService :: Lens' RegionHealthCheckServicesGet Text
rhcsgHealthCheckService
  = lens _rhcsgHealthCheckService
      (\ s a -> s{_rhcsgHealthCheckService = a})

-- | Project ID for this request.
rhcsgProject :: Lens' RegionHealthCheckServicesGet Text
rhcsgProject
  = lens _rhcsgProject (\ s a -> s{_rhcsgProject = a})

-- | Name of the region scoping this request.
rhcsgRegion :: Lens' RegionHealthCheckServicesGet Text
rhcsgRegion
  = lens _rhcsgRegion (\ s a -> s{_rhcsgRegion = a})

instance GoogleRequest RegionHealthCheckServicesGet
         where
        type Rs RegionHealthCheckServicesGet =
             HealthCheckService
        type Scopes RegionHealthCheckServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionHealthCheckServicesGet'{..}
          = go _rhcsgProject _rhcsgRegion
              _rhcsgHealthCheckService
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthCheckServicesGetResource)
                      mempty

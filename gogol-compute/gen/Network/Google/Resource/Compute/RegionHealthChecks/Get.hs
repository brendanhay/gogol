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
-- Module      : Network.Google.Resource.Compute.RegionHealthChecks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified HealthCheck resource. Gets a list of available
-- health checks by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionHealthChecks.get@.
module Network.Google.Resource.Compute.RegionHealthChecks.Get
    (
    -- * REST Resource
      RegionHealthChecksGetResource

    -- * Creating a Request
    , regionHealthChecksGet
    , RegionHealthChecksGet

    -- * Request Lenses
    , rhcgHealthCheck
    , rhcgProject
    , rhcgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionHealthChecks.get@ method which the
-- 'RegionHealthChecksGet' request conforms to.
type RegionHealthChecksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "healthChecks" :>
                   Capture "healthCheck" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] HealthCheck

-- | Returns the specified HealthCheck resource. Gets a list of available
-- health checks by making a list() request.
--
-- /See:/ 'regionHealthChecksGet' smart constructor.
data RegionHealthChecksGet =
  RegionHealthChecksGet'
    { _rhcgHealthCheck :: !Text
    , _rhcgProject :: !Text
    , _rhcgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionHealthChecksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rhcgHealthCheck'
--
-- * 'rhcgProject'
--
-- * 'rhcgRegion'
regionHealthChecksGet
    :: Text -- ^ 'rhcgHealthCheck'
    -> Text -- ^ 'rhcgProject'
    -> Text -- ^ 'rhcgRegion'
    -> RegionHealthChecksGet
regionHealthChecksGet pRhcgHealthCheck_ pRhcgProject_ pRhcgRegion_ =
  RegionHealthChecksGet'
    { _rhcgHealthCheck = pRhcgHealthCheck_
    , _rhcgProject = pRhcgProject_
    , _rhcgRegion = pRhcgRegion_
    }


-- | Name of the HealthCheck resource to return.
rhcgHealthCheck :: Lens' RegionHealthChecksGet Text
rhcgHealthCheck
  = lens _rhcgHealthCheck
      (\ s a -> s{_rhcgHealthCheck = a})

-- | Project ID for this request.
rhcgProject :: Lens' RegionHealthChecksGet Text
rhcgProject
  = lens _rhcgProject (\ s a -> s{_rhcgProject = a})

-- | Name of the region scoping this request.
rhcgRegion :: Lens' RegionHealthChecksGet Text
rhcgRegion
  = lens _rhcgRegion (\ s a -> s{_rhcgRegion = a})

instance GoogleRequest RegionHealthChecksGet where
        type Rs RegionHealthChecksGet = HealthCheck
        type Scopes RegionHealthChecksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionHealthChecksGet'{..}
          = go _rhcgProject _rhcgRegion _rhcgHealthCheck
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionHealthChecksGetResource)
                      mempty

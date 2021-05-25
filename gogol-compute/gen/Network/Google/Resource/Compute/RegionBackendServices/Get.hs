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
-- Module      : Network.Google.Resource.Compute.RegionBackendServices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified regional BackendService resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionBackendServices.get@.
module Network.Google.Resource.Compute.RegionBackendServices.Get
    (
    -- * REST Resource
      RegionBackendServicesGetResource

    -- * Creating a Request
    , regionBackendServicesGet
    , RegionBackendServicesGet

    -- * Request Lenses
    , rbsgProject
    , rbsgRegion
    , rbsgBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionBackendServices.get@ method which the
-- 'RegionBackendServicesGet' request conforms to.
type RegionBackendServicesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "backendServices" :>
                   Capture "backendService" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] BackendService

-- | Returns the specified regional BackendService resource.
--
-- /See:/ 'regionBackendServicesGet' smart constructor.
data RegionBackendServicesGet =
  RegionBackendServicesGet'
    { _rbsgProject :: !Text
    , _rbsgRegion :: !Text
    , _rbsgBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionBackendServicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rbsgProject'
--
-- * 'rbsgRegion'
--
-- * 'rbsgBackendService'
regionBackendServicesGet
    :: Text -- ^ 'rbsgProject'
    -> Text -- ^ 'rbsgRegion'
    -> Text -- ^ 'rbsgBackendService'
    -> RegionBackendServicesGet
regionBackendServicesGet pRbsgProject_ pRbsgRegion_ pRbsgBackendService_ =
  RegionBackendServicesGet'
    { _rbsgProject = pRbsgProject_
    , _rbsgRegion = pRbsgRegion_
    , _rbsgBackendService = pRbsgBackendService_
    }


-- | Project ID for this request.
rbsgProject :: Lens' RegionBackendServicesGet Text
rbsgProject
  = lens _rbsgProject (\ s a -> s{_rbsgProject = a})

-- | Name of the region scoping this request.
rbsgRegion :: Lens' RegionBackendServicesGet Text
rbsgRegion
  = lens _rbsgRegion (\ s a -> s{_rbsgRegion = a})

-- | Name of the BackendService resource to return.
rbsgBackendService :: Lens' RegionBackendServicesGet Text
rbsgBackendService
  = lens _rbsgBackendService
      (\ s a -> s{_rbsgBackendService = a})

instance GoogleRequest RegionBackendServicesGet where
        type Rs RegionBackendServicesGet = BackendService
        type Scopes RegionBackendServicesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionBackendServicesGet'{..}
          = go _rbsgProject _rbsgRegion _rbsgBackendService
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionBackendServicesGetResource)
                      mempty

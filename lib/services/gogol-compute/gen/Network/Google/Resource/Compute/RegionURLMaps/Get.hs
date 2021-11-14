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
-- Module      : Network.Google.Resource.Compute.RegionURLMaps.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified UrlMap resource. Gets a list of available URL maps
-- by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionUrlMaps.get@.
module Network.Google.Resource.Compute.RegionURLMaps.Get
    (
    -- * REST Resource
      RegionURLMapsGetResource

    -- * Creating a Request
    , regionURLMapsGet
    , RegionURLMapsGet

    -- * Request Lenses
    , rumgURLMap
    , rumgProject
    , rumgRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionUrlMaps.get@ method which the
-- 'RegionURLMapsGet' request conforms to.
type RegionURLMapsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "urlMaps" :>
                   Capture "urlMap" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] URLMap

-- | Returns the specified UrlMap resource. Gets a list of available URL maps
-- by making a list() request.
--
-- /See:/ 'regionURLMapsGet' smart constructor.
data RegionURLMapsGet =
  RegionURLMapsGet'
    { _rumgURLMap :: !Text
    , _rumgProject :: !Text
    , _rumgRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionURLMapsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rumgURLMap'
--
-- * 'rumgProject'
--
-- * 'rumgRegion'
regionURLMapsGet
    :: Text -- ^ 'rumgURLMap'
    -> Text -- ^ 'rumgProject'
    -> Text -- ^ 'rumgRegion'
    -> RegionURLMapsGet
regionURLMapsGet pRumgURLMap_ pRumgProject_ pRumgRegion_ =
  RegionURLMapsGet'
    { _rumgURLMap = pRumgURLMap_
    , _rumgProject = pRumgProject_
    , _rumgRegion = pRumgRegion_
    }


-- | Name of the UrlMap resource to return.
rumgURLMap :: Lens' RegionURLMapsGet Text
rumgURLMap
  = lens _rumgURLMap (\ s a -> s{_rumgURLMap = a})

-- | Project ID for this request.
rumgProject :: Lens' RegionURLMapsGet Text
rumgProject
  = lens _rumgProject (\ s a -> s{_rumgProject = a})

-- | Name of the region scoping this request.
rumgRegion :: Lens' RegionURLMapsGet Text
rumgRegion
  = lens _rumgRegion (\ s a -> s{_rumgRegion = a})

instance GoogleRequest RegionURLMapsGet where
        type Rs RegionURLMapsGet = URLMap
        type Scopes RegionURLMapsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionURLMapsGet'{..}
          = go _rumgProject _rumgRegion _rumgURLMap
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionURLMapsGetResource)
                      mempty

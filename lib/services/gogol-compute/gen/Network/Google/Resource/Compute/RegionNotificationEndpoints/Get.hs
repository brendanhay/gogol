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
-- Module      : Network.Google.Resource.Compute.RegionNotificationEndpoints.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified NotificationEndpoint resource in the given region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNotificationEndpoints.get@.
module Network.Google.Resource.Compute.RegionNotificationEndpoints.Get
    (
    -- * REST Resource
      RegionNotificationEndpointsGetResource

    -- * Creating a Request
    , regionNotificationEndpointsGet
    , RegionNotificationEndpointsGet

    -- * Request Lenses
    , rnegProject
    , rnegNotificationEndpoint
    , rnegRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNotificationEndpoints.get@ method which the
-- 'RegionNotificationEndpointsGet' request conforms to.
type RegionNotificationEndpointsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "notificationEndpoints" :>
                   Capture "notificationEndpoint" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] NotificationEndpoint

-- | Returns the specified NotificationEndpoint resource in the given region.
--
-- /See:/ 'regionNotificationEndpointsGet' smart constructor.
data RegionNotificationEndpointsGet =
  RegionNotificationEndpointsGet'
    { _rnegProject :: !Text
    , _rnegNotificationEndpoint :: !Text
    , _rnegRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNotificationEndpointsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnegProject'
--
-- * 'rnegNotificationEndpoint'
--
-- * 'rnegRegion'
regionNotificationEndpointsGet
    :: Text -- ^ 'rnegProject'
    -> Text -- ^ 'rnegNotificationEndpoint'
    -> Text -- ^ 'rnegRegion'
    -> RegionNotificationEndpointsGet
regionNotificationEndpointsGet pRnegProject_ pRnegNotificationEndpoint_ pRnegRegion_ =
  RegionNotificationEndpointsGet'
    { _rnegProject = pRnegProject_
    , _rnegNotificationEndpoint = pRnegNotificationEndpoint_
    , _rnegRegion = pRnegRegion_
    }


-- | Project ID for this request.
rnegProject :: Lens' RegionNotificationEndpointsGet Text
rnegProject
  = lens _rnegProject (\ s a -> s{_rnegProject = a})

-- | Name of the NotificationEndpoint resource to return.
rnegNotificationEndpoint :: Lens' RegionNotificationEndpointsGet Text
rnegNotificationEndpoint
  = lens _rnegNotificationEndpoint
      (\ s a -> s{_rnegNotificationEndpoint = a})

-- | Name of the region scoping this request.
rnegRegion :: Lens' RegionNotificationEndpointsGet Text
rnegRegion
  = lens _rnegRegion (\ s a -> s{_rnegRegion = a})

instance GoogleRequest RegionNotificationEndpointsGet
         where
        type Rs RegionNotificationEndpointsGet =
             NotificationEndpoint
        type Scopes RegionNotificationEndpointsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionNotificationEndpointsGet'{..}
          = go _rnegProject _rnegRegion
              _rnegNotificationEndpoint
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNotificationEndpointsGetResource)
                      mempty

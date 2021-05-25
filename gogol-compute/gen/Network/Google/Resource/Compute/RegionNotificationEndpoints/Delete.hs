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
-- Module      : Network.Google.Resource.Compute.RegionNotificationEndpoints.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified NotificationEndpoint in the given region
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNotificationEndpoints.delete@.
module Network.Google.Resource.Compute.RegionNotificationEndpoints.Delete
    (
    -- * REST Resource
      RegionNotificationEndpointsDeleteResource

    -- * Creating a Request
    , regionNotificationEndpointsDelete
    , RegionNotificationEndpointsDelete

    -- * Request Lenses
    , rnedRequestId
    , rnedProject
    , rnedNotificationEndpoint
    , rnedRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNotificationEndpoints.delete@ method which the
-- 'RegionNotificationEndpointsDelete' request conforms to.
type RegionNotificationEndpointsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "notificationEndpoints" :>
                   Capture "notificationEndpoint" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified NotificationEndpoint in the given region
--
-- /See:/ 'regionNotificationEndpointsDelete' smart constructor.
data RegionNotificationEndpointsDelete =
  RegionNotificationEndpointsDelete'
    { _rnedRequestId :: !(Maybe Text)
    , _rnedProject :: !Text
    , _rnedNotificationEndpoint :: !Text
    , _rnedRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNotificationEndpointsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnedRequestId'
--
-- * 'rnedProject'
--
-- * 'rnedNotificationEndpoint'
--
-- * 'rnedRegion'
regionNotificationEndpointsDelete
    :: Text -- ^ 'rnedProject'
    -> Text -- ^ 'rnedNotificationEndpoint'
    -> Text -- ^ 'rnedRegion'
    -> RegionNotificationEndpointsDelete
regionNotificationEndpointsDelete pRnedProject_ pRnedNotificationEndpoint_ pRnedRegion_ =
  RegionNotificationEndpointsDelete'
    { _rnedRequestId = Nothing
    , _rnedProject = pRnedProject_
    , _rnedNotificationEndpoint = pRnedNotificationEndpoint_
    , _rnedRegion = pRnedRegion_
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
rnedRequestId :: Lens' RegionNotificationEndpointsDelete (Maybe Text)
rnedRequestId
  = lens _rnedRequestId
      (\ s a -> s{_rnedRequestId = a})

-- | Project ID for this request.
rnedProject :: Lens' RegionNotificationEndpointsDelete Text
rnedProject
  = lens _rnedProject (\ s a -> s{_rnedProject = a})

-- | Name of the NotificationEndpoint resource to delete.
rnedNotificationEndpoint :: Lens' RegionNotificationEndpointsDelete Text
rnedNotificationEndpoint
  = lens _rnedNotificationEndpoint
      (\ s a -> s{_rnedNotificationEndpoint = a})

-- | Name of the region scoping this request.
rnedRegion :: Lens' RegionNotificationEndpointsDelete Text
rnedRegion
  = lens _rnedRegion (\ s a -> s{_rnedRegion = a})

instance GoogleRequest
           RegionNotificationEndpointsDelete
         where
        type Rs RegionNotificationEndpointsDelete = Operation
        type Scopes RegionNotificationEndpointsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionNotificationEndpointsDelete'{..}
          = go _rnedProject _rnedRegion
              _rnedNotificationEndpoint
              _rnedRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNotificationEndpointsDeleteResource)
                      mempty

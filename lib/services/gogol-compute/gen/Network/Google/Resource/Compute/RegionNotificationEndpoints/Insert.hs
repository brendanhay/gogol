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
-- Module      : Network.Google.Resource.Compute.RegionNotificationEndpoints.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a NotificationEndpoint in the specified project in the given
-- region using the parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNotificationEndpoints.insert@.
module Network.Google.Resource.Compute.RegionNotificationEndpoints.Insert
    (
    -- * REST Resource
      RegionNotificationEndpointsInsertResource

    -- * Creating a Request
    , regionNotificationEndpointsInsert
    , RegionNotificationEndpointsInsert

    -- * Request Lenses
    , rneiRequestId
    , rneiProject
    , rneiPayload
    , rneiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNotificationEndpoints.insert@ method which the
-- 'RegionNotificationEndpointsInsert' request conforms to.
type RegionNotificationEndpointsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "notificationEndpoints" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NotificationEndpoint :>
                         Post '[JSON] Operation

-- | Create a NotificationEndpoint in the specified project in the given
-- region using the parameters that are included in the request.
--
-- /See:/ 'regionNotificationEndpointsInsert' smart constructor.
data RegionNotificationEndpointsInsert =
  RegionNotificationEndpointsInsert'
    { _rneiRequestId :: !(Maybe Text)
    , _rneiProject :: !Text
    , _rneiPayload :: !NotificationEndpoint
    , _rneiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNotificationEndpointsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rneiRequestId'
--
-- * 'rneiProject'
--
-- * 'rneiPayload'
--
-- * 'rneiRegion'
regionNotificationEndpointsInsert
    :: Text -- ^ 'rneiProject'
    -> NotificationEndpoint -- ^ 'rneiPayload'
    -> Text -- ^ 'rneiRegion'
    -> RegionNotificationEndpointsInsert
regionNotificationEndpointsInsert pRneiProject_ pRneiPayload_ pRneiRegion_ =
  RegionNotificationEndpointsInsert'
    { _rneiRequestId = Nothing
    , _rneiProject = pRneiProject_
    , _rneiPayload = pRneiPayload_
    , _rneiRegion = pRneiRegion_
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
rneiRequestId :: Lens' RegionNotificationEndpointsInsert (Maybe Text)
rneiRequestId
  = lens _rneiRequestId
      (\ s a -> s{_rneiRequestId = a})

-- | Project ID for this request.
rneiProject :: Lens' RegionNotificationEndpointsInsert Text
rneiProject
  = lens _rneiProject (\ s a -> s{_rneiProject = a})

-- | Multipart request metadata.
rneiPayload :: Lens' RegionNotificationEndpointsInsert NotificationEndpoint
rneiPayload
  = lens _rneiPayload (\ s a -> s{_rneiPayload = a})

-- | Name of the region scoping this request.
rneiRegion :: Lens' RegionNotificationEndpointsInsert Text
rneiRegion
  = lens _rneiRegion (\ s a -> s{_rneiRegion = a})

instance GoogleRequest
           RegionNotificationEndpointsInsert
         where
        type Rs RegionNotificationEndpointsInsert = Operation
        type Scopes RegionNotificationEndpointsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionNotificationEndpointsInsert'{..}
          = go _rneiProject _rneiRegion _rneiRequestId
              (Just AltJSON)
              _rneiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNotificationEndpointsInsertResource)
                      mempty

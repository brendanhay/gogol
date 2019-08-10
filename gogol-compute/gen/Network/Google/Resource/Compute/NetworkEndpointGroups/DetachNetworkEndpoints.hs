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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.DetachNetworkEndpoints
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detach a list of network endpoints from the specified network endpoint
-- group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.detachNetworkEndpoints@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.DetachNetworkEndpoints
    (
    -- * REST Resource
      NetworkEndpointGroupsDetachNetworkEndpointsResource

    -- * Creating a Request
    , networkEndpointGroupsDetachNetworkEndpoints
    , NetworkEndpointGroupsDetachNetworkEndpoints

    -- * Request Lenses
    , negdneRequestId
    , negdneProject
    , negdneZone
    , negdnePayload
    , negdneNetworkEndpointGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.detachNetworkEndpoints@ method which the
-- 'NetworkEndpointGroupsDetachNetworkEndpoints' request conforms to.
type NetworkEndpointGroupsDetachNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     "detachNetworkEndpoints" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             NetworkEndpointGroupsDetachEndpointsRequest
                             :> Post '[JSON] Operation

-- | Detach a list of network endpoints from the specified network endpoint
-- group.
--
-- /See:/ 'networkEndpointGroupsDetachNetworkEndpoints' smart constructor.
data NetworkEndpointGroupsDetachNetworkEndpoints =
  NetworkEndpointGroupsDetachNetworkEndpoints'
    { _negdneRequestId            :: !(Maybe Text)
    , _negdneProject              :: !Text
    , _negdneZone                 :: !Text
    , _negdnePayload              :: !NetworkEndpointGroupsDetachEndpointsRequest
    , _negdneNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsDetachNetworkEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'negdneRequestId'
--
-- * 'negdneProject'
--
-- * 'negdneZone'
--
-- * 'negdnePayload'
--
-- * 'negdneNetworkEndpointGroup'
networkEndpointGroupsDetachNetworkEndpoints
    :: Text -- ^ 'negdneProject'
    -> Text -- ^ 'negdneZone'
    -> NetworkEndpointGroupsDetachEndpointsRequest -- ^ 'negdnePayload'
    -> Text -- ^ 'negdneNetworkEndpointGroup'
    -> NetworkEndpointGroupsDetachNetworkEndpoints
networkEndpointGroupsDetachNetworkEndpoints pNegdneProject_ pNegdneZone_ pNegdnePayload_ pNegdneNetworkEndpointGroup_ =
  NetworkEndpointGroupsDetachNetworkEndpoints'
    { _negdneRequestId = Nothing
    , _negdneProject = pNegdneProject_
    , _negdneZone = pNegdneZone_
    , _negdnePayload = pNegdnePayload_
    , _negdneNetworkEndpointGroup = pNegdneNetworkEndpointGroup_
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
negdneRequestId :: Lens' NetworkEndpointGroupsDetachNetworkEndpoints (Maybe Text)
negdneRequestId
  = lens _negdneRequestId
      (\ s a -> s{_negdneRequestId = a})

-- | Project ID for this request.
negdneProject :: Lens' NetworkEndpointGroupsDetachNetworkEndpoints Text
negdneProject
  = lens _negdneProject
      (\ s a -> s{_negdneProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
negdneZone :: Lens' NetworkEndpointGroupsDetachNetworkEndpoints Text
negdneZone
  = lens _negdneZone (\ s a -> s{_negdneZone = a})

-- | Multipart request metadata.
negdnePayload :: Lens' NetworkEndpointGroupsDetachNetworkEndpoints NetworkEndpointGroupsDetachEndpointsRequest
negdnePayload
  = lens _negdnePayload
      (\ s a -> s{_negdnePayload = a})

-- | The name of the network endpoint group where you are removing network
-- endpoints. It should comply with RFC1035.
negdneNetworkEndpointGroup :: Lens' NetworkEndpointGroupsDetachNetworkEndpoints Text
negdneNetworkEndpointGroup
  = lens _negdneNetworkEndpointGroup
      (\ s a -> s{_negdneNetworkEndpointGroup = a})

instance GoogleRequest
           NetworkEndpointGroupsDetachNetworkEndpoints
         where
        type Rs NetworkEndpointGroupsDetachNetworkEndpoints =
             Operation
        type Scopes
               NetworkEndpointGroupsDetachNetworkEndpoints
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          NetworkEndpointGroupsDetachNetworkEndpoints'{..}
          = go _negdneProject _negdneZone
              _negdneNetworkEndpointGroup
              _negdneRequestId
              (Just AltJSON)
              _negdnePayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           NetworkEndpointGroupsDetachNetworkEndpointsResource)
                      mempty

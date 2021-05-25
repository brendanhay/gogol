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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.AttachNetworkEndpoints
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attach a list of network endpoints to the specified network endpoint
-- group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.attachNetworkEndpoints@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.AttachNetworkEndpoints
    (
    -- * REST Resource
      NetworkEndpointGroupsAttachNetworkEndpointsResource

    -- * Creating a Request
    , networkEndpointGroupsAttachNetworkEndpoints
    , NetworkEndpointGroupsAttachNetworkEndpoints

    -- * Request Lenses
    , neganeRequestId
    , neganeProject
    , neganeZone
    , neganePayload
    , neganeNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.attachNetworkEndpoints@ method which the
-- 'NetworkEndpointGroupsAttachNetworkEndpoints' request conforms to.
type NetworkEndpointGroupsAttachNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     "attachNetworkEndpoints" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON]
                             NetworkEndpointGroupsAttachEndpointsRequest
                             :> Post '[JSON] Operation

-- | Attach a list of network endpoints to the specified network endpoint
-- group.
--
-- /See:/ 'networkEndpointGroupsAttachNetworkEndpoints' smart constructor.
data NetworkEndpointGroupsAttachNetworkEndpoints =
  NetworkEndpointGroupsAttachNetworkEndpoints'
    { _neganeRequestId :: !(Maybe Text)
    , _neganeProject :: !Text
    , _neganeZone :: !Text
    , _neganePayload :: !NetworkEndpointGroupsAttachEndpointsRequest
    , _neganeNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsAttachNetworkEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'neganeRequestId'
--
-- * 'neganeProject'
--
-- * 'neganeZone'
--
-- * 'neganePayload'
--
-- * 'neganeNetworkEndpointGroup'
networkEndpointGroupsAttachNetworkEndpoints
    :: Text -- ^ 'neganeProject'
    -> Text -- ^ 'neganeZone'
    -> NetworkEndpointGroupsAttachEndpointsRequest -- ^ 'neganePayload'
    -> Text -- ^ 'neganeNetworkEndpointGroup'
    -> NetworkEndpointGroupsAttachNetworkEndpoints
networkEndpointGroupsAttachNetworkEndpoints pNeganeProject_ pNeganeZone_ pNeganePayload_ pNeganeNetworkEndpointGroup_ =
  NetworkEndpointGroupsAttachNetworkEndpoints'
    { _neganeRequestId = Nothing
    , _neganeProject = pNeganeProject_
    , _neganeZone = pNeganeZone_
    , _neganePayload = pNeganePayload_
    , _neganeNetworkEndpointGroup = pNeganeNetworkEndpointGroup_
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
neganeRequestId :: Lens' NetworkEndpointGroupsAttachNetworkEndpoints (Maybe Text)
neganeRequestId
  = lens _neganeRequestId
      (\ s a -> s{_neganeRequestId = a})

-- | Project ID for this request.
neganeProject :: Lens' NetworkEndpointGroupsAttachNetworkEndpoints Text
neganeProject
  = lens _neganeProject
      (\ s a -> s{_neganeProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
neganeZone :: Lens' NetworkEndpointGroupsAttachNetworkEndpoints Text
neganeZone
  = lens _neganeZone (\ s a -> s{_neganeZone = a})

-- | Multipart request metadata.
neganePayload :: Lens' NetworkEndpointGroupsAttachNetworkEndpoints NetworkEndpointGroupsAttachEndpointsRequest
neganePayload
  = lens _neganePayload
      (\ s a -> s{_neganePayload = a})

-- | The name of the network endpoint group where you are attaching network
-- endpoints to. It should comply with RFC1035.
neganeNetworkEndpointGroup :: Lens' NetworkEndpointGroupsAttachNetworkEndpoints Text
neganeNetworkEndpointGroup
  = lens _neganeNetworkEndpointGroup
      (\ s a -> s{_neganeNetworkEndpointGroup = a})

instance GoogleRequest
           NetworkEndpointGroupsAttachNetworkEndpoints
         where
        type Rs NetworkEndpointGroupsAttachNetworkEndpoints =
             Operation
        type Scopes
               NetworkEndpointGroupsAttachNetworkEndpoints
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          NetworkEndpointGroupsAttachNetworkEndpoints'{..}
          = go _neganeProject _neganeZone
              _neganeNetworkEndpointGroup
              _neganeRequestId
              (Just AltJSON)
              _neganePayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           NetworkEndpointGroupsAttachNetworkEndpointsResource)
                      mempty

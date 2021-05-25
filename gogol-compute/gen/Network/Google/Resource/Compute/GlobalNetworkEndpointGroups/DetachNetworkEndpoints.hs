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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.DetachNetworkEndpoints
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detach the network endpoint from the specified network endpoint group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.detachNetworkEndpoints@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.DetachNetworkEndpoints
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsDetachNetworkEndpointsResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsDetachNetworkEndpoints
    , GlobalNetworkEndpointGroupsDetachNetworkEndpoints

    -- * Request Lenses
    , gnegdneRequestId
    , gnegdneProject
    , gnegdnePayload
    , gnegdneNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.detachNetworkEndpoints@ method which the
-- 'GlobalNetworkEndpointGroupsDetachNetworkEndpoints' request conforms to.
type GlobalNetworkEndpointGroupsDetachNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 Capture "networkEndpointGroup" Text :>
                   "detachNetworkEndpoints" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GlobalNetworkEndpointGroupsDetachEndpointsRequest
                           :> Post '[JSON] Operation

-- | Detach the network endpoint from the specified network endpoint group.
--
-- /See:/ 'globalNetworkEndpointGroupsDetachNetworkEndpoints' smart constructor.
data GlobalNetworkEndpointGroupsDetachNetworkEndpoints =
  GlobalNetworkEndpointGroupsDetachNetworkEndpoints'
    { _gnegdneRequestId :: !(Maybe Text)
    , _gnegdneProject :: !Text
    , _gnegdnePayload :: !GlobalNetworkEndpointGroupsDetachEndpointsRequest
    , _gnegdneNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsDetachNetworkEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnegdneRequestId'
--
-- * 'gnegdneProject'
--
-- * 'gnegdnePayload'
--
-- * 'gnegdneNetworkEndpointGroup'
globalNetworkEndpointGroupsDetachNetworkEndpoints
    :: Text -- ^ 'gnegdneProject'
    -> GlobalNetworkEndpointGroupsDetachEndpointsRequest -- ^ 'gnegdnePayload'
    -> Text -- ^ 'gnegdneNetworkEndpointGroup'
    -> GlobalNetworkEndpointGroupsDetachNetworkEndpoints
globalNetworkEndpointGroupsDetachNetworkEndpoints pGnegdneProject_ pGnegdnePayload_ pGnegdneNetworkEndpointGroup_ =
  GlobalNetworkEndpointGroupsDetachNetworkEndpoints'
    { _gnegdneRequestId = Nothing
    , _gnegdneProject = pGnegdneProject_
    , _gnegdnePayload = pGnegdnePayload_
    , _gnegdneNetworkEndpointGroup = pGnegdneNetworkEndpointGroup_
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
gnegdneRequestId :: Lens' GlobalNetworkEndpointGroupsDetachNetworkEndpoints (Maybe Text)
gnegdneRequestId
  = lens _gnegdneRequestId
      (\ s a -> s{_gnegdneRequestId = a})

-- | Project ID for this request.
gnegdneProject :: Lens' GlobalNetworkEndpointGroupsDetachNetworkEndpoints Text
gnegdneProject
  = lens _gnegdneProject
      (\ s a -> s{_gnegdneProject = a})

-- | Multipart request metadata.
gnegdnePayload :: Lens' GlobalNetworkEndpointGroupsDetachNetworkEndpoints GlobalNetworkEndpointGroupsDetachEndpointsRequest
gnegdnePayload
  = lens _gnegdnePayload
      (\ s a -> s{_gnegdnePayload = a})

-- | The name of the network endpoint group where you are removing network
-- endpoints. It should comply with RFC1035.
gnegdneNetworkEndpointGroup :: Lens' GlobalNetworkEndpointGroupsDetachNetworkEndpoints Text
gnegdneNetworkEndpointGroup
  = lens _gnegdneNetworkEndpointGroup
      (\ s a -> s{_gnegdneNetworkEndpointGroup = a})

instance GoogleRequest
           GlobalNetworkEndpointGroupsDetachNetworkEndpoints
         where
        type Rs
               GlobalNetworkEndpointGroupsDetachNetworkEndpoints
             = Operation
        type Scopes
               GlobalNetworkEndpointGroupsDetachNetworkEndpoints
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          GlobalNetworkEndpointGroupsDetachNetworkEndpoints'{..}
          = go _gnegdneProject _gnegdneNetworkEndpointGroup
              _gnegdneRequestId
              (Just AltJSON)
              _gnegdnePayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GlobalNetworkEndpointGroupsDetachNetworkEndpointsResource)
                      mempty

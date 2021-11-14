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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.AttachNetworkEndpoints
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attach a network endpoint to the specified network endpoint group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.attachNetworkEndpoints@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.AttachNetworkEndpoints
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsAttachNetworkEndpointsResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsAttachNetworkEndpoints
    , GlobalNetworkEndpointGroupsAttachNetworkEndpoints

    -- * Request Lenses
    , gneganeRequestId
    , gneganeProject
    , gneganePayload
    , gneganeNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.attachNetworkEndpoints@ method which the
-- 'GlobalNetworkEndpointGroupsAttachNetworkEndpoints' request conforms to.
type GlobalNetworkEndpointGroupsAttachNetworkEndpointsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 Capture "networkEndpointGroup" Text :>
                   "attachNetworkEndpoints" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON]
                           GlobalNetworkEndpointGroupsAttachEndpointsRequest
                           :> Post '[JSON] Operation

-- | Attach a network endpoint to the specified network endpoint group.
--
-- /See:/ 'globalNetworkEndpointGroupsAttachNetworkEndpoints' smart constructor.
data GlobalNetworkEndpointGroupsAttachNetworkEndpoints =
  GlobalNetworkEndpointGroupsAttachNetworkEndpoints'
    { _gneganeRequestId :: !(Maybe Text)
    , _gneganeProject :: !Text
    , _gneganePayload :: !GlobalNetworkEndpointGroupsAttachEndpointsRequest
    , _gneganeNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsAttachNetworkEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gneganeRequestId'
--
-- * 'gneganeProject'
--
-- * 'gneganePayload'
--
-- * 'gneganeNetworkEndpointGroup'
globalNetworkEndpointGroupsAttachNetworkEndpoints
    :: Text -- ^ 'gneganeProject'
    -> GlobalNetworkEndpointGroupsAttachEndpointsRequest -- ^ 'gneganePayload'
    -> Text -- ^ 'gneganeNetworkEndpointGroup'
    -> GlobalNetworkEndpointGroupsAttachNetworkEndpoints
globalNetworkEndpointGroupsAttachNetworkEndpoints pGneganeProject_ pGneganePayload_ pGneganeNetworkEndpointGroup_ =
  GlobalNetworkEndpointGroupsAttachNetworkEndpoints'
    { _gneganeRequestId = Nothing
    , _gneganeProject = pGneganeProject_
    , _gneganePayload = pGneganePayload_
    , _gneganeNetworkEndpointGroup = pGneganeNetworkEndpointGroup_
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
gneganeRequestId :: Lens' GlobalNetworkEndpointGroupsAttachNetworkEndpoints (Maybe Text)
gneganeRequestId
  = lens _gneganeRequestId
      (\ s a -> s{_gneganeRequestId = a})

-- | Project ID for this request.
gneganeProject :: Lens' GlobalNetworkEndpointGroupsAttachNetworkEndpoints Text
gneganeProject
  = lens _gneganeProject
      (\ s a -> s{_gneganeProject = a})

-- | Multipart request metadata.
gneganePayload :: Lens' GlobalNetworkEndpointGroupsAttachNetworkEndpoints GlobalNetworkEndpointGroupsAttachEndpointsRequest
gneganePayload
  = lens _gneganePayload
      (\ s a -> s{_gneganePayload = a})

-- | The name of the network endpoint group where you are attaching network
-- endpoints to. It should comply with RFC1035.
gneganeNetworkEndpointGroup :: Lens' GlobalNetworkEndpointGroupsAttachNetworkEndpoints Text
gneganeNetworkEndpointGroup
  = lens _gneganeNetworkEndpointGroup
      (\ s a -> s{_gneganeNetworkEndpointGroup = a})

instance GoogleRequest
           GlobalNetworkEndpointGroupsAttachNetworkEndpoints
         where
        type Rs
               GlobalNetworkEndpointGroupsAttachNetworkEndpoints
             = Operation
        type Scopes
               GlobalNetworkEndpointGroupsAttachNetworkEndpoints
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          GlobalNetworkEndpointGroupsAttachNetworkEndpoints'{..}
          = go _gneganeProject _gneganeNetworkEndpointGroup
              _gneganeRequestId
              (Just AltJSON)
              _gneganePayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           GlobalNetworkEndpointGroupsAttachNetworkEndpointsResource)
                      mempty

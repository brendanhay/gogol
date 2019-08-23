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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network endpoint group. The network endpoints in
-- the NEG and the VM instances they belong to are not terminated when the
-- NEG is deleted. Note that the NEG cannot be deleted if there are backend
-- services referencing it.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.delete@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.Delete
    (
    -- * REST Resource
      NetworkEndpointGroupsDeleteResource

    -- * Creating a Request
    , networkEndpointGroupsDelete
    , NetworkEndpointGroupsDelete

    -- * Request Lenses
    , negdRequestId
    , negdProject
    , negdZone
    , negdNetworkEndpointGroup
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.delete@ method which the
-- 'NetworkEndpointGroupsDelete' request conforms to.
type NetworkEndpointGroupsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified network endpoint group. The network endpoints in
-- the NEG and the VM instances they belong to are not terminated when the
-- NEG is deleted. Note that the NEG cannot be deleted if there are backend
-- services referencing it.
--
-- /See:/ 'networkEndpointGroupsDelete' smart constructor.
data NetworkEndpointGroupsDelete =
  NetworkEndpointGroupsDelete'
    { _negdRequestId            :: !(Maybe Text)
    , _negdProject              :: !Text
    , _negdZone                 :: !Text
    , _negdNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'negdRequestId'
--
-- * 'negdProject'
--
-- * 'negdZone'
--
-- * 'negdNetworkEndpointGroup'
networkEndpointGroupsDelete
    :: Text -- ^ 'negdProject'
    -> Text -- ^ 'negdZone'
    -> Text -- ^ 'negdNetworkEndpointGroup'
    -> NetworkEndpointGroupsDelete
networkEndpointGroupsDelete pNegdProject_ pNegdZone_ pNegdNetworkEndpointGroup_ =
  NetworkEndpointGroupsDelete'
    { _negdRequestId = Nothing
    , _negdProject = pNegdProject_
    , _negdZone = pNegdZone_
    , _negdNetworkEndpointGroup = pNegdNetworkEndpointGroup_
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
negdRequestId :: Lens' NetworkEndpointGroupsDelete (Maybe Text)
negdRequestId
  = lens _negdRequestId
      (\ s a -> s{_negdRequestId = a})

-- | Project ID for this request.
negdProject :: Lens' NetworkEndpointGroupsDelete Text
negdProject
  = lens _negdProject (\ s a -> s{_negdProject = a})

-- | The name of the zone where the network endpoint group is located. It
-- should comply with RFC1035.
negdZone :: Lens' NetworkEndpointGroupsDelete Text
negdZone = lens _negdZone (\ s a -> s{_negdZone = a})

-- | The name of the network endpoint group to delete. It should comply with
-- RFC1035.
negdNetworkEndpointGroup :: Lens' NetworkEndpointGroupsDelete Text
negdNetworkEndpointGroup
  = lens _negdNetworkEndpointGroup
      (\ s a -> s{_negdNetworkEndpointGroup = a})

instance GoogleRequest NetworkEndpointGroupsDelete
         where
        type Rs NetworkEndpointGroupsDelete = Operation
        type Scopes NetworkEndpointGroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworkEndpointGroupsDelete'{..}
          = go _negdProject _negdZone _negdNetworkEndpointGroup
              _negdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworkEndpointGroupsDeleteResource)
                      mempty

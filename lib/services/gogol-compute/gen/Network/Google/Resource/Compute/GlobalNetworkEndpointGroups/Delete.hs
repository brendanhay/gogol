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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network endpoint group.Note that the NEG cannot be
-- deleted if there are backend services referencing it.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.delete@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Delete
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsDeleteResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsDelete
    , GlobalNetworkEndpointGroupsDelete

    -- * Request Lenses
    , gnegdRequestId
    , gnegdProject
    , gnegdNetworkEndpointGroup
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.delete@ method which the
-- 'GlobalNetworkEndpointGroupsDelete' request conforms to.
type GlobalNetworkEndpointGroupsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 Capture "networkEndpointGroup" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified network endpoint group.Note that the NEG cannot be
-- deleted if there are backend services referencing it.
--
-- /See:/ 'globalNetworkEndpointGroupsDelete' smart constructor.
data GlobalNetworkEndpointGroupsDelete =
  GlobalNetworkEndpointGroupsDelete'
    { _gnegdRequestId :: !(Maybe Text)
    , _gnegdProject :: !Text
    , _gnegdNetworkEndpointGroup :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnegdRequestId'
--
-- * 'gnegdProject'
--
-- * 'gnegdNetworkEndpointGroup'
globalNetworkEndpointGroupsDelete
    :: Text -- ^ 'gnegdProject'
    -> Text -- ^ 'gnegdNetworkEndpointGroup'
    -> GlobalNetworkEndpointGroupsDelete
globalNetworkEndpointGroupsDelete pGnegdProject_ pGnegdNetworkEndpointGroup_ =
  GlobalNetworkEndpointGroupsDelete'
    { _gnegdRequestId = Nothing
    , _gnegdProject = pGnegdProject_
    , _gnegdNetworkEndpointGroup = pGnegdNetworkEndpointGroup_
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
gnegdRequestId :: Lens' GlobalNetworkEndpointGroupsDelete (Maybe Text)
gnegdRequestId
  = lens _gnegdRequestId
      (\ s a -> s{_gnegdRequestId = a})

-- | Project ID for this request.
gnegdProject :: Lens' GlobalNetworkEndpointGroupsDelete Text
gnegdProject
  = lens _gnegdProject (\ s a -> s{_gnegdProject = a})

-- | The name of the network endpoint group to delete. It should comply with
-- RFC1035.
gnegdNetworkEndpointGroup :: Lens' GlobalNetworkEndpointGroupsDelete Text
gnegdNetworkEndpointGroup
  = lens _gnegdNetworkEndpointGroup
      (\ s a -> s{_gnegdNetworkEndpointGroup = a})

instance GoogleRequest
           GlobalNetworkEndpointGroupsDelete
         where
        type Rs GlobalNetworkEndpointGroupsDelete = Operation
        type Scopes GlobalNetworkEndpointGroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalNetworkEndpointGroupsDelete'{..}
          = go _gnegdProject _gnegdNetworkEndpointGroup
              _gnegdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalNetworkEndpointGroupsDeleteResource)
                      mempty

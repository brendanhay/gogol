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
-- Module      : Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified network endpoint group. Note that the NEG cannot
-- be deleted if it is configured as a backend of a backend service.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.delete@.
module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Delete
    (
    -- * REST Resource
      RegionNetworkEndpointGroupsDeleteResource

    -- * Creating a Request
    , regionNetworkEndpointGroupsDelete
    , RegionNetworkEndpointGroupsDelete

    -- * Request Lenses
    , rnegdRequestId
    , rnegdProject
    , rnegdNetworkEndpointGroup
    , rnegdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNetworkEndpointGroups.delete@ method which the
-- 'RegionNetworkEndpointGroupsDelete' request conforms to.
type RegionNetworkEndpointGroupsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "networkEndpointGroups" :>
                   Capture "networkEndpointGroup" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified network endpoint group. Note that the NEG cannot
-- be deleted if it is configured as a backend of a backend service.
--
-- /See:/ 'regionNetworkEndpointGroupsDelete' smart constructor.
data RegionNetworkEndpointGroupsDelete =
  RegionNetworkEndpointGroupsDelete'
    { _rnegdRequestId :: !(Maybe Text)
    , _rnegdProject :: !Text
    , _rnegdNetworkEndpointGroup :: !Text
    , _rnegdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNetworkEndpointGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnegdRequestId'
--
-- * 'rnegdProject'
--
-- * 'rnegdNetworkEndpointGroup'
--
-- * 'rnegdRegion'
regionNetworkEndpointGroupsDelete
    :: Text -- ^ 'rnegdProject'
    -> Text -- ^ 'rnegdNetworkEndpointGroup'
    -> Text -- ^ 'rnegdRegion'
    -> RegionNetworkEndpointGroupsDelete
regionNetworkEndpointGroupsDelete pRnegdProject_ pRnegdNetworkEndpointGroup_ pRnegdRegion_ =
  RegionNetworkEndpointGroupsDelete'
    { _rnegdRequestId = Nothing
    , _rnegdProject = pRnegdProject_
    , _rnegdNetworkEndpointGroup = pRnegdNetworkEndpointGroup_
    , _rnegdRegion = pRnegdRegion_
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
rnegdRequestId :: Lens' RegionNetworkEndpointGroupsDelete (Maybe Text)
rnegdRequestId
  = lens _rnegdRequestId
      (\ s a -> s{_rnegdRequestId = a})

-- | Project ID for this request.
rnegdProject :: Lens' RegionNetworkEndpointGroupsDelete Text
rnegdProject
  = lens _rnegdProject (\ s a -> s{_rnegdProject = a})

-- | The name of the network endpoint group to delete. It should comply with
-- RFC1035.
rnegdNetworkEndpointGroup :: Lens' RegionNetworkEndpointGroupsDelete Text
rnegdNetworkEndpointGroup
  = lens _rnegdNetworkEndpointGroup
      (\ s a -> s{_rnegdNetworkEndpointGroup = a})

-- | The name of the region where the network endpoint group is located. It
-- should comply with RFC1035.
rnegdRegion :: Lens' RegionNetworkEndpointGroupsDelete Text
rnegdRegion
  = lens _rnegdRegion (\ s a -> s{_rnegdRegion = a})

instance GoogleRequest
           RegionNetworkEndpointGroupsDelete
         where
        type Rs RegionNetworkEndpointGroupsDelete = Operation
        type Scopes RegionNetworkEndpointGroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionNetworkEndpointGroupsDelete'{..}
          = go _rnegdProject _rnegdRegion
              _rnegdNetworkEndpointGroup
              _rnegdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNetworkEndpointGroupsDeleteResource)
                      mempty

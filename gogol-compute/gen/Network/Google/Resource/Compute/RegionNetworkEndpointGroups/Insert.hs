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
-- Module      : Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionNetworkEndpointGroups.insert@.
module Network.Google.Resource.Compute.RegionNetworkEndpointGroups.Insert
    (
    -- * REST Resource
      RegionNetworkEndpointGroupsInsertResource

    -- * Creating a Request
    , regionNetworkEndpointGroupsInsert
    , RegionNetworkEndpointGroupsInsert

    -- * Request Lenses
    , rnegiRequestId
    , rnegiProject
    , rnegiPayload
    , rnegiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionNetworkEndpointGroups.insert@ method which the
-- 'RegionNetworkEndpointGroupsInsert' request conforms to.
type RegionNetworkEndpointGroupsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "networkEndpointGroups" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NetworkEndpointGroup :>
                         Post '[JSON] Operation

-- | Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ 'regionNetworkEndpointGroupsInsert' smart constructor.
data RegionNetworkEndpointGroupsInsert =
  RegionNetworkEndpointGroupsInsert'
    { _rnegiRequestId :: !(Maybe Text)
    , _rnegiProject :: !Text
    , _rnegiPayload :: !NetworkEndpointGroup
    , _rnegiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionNetworkEndpointGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnegiRequestId'
--
-- * 'rnegiProject'
--
-- * 'rnegiPayload'
--
-- * 'rnegiRegion'
regionNetworkEndpointGroupsInsert
    :: Text -- ^ 'rnegiProject'
    -> NetworkEndpointGroup -- ^ 'rnegiPayload'
    -> Text -- ^ 'rnegiRegion'
    -> RegionNetworkEndpointGroupsInsert
regionNetworkEndpointGroupsInsert pRnegiProject_ pRnegiPayload_ pRnegiRegion_ =
  RegionNetworkEndpointGroupsInsert'
    { _rnegiRequestId = Nothing
    , _rnegiProject = pRnegiProject_
    , _rnegiPayload = pRnegiPayload_
    , _rnegiRegion = pRnegiRegion_
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
rnegiRequestId :: Lens' RegionNetworkEndpointGroupsInsert (Maybe Text)
rnegiRequestId
  = lens _rnegiRequestId
      (\ s a -> s{_rnegiRequestId = a})

-- | Project ID for this request.
rnegiProject :: Lens' RegionNetworkEndpointGroupsInsert Text
rnegiProject
  = lens _rnegiProject (\ s a -> s{_rnegiProject = a})

-- | Multipart request metadata.
rnegiPayload :: Lens' RegionNetworkEndpointGroupsInsert NetworkEndpointGroup
rnegiPayload
  = lens _rnegiPayload (\ s a -> s{_rnegiPayload = a})

-- | The name of the region where you want to create the network endpoint
-- group. It should comply with RFC1035.
rnegiRegion :: Lens' RegionNetworkEndpointGroupsInsert Text
rnegiRegion
  = lens _rnegiRegion (\ s a -> s{_rnegiRegion = a})

instance GoogleRequest
           RegionNetworkEndpointGroupsInsert
         where
        type Rs RegionNetworkEndpointGroupsInsert = Operation
        type Scopes RegionNetworkEndpointGroupsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionNetworkEndpointGroupsInsert'{..}
          = go _rnegiProject _rnegiRegion _rnegiRequestId
              (Just AltJSON)
              _rnegiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionNetworkEndpointGroupsInsertResource)
                      mempty

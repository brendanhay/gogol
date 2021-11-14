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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.insert@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.Insert
    (
    -- * REST Resource
      NetworkEndpointGroupsInsertResource

    -- * Creating a Request
    , networkEndpointGroupsInsert
    , NetworkEndpointGroupsInsert

    -- * Request Lenses
    , negiRequestId
    , negiProject
    , negiZone
    , negiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.insert@ method which the
-- 'NetworkEndpointGroupsInsert' request conforms to.
type NetworkEndpointGroupsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] NetworkEndpointGroup :>
                         Post '[JSON] Operation

-- | Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ 'networkEndpointGroupsInsert' smart constructor.
data NetworkEndpointGroupsInsert =
  NetworkEndpointGroupsInsert'
    { _negiRequestId :: !(Maybe Text)
    , _negiProject :: !Text
    , _negiZone :: !Text
    , _negiPayload :: !NetworkEndpointGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'negiRequestId'
--
-- * 'negiProject'
--
-- * 'negiZone'
--
-- * 'negiPayload'
networkEndpointGroupsInsert
    :: Text -- ^ 'negiProject'
    -> Text -- ^ 'negiZone'
    -> NetworkEndpointGroup -- ^ 'negiPayload'
    -> NetworkEndpointGroupsInsert
networkEndpointGroupsInsert pNegiProject_ pNegiZone_ pNegiPayload_ =
  NetworkEndpointGroupsInsert'
    { _negiRequestId = Nothing
    , _negiProject = pNegiProject_
    , _negiZone = pNegiZone_
    , _negiPayload = pNegiPayload_
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
negiRequestId :: Lens' NetworkEndpointGroupsInsert (Maybe Text)
negiRequestId
  = lens _negiRequestId
      (\ s a -> s{_negiRequestId = a})

-- | Project ID for this request.
negiProject :: Lens' NetworkEndpointGroupsInsert Text
negiProject
  = lens _negiProject (\ s a -> s{_negiProject = a})

-- | The name of the zone where you want to create the network endpoint
-- group. It should comply with RFC1035.
negiZone :: Lens' NetworkEndpointGroupsInsert Text
negiZone = lens _negiZone (\ s a -> s{_negiZone = a})

-- | Multipart request metadata.
negiPayload :: Lens' NetworkEndpointGroupsInsert NetworkEndpointGroup
negiPayload
  = lens _negiPayload (\ s a -> s{_negiPayload = a})

instance GoogleRequest NetworkEndpointGroupsInsert
         where
        type Rs NetworkEndpointGroupsInsert = Operation
        type Scopes NetworkEndpointGroupsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NetworkEndpointGroupsInsert'{..}
          = go _negiProject _negiZone _negiRequestId
              (Just AltJSON)
              _negiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NetworkEndpointGroupsInsertResource)
                      mempty

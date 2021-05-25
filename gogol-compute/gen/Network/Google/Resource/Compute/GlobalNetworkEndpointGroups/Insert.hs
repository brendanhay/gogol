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
-- Module      : Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalNetworkEndpointGroups.insert@.
module Network.Google.Resource.Compute.GlobalNetworkEndpointGroups.Insert
    (
    -- * REST Resource
      GlobalNetworkEndpointGroupsInsertResource

    -- * Creating a Request
    , globalNetworkEndpointGroupsInsert
    , GlobalNetworkEndpointGroupsInsert

    -- * Request Lenses
    , gnegiRequestId
    , gnegiProject
    , gnegiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalNetworkEndpointGroups.insert@ method which the
-- 'GlobalNetworkEndpointGroupsInsert' request conforms to.
type GlobalNetworkEndpointGroupsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "networkEndpointGroups" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] NetworkEndpointGroup :>
                       Post '[JSON] Operation

-- | Creates a network endpoint group in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ 'globalNetworkEndpointGroupsInsert' smart constructor.
data GlobalNetworkEndpointGroupsInsert =
  GlobalNetworkEndpointGroupsInsert'
    { _gnegiRequestId :: !(Maybe Text)
    , _gnegiProject :: !Text
    , _gnegiPayload :: !NetworkEndpointGroup
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalNetworkEndpointGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gnegiRequestId'
--
-- * 'gnegiProject'
--
-- * 'gnegiPayload'
globalNetworkEndpointGroupsInsert
    :: Text -- ^ 'gnegiProject'
    -> NetworkEndpointGroup -- ^ 'gnegiPayload'
    -> GlobalNetworkEndpointGroupsInsert
globalNetworkEndpointGroupsInsert pGnegiProject_ pGnegiPayload_ =
  GlobalNetworkEndpointGroupsInsert'
    { _gnegiRequestId = Nothing
    , _gnegiProject = pGnegiProject_
    , _gnegiPayload = pGnegiPayload_
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
gnegiRequestId :: Lens' GlobalNetworkEndpointGroupsInsert (Maybe Text)
gnegiRequestId
  = lens _gnegiRequestId
      (\ s a -> s{_gnegiRequestId = a})

-- | Project ID for this request.
gnegiProject :: Lens' GlobalNetworkEndpointGroupsInsert Text
gnegiProject
  = lens _gnegiProject (\ s a -> s{_gnegiProject = a})

-- | Multipart request metadata.
gnegiPayload :: Lens' GlobalNetworkEndpointGroupsInsert NetworkEndpointGroup
gnegiPayload
  = lens _gnegiPayload (\ s a -> s{_gnegiPayload = a})

instance GoogleRequest
           GlobalNetworkEndpointGroupsInsert
         where
        type Rs GlobalNetworkEndpointGroupsInsert = Operation
        type Scopes GlobalNetworkEndpointGroupsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalNetworkEndpointGroupsInsert'{..}
          = go _gnegiProject _gnegiRequestId (Just AltJSON)
              _gnegiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalNetworkEndpointGroupsInsertResource)
                      mempty

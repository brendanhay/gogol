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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.testIamPermissions@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.TestIAMPermissions
    (
    -- * REST Resource
      NetworkEndpointGroupsTestIAMPermissionsResource

    -- * Creating a Request
    , networkEndpointGroupsTestIAMPermissions
    , NetworkEndpointGroupsTestIAMPermissions

    -- * Request Lenses
    , negtipProject
    , negtipZone
    , negtipPayload
    , negtipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.testIamPermissions@ method which the
-- 'NetworkEndpointGroupsTestIAMPermissions' request conforms to.
type NetworkEndpointGroupsTestIAMPermissionsResource
     =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "networkEndpointGroups" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'networkEndpointGroupsTestIAMPermissions' smart constructor.
data NetworkEndpointGroupsTestIAMPermissions =
  NetworkEndpointGroupsTestIAMPermissions'
    { _negtipProject :: !Text
    , _negtipZone :: !Text
    , _negtipPayload :: !TestPermissionsRequest
    , _negtipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'negtipProject'
--
-- * 'negtipZone'
--
-- * 'negtipPayload'
--
-- * 'negtipResource'
networkEndpointGroupsTestIAMPermissions
    :: Text -- ^ 'negtipProject'
    -> Text -- ^ 'negtipZone'
    -> TestPermissionsRequest -- ^ 'negtipPayload'
    -> Text -- ^ 'negtipResource'
    -> NetworkEndpointGroupsTestIAMPermissions
networkEndpointGroupsTestIAMPermissions pNegtipProject_ pNegtipZone_ pNegtipPayload_ pNegtipResource_ =
  NetworkEndpointGroupsTestIAMPermissions'
    { _negtipProject = pNegtipProject_
    , _negtipZone = pNegtipZone_
    , _negtipPayload = pNegtipPayload_
    , _negtipResource = pNegtipResource_
    }


-- | Project ID for this request.
negtipProject :: Lens' NetworkEndpointGroupsTestIAMPermissions Text
negtipProject
  = lens _negtipProject
      (\ s a -> s{_negtipProject = a})

-- | The name of the zone for this request.
negtipZone :: Lens' NetworkEndpointGroupsTestIAMPermissions Text
negtipZone
  = lens _negtipZone (\ s a -> s{_negtipZone = a})

-- | Multipart request metadata.
negtipPayload :: Lens' NetworkEndpointGroupsTestIAMPermissions TestPermissionsRequest
negtipPayload
  = lens _negtipPayload
      (\ s a -> s{_negtipPayload = a})

-- | Name or id of the resource for this request.
negtipResource :: Lens' NetworkEndpointGroupsTestIAMPermissions Text
negtipResource
  = lens _negtipResource
      (\ s a -> s{_negtipResource = a})

instance GoogleRequest
           NetworkEndpointGroupsTestIAMPermissions
         where
        type Rs NetworkEndpointGroupsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes NetworkEndpointGroupsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          NetworkEndpointGroupsTestIAMPermissions'{..}
          = go _negtipProject _negtipZone _negtipResource
              (Just AltJSON)
              _negtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           NetworkEndpointGroupsTestIAMPermissionsResource)
                      mempty

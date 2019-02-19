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
-- Module      : Network.Google.Resource.Compute.NodeGroups.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.testIamPermissions@.
module Network.Google.Resource.Compute.NodeGroups.TestIAMPermissions
    (
    -- * REST Resource
      NodeGroupsTestIAMPermissionsResource

    -- * Creating a Request
    , nodeGroupsTestIAMPermissions
    , NodeGroupsTestIAMPermissions

    -- * Request Lenses
    , ngtipProject
    , ngtipZone
    , ngtipPayload
    , ngtipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.testIamPermissions@ method which the
-- 'NodeGroupsTestIAMPermissions' request conforms to.
type NodeGroupsTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'nodeGroupsTestIAMPermissions' smart constructor.
data NodeGroupsTestIAMPermissions =
  NodeGroupsTestIAMPermissions'
    { _ngtipProject  :: !Text
    , _ngtipZone     :: !Text
    , _ngtipPayload  :: !TestPermissionsRequest
    , _ngtipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodeGroupsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngtipProject'
--
-- * 'ngtipZone'
--
-- * 'ngtipPayload'
--
-- * 'ngtipResource'
nodeGroupsTestIAMPermissions
    :: Text -- ^ 'ngtipProject'
    -> Text -- ^ 'ngtipZone'
    -> TestPermissionsRequest -- ^ 'ngtipPayload'
    -> Text -- ^ 'ngtipResource'
    -> NodeGroupsTestIAMPermissions
nodeGroupsTestIAMPermissions pNgtipProject_ pNgtipZone_ pNgtipPayload_ pNgtipResource_ =
  NodeGroupsTestIAMPermissions'
    { _ngtipProject = pNgtipProject_
    , _ngtipZone = pNgtipZone_
    , _ngtipPayload = pNgtipPayload_
    , _ngtipResource = pNgtipResource_
    }

-- | Project ID for this request.
ngtipProject :: Lens' NodeGroupsTestIAMPermissions Text
ngtipProject
  = lens _ngtipProject (\ s a -> s{_ngtipProject = a})

-- | The name of the zone for this request.
ngtipZone :: Lens' NodeGroupsTestIAMPermissions Text
ngtipZone
  = lens _ngtipZone (\ s a -> s{_ngtipZone = a})

-- | Multipart request metadata.
ngtipPayload :: Lens' NodeGroupsTestIAMPermissions TestPermissionsRequest
ngtipPayload
  = lens _ngtipPayload (\ s a -> s{_ngtipPayload = a})

-- | Name or id of the resource for this request.
ngtipResource :: Lens' NodeGroupsTestIAMPermissions Text
ngtipResource
  = lens _ngtipResource
      (\ s a -> s{_ngtipResource = a})

instance GoogleRequest NodeGroupsTestIAMPermissions
         where
        type Rs NodeGroupsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes NodeGroupsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsTestIAMPermissions'{..}
          = go _ngtipProject _ngtipZone _ngtipResource
              (Just AltJSON)
              _ngtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsTestIAMPermissionsResource)
                      mempty

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
-- Module      : Network.Google.Resource.Compute.NodeTemplates.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeTemplates.testIamPermissions@.
module Network.Google.Resource.Compute.NodeTemplates.TestIAMPermissions
    (
    -- * REST Resource
      NodeTemplatesTestIAMPermissionsResource

    -- * Creating a Request
    , nodeTemplatesTestIAMPermissions
    , NodeTemplatesTestIAMPermissions

    -- * Request Lenses
    , nttipProject
    , nttipPayload
    , nttipResource
    , nttipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeTemplates.testIamPermissions@ method which the
-- 'NodeTemplatesTestIAMPermissions' request conforms to.
type NodeTemplatesTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "nodeTemplates" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'nodeTemplatesTestIAMPermissions' smart constructor.
data NodeTemplatesTestIAMPermissions =
  NodeTemplatesTestIAMPermissions'
    { _nttipProject :: !Text
    , _nttipPayload :: !TestPermissionsRequest
    , _nttipResource :: !Text
    , _nttipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeTemplatesTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nttipProject'
--
-- * 'nttipPayload'
--
-- * 'nttipResource'
--
-- * 'nttipRegion'
nodeTemplatesTestIAMPermissions
    :: Text -- ^ 'nttipProject'
    -> TestPermissionsRequest -- ^ 'nttipPayload'
    -> Text -- ^ 'nttipResource'
    -> Text -- ^ 'nttipRegion'
    -> NodeTemplatesTestIAMPermissions
nodeTemplatesTestIAMPermissions pNttipProject_ pNttipPayload_ pNttipResource_ pNttipRegion_ =
  NodeTemplatesTestIAMPermissions'
    { _nttipProject = pNttipProject_
    , _nttipPayload = pNttipPayload_
    , _nttipResource = pNttipResource_
    , _nttipRegion = pNttipRegion_
    }


-- | Project ID for this request.
nttipProject :: Lens' NodeTemplatesTestIAMPermissions Text
nttipProject
  = lens _nttipProject (\ s a -> s{_nttipProject = a})

-- | Multipart request metadata.
nttipPayload :: Lens' NodeTemplatesTestIAMPermissions TestPermissionsRequest
nttipPayload
  = lens _nttipPayload (\ s a -> s{_nttipPayload = a})

-- | Name or id of the resource for this request.
nttipResource :: Lens' NodeTemplatesTestIAMPermissions Text
nttipResource
  = lens _nttipResource
      (\ s a -> s{_nttipResource = a})

-- | The name of the region for this request.
nttipRegion :: Lens' NodeTemplatesTestIAMPermissions Text
nttipRegion
  = lens _nttipRegion (\ s a -> s{_nttipRegion = a})

instance GoogleRequest
           NodeTemplatesTestIAMPermissions
         where
        type Rs NodeTemplatesTestIAMPermissions =
             TestPermissionsResponse
        type Scopes NodeTemplatesTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeTemplatesTestIAMPermissions'{..}
          = go _nttipProject _nttipRegion _nttipResource
              (Just AltJSON)
              _nttipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NodeTemplatesTestIAMPermissionsResource)
                      mempty

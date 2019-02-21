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
-- Module      : Network.Google.Resource.Compute.NodeGroups.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.getIamPolicy@.
module Network.Google.Resource.Compute.NodeGroups.GetIAMPolicy
    (
    -- * REST Resource
      NodeGroupsGetIAMPolicyResource

    -- * Creating a Request
    , nodeGroupsGetIAMPolicy
    , NodeGroupsGetIAMPolicy

    -- * Request Lenses
    , nggipProject
    , nggipZone
    , nggipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.getIamPolicy@ method which the
-- 'NodeGroupsGetIAMPolicy' request conforms to.
type NodeGroupsGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'nodeGroupsGetIAMPolicy' smart constructor.
data NodeGroupsGetIAMPolicy =
  NodeGroupsGetIAMPolicy'
    { _nggipProject  :: !Text
    , _nggipZone     :: !Text
    , _nggipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nggipProject'
--
-- * 'nggipZone'
--
-- * 'nggipResource'
nodeGroupsGetIAMPolicy
    :: Text -- ^ 'nggipProject'
    -> Text -- ^ 'nggipZone'
    -> Text -- ^ 'nggipResource'
    -> NodeGroupsGetIAMPolicy
nodeGroupsGetIAMPolicy pNggipProject_ pNggipZone_ pNggipResource_ =
  NodeGroupsGetIAMPolicy'
    { _nggipProject = pNggipProject_
    , _nggipZone = pNggipZone_
    , _nggipResource = pNggipResource_
    }


-- | Project ID for this request.
nggipProject :: Lens' NodeGroupsGetIAMPolicy Text
nggipProject
  = lens _nggipProject (\ s a -> s{_nggipProject = a})

-- | The name of the zone for this request.
nggipZone :: Lens' NodeGroupsGetIAMPolicy Text
nggipZone
  = lens _nggipZone (\ s a -> s{_nggipZone = a})

-- | Name or id of the resource for this request.
nggipResource :: Lens' NodeGroupsGetIAMPolicy Text
nggipResource
  = lens _nggipResource
      (\ s a -> s{_nggipResource = a})

instance GoogleRequest NodeGroupsGetIAMPolicy where
        type Rs NodeGroupsGetIAMPolicy = Policy
        type Scopes NodeGroupsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsGetIAMPolicy'{..}
          = go _nggipProject _nggipZone _nggipResource
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsGetIAMPolicyResource)
                      mempty

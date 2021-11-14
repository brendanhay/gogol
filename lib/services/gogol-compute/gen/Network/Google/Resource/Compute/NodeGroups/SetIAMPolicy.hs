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
-- Module      : Network.Google.Resource.Compute.NodeGroups.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.setIamPolicy@.
module Network.Google.Resource.Compute.NodeGroups.SetIAMPolicy
    (
    -- * REST Resource
      NodeGroupsSetIAMPolicyResource

    -- * Creating a Request
    , nodeGroupsSetIAMPolicy
    , NodeGroupsSetIAMPolicy

    -- * Request Lenses
    , ngsipProject
    , ngsipZone
    , ngsipPayload
    , ngsipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.setIamPolicy@ method which the
-- 'NodeGroupsSetIAMPolicy' request conforms to.
type NodeGroupsSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ZoneSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'nodeGroupsSetIAMPolicy' smart constructor.
data NodeGroupsSetIAMPolicy =
  NodeGroupsSetIAMPolicy'
    { _ngsipProject :: !Text
    , _ngsipZone :: !Text
    , _ngsipPayload :: !ZoneSetPolicyRequest
    , _ngsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngsipProject'
--
-- * 'ngsipZone'
--
-- * 'ngsipPayload'
--
-- * 'ngsipResource'
nodeGroupsSetIAMPolicy
    :: Text -- ^ 'ngsipProject'
    -> Text -- ^ 'ngsipZone'
    -> ZoneSetPolicyRequest -- ^ 'ngsipPayload'
    -> Text -- ^ 'ngsipResource'
    -> NodeGroupsSetIAMPolicy
nodeGroupsSetIAMPolicy pNgsipProject_ pNgsipZone_ pNgsipPayload_ pNgsipResource_ =
  NodeGroupsSetIAMPolicy'
    { _ngsipProject = pNgsipProject_
    , _ngsipZone = pNgsipZone_
    , _ngsipPayload = pNgsipPayload_
    , _ngsipResource = pNgsipResource_
    }


-- | Project ID for this request.
ngsipProject :: Lens' NodeGroupsSetIAMPolicy Text
ngsipProject
  = lens _ngsipProject (\ s a -> s{_ngsipProject = a})

-- | The name of the zone for this request.
ngsipZone :: Lens' NodeGroupsSetIAMPolicy Text
ngsipZone
  = lens _ngsipZone (\ s a -> s{_ngsipZone = a})

-- | Multipart request metadata.
ngsipPayload :: Lens' NodeGroupsSetIAMPolicy ZoneSetPolicyRequest
ngsipPayload
  = lens _ngsipPayload (\ s a -> s{_ngsipPayload = a})

-- | Name or id of the resource for this request.
ngsipResource :: Lens' NodeGroupsSetIAMPolicy Text
ngsipResource
  = lens _ngsipResource
      (\ s a -> s{_ngsipResource = a})

instance GoogleRequest NodeGroupsSetIAMPolicy where
        type Rs NodeGroupsSetIAMPolicy = Policy
        type Scopes NodeGroupsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsSetIAMPolicy'{..}
          = go _ngsipProject _ngsipZone _ngsipResource
              (Just AltJSON)
              _ngsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsSetIAMPolicyResource)
                      mempty

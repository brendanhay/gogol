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
-- Module      : Network.Google.Resource.Compute.NodeGroups.AddNodes
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds specified number of nodes to the node group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.addNodes@.
module Network.Google.Resource.Compute.NodeGroups.AddNodes
    (
    -- * REST Resource
      NodeGroupsAddNodesResource

    -- * Creating a Request
    , nodeGroupsAddNodes
    , NodeGroupsAddNodes

    -- * Request Lenses
    , nganRequestId
    , nganNodeGroup
    , nganProject
    , nganZone
    , nganPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.addNodes@ method which the
-- 'NodeGroupsAddNodes' request conforms to.
type NodeGroupsAddNodesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     "addNodes" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] NodeGroupsAddNodesRequest :>
                             Post '[JSON] Operation

-- | Adds specified number of nodes to the node group.
--
-- /See:/ 'nodeGroupsAddNodes' smart constructor.
data NodeGroupsAddNodes =
  NodeGroupsAddNodes'
    { _nganRequestId :: !(Maybe Text)
    , _nganNodeGroup :: !Text
    , _nganProject   :: !Text
    , _nganZone      :: !Text
    , _nganPayload   :: !NodeGroupsAddNodesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsAddNodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nganRequestId'
--
-- * 'nganNodeGroup'
--
-- * 'nganProject'
--
-- * 'nganZone'
--
-- * 'nganPayload'
nodeGroupsAddNodes
    :: Text -- ^ 'nganNodeGroup'
    -> Text -- ^ 'nganProject'
    -> Text -- ^ 'nganZone'
    -> NodeGroupsAddNodesRequest -- ^ 'nganPayload'
    -> NodeGroupsAddNodes
nodeGroupsAddNodes pNganNodeGroup_ pNganProject_ pNganZone_ pNganPayload_ =
  NodeGroupsAddNodes'
    { _nganRequestId = Nothing
    , _nganNodeGroup = pNganNodeGroup_
    , _nganProject = pNganProject_
    , _nganZone = pNganZone_
    , _nganPayload = pNganPayload_
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
nganRequestId :: Lens' NodeGroupsAddNodes (Maybe Text)
nganRequestId
  = lens _nganRequestId
      (\ s a -> s{_nganRequestId = a})

-- | Name of the NodeGroup resource.
nganNodeGroup :: Lens' NodeGroupsAddNodes Text
nganNodeGroup
  = lens _nganNodeGroup
      (\ s a -> s{_nganNodeGroup = a})

-- | Project ID for this request.
nganProject :: Lens' NodeGroupsAddNodes Text
nganProject
  = lens _nganProject (\ s a -> s{_nganProject = a})

-- | The name of the zone for this request.
nganZone :: Lens' NodeGroupsAddNodes Text
nganZone = lens _nganZone (\ s a -> s{_nganZone = a})

-- | Multipart request metadata.
nganPayload :: Lens' NodeGroupsAddNodes NodeGroupsAddNodesRequest
nganPayload
  = lens _nganPayload (\ s a -> s{_nganPayload = a})

instance GoogleRequest NodeGroupsAddNodes where
        type Rs NodeGroupsAddNodes = Operation
        type Scopes NodeGroupsAddNodes =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsAddNodes'{..}
          = go _nganProject _nganZone _nganNodeGroup
              _nganRequestId
              (Just AltJSON)
              _nganPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsAddNodesResource)
                      mempty

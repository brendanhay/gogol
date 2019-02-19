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
-- Module      : Network.Google.Resource.Compute.NodeGroups.DeleteNodes
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes specified nodes from the node group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.deleteNodes@.
module Network.Google.Resource.Compute.NodeGroups.DeleteNodes
    (
    -- * REST Resource
      NodeGroupsDeleteNodesResource

    -- * Creating a Request
    , nodeGroupsDeleteNodes
    , NodeGroupsDeleteNodes

    -- * Request Lenses
    , ngdnRequestId
    , ngdnNodeGroup
    , ngdnProject
    , ngdnZone
    , ngdnPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.deleteNodes@ method which the
-- 'NodeGroupsDeleteNodes' request conforms to.
type NodeGroupsDeleteNodesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     "deleteNodes" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] NodeGroupsDeleteNodesRequest :>
                             Post '[JSON] Operation

-- | Deletes specified nodes from the node group.
--
-- /See:/ 'nodeGroupsDeleteNodes' smart constructor.
data NodeGroupsDeleteNodes =
  NodeGroupsDeleteNodes'
    { _ngdnRequestId :: !(Maybe Text)
    , _ngdnNodeGroup :: !Text
    , _ngdnProject   :: !Text
    , _ngdnZone      :: !Text
    , _ngdnPayload   :: !NodeGroupsDeleteNodesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'NodeGroupsDeleteNodes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngdnRequestId'
--
-- * 'ngdnNodeGroup'
--
-- * 'ngdnProject'
--
-- * 'ngdnZone'
--
-- * 'ngdnPayload'
nodeGroupsDeleteNodes
    :: Text -- ^ 'ngdnNodeGroup'
    -> Text -- ^ 'ngdnProject'
    -> Text -- ^ 'ngdnZone'
    -> NodeGroupsDeleteNodesRequest -- ^ 'ngdnPayload'
    -> NodeGroupsDeleteNodes
nodeGroupsDeleteNodes pNgdnNodeGroup_ pNgdnProject_ pNgdnZone_ pNgdnPayload_ =
  NodeGroupsDeleteNodes'
    { _ngdnRequestId = Nothing
    , _ngdnNodeGroup = pNgdnNodeGroup_
    , _ngdnProject = pNgdnProject_
    , _ngdnZone = pNgdnZone_
    , _ngdnPayload = pNgdnPayload_
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
ngdnRequestId :: Lens' NodeGroupsDeleteNodes (Maybe Text)
ngdnRequestId
  = lens _ngdnRequestId
      (\ s a -> s{_ngdnRequestId = a})

-- | Name of the NodeGroup resource to delete.
ngdnNodeGroup :: Lens' NodeGroupsDeleteNodes Text
ngdnNodeGroup
  = lens _ngdnNodeGroup
      (\ s a -> s{_ngdnNodeGroup = a})

-- | Project ID for this request.
ngdnProject :: Lens' NodeGroupsDeleteNodes Text
ngdnProject
  = lens _ngdnProject (\ s a -> s{_ngdnProject = a})

-- | The name of the zone for this request.
ngdnZone :: Lens' NodeGroupsDeleteNodes Text
ngdnZone = lens _ngdnZone (\ s a -> s{_ngdnZone = a})

-- | Multipart request metadata.
ngdnPayload :: Lens' NodeGroupsDeleteNodes NodeGroupsDeleteNodesRequest
ngdnPayload
  = lens _ngdnPayload (\ s a -> s{_ngdnPayload = a})

instance GoogleRequest NodeGroupsDeleteNodes where
        type Rs NodeGroupsDeleteNodes = Operation
        type Scopes NodeGroupsDeleteNodes =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsDeleteNodes'{..}
          = go _ngdnProject _ngdnZone _ngdnNodeGroup
              _ngdnRequestId
              (Just AltJSON)
              _ngdnPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsDeleteNodesResource)
                      mempty

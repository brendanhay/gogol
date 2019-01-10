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
-- Module      : Network.Google.Resource.Compute.NodeGroups.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified NodeGroup resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.delete@.
module Network.Google.Resource.Compute.NodeGroups.Delete
    (
    -- * REST Resource
      NodeGroupsDeleteResource

    -- * Creating a Request
    , nodeGroupsDelete
    , NodeGroupsDelete

    -- * Request Lenses
    , ngdRequestId
    , ngdNodeGroup
    , ngdProject
    , ngdZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.delete@ method which the
-- 'NodeGroupsDelete' request conforms to.
type NodeGroupsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified NodeGroup resource.
--
-- /See:/ 'nodeGroupsDelete' smart constructor.
data NodeGroupsDelete = NodeGroupsDelete'
    { _ngdRequestId :: !(Maybe Text)
    , _ngdNodeGroup :: !Text
    , _ngdProject   :: !Text
    , _ngdZone      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeGroupsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngdRequestId'
--
-- * 'ngdNodeGroup'
--
-- * 'ngdProject'
--
-- * 'ngdZone'
nodeGroupsDelete
    :: Text -- ^ 'ngdNodeGroup'
    -> Text -- ^ 'ngdProject'
    -> Text -- ^ 'ngdZone'
    -> NodeGroupsDelete
nodeGroupsDelete pNgdNodeGroup_ pNgdProject_ pNgdZone_ =
    NodeGroupsDelete'
    { _ngdRequestId = Nothing
    , _ngdNodeGroup = pNgdNodeGroup_
    , _ngdProject = pNgdProject_
    , _ngdZone = pNgdZone_
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
ngdRequestId :: Lens' NodeGroupsDelete (Maybe Text)
ngdRequestId
  = lens _ngdRequestId (\ s a -> s{_ngdRequestId = a})

-- | Name of the NodeGroup resource to delete.
ngdNodeGroup :: Lens' NodeGroupsDelete Text
ngdNodeGroup
  = lens _ngdNodeGroup (\ s a -> s{_ngdNodeGroup = a})

-- | Project ID for this request.
ngdProject :: Lens' NodeGroupsDelete Text
ngdProject
  = lens _ngdProject (\ s a -> s{_ngdProject = a})

-- | The name of the zone for this request.
ngdZone :: Lens' NodeGroupsDelete Text
ngdZone = lens _ngdZone (\ s a -> s{_ngdZone = a})

instance GoogleRequest NodeGroupsDelete where
        type Rs NodeGroupsDelete = Operation
        type Scopes NodeGroupsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsDelete'{..}
          = go _ngdProject _ngdZone _ngdNodeGroup _ngdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsDeleteResource)
                      mempty

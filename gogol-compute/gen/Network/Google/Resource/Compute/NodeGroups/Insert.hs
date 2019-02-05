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
-- Module      : Network.Google.Resource.Compute.NodeGroups.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a NodeGroup resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.insert@.
module Network.Google.Resource.Compute.NodeGroups.Insert
    (
    -- * REST Resource
      NodeGroupsInsertResource

    -- * Creating a Request
    , nodeGroupsInsert
    , NodeGroupsInsert

    -- * Request Lenses
    , ngiRequestId
    , ngiProject
    , ngiInitialNodeCount
    , ngiZone
    , ngiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.insert@ method which the
-- 'NodeGroupsInsert' request conforms to.
type NodeGroupsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   QueryParam "initialNodeCount" (Textual Int32) :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] NodeGroup :> Post '[JSON] Operation

-- | Creates a NodeGroup resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'nodeGroupsInsert' smart constructor.
data NodeGroupsInsert = NodeGroupsInsert'
    { _ngiRequestId        :: !(Maybe Text)
    , _ngiProject          :: !Text
    , _ngiInitialNodeCount :: !(Textual Int32)
    , _ngiZone             :: !Text
    , _ngiPayload          :: !NodeGroup
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'NodeGroupsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ngiRequestId'
--
-- * 'ngiProject'
--
-- * 'ngiInitialNodeCount'
--
-- * 'ngiZone'
--
-- * 'ngiPayload'
nodeGroupsInsert
    :: Text -- ^ 'ngiProject'
    -> Int32 -- ^ 'ngiInitialNodeCount'
    -> Text -- ^ 'ngiZone'
    -> NodeGroup -- ^ 'ngiPayload'
    -> NodeGroupsInsert
nodeGroupsInsert pNgiProject_ pNgiInitialNodeCount_ pNgiZone_ pNgiPayload_ =
    NodeGroupsInsert'
    { _ngiRequestId = Nothing
    , _ngiProject = pNgiProject_
    , _ngiInitialNodeCount = _Coerce # pNgiInitialNodeCount_
    , _ngiZone = pNgiZone_
    , _ngiPayload = pNgiPayload_
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
ngiRequestId :: Lens' NodeGroupsInsert (Maybe Text)
ngiRequestId
  = lens _ngiRequestId (\ s a -> s{_ngiRequestId = a})

-- | Project ID for this request.
ngiProject :: Lens' NodeGroupsInsert Text
ngiProject
  = lens _ngiProject (\ s a -> s{_ngiProject = a})

-- | Initial count of nodes in the node group.
ngiInitialNodeCount :: Lens' NodeGroupsInsert Int32
ngiInitialNodeCount
  = lens _ngiInitialNodeCount
      (\ s a -> s{_ngiInitialNodeCount = a})
      . _Coerce

-- | The name of the zone for this request.
ngiZone :: Lens' NodeGroupsInsert Text
ngiZone = lens _ngiZone (\ s a -> s{_ngiZone = a})

-- | Multipart request metadata.
ngiPayload :: Lens' NodeGroupsInsert NodeGroup
ngiPayload
  = lens _ngiPayload (\ s a -> s{_ngiPayload = a})

instance GoogleRequest NodeGroupsInsert where
        type Rs NodeGroupsInsert = Operation
        type Scopes NodeGroupsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient NodeGroupsInsert'{..}
          = go _ngiProject _ngiZone (Just _ngiInitialNodeCount)
              _ngiRequestId
              (Just AltJSON)
              _ngiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsInsertResource)
                      mempty

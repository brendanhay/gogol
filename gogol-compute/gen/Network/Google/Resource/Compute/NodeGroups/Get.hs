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
-- Module      : Network.Google.Resource.Compute.NodeGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified NodeGroup. Get a list of available NodeGroups by
-- making a list() request. Note: the \"nodes\" field should not be used.
-- Use nodeGroups.listNodes instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.get@.
module Network.Google.Resource.Compute.NodeGroups.Get
    (
    -- * REST Resource
      NodeGroupsGetResource

    -- * Creating a Request
    , nodeGroupsGet
    , NodeGroupsGet

    -- * Request Lenses
    , nggNodeGroup
    , nggProject
    , nggZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.get@ method which the
-- 'NodeGroupsGet' request conforms to.
type NodeGroupsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] NodeGroup

-- | Returns the specified NodeGroup. Get a list of available NodeGroups by
-- making a list() request. Note: the \"nodes\" field should not be used.
-- Use nodeGroups.listNodes instead.
--
-- /See:/ 'nodeGroupsGet' smart constructor.
data NodeGroupsGet =
  NodeGroupsGet'
    { _nggNodeGroup :: !Text
    , _nggProject :: !Text
    , _nggZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nggNodeGroup'
--
-- * 'nggProject'
--
-- * 'nggZone'
nodeGroupsGet
    :: Text -- ^ 'nggNodeGroup'
    -> Text -- ^ 'nggProject'
    -> Text -- ^ 'nggZone'
    -> NodeGroupsGet
nodeGroupsGet pNggNodeGroup_ pNggProject_ pNggZone_ =
  NodeGroupsGet'
    { _nggNodeGroup = pNggNodeGroup_
    , _nggProject = pNggProject_
    , _nggZone = pNggZone_
    }


-- | Name of the node group to return.
nggNodeGroup :: Lens' NodeGroupsGet Text
nggNodeGroup
  = lens _nggNodeGroup (\ s a -> s{_nggNodeGroup = a})

-- | Project ID for this request.
nggProject :: Lens' NodeGroupsGet Text
nggProject
  = lens _nggProject (\ s a -> s{_nggProject = a})

-- | The name of the zone for this request.
nggZone :: Lens' NodeGroupsGet Text
nggZone = lens _nggZone (\ s a -> s{_nggZone = a})

instance GoogleRequest NodeGroupsGet where
        type Rs NodeGroupsGet = NodeGroup
        type Scopes NodeGroupsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsGet'{..}
          = go _nggProject _nggZone _nggNodeGroup
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NodeGroupsGetResource)
                      mempty

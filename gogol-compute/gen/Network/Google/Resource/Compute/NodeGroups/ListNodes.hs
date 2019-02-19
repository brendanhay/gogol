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
-- Module      : Network.Google.Resource.Compute.NodeGroups.ListNodes
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists nodes in the node group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.listNodes@.
module Network.Google.Resource.Compute.NodeGroups.ListNodes
    (
    -- * REST Resource
      NodeGroupsListNodesResource

    -- * Creating a Request
    , nodeGroupsListNodes'
    , NodeGroupsListNodes'

    -- * Request Lenses
    , nglnNodeGroup
    , nglnOrderBy
    , nglnProject
    , nglnZone
    , nglnFilter
    , nglnPageToken
    , nglnMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.listNodes@ method which the
-- 'NodeGroupsListNodes'' request conforms to.
type NodeGroupsListNodesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   Capture "nodeGroup" Text :>
                     "listNodes" :>
                       QueryParam "orderBy" Text :>
                         QueryParam "filter" Text :>
                           QueryParam "pageToken" Text :>
                             QueryParam "maxResults" (Textual Word32) :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON] NodeGroupsListNodes

-- | Lists nodes in the node group.
--
-- /See:/ 'nodeGroupsListNodes'' smart constructor.
data NodeGroupsListNodes' =
  NodeGroupsListNodes''
    { _nglnNodeGroup  :: !Text
    , _nglnOrderBy    :: !(Maybe Text)
    , _nglnProject    :: !Text
    , _nglnZone       :: !Text
    , _nglnFilter     :: !(Maybe Text)
    , _nglnPageToken  :: !(Maybe Text)
    , _nglnMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsListNodes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nglnNodeGroup'
--
-- * 'nglnOrderBy'
--
-- * 'nglnProject'
--
-- * 'nglnZone'
--
-- * 'nglnFilter'
--
-- * 'nglnPageToken'
--
-- * 'nglnMaxResults'
nodeGroupsListNodes'
    :: Text -- ^ 'nglnNodeGroup'
    -> Text -- ^ 'nglnProject'
    -> Text -- ^ 'nglnZone'
    -> NodeGroupsListNodes'
nodeGroupsListNodes' pNglnNodeGroup_ pNglnProject_ pNglnZone_ =
  NodeGroupsListNodes''
    { _nglnNodeGroup = pNglnNodeGroup_
    , _nglnOrderBy = Nothing
    , _nglnProject = pNglnProject_
    , _nglnZone = pNglnZone_
    , _nglnFilter = Nothing
    , _nglnPageToken = Nothing
    , _nglnMaxResults = 500
    }


-- | Name of the NodeGroup resource whose nodes you want to list.
nglnNodeGroup :: Lens' NodeGroupsListNodes' Text
nglnNodeGroup
  = lens _nglnNodeGroup
      (\ s a -> s{_nglnNodeGroup = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
nglnOrderBy :: Lens' NodeGroupsListNodes' (Maybe Text)
nglnOrderBy
  = lens _nglnOrderBy (\ s a -> s{_nglnOrderBy = a})

-- | Project ID for this request.
nglnProject :: Lens' NodeGroupsListNodes' Text
nglnProject
  = lens _nglnProject (\ s a -> s{_nglnProject = a})

-- | The name of the zone for this request.
nglnZone :: Lens' NodeGroupsListNodes' Text
nglnZone = lens _nglnZone (\ s a -> s{_nglnZone = a})

-- | A filter expression that filters resources listed in the response. The
-- expression must specify the field name, a comparison operator, and the
-- value that you want to use for filtering. The value must be a string, a
-- number, or a boolean. The comparison operator must be either =, !=, >,
-- or \<. For example, if you are filtering Compute Engine instances, you
-- can exclude instances named example-instance by specifying name !=
-- example-instance. You can also filter nested fields. For example, you
-- could specify scheduling.automaticRestart = false to include instances
-- only if they are not scheduled for automatic restarts. You can use
-- filtering on nested fields to filter based on resource labels. To filter
-- on multiple expressions, provide each separate expression within
-- parentheses. For example, (scheduling.automaticRestart = true)
-- (cpuPlatform = \"Intel Skylake\"). By default, each expression is an AND
-- expression. However, you can include AND and OR expressions explicitly.
-- For example, (cpuPlatform = \"Intel Skylake\") OR (cpuPlatform = \"Intel
-- Broadwell\") AND (scheduling.automaticRestart = true).
nglnFilter :: Lens' NodeGroupsListNodes' (Maybe Text)
nglnFilter
  = lens _nglnFilter (\ s a -> s{_nglnFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
nglnPageToken :: Lens' NodeGroupsListNodes' (Maybe Text)
nglnPageToken
  = lens _nglnPageToken
      (\ s a -> s{_nglnPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
nglnMaxResults :: Lens' NodeGroupsListNodes' Word32
nglnMaxResults
  = lens _nglnMaxResults
      (\ s a -> s{_nglnMaxResults = a})
      . _Coerce

instance GoogleRequest NodeGroupsListNodes' where
        type Rs NodeGroupsListNodes' = NodeGroupsListNodes
        type Scopes NodeGroupsListNodes' =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsListNodes''{..}
          = go _nglnProject _nglnZone _nglnNodeGroup
              _nglnOrderBy
              _nglnFilter
              _nglnPageToken
              (Just _nglnMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy NodeGroupsListNodesResource)
                      mempty

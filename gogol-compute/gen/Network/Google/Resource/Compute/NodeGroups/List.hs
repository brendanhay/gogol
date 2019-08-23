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
-- Module      : Network.Google.Resource.Compute.NodeGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of node groups available to the specified project.
-- Note: use nodeGroups.listNodes for more details about each group.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.nodeGroups.list@.
module Network.Google.Resource.Compute.NodeGroups.List
    (
    -- * REST Resource
      NodeGroupsListResource

    -- * Creating a Request
    , nodeGroupsList
    , NodeGroupsList

    -- * Request Lenses
    , nglOrderBy
    , nglProject
    , nglZone
    , nglFilter
    , nglPageToken
    , nglMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.nodeGroups.list@ method which the
-- 'NodeGroupsList' request conforms to.
type NodeGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "nodeGroups" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] NodeGroupList

-- | Retrieves a list of node groups available to the specified project.
-- Note: use nodeGroups.listNodes for more details about each group.
--
-- /See:/ 'nodeGroupsList' smart constructor.
data NodeGroupsList =
  NodeGroupsList'
    { _nglOrderBy    :: !(Maybe Text)
    , _nglProject    :: !Text
    , _nglZone       :: !Text
    , _nglFilter     :: !(Maybe Text)
    , _nglPageToken  :: !(Maybe Text)
    , _nglMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NodeGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nglOrderBy'
--
-- * 'nglProject'
--
-- * 'nglZone'
--
-- * 'nglFilter'
--
-- * 'nglPageToken'
--
-- * 'nglMaxResults'
nodeGroupsList
    :: Text -- ^ 'nglProject'
    -> Text -- ^ 'nglZone'
    -> NodeGroupsList
nodeGroupsList pNglProject_ pNglZone_ =
  NodeGroupsList'
    { _nglOrderBy = Nothing
    , _nglProject = pNglProject_
    , _nglZone = pNglZone_
    , _nglFilter = Nothing
    , _nglPageToken = Nothing
    , _nglMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
nglOrderBy :: Lens' NodeGroupsList (Maybe Text)
nglOrderBy
  = lens _nglOrderBy (\ s a -> s{_nglOrderBy = a})

-- | Project ID for this request.
nglProject :: Lens' NodeGroupsList Text
nglProject
  = lens _nglProject (\ s a -> s{_nglProject = a})

-- | The name of the zone for this request.
nglZone :: Lens' NodeGroupsList Text
nglZone = lens _nglZone (\ s a -> s{_nglZone = a})

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
nglFilter :: Lens' NodeGroupsList (Maybe Text)
nglFilter
  = lens _nglFilter (\ s a -> s{_nglFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
nglPageToken :: Lens' NodeGroupsList (Maybe Text)
nglPageToken
  = lens _nglPageToken (\ s a -> s{_nglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
nglMaxResults :: Lens' NodeGroupsList Word32
nglMaxResults
  = lens _nglMaxResults
      (\ s a -> s{_nglMaxResults = a})
      . _Coerce

instance GoogleRequest NodeGroupsList where
        type Rs NodeGroupsList = NodeGroupList
        type Scopes NodeGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient NodeGroupsList'{..}
          = go _nglProject _nglZone _nglOrderBy _nglFilter
              _nglPageToken
              (Just _nglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy NodeGroupsListResource)
                      mempty

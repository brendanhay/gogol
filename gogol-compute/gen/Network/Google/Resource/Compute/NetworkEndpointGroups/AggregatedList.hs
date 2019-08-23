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
-- Module      : Network.Google.Resource.Compute.NetworkEndpointGroups.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of network endpoint groups and sorts them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.networkEndpointGroups.aggregatedList@.
module Network.Google.Resource.Compute.NetworkEndpointGroups.AggregatedList
    (
    -- * REST Resource
      NetworkEndpointGroupsAggregatedListResource

    -- * Creating a Request
    , networkEndpointGroupsAggregatedList
    , NetworkEndpointGroupsAggregatedList

    -- * Request Lenses
    , negalOrderBy
    , negalProject
    , negalFilter
    , negalPageToken
    , negalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.networkEndpointGroups.aggregatedList@ method which the
-- 'NetworkEndpointGroupsAggregatedList' request conforms to.
type NetworkEndpointGroupsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "networkEndpointGroups" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] NetworkEndpointGroupAggregatedList

-- | Retrieves the list of network endpoint groups and sorts them by zone.
--
-- /See:/ 'networkEndpointGroupsAggregatedList' smart constructor.
data NetworkEndpointGroupsAggregatedList =
  NetworkEndpointGroupsAggregatedList'
    { _negalOrderBy    :: !(Maybe Text)
    , _negalProject    :: !Text
    , _negalFilter     :: !(Maybe Text)
    , _negalPageToken  :: !(Maybe Text)
    , _negalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'NetworkEndpointGroupsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'negalOrderBy'
--
-- * 'negalProject'
--
-- * 'negalFilter'
--
-- * 'negalPageToken'
--
-- * 'negalMaxResults'
networkEndpointGroupsAggregatedList
    :: Text -- ^ 'negalProject'
    -> NetworkEndpointGroupsAggregatedList
networkEndpointGroupsAggregatedList pNegalProject_ =
  NetworkEndpointGroupsAggregatedList'
    { _negalOrderBy = Nothing
    , _negalProject = pNegalProject_
    , _negalFilter = Nothing
    , _negalPageToken = Nothing
    , _negalMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
negalOrderBy :: Lens' NetworkEndpointGroupsAggregatedList (Maybe Text)
negalOrderBy
  = lens _negalOrderBy (\ s a -> s{_negalOrderBy = a})

-- | Project ID for this request.
negalProject :: Lens' NetworkEndpointGroupsAggregatedList Text
negalProject
  = lens _negalProject (\ s a -> s{_negalProject = a})

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
negalFilter :: Lens' NetworkEndpointGroupsAggregatedList (Maybe Text)
negalFilter
  = lens _negalFilter (\ s a -> s{_negalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
negalPageToken :: Lens' NetworkEndpointGroupsAggregatedList (Maybe Text)
negalPageToken
  = lens _negalPageToken
      (\ s a -> s{_negalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
negalMaxResults :: Lens' NetworkEndpointGroupsAggregatedList Word32
negalMaxResults
  = lens _negalMaxResults
      (\ s a -> s{_negalMaxResults = a})
      . _Coerce

instance GoogleRequest
           NetworkEndpointGroupsAggregatedList
         where
        type Rs NetworkEndpointGroupsAggregatedList =
             NetworkEndpointGroupAggregatedList
        type Scopes NetworkEndpointGroupsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          NetworkEndpointGroupsAggregatedList'{..}
          = go _negalProject _negalOrderBy _negalFilter
              _negalPageToken
              (Just _negalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy NetworkEndpointGroupsAggregatedListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Compute.InstanceGroups.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance groups and sorts them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroups.aggregatedList@.
module Network.Google.Resource.Compute.InstanceGroups.AggregatedList
    (
    -- * REST Resource
      InstanceGroupsAggregatedListResource

    -- * Creating a Request
    , instanceGroupsAggregatedList
    , InstanceGroupsAggregatedList

    -- * Request Lenses
    , igalOrderBy
    , igalProject
    , igalFilter
    , igalPageToken
    , igalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroups.aggregatedList@ method which the
-- 'InstanceGroupsAggregatedList' request conforms to.
type InstanceGroupsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instanceGroups" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] InstanceGroupAggregatedList

-- | Retrieves the list of instance groups and sorts them by zone.
--
-- /See:/ 'instanceGroupsAggregatedList' smart constructor.
data InstanceGroupsAggregatedList = InstanceGroupsAggregatedList'
    { _igalOrderBy    :: !(Maybe Text)
    , _igalProject    :: !Text
    , _igalFilter     :: !(Maybe Text)
    , _igalPageToken  :: !(Maybe Text)
    , _igalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igalOrderBy'
--
-- * 'igalProject'
--
-- * 'igalFilter'
--
-- * 'igalPageToken'
--
-- * 'igalMaxResults'
instanceGroupsAggregatedList
    :: Text -- ^ 'igalProject'
    -> InstanceGroupsAggregatedList
instanceGroupsAggregatedList pIgalProject_ =
    InstanceGroupsAggregatedList'
    { _igalOrderBy = Nothing
    , _igalProject = pIgalProject_
    , _igalFilter = Nothing
    , _igalPageToken = Nothing
    , _igalMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
igalOrderBy :: Lens' InstanceGroupsAggregatedList (Maybe Text)
igalOrderBy
  = lens _igalOrderBy (\ s a -> s{_igalOrderBy = a})

-- | Project ID for this request.
igalProject :: Lens' InstanceGroupsAggregatedList Text
igalProject
  = lens _igalProject (\ s a -> s{_igalProject = a})

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
igalFilter :: Lens' InstanceGroupsAggregatedList (Maybe Text)
igalFilter
  = lens _igalFilter (\ s a -> s{_igalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
igalPageToken :: Lens' InstanceGroupsAggregatedList (Maybe Text)
igalPageToken
  = lens _igalPageToken
      (\ s a -> s{_igalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
igalMaxResults :: Lens' InstanceGroupsAggregatedList Word32
igalMaxResults
  = lens _igalMaxResults
      (\ s a -> s{_igalMaxResults = a})
      . _Coerce

instance GoogleRequest InstanceGroupsAggregatedList
         where
        type Rs InstanceGroupsAggregatedList =
             InstanceGroupAggregatedList
        type Scopes InstanceGroupsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceGroupsAggregatedList'{..}
          = go _igalProject _igalOrderBy _igalFilter
              _igalPageToken
              (Just _igalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsAggregatedListResource)
                      mempty

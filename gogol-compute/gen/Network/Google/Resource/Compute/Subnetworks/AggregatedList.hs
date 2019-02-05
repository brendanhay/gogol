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
-- Module      : Network.Google.Resource.Compute.Subnetworks.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of subnetworks.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.aggregatedList@.
module Network.Google.Resource.Compute.Subnetworks.AggregatedList
    (
    -- * REST Resource
      SubnetworksAggregatedListResource

    -- * Creating a Request
    , subnetworksAggregatedList
    , SubnetworksAggregatedList

    -- * Request Lenses
    , salOrderBy
    , salProject
    , salFilter
    , salPageToken
    , salMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.aggregatedList@ method which the
-- 'SubnetworksAggregatedList' request conforms to.
type SubnetworksAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "subnetworks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SubnetworkAggregatedList

-- | Retrieves an aggregated list of subnetworks.
--
-- /See:/ 'subnetworksAggregatedList' smart constructor.
data SubnetworksAggregatedList = SubnetworksAggregatedList'
    { _salOrderBy    :: !(Maybe Text)
    , _salProject    :: !Text
    , _salFilter     :: !(Maybe Text)
    , _salPageToken  :: !(Maybe Text)
    , _salMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salOrderBy'
--
-- * 'salProject'
--
-- * 'salFilter'
--
-- * 'salPageToken'
--
-- * 'salMaxResults'
subnetworksAggregatedList
    :: Text -- ^ 'salProject'
    -> SubnetworksAggregatedList
subnetworksAggregatedList pSalProject_ =
    SubnetworksAggregatedList'
    { _salOrderBy = Nothing
    , _salProject = pSalProject_
    , _salFilter = Nothing
    , _salPageToken = Nothing
    , _salMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
salOrderBy :: Lens' SubnetworksAggregatedList (Maybe Text)
salOrderBy
  = lens _salOrderBy (\ s a -> s{_salOrderBy = a})

-- | Project ID for this request.
salProject :: Lens' SubnetworksAggregatedList Text
salProject
  = lens _salProject (\ s a -> s{_salProject = a})

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
salFilter :: Lens' SubnetworksAggregatedList (Maybe Text)
salFilter
  = lens _salFilter (\ s a -> s{_salFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
salPageToken :: Lens' SubnetworksAggregatedList (Maybe Text)
salPageToken
  = lens _salPageToken (\ s a -> s{_salPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
salMaxResults :: Lens' SubnetworksAggregatedList Word32
salMaxResults
  = lens _salMaxResults
      (\ s a -> s{_salMaxResults = a})
      . _Coerce

instance GoogleRequest SubnetworksAggregatedList
         where
        type Rs SubnetworksAggregatedList =
             SubnetworkAggregatedList
        type Scopes SubnetworksAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksAggregatedList'{..}
          = go _salProject _salOrderBy _salFilter _salPageToken
              (Just _salMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksAggregatedListResource)
                      mempty

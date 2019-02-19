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
-- Module      : Network.Google.Resource.Compute.RegionCommitments.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of commitments.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionCommitments.aggregatedList@.
module Network.Google.Resource.Compute.RegionCommitments.AggregatedList
    (
    -- * REST Resource
      RegionCommitmentsAggregatedListResource

    -- * Creating a Request
    , regionCommitmentsAggregatedList
    , RegionCommitmentsAggregatedList

    -- * Request Lenses
    , rcalOrderBy
    , rcalProject
    , rcalFilter
    , rcalPageToken
    , rcalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionCommitments.aggregatedList@ method which the
-- 'RegionCommitmentsAggregatedList' request conforms to.
type RegionCommitmentsAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "commitments" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] CommitmentAggregatedList

-- | Retrieves an aggregated list of commitments.
--
-- /See:/ 'regionCommitmentsAggregatedList' smart constructor.
data RegionCommitmentsAggregatedList =
  RegionCommitmentsAggregatedList'
    { _rcalOrderBy    :: !(Maybe Text)
    , _rcalProject    :: !Text
    , _rcalFilter     :: !(Maybe Text)
    , _rcalPageToken  :: !(Maybe Text)
    , _rcalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionCommitmentsAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcalOrderBy'
--
-- * 'rcalProject'
--
-- * 'rcalFilter'
--
-- * 'rcalPageToken'
--
-- * 'rcalMaxResults'
regionCommitmentsAggregatedList
    :: Text -- ^ 'rcalProject'
    -> RegionCommitmentsAggregatedList
regionCommitmentsAggregatedList pRcalProject_ =
  RegionCommitmentsAggregatedList'
    { _rcalOrderBy = Nothing
    , _rcalProject = pRcalProject_
    , _rcalFilter = Nothing
    , _rcalPageToken = Nothing
    , _rcalMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rcalOrderBy :: Lens' RegionCommitmentsAggregatedList (Maybe Text)
rcalOrderBy
  = lens _rcalOrderBy (\ s a -> s{_rcalOrderBy = a})

-- | Project ID for this request.
rcalProject :: Lens' RegionCommitmentsAggregatedList Text
rcalProject
  = lens _rcalProject (\ s a -> s{_rcalProject = a})

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
rcalFilter :: Lens' RegionCommitmentsAggregatedList (Maybe Text)
rcalFilter
  = lens _rcalFilter (\ s a -> s{_rcalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rcalPageToken :: Lens' RegionCommitmentsAggregatedList (Maybe Text)
rcalPageToken
  = lens _rcalPageToken
      (\ s a -> s{_rcalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rcalMaxResults :: Lens' RegionCommitmentsAggregatedList Word32
rcalMaxResults
  = lens _rcalMaxResults
      (\ s a -> s{_rcalMaxResults = a})
      . _Coerce

instance GoogleRequest
           RegionCommitmentsAggregatedList
         where
        type Rs RegionCommitmentsAggregatedList =
             CommitmentAggregatedList
        type Scopes RegionCommitmentsAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionCommitmentsAggregatedList'{..}
          = go _rcalProject _rcalOrderBy _rcalFilter
              _rcalPageToken
              (Just _rcalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy RegionCommitmentsAggregatedListResource)
                      mempty

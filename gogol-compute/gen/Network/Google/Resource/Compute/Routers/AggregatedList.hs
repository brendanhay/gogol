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
-- Module      : Network.Google.Resource.Compute.Routers.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of routers.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.routers.aggregatedList@.
module Network.Google.Resource.Compute.Routers.AggregatedList
    (
    -- * REST Resource
      RoutersAggregatedListResource

    -- * Creating a Request
    , routersAggregatedList
    , RoutersAggregatedList

    -- * Request Lenses
    , rOrderBy
    , rProject
    , rFilter
    , rPageToken
    , rMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.routers.aggregatedList@ method which the
-- 'RoutersAggregatedList' request conforms to.
type RoutersAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "routers" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] RouterAggregatedList

-- | Retrieves an aggregated list of routers.
--
-- /See:/ 'routersAggregatedList' smart constructor.
data RoutersAggregatedList =
  RoutersAggregatedList'
    { _rOrderBy    :: !(Maybe Text)
    , _rProject    :: !Text
    , _rFilter     :: !(Maybe Text)
    , _rPageToken  :: !(Maybe Text)
    , _rMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RoutersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rOrderBy'
--
-- * 'rProject'
--
-- * 'rFilter'
--
-- * 'rPageToken'
--
-- * 'rMaxResults'
routersAggregatedList
    :: Text -- ^ 'rProject'
    -> RoutersAggregatedList
routersAggregatedList pRProject_ =
  RoutersAggregatedList'
    { _rOrderBy = Nothing
    , _rProject = pRProject_
    , _rFilter = Nothing
    , _rPageToken = Nothing
    , _rMaxResults = 500
    }


-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rOrderBy :: Lens' RoutersAggregatedList (Maybe Text)
rOrderBy = lens _rOrderBy (\ s a -> s{_rOrderBy = a})

-- | Project ID for this request.
rProject :: Lens' RoutersAggregatedList Text
rProject = lens _rProject (\ s a -> s{_rProject = a})

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
rFilter :: Lens' RoutersAggregatedList (Maybe Text)
rFilter = lens _rFilter (\ s a -> s{_rFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rPageToken :: Lens' RoutersAggregatedList (Maybe Text)
rPageToken
  = lens _rPageToken (\ s a -> s{_rPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rMaxResults :: Lens' RoutersAggregatedList Word32
rMaxResults
  = lens _rMaxResults (\ s a -> s{_rMaxResults = a}) .
      _Coerce

instance GoogleRequest RoutersAggregatedList where
        type Rs RoutersAggregatedList = RouterAggregatedList
        type Scopes RoutersAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RoutersAggregatedList'{..}
          = go _rProject _rOrderBy _rFilter _rPageToken
              (Just _rMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RoutersAggregatedListResource)
                      mempty

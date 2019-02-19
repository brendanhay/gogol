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
-- Module      : Network.Google.Resource.Compute.DiskTypes.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of disk types.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.diskTypes.aggregatedList@.
module Network.Google.Resource.Compute.DiskTypes.AggregatedList
    (
    -- * REST Resource
      DiskTypesAggregatedListResource

    -- * Creating a Request
    , diskTypesAggregatedList
    , DiskTypesAggregatedList

    -- * Request Lenses
    , dtalOrderBy
    , dtalProject
    , dtalFilter
    , dtalPageToken
    , dtalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.diskTypes.aggregatedList@ method which the
-- 'DiskTypesAggregatedList' request conforms to.
type DiskTypesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "diskTypes" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] DiskTypeAggregatedList

-- | Retrieves an aggregated list of disk types.
--
-- /See:/ 'diskTypesAggregatedList' smart constructor.
data DiskTypesAggregatedList =
  DiskTypesAggregatedList'
    { _dtalOrderBy    :: !(Maybe Text)
    , _dtalProject    :: !Text
    , _dtalFilter     :: !(Maybe Text)
    , _dtalPageToken  :: !(Maybe Text)
    , _dtalMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DiskTypesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtalOrderBy'
--
-- * 'dtalProject'
--
-- * 'dtalFilter'
--
-- * 'dtalPageToken'
--
-- * 'dtalMaxResults'
diskTypesAggregatedList
    :: Text -- ^ 'dtalProject'
    -> DiskTypesAggregatedList
diskTypesAggregatedList pDtalProject_ =
  DiskTypesAggregatedList'
    { _dtalOrderBy = Nothing
    , _dtalProject = pDtalProject_
    , _dtalFilter = Nothing
    , _dtalPageToken = Nothing
    , _dtalMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
dtalOrderBy :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalOrderBy
  = lens _dtalOrderBy (\ s a -> s{_dtalOrderBy = a})

-- | Project ID for this request.
dtalProject :: Lens' DiskTypesAggregatedList Text
dtalProject
  = lens _dtalProject (\ s a -> s{_dtalProject = a})

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
dtalFilter :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalFilter
  = lens _dtalFilter (\ s a -> s{_dtalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
dtalPageToken :: Lens' DiskTypesAggregatedList (Maybe Text)
dtalPageToken
  = lens _dtalPageToken
      (\ s a -> s{_dtalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
dtalMaxResults :: Lens' DiskTypesAggregatedList Word32
dtalMaxResults
  = lens _dtalMaxResults
      (\ s a -> s{_dtalMaxResults = a})
      . _Coerce

instance GoogleRequest DiskTypesAggregatedList where
        type Rs DiskTypesAggregatedList =
             DiskTypeAggregatedList
        type Scopes DiskTypesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DiskTypesAggregatedList'{..}
          = go _dtalProject _dtalOrderBy _dtalFilter
              _dtalPageToken
              (Just _dtalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DiskTypesAggregatedListResource)
                      mempty

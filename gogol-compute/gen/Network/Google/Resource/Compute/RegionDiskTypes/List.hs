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
-- Module      : Network.Google.Resource.Compute.RegionDiskTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of regional disk types available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDiskTypes.list@.
module Network.Google.Resource.Compute.RegionDiskTypes.List
    (
    -- * REST Resource
      RegionDiskTypesListResource

    -- * Creating a Request
    , regionDiskTypesList
    , RegionDiskTypesList

    -- * Request Lenses
    , rdtlOrderBy
    , rdtlProject
    , rdtlFilter
    , rdtlRegion
    , rdtlPageToken
    , rdtlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDiskTypes.list@ method which the
-- 'RegionDiskTypesList' request conforms to.
type RegionDiskTypesListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "diskTypes" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RegionDiskTypeList

-- | Retrieves a list of regional disk types available to the specified
-- project.
--
-- /See:/ 'regionDiskTypesList' smart constructor.
data RegionDiskTypesList = RegionDiskTypesList'
    { _rdtlOrderBy    :: !(Maybe Text)
    , _rdtlProject    :: !Text
    , _rdtlFilter     :: !(Maybe Text)
    , _rdtlRegion     :: !Text
    , _rdtlPageToken  :: !(Maybe Text)
    , _rdtlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionDiskTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdtlOrderBy'
--
-- * 'rdtlProject'
--
-- * 'rdtlFilter'
--
-- * 'rdtlRegion'
--
-- * 'rdtlPageToken'
--
-- * 'rdtlMaxResults'
regionDiskTypesList
    :: Text -- ^ 'rdtlProject'
    -> Text -- ^ 'rdtlRegion'
    -> RegionDiskTypesList
regionDiskTypesList pRdtlProject_ pRdtlRegion_ =
    RegionDiskTypesList'
    { _rdtlOrderBy = Nothing
    , _rdtlProject = pRdtlProject_
    , _rdtlFilter = Nothing
    , _rdtlRegion = pRdtlRegion_
    , _rdtlPageToken = Nothing
    , _rdtlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rdtlOrderBy :: Lens' RegionDiskTypesList (Maybe Text)
rdtlOrderBy
  = lens _rdtlOrderBy (\ s a -> s{_rdtlOrderBy = a})

-- | Project ID for this request.
rdtlProject :: Lens' RegionDiskTypesList Text
rdtlProject
  = lens _rdtlProject (\ s a -> s{_rdtlProject = a})

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
rdtlFilter :: Lens' RegionDiskTypesList (Maybe Text)
rdtlFilter
  = lens _rdtlFilter (\ s a -> s{_rdtlFilter = a})

-- | The name of the region for this request.
rdtlRegion :: Lens' RegionDiskTypesList Text
rdtlRegion
  = lens _rdtlRegion (\ s a -> s{_rdtlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rdtlPageToken :: Lens' RegionDiskTypesList (Maybe Text)
rdtlPageToken
  = lens _rdtlPageToken
      (\ s a -> s{_rdtlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rdtlMaxResults :: Lens' RegionDiskTypesList Word32
rdtlMaxResults
  = lens _rdtlMaxResults
      (\ s a -> s{_rdtlMaxResults = a})
      . _Coerce

instance GoogleRequest RegionDiskTypesList where
        type Rs RegionDiskTypesList = RegionDiskTypeList
        type Scopes RegionDiskTypesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDiskTypesList'{..}
          = go _rdtlProject _rdtlRegion _rdtlOrderBy
              _rdtlFilter
              _rdtlPageToken
              (Just _rdtlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDiskTypesListResource)
                      mempty

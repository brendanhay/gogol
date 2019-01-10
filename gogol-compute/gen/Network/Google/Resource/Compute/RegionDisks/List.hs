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
-- Module      : Network.Google.Resource.Compute.RegionDisks.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of persistent disks contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.list@.
module Network.Google.Resource.Compute.RegionDisks.List
    (
    -- * REST Resource
      RegionDisksListResource

    -- * Creating a Request
    , regionDisksList
    , RegionDisksList

    -- * Request Lenses
    , rdlOrderBy
    , rdlProject
    , rdlFilter
    , rdlRegion
    , rdlPageToken
    , rdlMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.list@ method which the
-- 'RegionDisksList' request conforms to.
type RegionDisksListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] DiskList

-- | Retrieves the list of persistent disks contained within the specified
-- region.
--
-- /See:/ 'regionDisksList' smart constructor.
data RegionDisksList = RegionDisksList'
    { _rdlOrderBy    :: !(Maybe Text)
    , _rdlProject    :: !Text
    , _rdlFilter     :: !(Maybe Text)
    , _rdlRegion     :: !Text
    , _rdlPageToken  :: !(Maybe Text)
    , _rdlMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionDisksList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdlOrderBy'
--
-- * 'rdlProject'
--
-- * 'rdlFilter'
--
-- * 'rdlRegion'
--
-- * 'rdlPageToken'
--
-- * 'rdlMaxResults'
regionDisksList
    :: Text -- ^ 'rdlProject'
    -> Text -- ^ 'rdlRegion'
    -> RegionDisksList
regionDisksList pRdlProject_ pRdlRegion_ =
    RegionDisksList'
    { _rdlOrderBy = Nothing
    , _rdlProject = pRdlProject_
    , _rdlFilter = Nothing
    , _rdlRegion = pRdlRegion_
    , _rdlPageToken = Nothing
    , _rdlMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rdlOrderBy :: Lens' RegionDisksList (Maybe Text)
rdlOrderBy
  = lens _rdlOrderBy (\ s a -> s{_rdlOrderBy = a})

-- | Project ID for this request.
rdlProject :: Lens' RegionDisksList Text
rdlProject
  = lens _rdlProject (\ s a -> s{_rdlProject = a})

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
rdlFilter :: Lens' RegionDisksList (Maybe Text)
rdlFilter
  = lens _rdlFilter (\ s a -> s{_rdlFilter = a})

-- | Name of the region for this request.
rdlRegion :: Lens' RegionDisksList Text
rdlRegion
  = lens _rdlRegion (\ s a -> s{_rdlRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rdlPageToken :: Lens' RegionDisksList (Maybe Text)
rdlPageToken
  = lens _rdlPageToken (\ s a -> s{_rdlPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rdlMaxResults :: Lens' RegionDisksList Word32
rdlMaxResults
  = lens _rdlMaxResults
      (\ s a -> s{_rdlMaxResults = a})
      . _Coerce

instance GoogleRequest RegionDisksList where
        type Rs RegionDisksList = DiskList
        type Scopes RegionDisksList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDisksList'{..}
          = go _rdlProject _rdlRegion _rdlOrderBy _rdlFilter
              _rdlPageToken
              (Just _rdlMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksListResource)
                      mempty

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
-- Module      : Network.Google.Resource.Compute.RegionOperations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of Operation resources contained within the specified
-- region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionOperations.list@.
module Network.Google.Resource.Compute.RegionOperations.List
    (
    -- * REST Resource
      RegionOperationsListResource

    -- * Creating a Request
    , regionOperationsList
    , RegionOperationsList

    -- * Request Lenses
    , rolOrderBy
    , rolProject
    , rolFilter
    , rolRegion
    , rolPageToken
    , rolMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionOperations.list@ method which the
-- 'RegionOperationsList' request conforms to.
type RegionOperationsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "operations" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] OperationList

-- | Retrieves a list of Operation resources contained within the specified
-- region.
--
-- /See:/ 'regionOperationsList' smart constructor.
data RegionOperationsList = RegionOperationsList'
    { _rolOrderBy    :: !(Maybe Text)
    , _rolProject    :: !Text
    , _rolFilter     :: !(Maybe Text)
    , _rolRegion     :: !Text
    , _rolPageToken  :: !(Maybe Text)
    , _rolMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolOrderBy'
--
-- * 'rolProject'
--
-- * 'rolFilter'
--
-- * 'rolRegion'
--
-- * 'rolPageToken'
--
-- * 'rolMaxResults'
regionOperationsList
    :: Text -- ^ 'rolProject'
    -> Text -- ^ 'rolRegion'
    -> RegionOperationsList
regionOperationsList pRolProject_ pRolRegion_ =
    RegionOperationsList'
    { _rolOrderBy = Nothing
    , _rolProject = pRolProject_
    , _rolFilter = Nothing
    , _rolRegion = pRolRegion_
    , _rolPageToken = Nothing
    , _rolMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
rolOrderBy :: Lens' RegionOperationsList (Maybe Text)
rolOrderBy
  = lens _rolOrderBy (\ s a -> s{_rolOrderBy = a})

-- | Project ID for this request.
rolProject :: Lens' RegionOperationsList Text
rolProject
  = lens _rolProject (\ s a -> s{_rolProject = a})

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
rolFilter :: Lens' RegionOperationsList (Maybe Text)
rolFilter
  = lens _rolFilter (\ s a -> s{_rolFilter = a})

-- | Name of the region for this request.
rolRegion :: Lens' RegionOperationsList Text
rolRegion
  = lens _rolRegion (\ s a -> s{_rolRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
rolPageToken :: Lens' RegionOperationsList (Maybe Text)
rolPageToken
  = lens _rolPageToken (\ s a -> s{_rolPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests. Acceptable values are 0 to 500, inclusive.
-- (Default: 500)
rolMaxResults :: Lens' RegionOperationsList Word32
rolMaxResults
  = lens _rolMaxResults
      (\ s a -> s{_rolMaxResults = a})
      . _Coerce

instance GoogleRequest RegionOperationsList where
        type Rs RegionOperationsList = OperationList
        type Scopes RegionOperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionOperationsList'{..}
          = go _rolProject _rolRegion _rolOrderBy _rolFilter
              _rolPageToken
              (Just _rolMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionOperationsListResource)
                      mempty

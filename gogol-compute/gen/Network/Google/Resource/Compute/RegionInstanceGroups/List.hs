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
-- Module      : Network.Google.Resource.Compute.RegionInstanceGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance group resources contained within the
-- specified region.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionInstanceGroups.list@.
module Network.Google.Resource.Compute.RegionInstanceGroups.List
    (
    -- * REST Resource
      RegionInstanceGroupsListResource

    -- * Creating a Request
    , regionInstanceGroupsList
    , RegionInstanceGroupsList

    -- * Request Lenses
    , riglOrderBy
    , riglProject
    , riglFilter
    , riglRegion
    , riglPageToken
    , riglMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionInstanceGroups.list@ method which the
-- 'RegionInstanceGroupsList' request conforms to.
type RegionInstanceGroupsListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "instanceGroups" :>
                   QueryParam "orderBy" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] RegionInstanceGroupList

-- | Retrieves the list of instance group resources contained within the
-- specified region.
--
-- /See:/ 'regionInstanceGroupsList' smart constructor.
data RegionInstanceGroupsList = RegionInstanceGroupsList'
    { _riglOrderBy    :: !(Maybe Text)
    , _riglProject    :: !Text
    , _riglFilter     :: !(Maybe Text)
    , _riglRegion     :: !Text
    , _riglPageToken  :: !(Maybe Text)
    , _riglMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionInstanceGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riglOrderBy'
--
-- * 'riglProject'
--
-- * 'riglFilter'
--
-- * 'riglRegion'
--
-- * 'riglPageToken'
--
-- * 'riglMaxResults'
regionInstanceGroupsList
    :: Text -- ^ 'riglProject'
    -> Text -- ^ 'riglRegion'
    -> RegionInstanceGroupsList
regionInstanceGroupsList pRiglProject_ pRiglRegion_ =
    RegionInstanceGroupsList'
    { _riglOrderBy = Nothing
    , _riglProject = pRiglProject_
    , _riglFilter = Nothing
    , _riglRegion = pRiglRegion_
    , _riglPageToken = Nothing
    , _riglMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
riglOrderBy :: Lens' RegionInstanceGroupsList (Maybe Text)
riglOrderBy
  = lens _riglOrderBy (\ s a -> s{_riglOrderBy = a})

-- | Project ID for this request.
riglProject :: Lens' RegionInstanceGroupsList Text
riglProject
  = lens _riglProject (\ s a -> s{_riglProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: field_name
-- comparison_string literal_string. The field_name is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The comparison_string must be either eq
-- (equals) or ne (not equals). The literal_string is the string value to
-- filter to. The literal value must be valid for the type of field you are
-- filtering by (string, number, boolean). For string fields, the literal
-- value is interpreted as a regular expression using RE2 syntax. The
-- literal value must match the entire field. For example, to filter for
-- instances that do not have a name of example-instance, you would use
-- filter=name ne example-instance. You can filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. To filter on multiple expressions, provide each
-- separate expression within parentheses. For example,
-- (scheduling.automaticRestart eq true) (zone eq us-central1-f). Multiple
-- expressions are treated as AND expressions, meaning that resources must
-- match all expressions to pass the filters.
riglFilter :: Lens' RegionInstanceGroupsList (Maybe Text)
riglFilter
  = lens _riglFilter (\ s a -> s{_riglFilter = a})

-- | Name of the region scoping this request.
riglRegion :: Lens' RegionInstanceGroupsList Text
riglRegion
  = lens _riglRegion (\ s a -> s{_riglRegion = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
riglPageToken :: Lens' RegionInstanceGroupsList (Maybe Text)
riglPageToken
  = lens _riglPageToken
      (\ s a -> s{_riglPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
riglMaxResults :: Lens' RegionInstanceGroupsList Word32
riglMaxResults
  = lens _riglMaxResults
      (\ s a -> s{_riglMaxResults = a})
      . _Coerce

instance GoogleRequest RegionInstanceGroupsList where
        type Rs RegionInstanceGroupsList =
             RegionInstanceGroupList
        type Scopes RegionInstanceGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionInstanceGroupsList'{..}
          = go _riglProject _riglRegion _riglOrderBy
              _riglFilter
              _riglPageToken
              (Just _riglMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionInstanceGroupsListResource)
                      mempty

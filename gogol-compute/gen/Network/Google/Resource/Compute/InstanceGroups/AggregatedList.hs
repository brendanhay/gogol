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
-- in subsequent list requests.
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

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
-- Module      : Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of managed instance groups and groups them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceGroupManagers.aggregatedList@.
module Network.Google.Resource.Compute.InstanceGroupManagers.AggregatedList
    (
    -- * REST Resource
      InstanceGroupManagersAggregatedListResource

    -- * Creating a Request
    , instanceGroupManagersAggregatedList
    , InstanceGroupManagersAggregatedList

    -- * Request Lenses
    , igmalOrderBy
    , igmalProject
    , igmalFilter
    , igmalPageToken
    , igmalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceGroupManagers.aggregatedList@ method which the
-- 'InstanceGroupManagersAggregatedList' request conforms to.
type InstanceGroupManagersAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instanceGroupManagers" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] InstanceGroupManagerAggregatedList

-- | Retrieves the list of managed instance groups and groups them by zone.
--
-- /See:/ 'instanceGroupManagersAggregatedList' smart constructor.
data InstanceGroupManagersAggregatedList = InstanceGroupManagersAggregatedList'
    { _igmalOrderBy    :: !(Maybe Text)
    , _igmalProject    :: !Text
    , _igmalFilter     :: !(Maybe Text)
    , _igmalPageToken  :: !(Maybe Text)
    , _igmalMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igmalOrderBy'
--
-- * 'igmalProject'
--
-- * 'igmalFilter'
--
-- * 'igmalPageToken'
--
-- * 'igmalMaxResults'
instanceGroupManagersAggregatedList
    :: Text -- ^ 'igmalProject'
    -> InstanceGroupManagersAggregatedList
instanceGroupManagersAggregatedList pIgmalProject_ =
    InstanceGroupManagersAggregatedList'
    { _igmalOrderBy = Nothing
    , _igmalProject = pIgmalProject_
    , _igmalFilter = Nothing
    , _igmalPageToken = Nothing
    , _igmalMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
igmalOrderBy :: Lens' InstanceGroupManagersAggregatedList (Maybe Text)
igmalOrderBy
  = lens _igmalOrderBy (\ s a -> s{_igmalOrderBy = a})

-- | Project ID for this request.
igmalProject :: Lens' InstanceGroupManagersAggregatedList Text
igmalProject
  = lens _igmalProject (\ s a -> s{_igmalProject = a})

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
igmalFilter :: Lens' InstanceGroupManagersAggregatedList (Maybe Text)
igmalFilter
  = lens _igmalFilter (\ s a -> s{_igmalFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
igmalPageToken :: Lens' InstanceGroupManagersAggregatedList (Maybe Text)
igmalPageToken
  = lens _igmalPageToken
      (\ s a -> s{_igmalPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
igmalMaxResults :: Lens' InstanceGroupManagersAggregatedList Word32
igmalMaxResults
  = lens _igmalMaxResults
      (\ s a -> s{_igmalMaxResults = a})
      . _Coerce

instance GoogleRequest
         InstanceGroupManagersAggregatedList where
        type Rs InstanceGroupManagersAggregatedList =
             InstanceGroupManagerAggregatedList
        type Scopes InstanceGroupManagersAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient
          InstanceGroupManagersAggregatedList'{..}
          = go _igmalProject _igmalOrderBy _igmalFilter
              _igmalPageToken
              (Just _igmalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersAggregatedListResource)
                      mempty

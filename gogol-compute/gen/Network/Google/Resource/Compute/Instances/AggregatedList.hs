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
-- Module      : Network.Google.Resource.Compute.Instances.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves aggregated list of instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.aggregatedList@.
module Network.Google.Resource.Compute.Instances.AggregatedList
    (
    -- * REST Resource
      InstancesAggregatedListResource

    -- * Creating a Request
    , instancesAggregatedList
    , InstancesAggregatedList

    -- * Request Lenses
    , ialProject
    , ialFilter
    , ialPageToken
    , ialMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.aggregatedList@ method which the
-- 'InstancesAggregatedList' request conforms to.
type InstancesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "instances" :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] InstanceAggregatedList

-- | Retrieves aggregated list of instances.
--
-- /See:/ 'instancesAggregatedList' smart constructor.
data InstancesAggregatedList = InstancesAggregatedList'
    { _ialProject    :: !Text
    , _ialFilter     :: !(Maybe Text)
    , _ialPageToken  :: !(Maybe Text)
    , _ialMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ialProject'
--
-- * 'ialFilter'
--
-- * 'ialPageToken'
--
-- * 'ialMaxResults'
instancesAggregatedList
    :: Text -- ^ 'ialProject'
    -> InstancesAggregatedList
instancesAggregatedList pIalProject_ =
    InstancesAggregatedList'
    { _ialProject = pIalProject_
    , _ialFilter = Nothing
    , _ialPageToken = Nothing
    , _ialMaxResults = 500
    }

-- | Project ID for this request.
ialProject :: Lens' InstancesAggregatedList Text
ialProject
  = lens _ialProject (\ s a -> s{_ialProject = a})

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
-- filter=name ne example-instance. Compute Engine Beta API Only: When
-- filtering in the Beta API, you can also filter on nested fields. For
-- example, you could filter on instances that have set the
-- scheduling.automaticRestart field to true. Use filtering on nested
-- fields to take advantage of labels to organize and search for results
-- based on label values. The Beta API also supports filtering on multiple
-- expressions by providing each separate expression within parentheses.
-- For example, (scheduling.automaticRestart eq true) (zone eq
-- us-central1-f). Multiple expressions are treated as AND expressions,
-- meaning that resources must match all expressions to pass the filters.
ialFilter :: Lens' InstancesAggregatedList (Maybe Text)
ialFilter
  = lens _ialFilter (\ s a -> s{_ialFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
ialPageToken :: Lens' InstancesAggregatedList (Maybe Text)
ialPageToken
  = lens _ialPageToken (\ s a -> s{_ialPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
ialMaxResults :: Lens' InstancesAggregatedList Word32
ialMaxResults
  = lens _ialMaxResults
      (\ s a -> s{_ialMaxResults = a})
      . _Coerce

instance GoogleRequest InstancesAggregatedList where
        type Rs InstancesAggregatedList =
             InstanceAggregatedList
        type Scopes InstancesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstancesAggregatedList'{..}
          = go _ialProject _ialFilter _ialPageToken
              (Just _ialMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesAggregatedListResource)
                      mempty

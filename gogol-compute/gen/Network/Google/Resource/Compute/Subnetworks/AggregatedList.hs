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
-- Module      : Network.Google.Resource.Compute.Subnetworks.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of subnetworks.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.subnetworks.aggregatedList@.
module Network.Google.Resource.Compute.Subnetworks.AggregatedList
    (
    -- * REST Resource
      SubnetworksAggregatedListResource

    -- * Creating a Request
    , subnetworksAggregatedList
    , SubnetworksAggregatedList

    -- * Request Lenses
    , salOrderBy
    , salProject
    , salFilter
    , salPageToken
    , salMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.subnetworks.aggregatedList@ method which the
-- 'SubnetworksAggregatedList' request conforms to.
type SubnetworksAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "subnetworks" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SubnetworkAggregatedList

-- | Retrieves an aggregated list of subnetworks.
--
-- /See:/ 'subnetworksAggregatedList' smart constructor.
data SubnetworksAggregatedList = SubnetworksAggregatedList'
    { _salOrderBy    :: !(Maybe Text)
    , _salProject    :: !Text
    , _salFilter     :: !(Maybe Text)
    , _salPageToken  :: !(Maybe Text)
    , _salMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubnetworksAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'salOrderBy'
--
-- * 'salProject'
--
-- * 'salFilter'
--
-- * 'salPageToken'
--
-- * 'salMaxResults'
subnetworksAggregatedList
    :: Text -- ^ 'salProject'
    -> SubnetworksAggregatedList
subnetworksAggregatedList pSalProject_ =
    SubnetworksAggregatedList'
    { _salOrderBy = Nothing
    , _salProject = pSalProject_
    , _salFilter = Nothing
    , _salPageToken = Nothing
    , _salMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
salOrderBy :: Lens' SubnetworksAggregatedList (Maybe Text)
salOrderBy
  = lens _salOrderBy (\ s a -> s{_salOrderBy = a})

-- | Project ID for this request.
salProject :: Lens' SubnetworksAggregatedList Text
salProject
  = lens _salProject (\ s a -> s{_salProject = a})

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
salFilter :: Lens' SubnetworksAggregatedList (Maybe Text)
salFilter
  = lens _salFilter (\ s a -> s{_salFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
salPageToken :: Lens' SubnetworksAggregatedList (Maybe Text)
salPageToken
  = lens _salPageToken (\ s a -> s{_salPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
salMaxResults :: Lens' SubnetworksAggregatedList Word32
salMaxResults
  = lens _salMaxResults
      (\ s a -> s{_salMaxResults = a})
      . _Coerce

instance GoogleRequest SubnetworksAggregatedList
         where
        type Rs SubnetworksAggregatedList =
             SubnetworkAggregatedList
        type Scopes SubnetworksAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SubnetworksAggregatedList'{..}
          = go _salProject _salOrderBy _salFilter _salPageToken
              (Just _salMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SubnetworksAggregatedListResource)
                      mempty

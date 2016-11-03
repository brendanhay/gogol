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
-- Module      : Network.Google.Resource.Compute.TargetInstances.AggregatedList
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an aggregated list of target instances.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.targetInstances.aggregatedList@.
module Network.Google.Resource.Compute.TargetInstances.AggregatedList
    (
    -- * REST Resource
      TargetInstancesAggregatedListResource

    -- * Creating a Request
    , targetInstancesAggregatedList
    , TargetInstancesAggregatedList

    -- * Request Lenses
    , tialOrderBy
    , tialProject
    , tialFilter
    , tialPageToken
    , tialMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.targetInstances.aggregatedList@ method which the
-- 'TargetInstancesAggregatedList' request conforms to.
type TargetInstancesAggregatedListResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "aggregated" :>
               "targetInstances" :>
                 QueryParam "orderBy" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TargetInstanceAggregatedList

-- | Retrieves an aggregated list of target instances.
--
-- /See:/ 'targetInstancesAggregatedList' smart constructor.
data TargetInstancesAggregatedList = TargetInstancesAggregatedList'
    { _tialOrderBy    :: !(Maybe Text)
    , _tialProject    :: !Text
    , _tialFilter     :: !(Maybe Text)
    , _tialPageToken  :: !(Maybe Text)
    , _tialMaxResults :: !(Textual Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tialOrderBy'
--
-- * 'tialProject'
--
-- * 'tialFilter'
--
-- * 'tialPageToken'
--
-- * 'tialMaxResults'
targetInstancesAggregatedList
    :: Text -- ^ 'tialProject'
    -> TargetInstancesAggregatedList
targetInstancesAggregatedList pTialProject_ =
    TargetInstancesAggregatedList'
    { _tialOrderBy = Nothing
    , _tialProject = pTialProject_
    , _tialFilter = Nothing
    , _tialPageToken = Nothing
    , _tialMaxResults = 500
    }

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
tialOrderBy :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialOrderBy
  = lens _tialOrderBy (\ s a -> s{_tialOrderBy = a})

-- | Project ID for this request.
tialProject :: Lens' TargetInstancesAggregatedList Text
tialProject
  = lens _tialProject (\ s a -> s{_tialProject = a})

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
tialFilter :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialFilter
  = lens _tialFilter (\ s a -> s{_tialFilter = a})

-- | Specifies a page token to use. Set pageToken to the nextPageToken
-- returned by a previous list request to get the next page of results.
tialPageToken :: Lens' TargetInstancesAggregatedList (Maybe Text)
tialPageToken
  = lens _tialPageToken
      (\ s a -> s{_tialPageToken = a})

-- | The maximum number of results per page that should be returned. If the
-- number of available results is larger than maxResults, Compute Engine
-- returns a nextPageToken that can be used to get the next page of results
-- in subsequent list requests.
tialMaxResults :: Lens' TargetInstancesAggregatedList Word32
tialMaxResults
  = lens _tialMaxResults
      (\ s a -> s{_tialMaxResults = a})
      . _Coerce

instance GoogleRequest TargetInstancesAggregatedList
         where
        type Rs TargetInstancesAggregatedList =
             TargetInstanceAggregatedList
        type Scopes TargetInstancesAggregatedList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient TargetInstancesAggregatedList'{..}
          = go _tialProject _tialOrderBy _tialFilter
              _tialPageToken
              (Just _tialMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetInstancesAggregatedListResource)
                      mempty

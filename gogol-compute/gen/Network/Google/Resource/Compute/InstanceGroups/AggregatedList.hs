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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of instance groups and sorts them by zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceGroupsAggregatedList@.
module Network.Google.Resource.Compute.InstanceGroups.AggregatedList
    (
    -- * REST Resource
      InstanceGroupsAggregatedListResource

    -- * Creating a Request
    , instanceGroupsAggregatedList'
    , InstanceGroupsAggregatedList'

    -- * Request Lenses
    , igalProject
    , igalFilter
    , igalPageToken
    , igalMaxResults
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceGroupsAggregatedList@ method which the
-- 'InstanceGroupsAggregatedList'' request conforms to.
type InstanceGroupsAggregatedListResource =
     Capture "project" Text :>
       "aggregated" :>
         "instanceGroups" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] InstanceGroupAggregatedList

-- | Retrieves the list of instance groups and sorts them by zone.
--
-- /See:/ 'instanceGroupsAggregatedList'' smart constructor.
data InstanceGroupsAggregatedList' = InstanceGroupsAggregatedList'
    { _igalProject    :: !Text
    , _igalFilter     :: !(Maybe Text)
    , _igalPageToken  :: !(Maybe Text)
    , _igalMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupsAggregatedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igalProject'
--
-- * 'igalFilter'
--
-- * 'igalPageToken'
--
-- * 'igalMaxResults'
instanceGroupsAggregatedList'
    :: Text -- ^ 'project'
    -> InstanceGroupsAggregatedList'
instanceGroupsAggregatedList' pIgalProject_ =
    InstanceGroupsAggregatedList'
    { _igalProject = pIgalProject_
    , _igalFilter = Nothing
    , _igalPageToken = Nothing
    , _igalMaxResults = 500
    }

-- | The project ID for this request.
igalProject :: Lens' InstanceGroupsAggregatedList' Text
igalProject
  = lens _igalProject (\ s a -> s{_igalProject = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
igalFilter :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalFilter
  = lens _igalFilter (\ s a -> s{_igalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igalPageToken :: Lens' InstanceGroupsAggregatedList' (Maybe Text)
igalPageToken
  = lens _igalPageToken
      (\ s a -> s{_igalPageToken = a})

-- | Maximum count of results to be returned.
igalMaxResults :: Lens' InstanceGroupsAggregatedList' Word32
igalMaxResults
  = lens _igalMaxResults
      (\ s a -> s{_igalMaxResults = a})

instance GoogleRequest InstanceGroupsAggregatedList'
         where
        type Rs InstanceGroupsAggregatedList' =
             InstanceGroupAggregatedList
        requestClient InstanceGroupsAggregatedList'{..}
          = go _igalProject _igalFilter _igalPageToken
              (Just _igalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstanceGroupsAggregatedListResource)
                      mempty

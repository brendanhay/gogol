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
-- Copyright   : (c) 2015 Brendan Hay
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
     Capture "project" Text :>
       "aggregated" :>
         "instanceGroupManagers" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] InstanceGroupManagerAggregatedList

-- | Retrieves the list of managed instance groups and groups them by zone.
--
-- /See:/ 'instanceGroupManagersAggregatedList' smart constructor.
data InstanceGroupManagersAggregatedList = InstanceGroupManagersAggregatedList
    { _igmalProject    :: !Text
    , _igmalFilter     :: !(Maybe Text)
    , _igmalPageToken  :: !(Maybe Text)
    , _igmalMaxResults :: !Word32
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceGroupManagersAggregatedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    InstanceGroupManagersAggregatedList
    { _igmalProject = pIgmalProject_
    , _igmalFilter = Nothing
    , _igmalPageToken = Nothing
    , _igmalMaxResults = 500
    }

-- | The project ID for this request.
igmalProject :: Lens' InstanceGroupManagersAggregatedList Text
igmalProject
  = lens _igmalProject (\ s a -> s{_igmalProject = a})

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
igmalFilter :: Lens' InstanceGroupManagersAggregatedList (Maybe Text)
igmalFilter
  = lens _igmalFilter (\ s a -> s{_igmalFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
igmalPageToken :: Lens' InstanceGroupManagersAggregatedList (Maybe Text)
igmalPageToken
  = lens _igmalPageToken
      (\ s a -> s{_igmalPageToken = a})

-- | Maximum count of results to be returned.
igmalMaxResults :: Lens' InstanceGroupManagersAggregatedList Word32
igmalMaxResults
  = lens _igmalMaxResults
      (\ s a -> s{_igmalMaxResults = a})

instance GoogleRequest
         InstanceGroupManagersAggregatedList where
        type Rs InstanceGroupManagersAggregatedList =
             InstanceGroupManagerAggregatedList
        requestClient InstanceGroupManagersAggregatedList{..}
          = go _igmalProject _igmalFilter _igmalPageToken
              (Just _igmalMaxResults)
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceGroupManagersAggregatedListResource)
                      mempty
